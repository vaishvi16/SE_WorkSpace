import 'package:flutter/material.dart';

class Task27 extends StatefulWidget {
  const Task27({super.key});

  @override
  State<Task27> createState() => _Task27State();
}

class _Task27State extends State<Task27> {

  List profileImage = [
    "https://static.vecteezy.com/system/resources/previews/024/183/525/non_2x/avatar-of-a-man-portrait-of-a-young-guy-illustration-of-male-character-in-modern-color-style-vector.jpg",
    "https://img.freepik.com/premium-vector/man-avatar-profile-picture-isolated-background-avatar-profile-picture-man_1293239-4841.jpg",
    "https://as1.ftcdn.net/jpg/01/13/41/66/1000_F_113416666_a7CuS6cvc6D5P5ezUbsTMexJHm9iAgga.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmaqoFgOq5cSonP65ihEsDtNtNaUi2xiOzg&s",
    "https://img.freepik.com/premium-vector/woman-face-round-avatar_594966-10.jpg",
    "https://img.freepik.com/premium-vector/young-man-avatar-character-due-avatar-man-vector-icon-cartoon-illustration_1186924-4438.jpg"
  ];

  List profileName = ["Abhishek", "Yash", "Kaira", "Riyansh", "Alyza", "Riva"];

  List profileDesignation = ["Flutter Developer", "Web Designer", "Ui/Ux Designer", "Frontend Developer", "Web Developer", "Python Developer"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 27"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: profileName.length,
        itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child:
          Image.network(profileImage[index],
            fit: BoxFit.fill,),),
          title: Text(profileName[index], style: TextStyle(fontWeight: FontWeight.w800),),
          subtitle: Text(profileDesignation[index], style: TextStyle(fontWeight: FontWeight.w500),),
          trailing: Icon(Icons.favorite_border_rounded),
        );
      },),
    );
  }
}
