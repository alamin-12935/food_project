import 'package:flutter/material.dart';

import '../Module_010/class1.dart';
import '../Module_011/class1.dart';
import '../Module_011/class2.dart';
import '../Module_011/class3.dart';
import '../Module_011/gridv.dart';
class M13class3 extends StatefulWidget {
  const M13class3({super.key});

  @override
  State<M13class3> createState() => _M13class3State();
}

class _M13class3State extends State<M13class3> {
  int _selectedindex =0;
  List _pages =[
    m11Gridv(),
    M11class2(),
    M11class1(),
    M11class3(),
    M10class1()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black,
          labelTextStyle: MaterialStateProperty.resolveWith(
              (state){
                if(state.contains(MaterialState.selected)){
                  return TextStyle(color: Colors.white);
                }else{
                  return TextStyle(color: Colors.black);
                }
              }
          ),
          iconTheme: MaterialStateProperty.resolveWith(
              (state){
                if(state.contains(MaterialState.selected)){
                  return IconThemeData(color: Colors.white);
                }else{
                  return IconThemeData(color: Colors.black);
                }
              }
          )
        ),
        child: NavigationBar(
          backgroundColor: Colors.red,
        
          selectedIndex: _selectedindex,
        onDestinationSelected: (int index){
          setState(() {
            _selectedindex = index;
          });
        },
            destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.ondemand_video), label: 'Videos'),
          NavigationDestination(icon: Icon(Icons.add), label: 'Create'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person_outlined), label: 'Profile'),
        ]),
      ),
    );
  }
}
