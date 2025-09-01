import 'package:flutter/material.dart';

class Task29 extends StatefulWidget {
  const Task29({super.key});

  @override
  State<Task29> createState() => _Task29State();
}

class _Task29State extends State<Task29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 29"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Stack(
            children: [
              Image(
                image: NetworkImage(
                  "https://www.shutterstock.com/image-photo/jaipur-india-21-october-2019-600nw-1548004160.jpg",
                ),
              ),
              Text(
                "Amul Butter",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.teal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
