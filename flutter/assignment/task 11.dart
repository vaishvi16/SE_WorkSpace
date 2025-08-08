import 'package:flutter/material.dart';

class Task11 extends StatefulWidget {
  const Task11({super.key});

  @override
  State<Task11> createState() => _Task11State();
}

class _Task11State extends State<Task11> {
  var _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 130),
          TextButton(
            onPressed: () {
              setState(() {
                _value++;
              });
            },
            child: Text("+", style: TextStyle(fontSize: 25)),
          ),
          SizedBox(width: 30),
          Text(
            "$_value",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(width: 30),
          TextButton(
            onPressed: () {
              setState(() {
                if (_value == 0) {
                  _value = 0;
                } else {
                  _value--;
                }
              });
            },
            child: Text("-", style: TextStyle(fontSize: 25)),
          ),
        ],
      ),
    );
  }
}
