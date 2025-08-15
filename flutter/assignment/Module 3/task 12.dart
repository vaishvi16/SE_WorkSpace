import 'package:flutter/material.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key});

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  bool _switchValue = false;
  late Color _backgroundColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Implementation")),
      body: Container(
        child: Center(
          child: Switch(
            activeColor: Colors.red,
            activeTrackColor: Colors.orangeAccent,
            inactiveThumbColor: Colors.redAccent,
            inactiveTrackColor: Colors.orange,
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                if (_switchValue == false) {
                  _switchValue = true;
                  _backgroundColor = Colors.grey;
                } else {
                  _switchValue = false;
                  _backgroundColor = Colors.blueGrey;
                }
              });
            },
          ),
        ),
        color: _backgroundColor,
      ),
    );
  }
}
