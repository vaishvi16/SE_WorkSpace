import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/task%2022_3.dart';

class Task22_two extends StatefulWidget {

  String name;
  Task22_two({required this.name});

  @override
  State<Task22_two> createState() => _Task22_twoState();
}

class _Task22_twoState extends State<Task22_two> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 22"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Hey ${widget.name}",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text("Add more details", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: TextFormField(
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password!";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: TextFormField(
                controller: mobile,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Mobile number";
                  }
                  return null;
                },
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black87),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                  hintText: "Enter your Mobile Number",
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                if(_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Task22_three(name: widget.name,email: email.text.toString(),mob: mobile.text.toString(),pass: password.text.toString(),)));
                }
              }, child: Text("Add Details")),
            )
          ],
        ),
      ),
    );
  }
}
