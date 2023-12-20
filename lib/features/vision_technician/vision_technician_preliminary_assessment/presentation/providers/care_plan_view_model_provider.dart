import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/source/vt_care_plan_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_provider.dart';
import 'package:flutter/material.dart';
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

    final response = CarePlanModel(
      //take data from json like id = 33200000002
      reports: [
        const ReportModel(id: 33200000002),
      ],
      encounterId: 33300000004,
      organizationCode: 88000001,
      performer: [
        const PerformerModel(role: "VISION_TECHNICIAN", identifier: 9627849171),
      ],
      conditions: [
        const ConditionModel(
          recordedDate: "2023-10-12T14:11:33.000Z",
          bodySite: "LEFT_EYE",
          code: "EYE_TRIAGE",
          note: "",
        ),
      ],
      serviceRequest: [
        ServiceRequestModel(
          note: "",
          patientInstruction: patientInstruction,
          identifier: 1234,
          bodySite: "LEFT_EYE",
          priority: "URGENT",
        ),
      ],
      note: "abc",
      startDate: "2023-10-12T14:11:33.000Z",
      goal: [
        const GoalModel(
          statusReason: "null",
          achievementStatus: "IN_PROGRESS",
          outcomes: [
            GoalOutcomeModel(goalOutcome: "GLASSES_PRESCRIBED"),
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
