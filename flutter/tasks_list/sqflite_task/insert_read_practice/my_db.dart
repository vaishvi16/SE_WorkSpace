import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDb {
  late Database db;

  Future open() async {
    var path = await getDatabasesPath();
    String dbPath = join(path, 'details.db');
    print("Path: $dbPath");

    db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (Database db, int version) async {
        db.execute('''
            
             CREATE TABLE IF NOT EXISTS profile( 
                          id INTEGER primary key AUTOINCREMENT,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          email varchar(255) not null
                      );

                     ''');
      },
    );
    print("table created");
  }
}
