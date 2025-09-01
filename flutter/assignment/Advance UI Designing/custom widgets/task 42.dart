import 'package:flutter/material.dart';

class Task42 extends StatefulWidget {
  const Task42({super.key});

  @override
  State<Task42> createState() => _Task42State();
}

class _Task42State extends State<Task42> {

  TextEditingController percentageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 42"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    value = percentageController.text;
                  });
                },
                controller: percentageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Percentage",
                  hintText: "Enter your Percentage",
                ),
              ),
            ),
      Center(
        child: Container(
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: 80.0,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned.fill(
                child: LinearProgressIndicator(
                  value: double.tryParse(percentageController.text.toString()),
                  color: Colors.teal.withAlpha(100),
                  backgroundColor: Colors.teal.withAlpha(50),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Progress bar"),
              )
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
