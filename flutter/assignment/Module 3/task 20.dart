import 'package:flutter/material.dart';

class Task20 extends StatefulWidget {
  const Task20({super.key});

  @override
  State<Task20> createState() => _Task20State();
}

class _Task20State extends State<Task20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 20"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
