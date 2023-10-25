import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../models/triage_assessment.dart';

abstract class TriageLocalSource {
  Future<TriageAssessment> getTriage();
  Future<TriageAssessment> updateTriage({
    required TriageAssessment triage,
  });
  Future<void> saveTriage({
    required TriageAssessment triage,
  });
  Future<void> deleteTriage();
  Future<TriageResponse> saveTriageResponse({
    required TriageResponse triageResponse,
  });
  Future<TriageResponse> getTriageResponse();
}

class TriageLocalSourceImpl implements TriageLocalSource {
  static const _databaseName = 'triage';
  static const _tableName = 'triage_table';
  static const _databaseVersion = 1;
  static const _columnId = 'id';
  static const _columnTitle = 'title';
  static const _columnDescription = 'description';
  static const _columnIsCompleted = 'is_completed';
  static const _columnDueDate = 'due_date';

  static Database? _database;
  TriageLocalSourceImpl();

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  @override
  Future<void> deleteTriage() async {
    final db = await database;
    await db.delete(_tableName);
  }

  @override
  Future<TriageAssessment> getTriage() async {
    final db = await database;
    final maps = await db.query(_tableName);
    if (maps.isNotEmpty) {
      return TriageAssessment.fromJson(maps.first);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveTriage({required TriageAssessment triage}) async {
    final db = await database;
    await db.insert(
      _tableName,
      triage.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<TriageAssessment> updateTriage({
    required TriageAssessment triage,
  }) async {
    final db = await database;
    await db.update(
      _tableName,
      triage.toJson(),
      where: 'code = ?',
      whereArgs: [triage.code],
    );
    return triage;
  }

  @override
  Future<TriageResponse> getTriageResponse() async {
    final db = await database;
    final maps = await db.query(_tableName);
    if (maps.isNotEmpty) {
      return TriageResponse.fromJson(maps.first);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<TriageResponse> saveTriageResponse({
    required TriageResponse triageResponse,
  }) async {
    final db = await database;
    await db.insert(
      _tableName,
      triageResponse.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return triageResponse;
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

var triageLocalSource = Provider<TriageLocalSource>(
  (ref) => TriageLocalSourceImpl(),
);
