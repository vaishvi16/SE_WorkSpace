import 'package:flutter/material.dart';

class Task23_One extends StatefulWidget {
  const Task23_One({super.key});

  @override
  State<Task23_One> createState() => _Task23_OneState();
}

class _Task23_OneState extends State<Task23_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 23"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
    body: Center(child: Text("Home Screen"),),
    );
  }
}
