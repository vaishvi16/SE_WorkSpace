import 'package:flutter/material.dart';

class ImplicitAnimationTask extends StatefulWidget {
  const ImplicitAnimationTask({super.key});

  @override
  State<ImplicitAnimationTask> createState() => _ImplicitAnimationTaskState();
}

class _ImplicitAnimationTaskState extends State<ImplicitAnimationTask> {
  bool isExpanded = true;

  void _toggleButton() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Implicit Animation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: AnimatedSize(
          curve: Curves.easeInOutCirc,
          duration: Duration(milliseconds: 500),
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: isExpanded
                  ? WidgetStatePropertyAll(Size(50, 30))
                  : WidgetStatePropertyAll(Size(150, 80)),
              backgroundColor: WidgetStatePropertyAll(
                isExpanded ? Colors.purple.shade300 : Colors.teal.shade300,
              ),
            ),
            child: isExpanded
                ? Text("Short", style: TextStyle(color: Colors.white))
                : Text("Expand", style: TextStyle(color: Colors.white)),
            onPressed: () {
              _toggleButton();
            },
          ),
        ),
      ),
    );
  }
}
