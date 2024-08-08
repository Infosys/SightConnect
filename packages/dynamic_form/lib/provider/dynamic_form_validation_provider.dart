import 'package:flutter/material.dart';

final dynamicFormValidationProvider =
    ChangeNotfierProvider<DynamicFormValidationProvider>(
        (ref) => DynamicFormValidationProvider());

class DynamicFormValidationProvider extends ChangeNotifier {
  final Map<String, String> _errors = {};

  void addError({required String key, required String error}) {
    _errors[key] = error;
    notifyListeners();
  }

  void removeError({required String key}) {
    _errors.remove(key);
    notifyListeners();
  }

  bool hasError({required String key}) {
    return _errors.containsKey(key);
  }

  String? getError({required String key}) {
    return _errors[key];
  }

  bool get hasErrors => _errors.isNotEmpty;
}
