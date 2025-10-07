import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%201/add_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  late SharedPreferences sharedPreferences;
  String? name;
  String? surname;
  String? mail;

  @override
  void initState() {
    super.initState();
    getCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(children: [
        Card(child: ListTile(title: Text("${name.toString()} ${surname.toString()}"), subtitle: Text(mail.toString()),))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddProfile()),
          );
        },
        child: Text("Add"),
      ),
    );
  }

  Future<void> getCredentials() async {
    sharedPreferences = await SharedPreferences.getInstance();

    setState(() {
      name = sharedPreferences.getString('userName');
      surname = sharedPreferences.getString('userSurname');
      mail = sharedPreferences.getString('userEmail');

    });
  }
}
