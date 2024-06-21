import 'dart:convert';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

var triageDBHelperProvider = Provider((ref) => TriageDBHelper());

class TriageDBHelper {
  static Database? _database;
  static const _databaseName = 'triage_db';

  /// Table names
  static const _triageAssessmentTableName = 'triage_assessment_table';
  static const _triageResponseTableName = 'triage_response_table';
  static const _triageQuestionnaireTableName = 'triage_questionnaire_table';
  static const _triageVisualAcuityTableName = 'triage_visual_acuity_table';
  static const _triageDistanceVisualAcuityName =
      'triage_distance_visual_acuity';
  static const _triageEyeScanTableName = 'triage_eye_scan_table';

  /// Columns
  static const _responseColumnName = 'response_json';
  static const _timeStampColumnName = 'time_stamp';
  static const _databaseVersion = 1;

  Future<Database> get database async {
    final pass =
        await PersistentAuthStateService.authState.getSQFlitePassword();
    logger.d('SQLITE PASS: $pass');

    if (_database == null) {
      try {
        _database = await _initDatabase(pass);
      } catch (e) {
        logger.d("Reinitializing database");
        await _reInitDatabase();
      }
    }

    return _database!;
  }

  _reInitDatabase() async {
    try {
      await deleteFullDatabase();
      final pass =
          await PersistentAuthStateService.authState.getSQFlitePassword();
      _database = await _initDatabase(pass);
    } catch (e, stackTrace) {
      logger.d('Error reinitializing database: $e\n$stackTrace');
      throw StateError('Failed to reinitialize database');
    }
  }

  Future<Database> _initDatabase(String pass) async {
    return openDatabase(
      join(await getDatabasesPath(), _databaseName),
      password: pass,
      onCreate: (db, _) {
        /// table for GET triage json
        db.execute('''
          CREATE TABLE $_triageAssessmentTableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );
        ''');

        /// table to save triarge response
        db.execute('''
          CREATE TABLE $_triageResponseTableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );

        ''');

        /// table to save triarge questionnaire
        db.execute('''
          CREATE TABLE $_triageQuestionnaireTableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
           $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );

        ''');

        /// table to save triarge visual acuity
        db.execute('''
          CREATE TABLE $_triageVisualAcuityTableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );

        ''');

        /// table to save triarge visual acuity
        db.execute('''
          CREATE TABLE $_triageDistanceVisualAcuityName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );

        ''');

        /// table to save triarge eye scan
        db.execute('''
          CREATE TABLE $_triageEyeScanTableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
            $_timeStampColumnName INT NOT NULL,
            $_responseColumnName TEXT NOT NULL
          );

        ''');
      },
      version: _databaseVersion,
    );
  }

