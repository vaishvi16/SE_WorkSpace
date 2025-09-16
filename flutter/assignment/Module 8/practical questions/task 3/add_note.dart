import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%203/notes_list.dart';

import 'db_helper.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  MyDb dbHelper = MyDb.instance;
  final _formKey = GlobalKey<FormState>();

  TextEditingController noteTitle = TextEditingController();
  TextEditingController noteDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
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
                  controller: noteTitle,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Title is empty!";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black87),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Title",
                    hintText: "Enter note title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                child: TextFormField(
                  controller: noteDesc,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Description is empty!";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black87),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Description",
                    hintText: "Enter note description",
                  ),
                  maxLines: null,
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
                       _insertNote();
                       Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => NotesList()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Adding Note Failed")),
                      );
                    }
                  },
                  child: Text(
                    "Add Note",
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

  Future<void> _insertNote() async{
    Map<String, dynamic> row =
    {
      MyDb.columnTitle: noteTitle.text.toString(),
      MyDb.columnDesc : noteDesc.text.toString()
    };
    print('insert stRT');

    final id = await dbHelper.insertNote(row);
    print('inserted row id: $id');
    noteTitle.text = "";
    noteDesc.text = "";
  }
}
