import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  // Construtor privado
  DB._();
  // Instancia de DB
  static final DB instance = DB._();
  // Instancia do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'dnd.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_conta);
    //await db.execute(_ficha);
    //await db.execute(_pasta);
  }

  String get _conta => '''
    CREATE TABLE conta (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nomeDeUsuario TEXT,
      senha TEXT,
      email TEXT
    );
  ''';
}
