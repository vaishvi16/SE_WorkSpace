import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/all_operation_practice/database_file.dart';

import 'dashboard_screen.dart' show DashboardScreen;

class EditProfile extends StatefulWidget {

  String emailValue;

  EditProfile({required this.emailValue});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  late myDatabase my_db = myDatabase();

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();


  @override
  void initState() {
    super.initState();
    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    await my_db.open();

    Future.delayed(Duration(milliseconds: 500), () async
    {
      var data = await my_db.getDetails(widget.emailValue);
      if (data != null) {
        name.text = data["name"].toString();
        surname.text = data["surname"].toString();
        email.text = data["email"].toString();
        setState(() {});
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("No data found")));
      }
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Profile",
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

                  my_db.my_db.rawUpdate("update List set name=?,surname=?,email=? where email=?",[nameValue,surnameValue, emailValue,widget.emailValue]);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
                child: Text(
                    "Add Profile", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      );
    }
  }
