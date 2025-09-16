import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDbHelper {
  //database details
  static final _dbname = "todo.db";
  static final _dbversion = 1;

  //Note table details
  static final tablename = 'task';
  static final columnId = '_id';
  static final columnTitle = 'title';

  //private constructor
  MyDbHelper._privateconstructor();

  //database object
  Database? db;

  //initialization
  static final MyDbHelper instance = MyDbHelper._privateconstructor();

  //get database details
  Future<Database> get database async => db ??= await _initDatabase();

  _initDatabase() async {
    Directory directorypath = await getApplicationDocumentsDirectory();
    print(directorypath);

    String finalpath = join(directorypath.path, _dbname);
    print(finalpath);

    return await openDatabase(
      finalpath,
      version: _dbversion,
      onCreate: _oncreate,
    );
  }

  Future<void> _oncreate(Database db, int version) async {
    await db.execute
      ('''
          CREATE TABLE $tablename 
          (
            $columnId INTEGER PRIMARY KEY,
            $columnTitle TEXT NOT NULL
          )
        ''');
  }

  //insert note data
  Future<int> insertTask(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db.insert(tablename, row);
  }

  //view note
  Future<List<Map<String, dynamic>>> viewTask() async {
    Database db = await instance.database;
    return await db.query(tablename); //select * from todo table
  }

  //update

  //delete
  Future<int> deleteTask(int id) async {
    Database db = await instance.database;
    return await db.delete(tablename, where: '$columnId = ?', whereArgs: [id]);
  }
}
