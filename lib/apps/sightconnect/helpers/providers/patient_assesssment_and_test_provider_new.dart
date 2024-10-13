/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/mappers/triage_report_brief_mapper.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/mappers/triage_report_detailed_mapper.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessment_update_data_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';

final patientAssessmentAndTestProvider = ChangeNotifierProvider(
  (ref) => PatientAssessmentAndTestProviderNew(
    ref.watch(getAssessmentUseCase),
    ref.watch(globalPatientProvider).activeUser,
    ref.watch(triageReportRepositoryProvider),
    ref.watch(patientAssessmentUpdateDataProvider),
  ),
);

class PatientAssessmentAndTestProviderNew extends ChangeNotifier {
  final GetTriageUseCase _getTriageUseCase;
  final TriageReportRepository _triageReportRepository;
  final PatientResponseModel? _patient;
  TriageReportUserEntity? _selectedPatient;
  final PatientAssessmentUpdateDataProvider
      _patientAssessmentUpdateDataProvider;
  List<TriageReportBriefEntity> _triageReportList = [];
  final List<TriageReportBriefEntity> _clinicalReportList = [];
  final List<TriageReportBriefEntity> _finalReportList = [];
  final List<TriageReportBriefEntity> _selfTestReportList = [];
  static const int pageSize = 10;
  int _finalReportPage = 0;
  int _clinicalReportPage = 0;
  int _selfTestReportPage = 0;
  bool _hasFinalReportMore = true;
  bool _hasClinicalReportMore = true;
  bool _hasSelfTestReportMore = true;

  bool get hasFinalReportMore => _hasFinalReportMore;
  bool get hasClinicalReportMore => _hasClinicalReportMore;
  bool get hasSelfTestReportMore => _hasSelfTestReportMore;
  int get clinicalReportPage => _clinicalReportPage;

  bool _isLoading = false;
  bool _isUpdateLoading = false;
  bool _isReportLoading = false;
  bool _isFinalReportLoading = false;
  bool _isSelfTestReportLoading = false;
  bool _isClinicalReportLoading = false;
  var currentTriageReportId = 0;
  PatientAssessmentAndTestProviderNew(
    this._getTriageUseCase,
    this._patient,
    this._triageReportRepository,
    this._patientAssessmentUpdateDataProvider,
  ) {
    getPatients();
  }

  TriageReportUserEntity? get selectedPatient => _selectedPatient;
  bool get isLoading => _isLoading;
  bool get isUpdateLoading => _isUpdateLoading;
  bool get isReportLoading => _isReportLoading;
  bool get isFinalReportLoading => _isFinalReportLoading;
  bool get isSelfTestReportLoading => _isSelfTestReportLoading;
  bool get isClinicalReportLoading => _isClinicalReportLoading;

  List<TriageReportBriefEntity> get triageReportList => _triageReportList;
  List<TriageReportBriefEntity> get finalReportList => _finalReportList;
  List<TriageReportBriefEntity> get clinicalReportList => _clinicalReportList;
  List<TriageReportBriefEntity> get selfTestReportList => _selfTestReportList;

  Future<void> refeshReports() async {
    // _isFinalReportLoading = true;
    // _finalReportList = [];

    // notifyListeners();
    // await getTriageReportByPatientIdAndStatus();
    // return;
  }

  List<TriageReportUserEntity> getPatients() {
    List<TriageReportUserEntity> users = [];
    try {
      if (_patient?.profile?.patient?.patientId != null) {
        users.add(TriageReportUserEntity(
          name: _patient?.profile?.patient?.name ?? "",
          image: _patient?.profile?.patient?.profilePhoto ?? "",
          id: _patient!.profile!.patient!.patientId!,
        ));

        _patient?.profile?.patient?.relatedParty
            ?.forEach((RelatedPartyModel family) {
          if (family.patientId != null) {
            users.add(
              TriageReportUserEntity(
                name: family.name ?? "",
                image: family.profilePicture ?? "",
                id: family.patientId!,
              ),
            );
          }
        });
      }
    } catch (e) {
      logger.e({
        "getPatients": e.toString(),
      });
      return [];
    }

    _selectedPatient ??= users.first;

    return users;
  }

