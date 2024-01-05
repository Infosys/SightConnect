import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtHomeViewModelProvider =
    ChangeNotifierProvider<VTHomeViewModel>((ref) => VTHomeViewModel());

class VTHomeViewModel extends ChangeNotifier {
  VTHomeViewModel();
}
