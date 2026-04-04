import 'package:flutter/material.dart';
class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:

      Column(
        children: [
          SizedBox(height: 10,width: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  Text('FoodNow',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                  Text('order your favourite food!')
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage('asset/cox.jpg'),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.search)
                        // border: InputBorder.none,

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
            ],
          )
    );
  }
}
