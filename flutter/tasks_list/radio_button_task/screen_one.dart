import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/radio_button_task/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: first,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "First Digit is Empty";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "First Number",
                  hintText: "Enter First Number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: second,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Second Digit is Empty";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Second Number",
                  hintText: "Enter Second Number",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {

                  var firstValue = int.parse(first.text.toString());
                  var secondValue = int.parse(second.text.toString());

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenTwo(first: firstValue, second: secondValue,)),
                  );
                }
              },
              child: Text("See Output"),
            ),
          ],
        ),
      ),
    );
  }
}
