import 'dart:math' as math;

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart'
    hide Performer;
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart'
    as update_model;
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_urgency_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart'
    as triage_detailed_model;
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as mat;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../core/providers/global_visual_acuity_provider.dart';
import '../../../../../triage/domain/models/enums/observation_code.dart';
import '../../../../../triage/domain/models/enums/performer_role.dart';
import '../../../../data/local/tumbling_local_source.dart';
import '../../../../domain/enums/tumbling_enums.dart';
import '../../../../domain/models/tumbling_models.dart';

typedef FinalEyesReport = Map<Eye, Map<int, List<UserResponse>>>;
typedef SingleEyeReport = Map<int, List<UserResponse>>;

var tumblingTestProvider = ChangeNotifierProvider(
  (ref) => VisualAcuityTestProvider(
    ref.watch(tumblingLocalSource),
    ref.read(triageLocalSourceProvider),
    ref.watch(triageRepositoryProvider),
    ref.watch(triageReportRepositoryProvider),
    ref.watch(triageUrgencyRepositoryProvider),
    ref,
  ),
);

class VisualAcuityTestProvider with ChangeNotifier {
  final TumblingLocalSource _dataSource;
  TriageLocalSource triageLocalSourceProvider;
  TriageRepository triageRepositoryProvider;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final TriageReportRepository _triageReportRepository;
  final Ref _ref;
  VisualAcuityTestProvider(
      this._dataSource,
      this.triageLocalSourceProvider,
      this.triageRepositoryProvider,
      this._triageReportRepository,
      this._triageUrgencyRepository,
      this._ref) {
    startGame(Eye.right);
  }
  late Level? _level;
  late GameMode? _gameMode;
  late Eye? _currentEye;
  late int? _currentLevel;
  late int? _currentIndex;
  late bool? _isGameOver;
  late int? _maxLevel;
  late int? _totalWrongLevelResponse;
  bool isTestCompleted = false;

  int? _currentMaxLevelLeftEye;
  int? _currentMaxLevelRightEye;
  int? _currentMaxLevelBothEye;

  late List<UserResponse>? _currentLevelUserResponses;
  late SingleEyeReport? _singleEyeReport;
  final FinalEyesReport _eyesFinalReport = {};
  set setIsTestCompleted(bool value) {
    isTestCompleted = value;
    notifyListeners();
  }

  void startGame(Eye eye) {
    _eyesFinalReport[eye] = {};
    _gameMode = GameMode.regular;
    _currentEye = eye;
    _currentLevel = 0;
    _currentIndex = 0;
    _maxLevel = _dataSource.maxLevel;
    _isGameOver = false;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(0, GameMode.regular);

    if (eye == Eye.left) {
      _currentMaxLevelLeftEye = 0;
    }
    if (eye == Eye.right) {
      _currentMaxLevelRightEye = 0;
    }
    if (eye == Eye.both) {
      _currentMaxLevelBothEye = 0;
    }

    _singleEyeReport = {};
    _dataSource.resetTestState();
  }

  Level? get level => _level;
  GameMode? get gameMode => _gameMode;
  Eye? get currentEye => _currentEye;
  int? get currentLevel => _currentLevel;
  int? get currentIndex => _currentIndex;
  bool? get isGameOver => _isGameOver;
  int? get maxLevel => _maxLevel;

  void handUserResponse(UserResponse userResponse) {
    bool isSwipeCorrect = _isUserSwipeDirectionRight(
      userResponse.swipeDirection,
      _level!.questions[_currentIndex!].direction,
    );

    if (isSwipeCorrect) {
      userResponse.isUserResponseCorrect = true;
      _level!.questions[_currentIndex!].questionStatus = QuestionStatus.right;
    } else {
      userResponse.isUserResponseCorrect = false;
      _level!.questions[_currentIndex!].questionStatus = QuestionStatus.wrong;
    }
    _currentLevelUserResponses!.add(userResponse);
    if (isSwipeCorrect) {
      _handleRightResponse(userResponse);
    } else {
      _handleWrongResponse(userResponse);
    }

    if (kDebugMode) {
      logger.d({
        '_currentIndex': _currentIndex,
        '_currentLevel': _currentLevel,
        '_isGameOver': _isGameOver,
        '_gameMode': _gameMode,
        '_totalWrongLevelResponse': _totalWrongLevelResponse,
        "_eyesFinalReport": _eyesFinalReport,
      });
    }

    notifyListeners();
  }

  void _handleRightResponse(UserResponse userResponse) {
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;

    if (_gameMode == GameMode.regular) {
      _moveToNextLevel();
    } else if (_gameMode == GameMode.isFive) {
      if (_currentIndex! + 1 == _level!.totalQuestions) {
        _moveToNextLevel();
      } else {
        _moveToNextQuestion();
      }
    }
  }

