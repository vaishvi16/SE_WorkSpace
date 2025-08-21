import 'package:flutter/material.dart';

class Task15 extends StatefulWidget {
  const Task15({super.key});

  @override
  State<Task15> createState() => _Task15State();
}

class _Task15State extends State<Task15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 15"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
            child: Image(image: AssetImage("assets/img1.jpg"), fit: BoxFit.fitWidth,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Image(image: AssetImage("assets/img2.jpg"), fit: BoxFit.cover, width: 750,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12),
            child: Image(image: AssetImage("assets/img3.jpg"),fit: BoxFit.fill,),
          ),

        ],),
      ),

    );
  }
}
