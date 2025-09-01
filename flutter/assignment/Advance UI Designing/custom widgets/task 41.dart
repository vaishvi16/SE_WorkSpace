import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class Task41 extends StatefulWidget {
  const Task41({super.key});

  @override
  State<Task41> createState() => _Task41State();
}

class _Task41State extends State<Task41> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 41"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" Rate us", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23),),
            RatingBar(
              filledIcon: Icons.star,
              emptyIcon: Icons.star_border,
              filledColor: Colors.teal,
              onRatingChanged: (value) => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("$value"))),
              initialRating: 2,
              maxRating: 5,
            ),
          ],
        ),
      ),
    );
  }
}
