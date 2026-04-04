import 'package:flutter/material.dart';

import 'class1.dart';
import 'navi/page-1.dart';
import 'navi/page-2.dart';
import 'navi/page-3.dart';
class class2 extends StatelessWidget {
  const class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'TabBer',
          ),
          bottom: TabBar(
              indicator:
              BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(40)
              ),
              indicatorPadding: EdgeInsetsGeometry.all(5),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline
              ),

              tabs: [
                Tab(
                  icon: Icon(Icons.home,),
                  text: 'Home',

                ),
                Tab(
                  icon: Icon(Icons.favorite,),
                  text: 'Fav',
                ),
                Tab(
                  icon: Icon(Icons.settings,),
                  text: 'Setting',
                ),
                Tab(
                  icon: Icon(Icons.add,),
                  text: 'Add',
                ),
              ]),
        ),
        body:
        TabBarView(children: [

          page1(),
          page2(name: '',),
          page3(),
          class1(),


          // Container(color: Colors.green,),
          // Container(color: Colors.pink,),
          // Container(color: Colors.deepOrange,),
        ]
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40
                      ,backgroundImage: AssetImage('asset/pakhi.jpg'),
                    ),
                    Text('AL-AMIN',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                    ),),
                    Text('30gamingalamin@gmail.com',style: TextStyle(fontSize: 10),)
                  ],
                ),
              )
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Profile'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Calls'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('New_Group'),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark_outline),
                title: Text('Saved Massage'),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40
                      ,backgroundImage: AssetImage('asset/pakhi.jpg'),
                    ),
                    Text('AL-AMIN',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                    ),),
                    Text('30gamingalamin@gmail.com',style: TextStyle(fontSize: 10),)
                  ],
                ),
              )
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Profile'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Calls'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('New_Group'),
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
              ),
              ListTile(
                leading: Icon(Icons.bookmark_outline),
                title: Text('Saved Massage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
