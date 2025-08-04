import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/second_task/current_mood.dart';
import 'package:flutter_projects/second_task/details.dart';
import 'package:flutter_projects/second_task/likes_counter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 80,
        leading: Container(
          margin: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://img.freepik.com/premium-vector/cute-girl-avatar-cartoon-illustration-vector_1338461-953.jpg",
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vaishvi Gandhi",style: TextStyle(fontWeight: FontWeight.w600)),
            Text("Flutter Developer", style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(content: Text("Tap again to exit!")),
        child: Column(
          children: [

            SizedBox(height: 30,),
            LikesCounter(),
            SizedBox(height: 30,),
            CurrentMood(),
            SizedBox(height: 30,),
            Details(),
          ],
        ),
      ),
    );
  }
}
