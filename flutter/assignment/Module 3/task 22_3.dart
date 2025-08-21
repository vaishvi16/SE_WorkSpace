import 'package:flutter/material.dart';

class Task22_three extends StatefulWidget {

  String name, email, pass, mob;
  Task22_three({required this.email, required this.pass, required this.mob, required this.name});

  @override
  State<Task22_three> createState() => _Task22_threeState();
}

class _Task22_threeState extends State<Task22_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 22"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hey ${widget.name}! Here are your details.....",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Email - ${widget.email}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Password - ${widget.pass}"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Mobile Number ${widget.mob}"),
          )

        ],
      ),
    );
  }
}
