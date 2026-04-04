import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class allfileDemo extends StatefulWidget {
  const allfileDemo({super.key});

  @override
  State<allfileDemo> createState() => _allfileDemoState();
}

class _allfileDemoState extends State<allfileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('package'),
      ),
      body:Container(
        child:
        Column(
          children: [
            ListView.builder(
              itemCount: 101,
              itemBuilder: (context,index){
               return Shimmer.fromColors(
                    baseColor: Colors.blue.shade100,
                    highlightColor: Colors.white,
                  child:
                  Card(child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.blue,
                  )),
                );
              },
            ),
            MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: 101,
              itemBuilder: (context,index){
                return Card(
                  child: Container(
                    height: (index %2 +1)*100,
                    color: Colors.blue.shade300,
                    child: Text('item $index'),

                  ),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
