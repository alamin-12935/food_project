import 'package:flutter/material.dart';

import '../class1.dart';
class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE-3',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('page3')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>class1()));
            }, child: Text('class1'))
          ],
        ),
      ),
    );
  }
}
