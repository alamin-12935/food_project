import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class M10class3 extends StatelessWidget {
  const M10class3({super.key});

  @override
  Widget build(BuildContext context) {
    // Size ScreenSize = MediaQuery.of(context).size;
    // double screenWidth = ScreenSize.width;
    // double screenHeight = ScreenSize.height;

    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
        // backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            orientation == Orientation.portrait ? Column(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.yellow,
                ),
                Text('this is class 3',
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                Text('this is class 4',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ) : Row(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  color: Colors.yellow,
                ),
                Text('this is class 3',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 150.h,
                  width: 100.w,
                  color: Colors.blueAccent,
                ),
                Text('this is class 4',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            // Text(orientation.toString()),
            // Text(screenHeight.toString()),
            // Text(screenWidth.toString()),

          ],
        ),
      ),
    );
  }
}
