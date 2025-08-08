import 'package:flutter/material.dart';

class CurrentMood extends StatefulWidget {
  @override
  State<CurrentMood> createState() => _CurrentMoodState();
}

class _CurrentMoodState extends State<CurrentMood> {
  List<bool> _isSelected = [true, false];
  bool isHappy = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          isHappy
              ? "Your current mood : Happy 😀"
              : "Your current mood : Sad 😖",
        ),

        ToggleButtons(
          children: [Text("😀"), Text("😖")],
          isSelected: _isSelected,
          onPressed: (index) {
            setState(() {
              if (index == 0) {
                isHappy = true;
                _isSelected = [true, false]; //updates the color
              } else {
                isHappy = false;
                _isSelected = [false, true];
              }
            });
          },
          fillColor: Colors.teal.shade200,
        ),
      ],
    );
  }
}
