import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  var value = 0;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              Text("$value"),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (value <= 0) {
                      value = 0;
                    } else {
                      value--;
                    }
                  });
                },
                icon: Icon(Icons.minimize_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
