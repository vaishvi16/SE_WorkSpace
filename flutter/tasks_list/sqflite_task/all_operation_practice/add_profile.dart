import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/all_operation_practice/database_file.dart';

import 'dashboard_screen.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  late myDatabase my_db = myDatabase();

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() {
    super.initState();
    my_db.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 21,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                hintText: "Enter your name: ",
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: surname,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  hintText: "Enter your surname: "),
            ),
            SizedBox(height: 12),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  hintText: "Enter your email: "),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal),
              ),
              onPressed: () {
                var nameValue = name.text.toString();
                var surnameValue = surname.text.toString();
                var emailValue = email.text.toString();

                my_db.my_db.rawInsert(
                  'INSERT INTO List (name, surname, email) VALUES (?, ?, ?)',
                  [nameValue, surnameValue, emailValue],
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
              child: Text("Add Profile", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
