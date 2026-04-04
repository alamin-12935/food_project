import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmerexmpole extends StatefulWidget {
  const shimmerexmpole({super.key});

  @override
  State<shimmerexmpole> createState() => _shimmerexmpoleState();
}

class _shimmerexmpoleState extends State<shimmerexmpole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product list'),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade400,
            highlightColor: Colors.green.shade100,
            child: Card(
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          );
          }),
    );
  }
}
