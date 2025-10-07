import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/insert_read_practice/add_data_screen.dart';
import 'package:flutter_projects/tasks_list/sqflite_task/insert_read_practice/my_db.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  late MyDb db = MyDb();
  List<Map> slist = [];

  @override
  void initState() {
    super.initState();
    db.open();
    getData();
  }

  void getData() async {
    slist = await db.db.rawQuery("SELECT * FROM profile");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile List"), backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: slist.length,
        itemBuilder: (context, index) {
          var stu = slist[index];
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  stu["name"],
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "Surname: ${stu["surname"]}, Email: ${stu["email"]}",
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddDataScreen()),
          ).then((_) => getData());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
