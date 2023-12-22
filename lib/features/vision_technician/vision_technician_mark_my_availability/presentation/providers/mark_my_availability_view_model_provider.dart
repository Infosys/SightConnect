import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var markMyAvailabilityViewModelProvider = ChangeNotifierProvider<MarkMyAvailabilityViewModel>((ref) => MarkMyAvailabilityViewModel(
  ref.read(markMyAvailabilityHelperProvider)
));

class MarkMyAvailabilityViewModel extends ChangeNotifier{

  final MarkMyAvailabilityHelperNotifier _markMyAvailabilityHelperNotifier;

  MarkMyAvailabilityViewModel(this._markMyAvailabilityHelperNotifier);

  

}