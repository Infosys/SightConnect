import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

var triageDBHelperProvider = Provider((ref) => TriageDBHelper());

class TriageDBHelper {
  static const _databaseName = 'triage';
  static const _tableName = 'triage_table';
  static const _databaseVersion = 1;
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnDescription = 'description';
  static const _columnIsCompleted = 'is_completed';
  static const _columnDueDate = 'due_date';
  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      onCreate: (db, _) {
        db.execute('''
          CREATE TABLE $_tableName(
            $_columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_columnTitle TEXT NOT NULL,
            $_columnDescription TEXT,
            $_columnIsCompleted INTEGER NOT NULL,
            $_columnDueDate TEXT NOT NULL
          )
        ''');
      },
      version: _databaseVersion,
    );
  }
}
