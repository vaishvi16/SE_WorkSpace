import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Task1_screenOne()),
            );
          },
          child: Text("Press me to navigate to product list screen"),
        ),
      ),
    );
  }
}

class Task1_screenOne extends StatelessWidget {
  const Task1_screenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Text(
            "You are in the product listing screen!!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Task1_screenTwo()),
              );
            },
            child: Text("Press me to navigate to details screen"),
          ),
        ],
      ),
    );
  }
}

class Task1_screenTwo extends StatelessWidget {
  const Task1_screenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 21"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          "You are in the Details Screen",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
