import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/api_task/task_4/login_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordRegex = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}|:<>?~]).{8,}$");
  final _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Form")),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Name";
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
                SizedBox(height: 10),
                TextFormField(
                  controller: surname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Surname";
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
                    hintText: "Enter your surname",
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Email";
                    }
                    if(!emailRegex.hasMatch(value)){
                      return 'Please enter a valid email address.';
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
                SizedBox(height: 10),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    }
                    if (!passwordRegex.hasMatch(value)){
                      return "Password must be of at least 8 characters and include uppercase, lowercase, number, and special character.";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black87),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter your Password",
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    String n = name.text.toString();
                    String s = surname.text.toString();
                    String e = email.text.toString();
                    String p = password.text.toString();



                    if (_formKey.currentState!.validate()) {
                      signup(n, s, e, p);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }

                  },
                  child: Text("Signup"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signup(var n, var s, var e, var p) {
    var url = Uri.parse("https://prakrutitech.xyz/API/insert.php");

    http.post(url, body: {"name": n, "surname": s, "email": e, "password": p});
  }
}
