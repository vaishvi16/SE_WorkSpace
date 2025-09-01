import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/game_task/tab_1.dart';
import 'package:flutter_projects/tasks_list/game_task/tab_2.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  var data;
  var _selectedIndex = 0;
  late SharedPreferences sharedPreferences;

  final List screens = [
    Tab1(),
    Tab2(),
  ];

  @override
  void initState() {
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              print("menu icon pressed");
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Tab 1"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Tab 2"),
        ],
      ),
    );
  }

  getvalue() async {
    sharedPreferences = await SharedPreferences.getInstance();

    setState(() {
      data = sharedPreferences.getString("user_email");
    });
  }

  onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

}
