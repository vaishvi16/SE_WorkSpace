import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/cafe_task/dashboard.dart';
import 'package:flutter_projects/tasks_list/check_mood_task/profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  late var email, pswd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email!";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hint: Text("Enter your Email"),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: pswdController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Password!";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: true,
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  labelText: "Password",
                  hint: Text("Enter your Password"),
                  enabledBorder: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded, size: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.teal.shade400)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    email = emailController.text.toString();
                    pswd = pswdController.text.toString();

                    if(email == "admin@123" && pswd == "admin123")
                      {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Login Successful")));

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                      }
                    else{
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Invalid Credentials")));
                    }
                  }

                },
                child: Text("Login", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
