import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%201/task%201.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {

  final _formKey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobile = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Profile"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.teal.shade200,
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Profile Added Successfully")),
                      );

                      var nameValue = name.text.toString();
                      var surnameValue = surname.text.toString();
                      var emailValue = email.text.toString();

                      saveCredentials(nameValue, emailValue, surnameValue);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Task1(),));
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Adding profile Failed")));
                    }
                  },
                  child: Text(
                    "Add Profile",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveCredentials(String name, String email, String surname) async {
    sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setString('userName', name);
    await sharedPreferences.setString('userSurname', surname);
    await sharedPreferences.setString('userEmail', email);
  }
}
