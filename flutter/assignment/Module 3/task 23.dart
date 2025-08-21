import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/task%2023_1.dart';
import 'package:flutter_projects/assignment/task%2023_2.dart';
import 'package:flutter_projects/assignment/task%2023_3.dart';

class Task23 extends StatefulWidget {
  const Task23({super.key});

  @override
  State<Task23> createState() => _Task23State();
}

class _Task23State extends State<Task23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 23"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Drawer Task")),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text("T"),
              ),
              accountName: Text("Test"),
              accountEmail: Text("test@gmail.com"),
            ),
            showMenuOptions("Home", Icon(Icons.home_rounded), Task23_One()),
            showMenuOptions("Profile", Icon(Icons.person_rounded),Task23_Two()),
            showMenuOptions("Settings", Icon(Icons.settings),Task23_Three()),
          ],
        ),
      ),
    );
  }

  showMenuOptions(String title, Icon icon, screen) {
    return ListTile(
      title: Text(title), leading: icon, iconColor: Colors.teal, onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));
    },);
  }

}

