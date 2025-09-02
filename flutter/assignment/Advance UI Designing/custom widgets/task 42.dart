import 'package:flutter/material.dart';

class Task42 extends StatefulWidget {
  const Task42({super.key});

  @override
  State<Task42> createState() => _Task42State();
}

class _Task42State extends State<Task42> {
  TextEditingController percentageController = TextEditingController();
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 42"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: percentageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Percentage",
                hintText: "Enter a value from 0 to 100",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder()
              ),
              onChanged: (value) {
                double? val = double.tryParse(value);
                if (val != null && val >= 0 && val <= 100) {
                  setState(() {
                    progress = val / 100;
                  });
                } else {
                  setState(() {
                    progress = 0.0;
                  });
                }
              },
            ),
            SizedBox(height: 30),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.teal,
              minHeight: 20,
            ),
            SizedBox(height: 10),
            Text("${(progress * 100).toInt()}%", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
