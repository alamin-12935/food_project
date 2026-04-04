import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class M11class1 extends StatelessWidget {
  const M11class1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('HEXZA'),
        ),
        body:

        ListView.builder(
            itemCount: 20,
            itemBuilder: (context,index){
              return Card(
                color: Colors.deepOrange.shade100,
                elevation: 10,
                child: ListTile(
                  title: Text('AL-AMIN $index'),
                  subtitle: Text('01613133742'),
                  leading: Icon(Icons.phone),
                  trailing: Icon(Icons.delete),
                ),
              );
            }

        )



      // ListView(
      //   children: [
      //     Card(
      //       color: Colors.deepOrange.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.pink.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.blue.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.deepPurpleAccent.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.yellow.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.purple.shade100,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('01613133742'),
      //         subtitle: Text('ALAMIN'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
