import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {

  int count = 0;
  bool gameStarted = false;
  late Timer timer;

  void startGame() {
    if (!gameStarted) {
      gameStarted = true;
      count = 0;
      timer = Timer(const Duration(seconds: 10), () {
        showToastmsg("Time up! You tapped $count times");
        timer.cancel();
        setState(() {
          gameStarted = false;
          count = 0;
        });
      });
    }
  }

  void increaseCount() {
    if (gameStarted) {
      setState(() {
        count++;
      });
    } else {
      startGame();
      setState(() {
        count++;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Score: $count",
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: increaseCount,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void showToastmsg(msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 18.0,
    );
  }
}
