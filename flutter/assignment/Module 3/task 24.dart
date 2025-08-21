import 'package:flutter/material.dart';

class Task24 extends StatefulWidget {
  const Task24({super.key});

  @override
  State<Task24> createState() => _Task24State();
}

class _Task24State extends State<Task24> {
  var _selectedIndex = 0;

  List content = [
    "You are viewing News ",
    "You are on the Messages ",
    "You can check your Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 24"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          content.elementAt(_selectedIndex),
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 27),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
