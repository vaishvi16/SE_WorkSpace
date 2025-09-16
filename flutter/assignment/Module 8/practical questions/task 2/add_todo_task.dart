import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%202/to_do_listing_screen.dart';

import 'my_db_helper.dart';

class AddTodoList extends StatefulWidget {
  const AddTodoList({super.key});

  @override
  State<AddTodoList> createState() => _AddTodoListState();
}

class _AddTodoListState extends State<AddTodoList> {
  MyDbHelper dbHelper = MyDbHelper.instance;
  final _formKey = GlobalKey<FormState>();

  TextEditingController taskTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My To DO List"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                child: TextFormField(
                  controller: taskTitle,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Task name is empty!";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black87),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Todo Task",
                    hintText: "Enter TodoTask",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.teal.shade200,
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _insertTask();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ToDoListingScreen()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Adding Task Failed")),
                      );
                    }
                  },
                  child: Text(
                    "Add Task",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _insertTask() async{
    Map<String, dynamic> row =
    {
      MyDbHelper.columnTitle: taskTitle.text.toString(),
    };
    print('insert stRT');

    final id = await dbHelper.insertTask(row);
    print('inserted row id: $id');
    taskTitle.text = "";
  }
}
