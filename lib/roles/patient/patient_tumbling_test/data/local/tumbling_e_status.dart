import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';

List<Tstatus> generateTumblingEListPerTest(int level) {
  var eList = _generateTumblingEList(level);

  return eList;
}

List<Tstatus> _generateTumblingEList(int level) {
  switch (level) {
    case 1:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
      ];

    case 2:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
      ];

    case 3:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.up,
          quarter: 3,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.up,
          quarter: 3,
        ),
      ];

    case 4:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.left,
          quarter: 2,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.up,
          quarter: 3,
        ),
      ];

    case 5:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.left,
          quarter: 2,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.up,
          quarter: 3,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
      ];

    default:
      return [
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.right,
          quarter: 4,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.left,
          quarter: 2,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.up,
          quarter: 3,
        ),
        Tstatus(
          status: EStatus.notAttempted,
          direction: TumblistTestEDirection.down,
          quarter: 1,
        ),
      ];
  }
}
