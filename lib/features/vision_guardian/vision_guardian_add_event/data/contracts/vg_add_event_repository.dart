import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';

abstract class VgAddEventRepository {
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required String actorIdentifier,
  });
  Future postVGEvents({
    required VisionGuardianEventModel vgEventModel,
    required Map<String, dynamic> actor,
  });

  Future deleteVGEvents({
    required String eventId,
  });
}
