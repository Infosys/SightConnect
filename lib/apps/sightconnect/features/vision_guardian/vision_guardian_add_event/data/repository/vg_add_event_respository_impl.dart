/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgAddEventRepository = Provider(
    (ref) => VgAddEventRepositoryImpl(ref.watch(vgAddEventRemoteSource)));

class VgAddEventRepositoryImpl extends VgAddEventRepository {
  VgAddEventRemoteSource remoteDataSource;

  VgAddEventRepositoryImpl(this.remoteDataSource);
  @override
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required Map<String, dynamic> queryData,
  }) async {
    return await remoteDataSource.getVGEvents(queryData: queryData);
  }

  @override
  Future postVGEvents(
      {required VisionGuardianEventModel vgEventModel,
      required Map<String, dynamic> actor}) async {
    logger.d("inside add event impl");
    try {
      return await remoteDataSource.postVGEvents(
          vgEventModel: vgEventModel, actor: actor);
    } on Exception catch (e) {
      logger.e("Error in postVGEvents impl : $e");
      rethrow;
    }
  }

  @override
  Future deleteVGEvents({required String eventId}) async {
    return await remoteDataSource.deleteVGEvents(eventId: eventId);
  }

  @override
  Future postAddTeammate(
      {required String eventId,
      required String actorIdentifier,
      required int officialMobile}) async {
    return await remoteDataSource.postAddTeammate(
        eventId: eventId,
        actorIdentifier: actorIdentifier,
        officialMobile: officialMobile);
  }

  @override
  Future getTeammates(
      {required String eventId, required String actorIdentifier}) async {
    return await remoteDataSource.getTeammates(
        eventId: eventId, actorIdentifier: actorIdentifier);
  }

  @override
  Future deleteTeamMate(
      {required String eventId,
      required String loginActorIdentifier,
      required String actorIdentifier}) async {
    await remoteDataSource.deleteTeamMate(
        eventId: eventId,
        loginActorIdentifier: loginActorIdentifier,
        actorIdentifier: actorIdentifier);
  }

  @override
  Future getTriageReport({required Map<String, dynamic> queryData}) {
    return remoteDataSource.getTriageReport(queryData: queryData);
  }

  @override
  Future getEventPatientList(
      {required Map<String, dynamic> patientQueryData}) async {
    return await remoteDataSource.getEventPatientList(
        patientQueryData: patientQueryData);
  }

  @override
  Future getSearchEvent({required eventId}) {
    return remoteDataSource.getSearchEvent(eventId: eventId);
  }
}
