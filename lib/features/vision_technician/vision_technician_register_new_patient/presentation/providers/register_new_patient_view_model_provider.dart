import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'register_new_patient_helper_provider.dart';

var registerNewPatientViewModelProvider = ChangeNotifierProvider<RegisterNewPatientViewModel>((ref) => RegisterNewPatientViewModel(
  ref.read(registerNewPatientHelperProvider)
));

class RegisterNewPatientViewModel extends ChangeNotifier{

  final RegisterNewPatientHelperNotifier _registerNewPatientHelperNotifier;

  RegisterNewPatientViewModel(this._registerNewPatientHelperNotifier);

  

}