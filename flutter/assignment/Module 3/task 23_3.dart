import 'package:flutter/material.dart';

class Task23_Three extends StatefulWidget {
  const Task23_Three({super.key});

  @override
  State<Task23_Three> createState() => _Task23_ThreeState();
}

class _Task23_ThreeState extends State<Task23_Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 23"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Settings Screen"),),

    );
  }
}
