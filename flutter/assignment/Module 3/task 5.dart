import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 5"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.blueGrey, width: 150, height: 100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.grey, width: 80,height: 100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.grey.shade400, width: 70,height: 100,),
          ),
        ],
      ),
    );
  }
}
