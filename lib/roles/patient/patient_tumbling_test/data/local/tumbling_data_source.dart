import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/logmar_table.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/tumbling_e_status.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';

class TumblingTestDataSource {
  TumblingTestDataSource() {
    _getTumblingTestList();
  }

  final List<TumblingTest> _tumblingTestList = [];
  final int _totalLevel = 9;

  List<TumblingTest> get tumblingTestList => _tumblingTestList;

  void _getTumblingTestList() {
    for (int i = 0; i < _totalLevel; i++) {
      final eSize = getTumblingESize(i + 1);
      final eList = generateTumblingEListPerTest(i + 1);

      _tumblingTestList.add(
        TumblingTest(
          level: i + 1,
          eSize: eSize * 10,
          eList: eList,
        ),
      );
    }
  }
}
