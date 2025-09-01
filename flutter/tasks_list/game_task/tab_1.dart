import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  TextEditingController num = TextEditingController();

  final random = Random();
  var randomNumber;

  int attempts = 0;
  int max_attempts = 5;
  var attempts_left;

  bool isGameOver = false;

  @override
  void initState() {
    randomNumberGenerator();
    attempts_left = max_attempts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to the Number guessing Game!!",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Guess any number between 0 to 100. You will get 5 chances to guess the correct number.", textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Let's start. All the best!!",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
            child: TextFormField(
              controller: num,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter any number";
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black87),
                ),
                border: OutlineInputBorder(),
                hintText: "Enter any number",
              ),
            ),
          ),
          ElevatedButton(
            style: !isGameOver
                ? ElevatedButton.styleFrom(backgroundColor: Colors.teal)
                : ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              !isGameOver ? checkGeneratedNumber() : null;
            },
            child: Text(
              "Check Number",
              style: !isGameOver
                  ? TextStyle(color: Colors.white)
                  : TextStyle(color: Colors.teal),
            ),
          ),
          Text("Attempts left: $attempts_left")
        ],
      ),
    );
  }

  checkGeneratedNumber() {
    var user_num = int.parse(num.text.toString());

    // showToastmsg("Random number $randomNumber");

    setState(() {
      attempts++;
      attempts_left = max_attempts - attempts;
      if (user_num > randomNumber) {
        showToastmsg("Enter any lower number!");
      } else if (user_num < randomNumber) {
        showToastmsg("Enter any higher number!");
      } else {
        showToastmsg("Hurray! You won....");
        isGameOver = !isGameOver;
        return;
      }
      if (attempts >= max_attempts) {
        showToastmsg("Game over!!");
        isGameOver = !isGameOver;
      }
    });
  }

  randomNumberGenerator() {
    randomNumber = random.nextInt(100);
    print("Random number generated is $randomNumber");
  }

  showToastmsg(msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 23.0,
    );
  }
}
