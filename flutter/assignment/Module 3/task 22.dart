import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/task%2022_2.dart';

class Task22 extends StatefulWidget {
  const Task22({super.key});

  @override
  State<Task22> createState() => _Task22State();
}

class _Task22State extends State<Task22> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 22"),
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
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  hintText: "Enter your name",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Task22_two(name: nameController.text.toString()),
                    ),
                  );
                }

              },
              child: Text("Click me to navigate to Profile screen"),
            ),
          ],
        ),
      ),
    );
  }
}
