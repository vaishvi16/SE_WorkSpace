import 'package:flutter/material.dart';

class Task9 extends StatefulWidget {
  const Task9({super.key});

  @override
  State<Task9> createState() => _Task9State();
}

class _Task9State extends State<Task9> {
  TextEditingController _displayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 9"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: TextFormField(
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 21,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
              controller: _displayController,
              enabled: false,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              showButton("C"),
              showButton("\u232b"),
              showButton("%"),
              showButton("÷"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              showNumber("7"),
              showNumber("8"),
              showNumber("9"),
              showButton("x"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              showNumber("4"),
              showNumber("5"),
              showNumber("6"),
              showButton("-"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              showNumber("1"),
              showNumber("2"),
              showNumber("3"),
              showButton("+"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              showNumber("00"),
              showNumber("0"),
              showNumber("."),
              showButton("="),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  showNumber(var title) {
    return TextButton(
      onPressed: () {
        setState(() {
          _displayController.text += title;
        });      },
      child: Text(title, style: TextStyle(fontSize: 21, color: Colors.black87)),
    );
  }

  showButton(var button) {
    return TextButton(
      onPressed: () {
        setState(() {
          _displayController.text += button;
        });
      },
      child: Text(button, style: TextStyle(fontSize: 21, color: Colors.teal)),
    );
  }


}
