import 'package:flutter/material.dart';

class Task23_Two extends StatefulWidget {
  const Task23_Two({super.key});

  @override
  State<Task23_Two> createState() => _Task23_TwoState();
}

class _Task23_TwoState extends State<Task23_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 23"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Profile Screen"),),

    );
  }
}
