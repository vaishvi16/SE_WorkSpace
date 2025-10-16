import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%209/task%202/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hero Animation Task",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenTwo()),
          );
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(
                tag: "hero-image",
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Ds9-v5s9JNTS7Bp9D8QEQq8mKvj5qLjhQw&s",
                  height: 60,
                  width: 200,
                  fit: BoxFit.contain,
                ),
              ),
              Text("Click to see image", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
