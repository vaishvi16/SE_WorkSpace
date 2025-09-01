import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/game_task/dashboard_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  late SharedPreferences sharedPreferences;
  var checkLogin;

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
              child: TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email!";
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
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  sharedPreferences.setBool("check_login", false);

                  sharedPreferences.setString(
                    "user_email",
                    email.text.toString(),
                  );
                  sharedPreferences.setString(
                    "user_password",
                    password.text.toString(),
                  );

                  //  setCredentials(email.text.toString(), password.text.toString());

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                } else {
                  showToastmsg();
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  showToastmsg() {
    Fluttertoast.showToast(
      msg: "Invalid Credentials!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 23.0,
    );
  }

  isLogin() async {
    sharedPreferences = await SharedPreferences.getInstance();

    checkLogin = (sharedPreferences.getBool('check_login') ?? true);

    if (checkLogin == false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    }
  }
}
