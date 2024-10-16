/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';

abstract class VgAddEventRepository {
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required Map<String, dynamic> queryData,
  });
  Future postVGEvents({
    required VisionGuardianEventModel vgEventModel,
    required Map<String, dynamic> actor,
  });

  Future deleteVGEvents({
    required String eventId,
  });

  Future postAddTeammate(
      {required String eventId,
      required String actorIdentifier,
      required int officialMobile});

  Future getTeammates({
    required String eventId,
    required String actorIdentifier,
  });
  Future deleteTeamMate({
    required String eventId,
    required String loginActorIdentifier,
    required String actorIdentifier,
  });

  Future getTriageReport({
    required Map<String, dynamic> queryData,
  });

  Future getSearchEvent({
    required eventId,
  });

  Future getEventPatientList({
    required Map<String, dynamic> patientQueryData,
  });
}
