import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class  grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('package'),
      ),
      body:
      MasonryGridView.count(
        crossAxisCount: 2,
        itemCount: 20,
        itemBuilder: (context,index){
          return Card(
            child: Container(
              height: (index %2 +1)*100,
              color: Colors.blue,
              child: Text('Item $index'),
            ),
          );
        },
          ),
    );
  }
}
