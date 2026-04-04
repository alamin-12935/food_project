import 'package:flutter/material.dart';

class M12Demo extends StatefulWidget {
  const M12Demo({super.key});

  @override
  State<M12Demo> createState() => _M12DemoState();
}

class _M12DemoState extends State<M12Demo> {
  bool selected = false;
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DEMO')),
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
                duration: Duration(milliseconds: 100),
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selected ? Colors.green : Colors.deepOrange,
                ),
              ),
            ),
            Divider(),
            ElevatedButton(onPressed: () {
              setState(() {
                showMessage = !showMessage;
              });
            }, child: Text('Add to cart')),
            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(seconds: 2),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Added to cart',style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
