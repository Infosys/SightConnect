import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianAnalyticsProvider = ChangeNotifierProvider(
    (ref) => VisionTechnicianAnalyticsNotifier(ref.read(vtHomeRepository)));

class VisionTechnicianAnalyticsNotifier extends ChangeNotifier {
  final VTHomeRepositoryImpl _vtHomeRepositoryImpl;
  VisionTechnicianAnalyticsNotifier(this._vtHomeRepositoryImpl) {
    getVtAnalyticsStats();
  }

  final Map<String, double> _dataMapAge = {};
  double _totalAge = 0;
  bool _isLoading = false;
  Map<String, double> _dataMale = {};
  Map<String, double> _dataFemale = {};
  Map<String, double> _dataOthers = {};

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  getVtAnalyticsStats() async {
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
        }

        isLoading = false;
      }
      notifyListeners();
    }
  }

  final List<double> _totalValuesGender = [32, 51, 36];
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
  List<double> get totalValuesGender => _totalValuesGender;
  List<List<Color>> get colorsGender => _colorsGender;
  List<Color> get colorsAge => _colorsAge;

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
