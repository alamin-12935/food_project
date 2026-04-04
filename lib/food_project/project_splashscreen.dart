import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';
class food_splashscreen extends StatefulWidget {
  const food_splashscreen({super.key});

  @override
  State<food_splashscreen> createState() => _food_splashscreenState();
}

class _food_splashscreenState extends State<food_splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash();
  }

  void splash(){
    Future.delayed(Duration(seconds: 6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>food_home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade500,
        child: Stack(
          children: [
            Center(child: Lottie.asset('asset/sample.json',height: 75,width: 172,)),

            Positioned(
              top: 600,
                left: 0,
                right: 250,
                child: Image.asset('asset/project1_Images/image 2.png',height: 200,width: 246,)),
            Positioned(
              top: 600,
                left: 0,
                right: 0,

                child: Image.asset('asset/project1_Images/image 1.png',height: 200,width: 150,))
          ],
        ),
        
      ),
    );
  }
}
