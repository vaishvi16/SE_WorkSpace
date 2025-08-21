import 'package:flutter/material.dart';

class Task13 extends StatefulWidget {
  const Task13({super.key});

  @override
  State<Task13> createState() => _Task13State();
}

class _Task13State extends State<Task13> {
  var img = "https://m.media-amazon.com/images/I/71a5gO3y44L.jpg";
  var img2 =
      "https://m.media-amazon.com/images/I/51P5e4kph1L._UF1000,1000_QL80_.jpg";

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 13"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          isPressed? Image(image: NetworkImage(img), height: 250, width: double.infinity,) : Image(image: NetworkImage(img2),height: 250, width: double.infinity),
          ElevatedButton(
            onPressed: () {
             setState(() {
               isPressed = !isPressed;
             });
            },
            child: Text("Click me"),
          ),
        ],
      ),
    );
  }
}
