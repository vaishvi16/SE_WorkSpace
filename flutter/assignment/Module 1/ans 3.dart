import 'package:flutter/material.dart';

class Ans3 extends StatelessWidget {
  const Ans3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Answer 3"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hello!',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.blueGrey),
            ),
          ),
          Text(
            'I am Vaishvi!',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600, color: Colors.indigo),
          ),
        ],
      ),    );
  }
}

