import 'package:flutter/material.dart';

class Mclass3 extends StatefulWidget {
  const Mclass3({super.key});

  @override
  State<Mclass3> createState() => _Mclass3State();
}

class _Mclass3State extends State<Mclass3> {
  bool selected = false;
  bool showMessage = false;
  bool clickAlign = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.pink,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = !showMessage;
                });
              },
              child: Text('Add to cart'),
            ),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: AnimatedOpacity(
                  opacity: showMessage ? 1 : 0,
                  duration: Duration(seconds: 1),
                  child: Text('Added to cart'),
                ),
              ),
            ),
            Divider(color: Colors.black),
            ElevatedButton(
              onLongPress: () {
                setState(() {
                  clickAlign = !clickAlign;
                });
              },
              onPressed: () {},
              child: Text('Alightment'),
            ),
            AnimatedAlign(
              alignment: clickAlign ? Alignment.topLeft : Alignment.topRight,
              duration: Duration(seconds: 2),
              child: Image.asset('asset/pakhi.jpg', height: 100, width: 100),
            ),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showMessage = !showMessage;
                      });
                    },
                    child: Text('Toggle Button'),
                  ),

                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    bottom: showMessage ? 0 : -120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('Test'),
                    ),
                   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
