import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/code.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/enums/status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/source/vt_care_plan_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/model/care_plan_model.dart';

var carePlanViewModelProvider =
    ChangeNotifierProvider((ref) => CarePlanViewModel(
          ref.read(carePlanProvider),
          ref,
        ));

class CarePlanViewModel extends ChangeNotifier {
  final CarePlanProvider _carePlanProvider;
  Ref ref;

  CarePlanViewModel(
    this._carePlanProvider,
    this.ref,
  );

  Future<CarePlanModel> saveCarePlan() async {
    final String patientInstruction = _carePlanProvider.patientInstruction;

    const response = CarePlanModel(
      //take data from json like id = 33200000002
      reports: [
        ReportModel(id: 33200000071),
      ],
      encounterId: 33300000033,
      organizationCode: 1001,
      performer: [
         PerformerModel(role: Role.VISION_TECHNICIAN, identifier: 1601),
      ],
      conditions: [
        ConditionModel(
          recordedDate: "2023-10-12T14:11:33.000Z",
          bodySite: BodySite.LEFT_EYE,
          code: Code.EYE_TRIAGE,
          note: "",
        ),
      ],
      serviceRequest: [
        ServiceRequestModel(
          note: "",
          patientInstruction: PatientInstruction.VISIT_PRIMARY_CLINIC,
          identifier: 1234,
          bodySite: BodySite.LEFT_EYE,
          priority: TriageUrgency.ROUTINE,
        ),
      ],
      note: "abc",
      startDate: "2023-10-12T14:11:33.000Z",
      goal: [
         GoalModel(
          statusReason: "null",
          achievementStatus: Status.IN_PROGRESS,
          outcomes: [
            GoalOutcomeModel(goalOutcome: GoalOutCome.GLASSES_PRESCRIBED),
          ],
          note: "abc",
          startDate: "2023-10-12T14:11:33.000Z",
          target: [
            TargetModel(detailString: "TREATMENT_TO_BE_PROVIDED"),
          ],
        ),
      ],
    );

    final vtCarePlanRemoteSource = ref.watch(vtCarePlanRemoteSourceProvider);

    return await vtCarePlanRemoteSource.saveCarePlan(
      carePlan: response,
    );
  }

  // {
  //   "reports": [{
  //        "id":33200000002
  //     }],
  //   "encounterId": 33300000004,
  //   "organizationCode": 88000001,
  //   "performer": [{
  //      "role":"VISION_TECHNICIAN",
  //     "identifier":9627849171
  //   }],
  //   "conditions": [
  //     {
  //       "recordedDate": "2023-10-12T14:11:33.000Z",
  //       "bodySite": "LEFT_EYE",
  //       "code": "EYE_TRIAGE",
  //       "note": ""
  //     }
  //   ],
  //   "serviceRequest":[ {
  //     "note": "",
  //     "patientInstruction": "VISIT_PRIMARY_CLINIC",
  //     "identifier": 1234,
  //     "bodySite": "LEFT_EYE",
  //     "priority": "URGENT"
  //   }],
  //   "note": "abc",
  //   "startDate": "2023-10-12T14:11:33.000Z",
  //   "goal": [{
  //     "statusReason": "null",
  //     "achievementStatus": "IN_PROGRESS",
  //     "outcomes": [
  //         {
  //           "goalOutcome": "GLASSES_PRESCRIBED"
  //         }
  //       ],
  //       "note": "abc",
  //     "startDate": "2023-10-12T14:11:33.000Z",
  //     "target":[{"detailString":"TREATMENT_TO_BE_PROVIDED"}]
  //   }]
  // }
}
