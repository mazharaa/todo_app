import 'dart:io';

import 'package:sqflite/sqflite.dart';

Future<void> databaseDeletion() async {
  final dbPath = await getDatabasesPath();
  final filePath = '$dbPath/app.db';

  final file = File(filePath);
  if (await file.exists()) {
    await file.delete();
    print('Database deleted successfully');
  } else {
    print('Database does not exist');
  }
}
