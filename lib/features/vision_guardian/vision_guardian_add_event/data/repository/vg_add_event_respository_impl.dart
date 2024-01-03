import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgAddEventRepository = Provider(
    (ref) => VgAddEventRepositoryImpl(ref.read(vgAddEventRemoteSource)));

class VgAddEventRepositoryImpl extends VgAddEventRepository {
  VgAddEventRemoteSource remoteDataSource;

  VgAddEventRepositoryImpl(this.remoteDataSource);
  @override
  Future<List<VisionGuardianEventModel>> getVGEvents(
      {required String actorIdentifier}) async {
    return await remoteDataSource.getVGEvents(actorIdentifier: actorIdentifier);
  }

  @override
  Future postVGEvents(
      {required VisionGuardianEventModel vgEventModel,
      required Map<String, dynamic> actor}) async {
    return await remoteDataSource.postVGEvents(
        vgEventModel: vgEventModel, actor: actor);
  }

  @override
  Future deleteVGEvents({required String eventId}) async {
    return await remoteDataSource.deleteVGEvents(eventId: eventId);
  }

  @override
  Future postAddTeammate(
      {required String eventId, required String actorIdentifier}) async {
    return await remoteDataSource.postAddTeammate(
        eventId: eventId, actorIdentifier: actorIdentifier);
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
  Future postTriageReport({required String eventId}) async {
    await remoteDataSource.postTriageReport(eventId: eventId);
  }
  
  @override
  Future getTriageReport({required int campaignEventId, required List<int> performerId}) {
    return remoteDataSource.getTriageReport(campaignEventId: campaignEventId, performerId: performerId);
  }
}
