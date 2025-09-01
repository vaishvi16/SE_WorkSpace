import 'package:flutter/material.dart';

class Task43 extends StatefulWidget {
  const Task43({super.key});

  @override
  State<Task43> createState() => _Task43State();
}

class _Task43State extends State<Task43> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 43"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 6,
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-vector/cute-girl-avatar-cartoon-illustration-vector_1338461-953.jpg",
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Vaishvi Gandhi",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mobile App Developer",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
