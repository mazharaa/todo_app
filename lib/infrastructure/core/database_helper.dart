import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/domain/user/user.dart';

@LazySingleton() // Register as singleton with injectable
class DatabaseHelper {
  Database? _database;

  static Future<DatabaseHelper> create() async {
    final helper = DatabaseHelper();
    await helper._initDB('app_database.db');
    return helper;
  }

  Future<void> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    try {
      _database = await openDatabase(
        path,
        version: 1,
        onCreate: _createDB,
      );
    } catch (e) {
      // Handle database opening error (e.g., print error message)
      throw Exception('Failed to initialize database: $e');
    }
  }

  Future _createDB(Database db, int version) async {
    const userTable = '''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL
      )
    ''';
    await db.execute(userTable);
  }

  Future<int> insertUser(String name, String email, String password) async {
    final db = await _database!; // Access database after initialization
    final id = await db.insert(
      'users',
      {'name': name, 'email': email, 'password': password},
    );
    return id;
  }

  Future<User?> querryUser(String email) async {
    final db = await _database!; // Access database after initialization
    final maps = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      return null;
    }
  }
}
