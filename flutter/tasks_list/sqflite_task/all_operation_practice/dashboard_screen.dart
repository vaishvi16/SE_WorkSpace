import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/all_operation_practice/add_profile.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/all_operation_practice/database_file.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/all_operation_practice/edit_profile.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late myDatabase my_db = myDatabase();
  List profileList = [];

  @override
  void initState() {
    super.initState();

    initializeDatabase();
  }

  Future<void> initializeDatabase() async {
    await my_db.open();
    await getData();
  }

  Future<void> getData() async {
    profileList = await my_db.my_db.rawQuery("SELECT * FROM List");
    setState(() {});
    print("Length is: ${profileList.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 21,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: profileList.length,
        itemBuilder: (context, index) {
          var details = profileList[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(details["name"]),
              subtitle: Text(details["surname"]),
              trailing: Wrap(children: [
                IconButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(emailValue: details["email"],),));
                }, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {
                    deleteData(details["email"]);
                }, icon: Icon(Icons.delete))
              ],),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddProfile()),
          );
        },
      ),
    );
  }

  void deleteData(email) async{
    my_db.my_db.rawDelete("DELETE FROM List where email=?", [email]);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Profile Deleted")));
    setState(() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));
  }
}
