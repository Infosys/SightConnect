import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianAnalyticsProvider = ChangeNotifierProvider.autoDispose(
  (ref) => VisionTechnicianAnalyticsNotifier(
    ref.watch(vtHomeRepository),
  ),
);

class VisionTechnicianAnalyticsNotifier extends ChangeNotifier {
  final VTHomeRepositoryImpl _vtHomeRepositoryImpl;
  VisionTechnicianAnalyticsNotifier(this._vtHomeRepositoryImpl) {
    getVtAnalyticsStats();
  }

  final Map<String, double> _dataMapAge = {};
  bool _isLoading = false;
  Map<String, double> _dataMale = {};
  Map<String, double> _dataFemale = {};
  Map<String, double> _dataOthers = {};
  double _totalAge = 0;
  double _totalGenderValue = 0;
  double _ivrCalls = 0;
  double _totalVisit = 0;
  Map closedCases = {};
  Map triageCompleted = {};

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void getVtAnalyticsStats() async {
    isLoading = true;

    var response = await _vtHomeRepositoryImpl.getVtAnalyticsStats();
    for (var element in response) {
      if (element.statisticType == VtAnalyticsType.AGE_GROUP_COUNT) {
        for (var payload in element.statisticPayload) {
          _dataMapAge['${payload.title} Yrs'] = payload.value;
          _totalAge += payload.value;
        }
      }
      if (element.statisticType == VtAnalyticsType.GENDER_COUNT) {
        for (var payload in element.statisticPayload) {
          if (payload.title == "MALE") {
            _dataMale = {"Male": payload.value};
          }
          if (payload.title == "FEMALE") {
            _dataFemale = {"Female": payload.value};
          }
          if (payload.title == "OTHER") {
            _dataOthers = {"Others": payload.value};
          }
          _totalGenderValue += payload.value;
        }
      }
      if (element.statisticType == VtAnalyticsType.IVR_CALL_COUNT) {
        _ivrCalls = element.statisticPayload[0].value;
      }
      if (element.statisticType == VtAnalyticsType.TOTAL_TRIAGES) {
        _totalVisit = element.statisticPayload[0].value;
      }
      if (element.statisticType == VtAnalyticsType.TRIAGE_COMPLETED_COUNT) {
        for (var element in element.statisticPayload) {
          closedCases[element.title] = element.value;
        }
      }
      if (element.statisticType ==
          VtAnalyticsType.TRIAGE_COMPLETED_PERCENTAGE) {
        for (var element in element.statisticPayload) {
          triageCompleted[element.title] = element.value;
        }
      }

      isLoading = false;

      notifyListeners();
    }
  }

  final List<List<Color>> _colorsGender = [
    [AppColor.primary],
    [AppColor.darkPink],
    [AppColor.darkOrange],
  ];

  final List<Color> _colorsAge = [
    AppColor.lavanderBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.darkYellow,
  ];

  Map<String, double> get dataMapAge => _dataMapAge;
  double get totalAge => _totalAge;
  Map<String, double> get dataMale => _dataMale;
  Map<String, double> get dataFemale => _dataFemale;
  Map<String, double> get dataOthers => _dataOthers;
  double get totalGenderValue => _totalGenderValue;
  List<List<Color>> get colorsGender => _colorsGender;
  List<Color> get colorsAge => _colorsAge;
  double get ivrCalls => _ivrCalls;
  double get totalVisit => _totalVisit;

  ///Logic for symptoms analytics

  // final Map<String, double> _dataMapSymptom = {
  //   "Refractive": 0,
  //   "Cataract": 0,
  //   "Glaucoma": 0,
  //   "Conjunctivitis": 0,
  //   "Diabetic\nRetinopathy": 0,
  //   "Blepharitis": 0,
  //   "Keratitis": 0,
  // };

  // final int _totalSymptom = 0;

  // final List<Color> _colorsSymptom = [
  //   AppColor.darkBlue,
  //   AppColor.darkOrange,
  //   AppColor.blue,
  //   AppColor.darkYellow,
  //   AppColor.darkBlue.withOpacity(0.8),
  //   AppColor.purple,
  //   AppColor.green,
  // ];

  // Map<String, double> get dataMapSymptom => _dataMapSymptom;
  // int get totalSymptom => _totalSymptom;
  // List<Color> get colorsSymptom => _colorsSymptom;
}
