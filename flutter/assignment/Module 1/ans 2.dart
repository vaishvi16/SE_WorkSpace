import 'package:flutter/material.dart';

class Ans2 extends StatelessWidget {
  const Ans2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'Hello, I am Vaishvi!',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
