import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/domain/repositories/vt_register_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtRegisterProvider = FutureProvider.autoDispose.family<dynamic, String>((ref, query) {
  return ref.watch(vtRegisterRepositoryProvider).getPatientByNumber(query);
});

class VisionTechnicianRegisterProvider extends ChangeNotifier {
  


}