import 'package:flutter/material.dart';

class LikesCounter extends StatefulWidget {
  @override
  State<LikesCounter> createState() => _LikesCounterState();
}

class _LikesCounterState extends State<LikesCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Likes : $count", style: TextStyle(fontWeight: FontWeight.w500)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text(
              "Hit a LIKE button",
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.teal.shade200),
            ),
          ),
        ],
      ),
    );
  }
}
