import 'package:flutter/material.dart';

class Task31 extends StatefulWidget {
  const Task31({super.key});

  @override
  State<Task31> createState() => _Task31State();
}

class _Task31State extends State<Task31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 31"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                width: 300,
                height: 180,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Title",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "This is a card with description text, customized by me. "
                    ),
                  ],
                ),
              ),
            ),
             Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.teal,
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
