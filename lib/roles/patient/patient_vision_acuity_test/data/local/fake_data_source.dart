class FakeDataSource {
  List<TumblingTest> tumblingTestList = [
    TumblingTest(
      id: "1",
      level: "1",
      eSize: 40,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "2",
      level: "2",
      eSize: 35,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "3",
      level: "3",
      eSize: 30,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "4",
      level: "4",
      eSize: 25,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "5",
      level: "5",
      eSize: 20,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "6",
      level: "6",
      eSize: 15,
      eList: DummyEList().dummyEList,
    ),
    TumblingTest(
      id: "7",
      level: "7",
      eSize: 10,
      eList: DummyEList().dummyEList,
    ),
  ];
}

class DummyEList {
  List<Tstaus> dummyEList = [
    Tstaus(
      status: eStatus.notAttempted,
      direction: TumblistTestEDirection.down,
      quater: 1,
    ),
    Tstaus(
      status: eStatus.notAttempted,
      direction: TumblistTestEDirection.left,
      quater: 2,
    ),
    Tstaus(
      status: eStatus.notAttempted,
      direction: TumblistTestEDirection.up,
      quater: 3,
    ),
    Tstaus(
      status: eStatus.notAttempted,
      direction: TumblistTestEDirection.right,
      quater: 4,
    ),
    Tstaus(
      status: eStatus.notAttempted,
      direction: TumblistTestEDirection.down,
      quater: 5,
    )
  ];
}

class TumblingTest {
  TumblingTest({
    required this.id,
    required this.level,
    required this.eSize,
    required this.eList,
    this.progress = 0,
  });
  String id;
  String level;
  double eSize;
  List<Tstaus> eList;
  int progress;
}

class Tstaus {
  eStatus status;
  TumblistTestEDirection direction;
  int quater;
  Tstaus({
    required this.status,
    required this.direction,
    required this.quater,
  });
}

enum TumblistTestEDirection { up, down, left, right }

enum eStatus { correct, incorrect, notAttempted }
