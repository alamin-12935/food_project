import 'package:flutter/material.dart';
class citycard extends StatelessWidget {
  final String img,CityName,ratting;
  const citycard({
    super.key, required this.img, required this.CityName, required this.ratting,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(img,height: 333,width: 450,),
        Container(
          height: 333,
          width: 450,
          color: Colors.black.withOpacity(0.4),
        ),
        Row(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  color: Colors.green,
                ),
                child: Text(CityName,style: TextStyle(
                    color: Colors.white
                ),
                ),
              ),

            ),
            Spacer(),
            Text('⭐${ratting}',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),
            ),
          ],
        )
      ],
    );
  }
}