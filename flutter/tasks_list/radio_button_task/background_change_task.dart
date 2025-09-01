import 'package:flutter/material.dart';

class BackgroundChangeTask extends StatefulWidget {
  const BackgroundChangeTask({super.key});

  @override
  State<BackgroundChangeTask> createState() => _BackgroundChangeTaskState();
}


class _BackgroundChangeTaskState extends State<BackgroundChangeTask> {
  Color _color = Colors.teal;
  var isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: Text(
                "Teal",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              value: 1,
              groupValue: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                  _color = Colors.teal;
                });
              },
            ),
            RadioListTile(
              title: Text(
                "Purple",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              value: 2,
              groupValue: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                  _color = Colors.purple;
                });
              },
            ),
            RadioListTile(
              title: Text(
                "Pink",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              value: 3,
              groupValue: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                  _color = Colors.pink;
                });
              },
            ),
            RadioListTile(
              title: Text(
                "Red",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              dense: true,
              value: 4,
              groupValue: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                  _color = Colors.red;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
