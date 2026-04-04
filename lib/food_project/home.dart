import 'package:flutter/material.dart';
class foods_home extends StatefulWidget {
  const foods_home({super.key});

  @override
  State<foods_home> createState() => _foods_homeState();
}

class _foods_homeState extends State<foods_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Home',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)],
        ),
      ),
    );
  }
}
