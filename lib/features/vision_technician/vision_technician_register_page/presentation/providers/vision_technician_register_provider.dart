import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/domain/repositories/vt_register_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtRegisterProvider = FutureProvider.autoDispose
    .family<List<VisionGuardianEventPatientResponseModel>, String>(
        (ref, query) {
  return ref.watch(vtRegisterRepositoryProvider).getPatientByNumber(query);
});
