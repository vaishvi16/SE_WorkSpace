import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  String? feedbackType;
  bool isSatisfied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback Form"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Enter your name";
                  return null;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Enter your email";
                  return null;
                },
              ),
              SizedBox(height: 12),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Feedback Type",
                  border: OutlineInputBorder(),
                ),
                items: ['Bug Report', 'Feature Request', 'General Comment']
                    .map(
                      (type) =>
                          DropdownMenuItem(value: type, child: Text(type)),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    feedbackType = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Select feedback type" : null,
              ),
              CheckboxListTile(
                title: Text("Are you satisfied with our service?"),
                value: isSatisfied,
                onChanged: (value) {
                  setState(() {
                    isSatisfied = value!;
                  });
                },
              ),
              TextFormField(
                controller: feedbackController,
                maxLines: 3,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  labelText: "Your Feedback",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Please enter feedback";
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Feedback submitted!")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please complete the form")),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: Text("Submit", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
