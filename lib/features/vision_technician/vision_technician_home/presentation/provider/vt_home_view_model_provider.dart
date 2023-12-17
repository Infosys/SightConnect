import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtHomeViewModelProvider = ChangeNotifierProvider<VTHomeViewModel>((ref) => VTHomeViewModel(ref.read(vtHomeHelperProvider)));

class VTHomeViewModel extends ChangeNotifier{
  final VTHomeHelperNotifier _vtHomeHelperNotifier;
  VTHomeViewModel(this._vtHomeHelperNotifier);
}