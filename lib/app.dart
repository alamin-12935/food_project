import 'package:flutter/material.dart';

import 'Demo.dart';
import 'Module_009/class_2.dart';
import 'Module_009/class_3.dart';
import 'Module_010/class1.dart';
import 'Module_010/class2.dart';
import 'Module_010/class3.dart';
import 'Module_011/class1.dart';
import 'Module_011/class2.dart';
import 'Module_011/class3.dart';
import 'Module_011/gridv.dart';
import 'Module_012/class3.dart';
import 'Module_012/demo.dart';
import 'Module_012/navi/page-1.dart';
import 'Module_012/navi/page-2.dart';
import 'Module_012/navi/page-3.dart';
import 'Module_013/class1.dart';
import 'Module_013/class2.dart';
import 'Module_013/class3.dart';
import 'Module_014/class1.dart';
import 'Module_014/class2/MasonryGridView.dart';
import 'Module_014/class2/shimmerExmpole.dart';
import 'Module_014/cls1_splashscreen.dart';
import 'food_project/create.dart';
import 'food_project/fav.dart';
import 'food_project/home.dart';
import 'food_project/home_screen.dart';
import 'food_project/inbox.dart';
import 'food_project/profile.dart';
import 'food_project/project_splashscreen.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MODULE-12',
      routes: {
        '/': (context) => M13class1(),
        '/allfileDemo': (context) => allfileDemo(),
        '/M09class2': (context) => M09class2(),
        '/M09class3': (context) => M09class3(),
        '/M10class1': (context) => M10class1(),
        '/M10class2': (context) => M10class2(),
        '/M10class3': (context) => M10class3(),
        '/M11class1': (context) => M11class1(),
        '/M11class2': (context) => M11class2(),
        '/M11class3': (context) => M11class3(),
        '/m11Gridv': (context) => m11Gridv(),
        '/class2': (context) => M12Demo(),
        '/page1': (context) => page1(),
        '/page2': (context) => page2(name: ''),
        '/page3': (context) => page3(),
        '/Mclass-3': (context) => Mclass3(),
        '/M13class1': (context) => M13class1(),
        '/M13class2': (context) => M13class2(),
        '/M13class3': (context) => M13class3(),
        '/M14class1': (context) => M14class1(),
        '/M14class1_splashscreen': (context) => splashscreen(),
        '/grid': (context) => grid(),
        '/shimmerexmpole': (context) => shimmerexmpole(),
        '/food_home': (context) => food_home(),
        '/fav': (context) => fav(),
        '/food_splashscreen': (context) => food_splashscreen(),
        '/inbox': (context) => inbox(),
        '/profile': (context) => profile(),
        '/foods_home': (context) => foods_home(),
        '/create': (context) => create(),
      },
      initialRoute: '/allfileDemo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blue.shade200,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(fontSize: 20, color: Colors.blueAccent),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          centerTitle: true,
        ),
      ),
    );
  }
}
