import 'package:flutter/material.dart';

class Task21_Screen2 extends StatefulWidget {
  const Task21_Screen2({super.key});

  @override
  State<Task21_Screen2> createState() => _Task21_Screen2State();
}

class _Task21_Screen2State extends State<Task21_Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 21"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Welcome to the app!!")),
    );
  }
}
