import 'package:flutter/material.dart';
class M14class3 extends StatefulWidget {
  const M14class3({super.key});

  @override
  State<M14class3> createState() => _M14class3State();
}

class _M14class3State extends State<M14class3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('class3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadiusGeometry.circular(10)
              // ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                    child: Image.network('https://images.unsplash.com/photo-1726574686436-5ef90358e032?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',height: 180,width:160,fit: BoxFit.cover,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Test prudact',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('ট 500')
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('asset/pakhi.jpg',),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
