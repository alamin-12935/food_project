import 'package:flutter/material.dart';
import 'package:lerning_a_flutter/Module_016/db/task_database.dart';

import '../../model/task_model.dart';
class taskhomepage extends StatefulWidget {
  const taskhomepage({super.key});

  @override
  State<taskhomepage> createState() => _taskhomepageState();
}

class _taskhomepageState extends State<taskhomepage> {
  TextEditingController controller = TextEditingController();
  List<Task> tasks = [];

  Future<void>refreshTask() async {
    tasks = await TaskDatabase.getTask();
    setState(() {
    });
  }

  Future<void>addTask() async {
    if(controller.text.isNotEmpty){
      TaskDatabase.insertTask(Task(title: controller.text, isDone: false));
      controller.clear();
      refreshTask();
    }else{

    }

  }
  Future<void>deleteTask(int id) async {
  await TaskDatabase.deleteTask(id);
  refreshTask();

  }

  Future<void>toggleTaskStatus(Task task) async {
  await TaskDatabase.updateTask(Task(
    id: task.id,
      title: task.title,
      isDone: !task.isDone));
  refreshTask();

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task with db'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                ),
              ),
                IconButton(onPressed: addTask, icon: Icon(Icons.add))
            ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
                itemBuilder: (context,index){
                final task = tasks[index];
                return Card(
                  child: ListTile(
                    leading: Checkbox(value: task.isDone, onChanged: (_){
                      toggleTaskStatus(task);
                    }),
                    title: Text(task.title,style: TextStyle(
                       decoration: task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
                      color:task.isDone ? Colors.grey : Colors.black
                    ),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          deleteTask(task.id!);
                        }, icon: Icon(Icons.delete,color: Colors.red,)),
                      ],
                    ),
                  ),
                );
            }),
          )
        ],
      ),
    );
  }
}
