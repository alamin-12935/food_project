import 'package:flutter/material.dart';
class inbox extends StatefulWidget {
  const inbox({super.key});

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Inbox',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)],
        ),
      ),
    );
  }
}
