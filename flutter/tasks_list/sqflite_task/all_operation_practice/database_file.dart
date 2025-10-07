import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class myDatabase {
  late Database my_db;

  Future open() async {
    var path = await getDatabasesPath();
    print(path);
    var dbPath = join(path, 'profile.db');
    print(dbPath);

    my_db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        db.execute('''
         CREATE TABLE List(
          id INTEGER primary key AUTOINCREMENT,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          email varchar(255) not null
         )
       ''');
      },
    );

    print("Table created!!");
  }

  Future getDetails(String email) async{
   var values= await my_db.query('List', where: 'email= ?' ,whereArgs: [email] );
    if(values.isNotEmpty)
    {
      return values.first;
    }
    return null;
  }
}
