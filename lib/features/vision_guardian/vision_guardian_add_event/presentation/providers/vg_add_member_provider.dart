import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/vision_guardian_constants.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var teamListProvider = FutureProvider.autoDispose<dynamic>((ref) async {
  ref.watch(visionGuadianAddMemberProvider).add;
  var eventId = ref.read(addEventDetailsProvider).eventId;
  return await ref
      .watch(vgAddEventRemoteSource)
      .getTeammates(eventId: eventId, actorIdentifier: actorIdentifierValue);
});

var visionGuadianAddMemberProvider = ChangeNotifierProvider((ref) =>
    VisionGuardianAddMemberProvider(
        ref.read(vgAddEventRemoteSource), ref.read(addEventDetailsProvider)));

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;
  AddEventDetailsNotifier addEventDetailsProvider;

  VisionGuardianAddMemberProvider(
      this.remoteDataSource, this.addEventDetailsProvider);
  final _memberData = [];

  var add = false;

  void setAdd() {
    add = !add;
    notifyListeners();
  }

  //get member data
  List get getMemberData => _memberData;

  void addMemberData() async {
    var eventId = addEventDetailsProvider.eventIdValue;

    await remoteDataSource
        .postAddTeammate(
            eventId: eventId, actorIdentifier: actorIdentifierValue)
        .then((value) {
      setAdd();
    }).catchError((error) {
      logger.d(error);
    });
    notifyListeners();
  }

  void deleteMember(String actorIdentifier) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    try {
      var statusCode = await remoteDataSource.deleteTeamMate(
          eventId: eventId,
          loginActorIdentifier: actorIdentifierValue,
          actorIdentifier: actorIdentifier);

      logger.d(statusCode);
      setAdd();
    } catch (error) {
      logger.d(error);
    }
    notifyListeners();
  }

  void removeMemberData(int index) {
    _memberData.removeAt(index);
    notifyListeners();
  }
}
