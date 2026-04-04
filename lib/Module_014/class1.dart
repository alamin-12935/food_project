import 'package:flutter/material.dart';
class M14class1 extends StatefulWidget {
  const M14class1({super.key});

  @override
  State<M14class1> createState() => _M14class1State();
}

class _M14class1State extends State<M14class1> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabBar'),
      ),
      body:
      Column(
        children: [
          Container(
            height: 50,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
                tabs: [
              Tab(text: 'Home'),
              Tab(text: 'profile'),
              Tab(text: 'settings'),
            ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
                children: [
              Center(child: Text('Home view')),
              Center(child: Text('profile view')),
              Center(child: Text('settings view')),
            ]),
          )
        ],
      ),
    );
  }
}
