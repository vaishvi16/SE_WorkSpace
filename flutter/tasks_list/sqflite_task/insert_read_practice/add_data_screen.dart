import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/insert_read_practice/listing_screen.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/insert_read_practice/my_db.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {

  late MyDb db = MyDb();

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() {
    super.initState();
    db.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.teal,),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          child: TextFormField(
            controller: name,
            validator: (value) {
              if (value!.isEmpty) {
                return "Name field is empty!";
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
              hintText: "Enter your Name",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          child: TextFormField(
            controller: surname,
            validator: (value) {
              if (value!.isEmpty) {
                return "Surname field is empty!";
              }
              return null;
            },
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black87),
              ),
              border: OutlineInputBorder(),
              labelText: "Surname",
              hintText: "Enter your Surname",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          child: TextFormField(
            controller: email,
            validator: (value) {
              if (value!.isEmpty) {
                return "Email field is empty!";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black87),
              ),
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "Enter your Email",
            ),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: ()
        {
          String f = name.text.toString();
          String l = surname.text.toString();
          String e = email.text.toString();

          db.db.rawInsert("INSERT INTO profile (name, surname, email) VALUES (?, ?, ?)", [f, l, e]);
          name.clear();
          surname.clear();
          email.clear();
          //Navigator.push(context,MaterialPageRoute(builder: (context) => ListingScreen()));
          Navigator.pop(context);

        }, child: Text("Insert"))
      ],),
    );
  }
}
