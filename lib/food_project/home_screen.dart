import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lerning_a_flutter/food_project/profile.dart';

import 'create.dart';
import 'fav.dart';
import 'home.dart';
import 'inbox.dart';
class food_home extends StatefulWidget {
  const food_home({super.key});

  @override
  State<food_home> createState() => _food_homeState();
}

class _food_homeState extends State<food_home> {
  @override
  int _selectedindex=0;

  List _screens =[
    foods_home(),
    profile(),
    create(),
    inbox(),
    fav(),

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedindex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            _selectedindex=index;
          });
        },
        backgroundColor: Colors.red,
          selectedIndex: _selectedindex,
          destinations: [
        NavigationDestination(icon: Icon(Icons.home_filled,color: Colors.white,), label: 'home'),
        NavigationDestination(icon: Icon(Icons.person,color: Colors.white), label: 'profile'),
        NavigationDestination(icon: Icon(Icons.add,color: Colors.white), label: 'create'),
        NavigationDestination(icon: Icon(Icons.message,color: Colors.white), label: 'inbox'),
        NavigationDestination(icon: Icon(Icons.favorite_outline,color: Colors.white), label: 'favorite'),
      ]),
    );
  }
}
