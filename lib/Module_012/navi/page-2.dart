import 'package:flutter/material.dart';
import 'package:lerning_a_flutter/Module_012/navi/page-3.dart';
class page2 extends StatelessWidget {
  final String name;
  const page2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE-2',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: (){}, child: Text('page2')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page3()));
            }, child: Text('page3'))
          ],
        ),
      ),
    );
  }
}
