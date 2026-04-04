import 'dart:async';

import 'package:flutter/material.dart';
class M13class2 extends StatefulWidget {
   M13class2({super.key}){
    print('1st semestar');
  }

  @override
  State<M13class2> createState() {
     print('2nd semestar');
    return _M13class2State();
  }
}

class _M13class2State extends State<M13class2> {
  String name='AL-AMIN';
  int seconds=0;
  Timer ? time;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3rd semestar');
    name='AL-AMIN KHAN';
    seconds=10;
    
    time =Timer.periodic(Duration(seconds: 1), (time){
      setState(() {
        seconds++;
      });
    });
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('4th semestar');
  }

  @override
  Widget build(BuildContext context) {
    print('5th semestar');
    return Scaffold(
      appBar: AppBar(

      ),
      body:Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            Text('Time running: ${seconds}',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant M13class2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
