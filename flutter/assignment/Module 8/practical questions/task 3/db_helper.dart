import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDb
{
  //database details
  static final _dbname = "notes.db";
  static final _dbversion = 1;

  //Note table details
  static final tableNote = 'note';
  static final columnId = '_id';
  static final columnTitle = 'title';
  static final columnDesc = 'desc';


  //private constructor
  MyDb._privateconstructor();

  //database object
  Database? db;

  //initialization
  static final MyDb instance = MyDb._privateconstructor();

  //get database details
  Future<Database> get database async => db ??= await _initDatabase();

  _initDatabase()async
  {
    Directory directorypath = await getApplicationDocumentsDirectory();
    print(directorypath);

    String finalpath = join(directorypath.path,_dbname);
    print(finalpath);

    return await openDatabase(finalpath,version: _dbversion,onCreate: _oncreate);

  }

  Future<void> _oncreate(Database db,int version)async
  {
    await db.execute
      ('''
          CREATE TABLE $tableNote 
          (
            $columnId INTEGER PRIMARY KEY,
            $columnTitle TEXT NOT NULL,
            $columnDesc TEXT NOT NULL 
          )
        ''');

  }

  //insert note data
  Future<int> insertNote(Map<String, dynamic> row)async
  {
    Database? db = await instance.database;
    return await db.insert(tableNote,row);
  }

  //view note
  Future<List<Map<String, dynamic>>> viewNote() async
  {
    Database db = await instance.database;
    return await db.query(tableNote);//select * from notes table
  }

//update

  //delete
  Future<int> deleteNote(int id) async
  {
    Database db = await instance.database;
    return await db.delete(tableNote, where: '$columnId = ?', whereArgs: [id]);
  }




}