  Future<void> getTriageReportList() async {
    final selectedPatientId = _selectedPatient?.id;
    if (selectedPatientId == null) return;
    _isLoading = true;
    notifyListeners();
    var response = await _triageReportRepository
        .getAllTriageReportsByPatientId(selectedPatientId);

    response.fold(
      (failure) {
        _isLoading = false;
        notifyListeners();
        logger.d({"getTriageReports ": failure});
      },
      (triageAssessment) {
        _isLoading = false;
        notifyListeners();

        triageAssessment.sort((a, b) {
          return b.issued!.compareTo(a.issued!);
        });
        _triageReportList = _assessmentReportMapper(triageAssessment);
      },
    );
  }

  List<TriageReportBriefEntity> _assessmentReportMapper(
      List<TriageDetailedReportModel> triageAssessment) {
    try {
      final triageReportMapper = triageAssessment
          .map((e) => AssessmentReportMapper.toEntity(e))
          .toList();
      return triageReportMapper;
    } catch (e) {
      logger.d("AssessmentReportMapper: $e ");
      return [];
    }
  }

  Future<TriageDetailedReportModel> _getTriageReport(
    int reportId,
  ) async {
    _isUpdateLoading = true;
    notifyListeners();
    var response =
        await _triageReportRepository.getTriageReportByReportId(reportId);

    return response.fold(
      (failure) {
        logger.d({"_getTriageReport ": failure});
        _isUpdateLoading = false;
        notifyListeners();

        throw failure;
      },
      (triageAssessment) {
        _isUpdateLoading = false;
        notifyListeners();
        return triageAssessment;
      },
    );
  }

