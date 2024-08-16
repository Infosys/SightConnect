// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final dynamicFormValidationProvider =
//     ChangeNotifierProvider<DynamicFormValidationProvider>(
//   (ref) => DynamicFormValidationProvider(),
// );

// class DynamicFormValidationProvider extends ChangeNotifier {
//   List<bool> validationList = [];

//   void updateValidation(int index, bool value) {
//     if (index < validationList.length) {
//       validationList[index] = value;
//     } else {
//       validationList.add(value);
//     }
//     notifyListeners();
//   }
// }