  Future<dynamic> getTriageAssessment() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageAssessmentTableName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return json.decode(response.first[_responseColumnName].toString());
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage assessment: $e');
      return [];
    }
  }

  Future<dynamic> getTriageAssessmentResponse() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageResponseTableName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return json.decode(response.first[_responseColumnName].toString());
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage assessment response: $e');
      return [];
    }
  }

  Future<void> insertTriageAssessment(
      {required DiagnosticReportTemplateFHIRModel triageAssessment}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageAssessmentTableName, {
        _responseColumnName: json.encode(
          triageAssessment.toJson(),
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage assessment: $e');
    }
  }

  Future<void> insertTriageResponse(
      {required TriagePostModel triageResponse}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageResponseTableName, {
        _responseColumnName: json.encode(
          triageResponse.toJson(),
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage response: $e');
    }
  }

  Future<void> insertTriageQuestionnaire(
      {required List<PostTriageQuestionModel> triageQuestionnaire}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageQuestionnaireTableName, {
        _responseColumnName: json.encode(
          triageQuestionnaire,
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage questionnaire: $e');
    }
  }

  Future<void> insertTriageVisualAcuity(
      {required List<PostTriageObservationsModel> triageVisualAcuity}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageVisualAcuityTableName, {
        _responseColumnName: json.encode(
          triageVisualAcuity,
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage visual acuity: $e');
    }
  }

  Future<void> insertTriageDistanceVisualAcuity(
      {required List<PostTriageObservationsModel> triageVisualAcuity}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageDistanceVisualAcuityName, {
        _responseColumnName: json.encode(
          triageVisualAcuity,
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage visual acuity: $e');
    }
  }

  Future<void> insertTriageEyeScan(
      {required List<PostTriageImagingSelectionModel> triageEyeScan}) async {
    try {
      var dbClient = await database;
      await dbClient.insert(_triageEyeScanTableName, {
        _responseColumnName: json.encode(
          triageEyeScan,
        ),
        _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
      });
    } catch (e) {
      logger.d('Error inserting triage eye scan: $e');
    }
  }

  Future<List<PostTriageQuestionModel>> getTriageQuestionnaire() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageQuestionnaireTableName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return (json.decode(response.first[_responseColumnName].toString())
                as List)
            .map((e) => PostTriageQuestionModel.fromJson(e))
            .toList();
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage questionnaire: $e');
      return [];
    }
  }

  Future<List<PostTriageObservationsModel>> getTriageVisualAcuity() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageVisualAcuityTableName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return (json.decode(response.first[_responseColumnName].toString())
                as List)
            .map((e) => PostTriageObservationsModel.fromJson(e))
            .toList();
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage visual acuity: $e');
      return [];
    }
  }

  Future<List<PostTriageObservationsModel>>
      getTriageDistanceVisualAcuity() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageDistanceVisualAcuityName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return (json.decode(response.first[_responseColumnName].toString())
                as List)
            .map((e) => PostTriageObservationsModel.fromJson(e))
            .toList();
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage visual acuity: $e');
      return [];
    }
  }

  Future<List<PostTriageImagingSelectionModel>> getTriageEyeScan() async {
    try {
      var dbClient = await database;
      var response = await dbClient.query(_triageEyeScanTableName,
          orderBy: "id DESC", limit: 1);
      if (response.isNotEmpty) {
        return (json.decode(response.first[_responseColumnName].toString())
                as List)
            .map((e) => PostTriageImagingSelectionModel.fromJson(e))
            .toList();
      }
      return [];
    } catch (e) {
      logger.d('Error getting triage eye scan: $e');
      return [];
    }
  }

  Future<void> deleteTriageAssessment() async {
    var dbClient = await database;
    await dbClient.delete(_triageAssessmentTableName);
  }

  Future<void> deleteTriageResponse() async {
    var dbClient = await database;
    await dbClient.delete(_triageResponseTableName);
  }

  Future<void> deleteTriageQuestionnaire() async {
    var dbClient = await database;
    await dbClient.delete(_triageQuestionnaireTableName);
  }

  Future<void> deleteTriageVisualAcuity() async {
    var dbClient = await database;
    await dbClient.delete(_triageVisualAcuityTableName);
  }

  Future<void> deleteTriageDistanceVisualAcuity() async {
    var dbClient = await database;
    await dbClient.delete(_triageDistanceVisualAcuityName);
  }

  Future<void> deleteTriageEyeScan() async {
    var dbClient = await database;
    await dbClient.delete(_triageEyeScanTableName);
  }

  Future<bool> checkIsTriageResponseTwoDaysOld() async {
    var dbClient = await database;
    var response = await dbClient.query(_triageQuestionnaireTableName,
        orderBy: "id DESC", limit: 1);
    if (response.isNotEmpty) {
      var responseTimeStamp = response.first[_timeStampColumnName] as int;
      var currentTimeStamp = DateTime.now().toUtc().millisecondsSinceEpoch;
      var difference = currentTimeStamp - responseTimeStamp;
      var twoDaysInMilliseconds = 172800000;
      if (difference > twoDaysInMilliseconds) {
        return true;
      }
      return false;
    }
    return false;
  }

  Future<void> deleteDataTwoDaysOld() async {
    var dbClient = await database;
    DateTime twoDaysAgo =
        DateTime.now().toUtc().subtract(const Duration(days: 2));
    int twoDaysAgoTimestamp = twoDaysAgo.millisecondsSinceEpoch;
    await dbClient.delete(
      _triageResponseTableName,
      where: '$_timeStampColumnName <= ?',
      whereArgs: [twoDaysAgoTimestamp],
    );
  }

  Future<int> getTriageCurrentStep() async {
    var dbClient = await database;

    var questionnaireRecords =
        await dbClient.rawQuery('SELECT * FROM $_triageQuestionnaireTableName');
    var visualAcuityRecords =
        await dbClient.rawQuery('SELECT * FROM $_triageVisualAcuityTableName');
    var distanceVisualAcuityRecords = await dbClient
        .rawQuery('SELECT * FROM $_triageDistanceVisualAcuityName');
    var eyeScanRecords =
        await dbClient.rawQuery('SELECT * FROM $_triageEyeScanTableName');

    logger.d({
      'questionnaireRecords': questionnaireRecords,
      'visualAcuityRecords': visualAcuityRecords,
      'distanceVisualAcuityRecords': distanceVisualAcuityRecords,
      'eyeScanRecords': eyeScanRecords,
    });
    if (eyeScanRecords.isNotEmpty) {
      return 4;
    } else if (distanceVisualAcuityRecords.isNotEmpty) {
      return 3;
    } else if (visualAcuityRecords.isNotEmpty) {
      return 2;
    } else if (questionnaireRecords.isNotEmpty) {
      return 1;
    } else {
      return 0;
    }
  }

  // Delet all triage steps
  Future<void> deleteAllTriageSteps() async {
    await Future.wait([
      deleteTriageQuestionnaire(),
      deleteTriageVisualAcuity(),
      deleteTriageDistanceVisualAcuity(),
      deleteTriageEyeScan(),
    ]);
  }

  // Delete all tables
  Future<void> discardLocalTriageEntries() async {
    await Future.wait([
      deleteTriageAssessment(),
      deleteTriageResponse(),
      deleteTriageQuestionnaire(),
      deleteTriageVisualAcuity(),
      deleteTriageDistanceVisualAcuity(),
      deleteTriageEyeScan(),
    ]);
  }

  // Delete full database
  Future<void> deleteFullDatabase() async {
    final databasePath = await getDatabasesPath();
    String path = join(databasePath, _databaseName);
    await deleteDatabase(path);
    // SQFlite Password
    await PersistentAuthStateService.authState.deleteSQFlitePassword();
    _database = null;
  }
}
