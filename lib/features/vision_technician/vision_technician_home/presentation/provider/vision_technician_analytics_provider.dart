import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianAnalyticsProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianAnalyticsNotifier());

class VisionTechnicianAnalyticsNotifier extends ChangeNotifier {

  final Map<String, double> _dataMapAge = {
    "10 - 29 Yrs": 10,
    "30 - 39 Yrs": 6,
    "40 - 59 Yrs": 10,
    "60+ Yrs": 6,
  };

  
  final Map<String, double> _dataMale = {"Male": 15};
  final Map<String, double> _dataFemale = {"Female": 35};
  final Map<String, double> _dataOthers = {"Others": 12};

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

  final Map<String, double> _dataMapSymptom = {
    "Refractive": 60,
    "Cataract": 32,
    "Glaucoma": 23,
    "Conjunctivitis": 22,
    "Diabetic\nRetinopathy": 77,
    "Blepharitis": 10,
    "Keratitis": 32,
  };

  final int _totalSymptom = 224;

  final List<Color> _colorsSymptom = [
    AppColor.darkBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.darkYellow,
    AppColor.darkBlue.withOpacity(0.8),
    AppColor.purple,
    AppColor.green,
  ];

  Map<String, double> get dataMapAge => _dataMapAge;
  Map<String, double> get dataMale => _dataMale;
  Map<String, double> get dataFemale => _dataFemale;
  Map<String, double> get dataOthers => _dataOthers;
  List<double> get totalValuesGender => _totalValuesGender;
  List<List<Color>> get colorsGender => _colorsGender;
  List<Color> get colorsAge => _colorsAge;
  Map<String, double> get dataMapSymptom => _dataMapSymptom;
  int get totalSymptom => _totalSymptom;
  List<Color> get colorsSymptom => _colorsSymptom;
}