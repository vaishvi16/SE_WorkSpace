import 'package:flutter/material.dart';

class Task32 extends StatefulWidget {
  const Task32({super.key});

  @override
  State<Task32> createState() => _Task32State();
}

class _Task32State extends State<Task32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 32"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.star, size: 30, color: Colors.pinkAccent),
              SizedBox(height: 5),
              Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
