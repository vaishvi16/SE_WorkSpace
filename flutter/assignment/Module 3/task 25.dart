import 'package:flutter/material.dart';

class Task25 extends StatefulWidget {
  const Task25({super.key});

  @override
  State<Task25> createState() => _Task25State();
}

class _Task25State extends State<Task25> {
  List taskName = [
    "Submit project",
    "Reply to client emails",
    "Prepare for meeting",
    "Fix login bug",
    "Update presentation slides",
    "Submit project",
    "Reply to client emails",
    "Prepare for meeting",
    "Fix login bug",
    "Update presentation slides",
    "Submit project",
    "Reply to client emails",
    "Prepare for meeting",
    "Fix login bug",
    "Update presentation slides",
  ];

  List subtaskName = [
    "Review project requirements",
    "Attach necessary files",
    "Gather all necessary documents",
    "Test fix locally",
    "Open the latest version of the slides",
    "Review project requirements",
    "Attach necessary files",
    "Gather all necessary documents",
    "Test fix locally",
    "Open the latest version of the slides",
    "Review project requirements",
    "Attach necessary files",
    "Gather all necessary documents",
    "Test fix locally",
    "Open the latest version of the slides",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Swipe right to delete",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: taskName.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                setState(() {
                  taskName.removeAt(index);
                });
              }
              ScaffoldMessenger(child: Text("Removed Successfully"));
            },
            child: ListTile(
              title: Text(
                taskName[index],
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23),
                textAlign: TextAlign.start,
              ),
              subtitle: Text(subtaskName[index]),
              onTap: () {
                print(subtaskName);
              },
            ),
          );
        },
      ),
    );
  }
}
