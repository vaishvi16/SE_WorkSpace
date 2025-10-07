import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%202/add_todo_task.dart';
import 'package:flutter_projects/assignment/module%208/task%202/my_db_helper.dart';

class ToDoListingScreen extends StatefulWidget {
  const ToDoListingScreen({super.key});

  @override
  State<ToDoListingScreen> createState() => _ToDoListingScreenState();
}

class _ToDoListingScreenState extends State<ToDoListingScreen> {

  final dbHelper = MyDbHelper.instance;
  List<Map<String, dynamic>> taskList = [];

  @override
  void initState() {
    // TODO: implement initState
    viewtaskList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My To DO List"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var indexList = taskList[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.square_outlined),
              title: Text(indexList['title']),
              trailing: GestureDetector(
                  onTap: () {
                    deletetaskData(indexList['_id']);
                  },
                  onHorizontalDragEnd: (details) {
                    deletetaskData(indexList['_id']);
                  },
                  child: Icon(Icons.delete)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddTodoList()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void viewtaskList() async {
    final allRows = await dbHelper.viewTask();
    allRows.forEach(print);
    taskList = allRows;
    print(taskList.length);
    setState(() {});
  }

  void deletetaskData(id) async {
    final rowsDeleted = await dbHelper.deleteTask(id);
    print('deleted $rowsDeleted row(s): row $id');
    viewtaskList();
  }
}
