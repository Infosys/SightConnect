import 'dart:convert';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/services/sqflite_service.dart';
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
  static const _triageEyeScanTableName = 'triage_eye_scan_table';

  /// Columns
  static const _responseColumnName = 'response_json';
  static const _timeStampColumnName = 'time_stamp';
  static const _databaseVersion = 1;

  Future<Database> get database async {
    final pass =
        await PersistentAuthStateService.authState.getSQFlitePassword();

    _database ??= await _initDatabase(pass);
    return _database!;
  }

  Future<Database> _initDatabase(String pass) async {
    try {
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
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<dynamic> getTriageAssessment() async {
    var dbClient = await database;
    var response = await dbClient.query(_triageAssessmentTableName,
        orderBy: "id DESC", limit: 1);
    if (response.isNotEmpty) {
      return json.decode(response.first[_responseColumnName].toString());
    }
    return [];
  }

  Future<dynamic> getTriageAssessmentResponse() async {
    var dbClient = await database;
    var response = await dbClient.query(_triageResponseTableName,
        orderBy: "id DESC", limit: 1);
    if (response.isNotEmpty) {
      return json.decode(response.first[_responseColumnName].toString());
    }
    return [];
  }

  Future<void> insertTriageAssessment(
      {required DiagnosticReportTemplateFHIRModel triageAssessment}) async {
    var dbClient = await database;
    await dbClient.insert(_triageAssessmentTableName, {
      _responseColumnName: json.encode(
        triageAssessment.toJson(),
      ),
      _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
    });
  }

  Future<void> insertTriageResponse(
      {required TriagePostModel triageResponse}) async {
    var dbClient = await database;
    await dbClient.insert(_triageResponseTableName, {
      _responseColumnName: json.encode(
        triageResponse.toJson(),
      ),
      _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
    });
  }

  Future<void> insertTriageQuestionnaire(
      {required List<PostTriageQuestionModel> triageQuestionnaire}) async {
    var dbClient = await database;
    await dbClient.insert(_triageQuestionnaireTableName, {
      _responseColumnName: json.encode(
        triageQuestionnaire,
      ),
      _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
    });
  }

  Future<void> insertTriageVisualAcuity(
      {required List<PostTriageObservationsModel> triageVisualAcuity}) async {
    var dbClient = await database;
    await dbClient.insert(_triageVisualAcuityTableName, {
      _responseColumnName: json.encode(
        triageVisualAcuity,
      ),
      _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
    });
  }

  Future<void> insertTriageEyeScan(
      {required List<PostTriageImagingSelectionModel> triageEyeScan}) async {
    var dbClient = await database;
    await dbClient.insert(_triageEyeScanTableName, {
      _responseColumnName: json.encode(
        triageEyeScan,
      ),
      _timeStampColumnName: DateTime.now().toUtc().millisecondsSinceEpoch,
    });
  }

  Future<List<PostTriageQuestionModel>> getTriageQuestionnaire() async {
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
  }

  Future<List<PostTriageObservationsModel>> getTriageVisualAcuity() async {
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
  }

  Future<List<PostTriageImagingSelectionModel>> getTriageEyeScan() async {
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

  Future<void> deleteTriageEyeScan() async {
    var dbClient = await database;
    await dbClient.delete(_triageEyeScanTableName);
  }

  Future<void> deleteAllTriageSteps() async {
    await deleteTriageQuestionnaire();
    await deleteTriageVisualAcuity();
    await deleteTriageEyeScan();
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
    var eyeScanRecords =
        await dbClient.rawQuery('SELECT * FROM $_triageEyeScanTableName');

    logger.d({
      'questionnaireRecords': questionnaireRecords,
      'visualAcuityRecords': visualAcuityRecords,
      'eyeScanRecords': eyeScanRecords,
    });
    if (eyeScanRecords.isNotEmpty) {
      return 3;
    } else if (visualAcuityRecords.isNotEmpty) {
      return 2;
    } else if (questionnaireRecords.isNotEmpty) {
      return 1;
    } else {
      return 0;
    }
  }
}
