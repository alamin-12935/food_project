import 'package:flutter/material.dart';
import 'package:lerning_a_flutter/Module_011/widget/citycard.dart';
class M11class2 extends StatelessWidget {
  const M11class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CLASS-3',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('asset/house.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Text('BEST DEAL',style: TextStyle(
                            color: Colors.white
                        ),
                        ),
                      ),

                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.deepOrange,))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            citycard(img: 'asset/dhaka.jpg', CityName: 'Dhaka', ratting: '6.5',),
            citycard(img: 'asset/cox.jpg', CityName: "Cox's Bazer", ratting: '7.5',),
          ],
        ),
      ),


    );
  }
}


