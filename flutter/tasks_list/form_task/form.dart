import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var dropDownValue;

  final _formKey = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Application Form"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              callUs();
              print("Called us");
            },
            icon: Icon(Icons.call_outlined),
          ),
          IconButton(
            onPressed: () {
              smsUs();
              print("SMS us");
            },
            icon: Icon(Icons.textsms_outlined),
          ),
          IconButton(
            onPressed: () {
              print("Mail us");
            },
            icon: Icon(Icons.email_outlined),
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          return await showAlertDialog();
        },
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                  child: TextFormField(
                    controller: id,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your ID";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black87),
                      ),
                      border: OutlineInputBorder(),
                      labelText: "ID",
                      hintText: "Enter your ID",
                    ),
                  ),
                ),
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
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black87),
                      ),
                    ),
                    hint: dropDownValue == null
                        ? Text(
                            'Gender',
                            style: TextStyle(color: Colors.black87),
                          )
                        : Text(
                            dropDownValue,
                            style: TextStyle(color: Colors.black87),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    items: ['Male', 'Female'].map((val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        dropDownValue = val;
                      });
                    },
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
                          SnackBar(content: Text("Login Successful")),
                        );
                      } else {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text("Login Failed")));
                      }
                    },
                    child: Text(
                      "Login",
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
      ),
    );
  }

  Future<bool> showAlertDialog() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are you sure you want to exit?"),
        actions: [
          TextButton(
            onPressed: () {
              exit(0); // to exit from an app
            },
            child: Text("Yes"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("No"),
          ),
        ],
      ),
    );
    return false;
  }

  Future<void> callUs() async {
    Uri telUrl = Uri.parse('tel:8238658897');
    if (await canLaunchUrl(telUrl)) {
      await launchUrl(telUrl);
    }
  }

  Future<void> smsUs() async {
    Uri smsUrl = Uri.parse('sms:8238658897?body =Hieee Bro');
    if (await canLaunchUrl(smsUrl)) {
      await launchUrl(smsUrl);
    }
  }
}
