import 'package:flutter/material.dart';

class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Class1',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is a Class1 page',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/page1');
            }, child: Text('page-1')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
