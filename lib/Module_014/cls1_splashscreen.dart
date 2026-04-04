import 'package:flutter/material.dart';

import 'class1.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigateNextpage();
  }
  void NavigateNextpage(){
    Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> M14class1()));
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: Stack(

         children: [
           Center(child: Image.asset('asset/shil.png',height: 110,width: 110,))
         ],
        ),
      ),
    );
  }
}
