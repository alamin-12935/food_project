import 'package:flutter/material.dart';
class m11Gridv extends StatelessWidget {
  const m11Gridv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body:

      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
          itemCount: 200,
          itemBuilder:(context,index){
            return Card(
              color: Colors.purple.shade300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text('Cash out',style: TextStyle(fontSize: 20),)
                ],
              ),
            );
          }

        // GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 10,
        //   crossAxisSpacing: 10,
        //   children: [
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       color: Colors.deepOrangeAccent,
        //     ),
        //     Container(
        //       color: Colors.pink,
        //     ),
        //     Container(
        //       color: Colors.teal,
        //     ),
        //     Container(
        //       color: Colors.tealAccent,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //  ],
      ),
    );
  }
}
