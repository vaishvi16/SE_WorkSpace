import 'package:flutter/material.dart';

class Task30 extends StatefulWidget {
  const Task30({super.key});

  @override
  State<Task30> createState() => _Task30State();
}

class _Task30State extends State<Task30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Task 30"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/premium-vector/cute-girl-avatar-cartoon-illustration-vector_1338461-953.jpg",
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 12,
                child: Text(
                  "Vaishvi Gandhi",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 40,
                child: Text(
                  "Mobile App Developer",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