  void _handleWrongResponse(UserResponse userResponse) {
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;
    _totalWrongLevelResponse = _totalWrongLevelResponse! + 1;

    if (_gameMode == GameMode.regular) {
      if (_currentLevel! == 0) {
        _endGame();
      } else {
        _transitionToIsFiveMode();
      }
    } else if (_gameMode == GameMode.isFive) {
      if (_totalWrongLevelResponse == 3) {
        _endGame();
      } else if (_currentIndex! + 1 == _level!.totalQuestions) {
        _moveToNextLevel();
      } else {
        _moveToNextQuestion();
      }
    }
  }

  void _moveToNextQuestion() {
    _currentIndex = _currentIndex! + 1;
    notifyListeners();
  }

  void _moveToNextLevel() {
    if (currentEye == Eye.left) {
      _currentMaxLevelLeftEye = _currentMaxLevelLeftEye! + 1;
    } else if (currentEye == Eye.right) {
      _currentMaxLevelRightEye = _currentMaxLevelRightEye! + 1;
    } else if (currentEye == Eye.both) {
      _currentMaxLevelBothEye = _currentMaxLevelBothEye! + 1;
    }

    if (_currentLevel == maxLevel) {
      _endGame();
      return;
    }
    _currentLevel = _currentLevel! + 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);
    notifyListeners();
  }

  void _transitionToIsFiveMode() {
    _gameMode = GameMode.isFive;
    _currentLevel = _currentLevel! - 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);

    if (currentEye == Eye.left) {
      _currentMaxLevelLeftEye = math.max(_currentMaxLevelLeftEye! - 1, 0);
    } else if (currentEye == Eye.right) {
      _currentMaxLevelRightEye = math.max(_currentMaxLevelRightEye! - 1, 0);
    } else if (currentEye == Eye.both) {
      _currentMaxLevelBothEye = math.max(_currentMaxLevelBothEye! - 1, 0);
    }

    notifyListeners();
  }

  void _endGame() {
    _isGameOver = true;
    _eyesFinalReport[_currentEye!] = _singleEyeReport!;
    notifyListeners();
  }

  bool _isUserSwipeDirectionRight(
    QuestionDirection userSwipDirection,
    QuestionDirection questionDirection,
  ) {
    return userSwipDirection == questionDirection;
  }

  void reset() {
    startGame(Eye.right);
    notifyListeners();
  }

  double calculateEyeSight(Eye eye) {
    if (eye == Eye.left) {
      var maxLevelNew = math.max(_currentMaxLevelLeftEye! - 1, 0);
      logger.d("maxLevelNew Left: $maxLevelNew");

      var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
      return _dataSource.lookUpLogMarTable(log);
    } else if (eye == Eye.right) {
      var maxLevelNew = math.max(_currentMaxLevelRightEye! - 1, 0);
      logger.d("maxLevelNew Right: $maxLevelNew");

      var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
      return _dataSource.lookUpLogMarTable(log);
    }

    var maxLevelNew = math.max(_currentMaxLevelBothEye! - 1, 0);
    logger.d("maxLevelNew Both: $maxLevelNew");
    var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
    return _dataSource.lookUpLogMarTable(log);
  }

  double _calculateScore(double value) {
    logger.d("Tumbling Test Value: $value");
    if (value >= 1) {
      return 5.0;
    } else if (value >= 0.5) {
      return 3.0;
    } else {
      return 0;
    }
  }

  String getCurrentEyeText(mat.BuildContext context, Eye eye) {
    final loc = context.loc!;
    return switch (eye) {
      Eye.left => loc.leftEyeString,
      Eye.right => loc.rightEyeString,
      Eye.both => loc.bothEyesString
    };
  }

  /// set patient vision acuity tumbling based on the TriageAssessment model
  Future<List<PostTriageObservationsModel>>
      getVisionAcuityTumblingResponse() async {
    double leftEyeSight = calculateEyeSight(Eye.left);
    double rightEyeSight = calculateEyeSight(Eye.right);
    double bothEyeSight = calculateEyeSight(Eye.both);

    double leftEyeScore = _calculateScore(leftEyeSight);
    double rightEyeScore = _calculateScore(rightEyeSight);
    double bothEyeScore = _calculateScore(bothEyeSight);

    int? rightEyeIndentifier;
    int? leftEyeIndentifier;
    int? bothEyeIndentifier;

    final response = await triageRepositoryProvider.getAssessment();
    final assessment = response.fold((l) {
      throw ServerFailure(errorMessage: "Failed to get assessment");
    }, (r) => r);

    assessment.observations?.observationDefinition?.forEach((element) {
      if (element.code == ObservationCode.LOGMAR_NEAR) {
        if (element.bodySite == BodySite.LEFT_EYE) {
          leftEyeIndentifier = element.id;
        }
        if (element.bodySite == BodySite.RIGHT_EYE) {
          rightEyeIndentifier = element.id;
        }
        if (element.bodySite == BodySite.BOTH_EYES) {
          bothEyeIndentifier = element.id;
        }
      }
    });

    List<PostTriageObservationsModel> observationList = [
      PostTriageObservationsModel(
        identifier: leftEyeIndentifier,
        value: leftEyeSight.toStringAsFixed(3),
        score: leftEyeScore,
      ),
      PostTriageObservationsModel(
        identifier: rightEyeIndentifier,
        value: rightEyeSight.toStringAsFixed(3),
        score: rightEyeScore,
      ),
      PostTriageObservationsModel(
        identifier: bothEyeIndentifier,
        value: bothEyeSight.toStringAsFixed(3),
        score: bothEyeScore,
      ),
    ];

    return observationList;
  }

  Future<TriageDetailedReportModel?> getTriageReportByReportId(
      int reportId) async {
    final response =
        await _triageReportRepository.getTriageReportByReportId(reportId);
    return response.fold(
      (failure) => null,
      (result) => result,
    );
  }

  Future<void> saveVisionAcuityResponseToDB() async {
    try {
      var res = await getVisionAcuityTumblingResponse();
      logger.d({"saveVisionAcuityResponseToDB ": res});
      await triageLocalSourceProvider.saveTriageVisualAcuityLocally(
        triageVisualAcuity: res,
      );
      reset();
      _ref.read(globalVisualAcuityProvider).setShortDistanceTest(false);
    } catch (e) {
      logger.e("$e");
      throw ServerFailure(
        errorMessage: "Failed to save vision acuity response locally",
      );
    }
  }

  int? _diagnosticReportId;
  int? get diagnosticReportId => _diagnosticReportId;

  set setDiagnosticReportId(int value) {
    _diagnosticReportId = value;
  }

  Future<Either<Failure, TriagePostModel>>
      updateVisualAcuityTumblingResponse() async {
    try {
      final int drId = _ref.read(globalVisualAcuityProvider).dignosticReportID;
      final visionAcuityTumblingResponse =
          await getVisionAcuityTumblingResponse();
      final reportModel = await getTriageReportByReportId(drId);

      if (reportModel == null) {
        throw ServerFailure(
            errorMessage: "Could not fetch report of id $diagnosticReportId");
      }

      TriageUpdateModel triage = TriageUpdateModel(
        patientId: reportModel.subject,
        diagnosticReportId: reportModel.diagnosticReportId,
        organizationCode: reportModel.organizationCode,
        tenantCode: reportModel.tenantCode,
        performer: [
          Performer(
            role: PerformerRole.PATIENT,
            identifier: reportModel.subject,
          ),
        ],
        assessmentCode: reportModel.assessmentCode,
        assessmentVersion: reportModel.assessmentVersion,
        issued: reportModel.issued,
        source: Source.PATIENT_APP,
        sourceVersion: AppInfoService.appVersion,
        incompleteSection: _getIncompleteTestList(reportModel.incompleteTests),
        score: _getScore(visionAcuityTumblingResponse),
        cummulativeScore: _getCummulativeScore(visionAcuityTumblingResponse),
        observations: _getObservationsToBeUpdated(
            reportModel.observations ?? [], visionAcuityTumblingResponse),
      );

      reset();
      return triageRepositoryProvider.updateTriageResponse(
        triageResponse: triage,
      );
    } catch (e) {
      rethrow;
    }
  }

  int _getCummulativeScore(res) {
    final observationScore = _triageUrgencyRepository.visualAcuityUrgency(res);
    return observationScore.toInt();
  }

  List<Map<String, int>> _getScore(res) {
    final observationScore = _triageUrgencyRepository.visualAcuityUrgency(res);

    return [
      {"QUESTIONNAIRE": 0},
      {
        "OBSERVATION": observationScore.toInt(),
      },
      {"IMAGE": 0}
    ];
  }

  List<update_model.IncompleteTestModel> _getIncompleteTestList(
      List<triage_detailed_model.IncompleteTestModel>? incompleteTestList) {
    List<update_model.IncompleteTestModel> incompleteTestModelList = [];

    incompleteTestList?.forEach((element) {
      if (element.testName != TestType.OBSERVATION) {
        incompleteTestModelList.add(
          update_model.IncompleteTestModel(
            testName: element.testName,
          ),
        );
      }
    });

    return incompleteTestModelList;
  }

  List<PatchObservationsModel>? _getObservationsToBeUpdated(
      List<Observation> observations,
      List<PostTriageObservationsModel> visionAcuityTumblingResponse) {
    List<PatchObservationsModel> observationsToBeUpdated = [];
    for (Observation observation in observations) {
      PatchObservationsModel patchObservationsModel = PatchObservationsModel(
        id: observation.id,
        action: Action.REMOVE,
        identifier: observation.identifier,
        value: observation.value,
        score: observation.score,
      );
      observationsToBeUpdated.add(patchObservationsModel);
    }

    for (PostTriageObservationsModel postTriageObservationsModel
        in visionAcuityTumblingResponse) {
      PatchObservationsModel patchObservationsModel = PatchObservationsModel(
        action: Action.ADD,
        identifier: postTriageObservationsModel.identifier,
        value: postTriageObservationsModel.value,
        score: postTriageObservationsModel.score,
      );
      observationsToBeUpdated.add(patchObservationsModel);
    }
    return observationsToBeUpdated;
  }
}
