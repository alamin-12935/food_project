import 'package:flutter/material.dart';
class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> with SingleTickerProviderStateMixin{
  late TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);
  }

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
             Column(
               children: [
                 Stack(
                   children: [
                     Container(
                       padding: EdgeInsets.all(22),
                       decoration: BoxDecoration(
                         color: Colors.red,
                         borderRadius: BorderRadius.circular(10),
                         
                       ),
                     ),
                     Column(
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.tune,size:27,color: Colors.white,))
                       ],
                     )
                   ],
                 )
               ],
             ),
            ],
          ),
          SizedBox(height: 30,),
          TabBar(
           
            controller: _tabController,
              tabs: [
            Tab(text: 'All',),
            Tab(text: 'Combos'),
            Tab(text: 'Sliders'),
            Tab(text: 'Classic'),

          ]),
          Expanded(
            child: TabBarView(
              controller: _tabController,
                children: [
              Text('All'),
              Text('Combos'),
              Text('Sliders'),
              Text('Classic'),
            ]),
          )
            ],
          )
    );
  }
}
