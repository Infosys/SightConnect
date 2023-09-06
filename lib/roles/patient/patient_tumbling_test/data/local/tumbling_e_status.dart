import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';

List<Tstatus> generateTumblingEListPerTest(int level) {
  var eList = _generateTumblingEList();

  return eList.sublist(0, level);
}

List<Tstatus> _generateTumblingEList() {
  return [
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
      direction: TumblistTestEDirection.down,
      quarter: 2,
    ),
    Tstatus(
      status: EStatus.notAttempted,
      direction: TumblistTestEDirection.left,
      quarter: 3,
    ),
    Tstatus(
      status: EStatus.notAttempted,
      direction: TumblistTestEDirection.up,
      quarter: 4,
    ),
    Tstatus(
      status: EStatus.notAttempted,
      direction: TumblistTestEDirection.right,
      quarter: 1,
    ),
    Tstatus(
      status: EStatus.notAttempted,
      direction: TumblistTestEDirection.down,
      quarter: 2,
    )
  ];
}
