import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/main.dart';

class EBTimelineMapper {
  static List<EBTimelineEntity> mapToEntity(
      List<EBTimelineModel> model, EbTimelineConfigModel configModel) {
    logger.e("data inside mapper is $model \n $configModel");
    List<EBTimelineEntity> data = [];
    for (var m in model) {
      data.add(EBTimelineEntity(
        timelineName: configModel.timelineName,
        timelineVersion: configModel.timelineVersion,
        serviceRequestId: m.serviceRequestId,
        assessmentName: _getStageName(m.assessmentName),
        stageName: m.stageName,
        assessmentVersion: m.assessmentVersion,
        status: _getCaseStatus(m.status ?? ""),
        initiateDate: m.initiateDate,
        recentUpdatedTime: m.recentUpdated,
        subStages: null,
      ));
    }
    logger.f(data);
    final newConfigModel = configModel.copyWith(
      stages: configModel.stages!
          .where((stage) =>
              !model.any((element) => element.assessmentName == stage))
          .toList(),
    );
    logger.f("newConfigModel: $newConfigModel");

    for (var stage in newConfigModel.stages!) {
      data.add(EBTimelineEntity(
        timelineName: configModel.timelineName,
        timelineVersion: configModel.timelineVersion,
        serviceRequestId: null,
        assessmentName: _getStageName(stage),
        stageName: stage,
        assessmentVersion: null,
        status: EBCaseStatus.UNKNOWN,
        initiateDate: null,
        recentUpdatedTime: null,
        subStages: null,
      ));
    }

    return data;
  }

  static _getStageName(String? reason) {
    const reasons = EBStageName.values;
    for (var i = 0; i < reasons.length; i++) {
      if (reasons[i].name == reason) {
        return reasons[i];
      }
    }
  }

  static EBCaseStatus _getCaseStatus(String status) {
    switch (status) {
      case "PENDING":
        return EBCaseStatus.PENDING;
      case "COMPLETED":
        return EBCaseStatus.COMPLETED;
      case "IN_PROGRESS":
        return EBCaseStatus.IN_PROGRESS;
      case "CANCELLED":
        return EBCaseStatus.CANCELLED;
      default:
        return EBCaseStatus.UNKNOWN;
    }
  }

  static EBAssessmentName _getAssessmentName(String name) {
    switch (name) {
      case "INTIMATION":
        return EBAssessmentName.INTIMATION;
      case "PRELIMINARY_SCREENING":
        return EBAssessmentName.PRELIMINARY_SCREENING;
      case "CORNEA_RECOVERY":
        return EBAssessmentName.CORNEA_RECOVERY;
      case "SHIPPED_TO_EYEBANK":
        return EBAssessmentName.SHIPPED_TO_EYEBANK;
      case "RECEIVED_TO_EYEBANK":
        return EBAssessmentName.RECEIVED_TO_EYEBANK;
      case "SEROLOGY":
        return EBAssessmentName.SEROLOGY;
      case "CORNEA_EVALUATION":
        return EBAssessmentName.CORNEA_EVALUATION;
      case "IN_INVENTORY":
        return EBAssessmentName.IN_INVENTORY;
      case "UNKNOWN":
        return EBAssessmentName.UNKNOWN;
      case "ISSUE_ACQUISITION":
        return EBAssessmentName.ISSUE_ACQUISITION;
      case "ADVERSE_REACTION_REPORT":
        return EBAssessmentName.ADVERSE_REACTION_REPORT;
      case "DOCTOR_ASSESSMENT":
        return EBAssessmentName.DOCTOR_ASSESSMENT;
      default:
        return EBAssessmentName.UNKNOWN;
    }
  }
}

//  return configModel.stages!.map((stage) {
//       if (stage == model.assessmentName) {
//         return EBTimelineEntity(
//           timelineName: configModel.timelineName,
//           timelineVersion: configModel.timelineVersion,
//           serviceRequestId: model.serviceRequestId,
//           assessmentName: model.assessmentName,
//           stageName: model.stageName,
//           assessmentVersion: model.assessmentVersion,
//           status: model.status,
//           initiateDate: model.initiateDate,
//           recentUpdatedTime: model.recentUpdated,
//           subStages: model.subStages,
//         );
//       } else {
//         return EBTimelineEntity(
//           timelineName: configModel.timelineName,
//           timelineVersion: configModel.timelineVersion,
//           serviceRequestId: null,
//           assessmentName: model.assessmentName,
//           stageName: null,
//           assessmentVersion: null,
//           status: null,
//           initiateDate: null,
//           recentUpdatedTime: null,
//           subStages: null,
//         );
//       }
//     }).toList();

//  final String? timelineName;
//   final String? timelineVersion;
//   final int? serviceRequestId;
//   final String? assessmentName;
//   final String? stageName;
//   final String? assessmentVersion;
//   final String? status;
//   final DateTime? initiateDate;
//   final DateTime? recentUpdatedTime;
//   final List<String>? subStages;