  Future<TriageReportDetailedEntity> getTriageDetailedReport(
    int reportId,
  ) async {
    try {
      _isReportLoading = true;
      notifyListeners();

      final response = await Future.wait([
        _getTriageUseCase.call(GetTriageParam()),
        _triageReportRepository.getTriageReportByReportId(reportId)
      ]);
      final triageAssessment = response[0].fold(
        (failure) {
          _isReportLoading = false;
          notifyListeners();
          logger.d({"_getTriageUseCase ": failure});
          throw failure;
        },
        (triageAssessment) {
          _isReportLoading = false;
          notifyListeners();
          return triageAssessment;
        },
      );
      final triageReport = response[1].fold(
        (failure) {
          _isReportLoading = false;
          notifyListeners();
          logger.d(
              {" _triageReportRepository.getTriageReportByReportId ": failure});
          throw failure;
        },
        (triageAssessment) {
          _isReportLoading = false;
          notifyListeners();
          return triageAssessment;
        },
      );

      // ignore: use_build_context_synchronously
      return AssessmentDetailedReportMapper.toEntity(
        _selectedPatient!,
        triageReport as TriageDetailedReportModel,
        triageAssessment as DiagnosticReportTemplateFHIRModel,
      );
    } catch (e) {
      logger.e({
        "getTriageDetailedReport": e.toString(),
        "provider": "PatientAssessmentAndTestProviderNew",
      });
      _isReportLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<List<UpdateTriageReportAlertBoxEntity>> updateTriage(
    int diagnosticReportId,
  ) async {
    try {
      _isUpdateLoading = true;
      notifyListeners();
      final triageReport = await _getTriageReport(diagnosticReportId);

      final response = _patientAssessmentUpdateDataProvider
          .getUpdateTriageReportAlertBoxEntityList(triageReport);

      _isUpdateLoading = false;
      notifyListeners();
      return response;
    } catch (e) {
      logger.d("updateTriage: $e ");
      _isUpdateLoading = false;
      notifyListeners();

      Fluttertoast.showToast(msg: e.toString());

      return [];
    }
  }

  Future<DiagnosticReportTemplateFHIRModel> getAssessmentDetail() async {
    notifyListeners();
    final triageAssessmentResponse =
        await _getTriageUseCase.call(GetTriageParam());
    return triageAssessmentResponse.fold(
      (failure) {
        logger.d({"getEyeTriageDetailedReport ": failure});
        throw failure;
      },
      (triageAssessment) {
        return triageAssessment;
      },
    );
  }

  void setPatient(TriageReportUserEntity patient) {
    _selectedPatient = patient;
    _finalReportList.clear();
    _clinicalReportList.clear();
    _selfTestReportList.clear();
    _finalReportPage = 0;
    _hasFinalReportMore = true;
    _clinicalReportPage = 0;
    _hasClinicalReportMore = true;
    _selfTestReportPage = 0;
    _hasSelfTestReportMore = true;
    notifyListeners();
    getTriageReportByPatientIdAndStatus();
  }

  resetVariables() {
    _clinicalReportList.clear();
    _selfTestReportList.clear();
    _clinicalReportPage = 0;
    _hasClinicalReportMore = true;
    _selfTestReportPage = 0;
    _hasSelfTestReportMore = true;
    notifyListeners();
  }

  Future<void> getTriageReportByPatientIdAndStatus() async {
    if (_isFinalReportLoading) {
      return;
    }
    _isFinalReportLoading = true;
    notifyListeners();
    final selectedPatientId = _selectedPatient?.id;
    final response =
        await _triageReportRepository.getTriageReportByPatientIdAndStatus(
      selectedPatientId!,
      DiagnosticReportStatus.FINAL,
      _finalReportPage,
      pageSize,
    );

    response.fold((failure) {
      logger.d({"getTriageReportByPatientIdAndStatusProvider ": failure});
      _isFinalReportLoading = false;
      notifyListeners();
    }, (triageAssessment) {
      if (triageAssessment.length < pageSize) {
        _hasFinalReportMore = false;
        notifyListeners();
      }
      _finalReportPage = _finalReportPage + 1;
      triageAssessment.sort((a, b) => b.issued!.compareTo(a.issued!));
      _finalReportList.addAll(_assessmentReportMapper(triageAssessment));

      _isFinalReportLoading = false;
      notifyListeners();
    });
  }

  Future<void> getTriageReportByEncounterId(
    int encounterId,
    bool isPatient,
  ) async {
    if (isPatient) {
      if (_isSelfTestReportLoading) {
        return;
      }
      _isSelfTestReportLoading = true;
      notifyListeners();
    } else {
      if (_isClinicalReportLoading) {
        return;
      }
      _isClinicalReportLoading = true;
      notifyListeners();
    }

    final response = await _triageReportRepository.getTriageReportByEncounterId(
      encounterId,
      [
        DiagnosticReportStatus.FINAL,
        DiagnosticReportStatus.AMENDED,
        DiagnosticReportStatus.CANCELLED,
      ],
      isPatient ? _selfTestReportPage : _clinicalReportPage,
      pageSize,
      isPatient
          ? "participant-role=PATIENT"
          : "participant-role=VISION_TECHNICIAN&participant-role=VISION_GUARDIAN", // This is the filter parameter
    );

    return response.fold((failure) {
      logger.d({"getTriageReportByEncounterId ": failure});

      _isSelfTestReportLoading = false;
      _isClinicalReportLoading = false;
      notifyListeners();
      throw failure;
    }, (triageAssessment) async {
      logger.d("Length: ${triageAssessment.length}");
      if (isPatient) {
        if (triageAssessment.length < pageSize) {
          _hasSelfTestReportMore = false;
          notifyListeners();
        }
        _selfTestReportPage = _selfTestReportPage + 1;
        // final output = triageAssessment
        //     .where((element) => element.performerRole == PerformerRole.PATIENT)
        //     .toList();

        triageAssessment.sort((a, b) => b.issued!.compareTo(a.issued!));
        _isSelfTestReportLoading = false;
        _isClinicalReportLoading = false;
        _selfTestReportList.addAll(_assessmentReportMapper(triageAssessment));
        notifyListeners();
      } else {
        if (triageAssessment.length < pageSize) {
          _hasClinicalReportMore = false;
          notifyListeners();
        }
        _clinicalReportPage = _clinicalReportPage + 1;
        // final output = triageAssessment
        //     .where((element) => element.performerRole != PerformerRole.PATIENT)
        //     .toList();
        // if (output.isEmpty && triageAssessment.isNotEmpty) {
        //   await getTriageReportByEncounterId(encounterId, isPatient);
        // }

        triageAssessment.sort((a, b) => b.issued!.compareTo(a.issued!));
        _isSelfTestReportLoading = false;
        _isClinicalReportLoading = false;
        _clinicalReportList.addAll(_assessmentReportMapper(triageAssessment));
        notifyListeners();
        logger.d({
          "hasClinicalReportMore": _hasClinicalReportMore,
          "length": triageAssessment.length,
          "output": triageAssessment.length,
        });
      }
    });
  }
}
