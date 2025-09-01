import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  var first;
  var second;

  ScreenTwo({required this.first, required this.second});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = widget.first + 1; i < widget.second; i++)
              Text(' $i', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
