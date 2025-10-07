import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/module%208/task%203/add_note.dart';

import 'db_helper.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  final dbHelper = MyDb.instance;
  List<Map<String, dynamic>> notesList = [];

  @override
  void initState() {
    // TODO: implement initState
    viewNoteData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notes"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: notesList.length,
        itemBuilder: (context, index) {
          var indexList = notesList[index];
          return Card(
            child: ListTile(
              title: Text(indexList['title']),
              subtitle: Text(indexList['desc']),
              trailing: GestureDetector(
                  onTap: () {
                    deleteNoteData(indexList['_id']);
                  },
                  onHorizontalDragEnd: (details) {
                   deleteNoteData(indexList['_id']);
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
            MaterialPageRoute(builder: (context) => AddNote()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void viewNoteData() async {
    final allRows = await dbHelper.viewNote();
    allRows.forEach(print);
    notesList = allRows;
    print("tops1234");
    print(notesList.length);
    setState(() {});
  }

  void deleteNoteData(id) async {
    final rowsDeleted = await dbHelper.deleteNote(id);
    print('deleted $rowsDeleted row(s): row $id');
    viewNoteData();
  }
}
