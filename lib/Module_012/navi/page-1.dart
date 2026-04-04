import 'package:flutter/material.dart';
import 'package:lerning_a_flutter/Module_012/navi/page-2.dart';
import 'package:lerning_a_flutter/Module_012/navi/page-3.dart';
import '../class1.dart';
class page1 extends StatelessWidget {
  const page1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE-1',style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page2(name: 'AL-AMIN',)));
            }, child: Text('page-2')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page3()));
            }, child: Text('page-3')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>page2(name: 'AL-AMIN',)));
            }, child: Text('Log in')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>class1()));
            }, child: Text('Class1')),
            Divider(),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/page2');
            }, child: Text('Navi 2.0 page-2')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context,  '/class1', (route)=>false);
            }, child: Text('Home'))
          ],
        ),
      )
      ,
    );
  }
}
