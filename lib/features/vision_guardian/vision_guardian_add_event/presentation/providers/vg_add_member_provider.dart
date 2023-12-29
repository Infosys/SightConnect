import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var teamListProvider = FutureProvider.autoDispose<dynamic>((ref) async {
  ref.watch(visionGuadianAddMemberProvider).add;
  var eventId = ref.watch(addEventDetailsProvider).eventId;
  return await ref
      .watch(vgAddEventRemoteSource)
      .getTeammates(eventId: eventId, actorIdentifier: "11067400874");
});

var visionGuadianAddMemberProvider = ChangeNotifierProvider((ref) =>
    VisionGuardianAddMemberProvider(
        ref.read(vgAddEventRemoteSource), ref.read(addEventDetailsProvider)));

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;
  AddEventDetailsNotifier addEventDetailsProvider;

  VisionGuardianAddMemberProvider(
      this.remoteDataSource, this.addEventDetailsProvider);
  final _memberData = [
    {
      "name": "Ritu Gupta",
      "mobile": "+91 8876543321",
    }
  ];

  var add = false;

  void setAdd() {
    add = !add;
    notifyListeners();
  }

  //get member data
  List get getMemberData => _memberData;

  void addMemberData() async {
    var eventId = addEventDetailsProvider.eventIdValue;

    print(eventId);
    print("eventId");

    await remoteDataSource
        .postAddTeammate(eventId: eventId, actorIdentifier: "11067400874")
        .then((value) {
      print("status");
      print(value);
      setAdd();
    }).catchError((error) => {print(error)});
    notifyListeners();
  }

  void deleteMember(String actorIdentifier) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    try {
      var statusCode = await remoteDataSource.deleteTeamMate(
          eventId: eventId,
          loginActorIdentifier: "11067400874",
          actorIdentifier: actorIdentifier);

      print(statusCode);
      setAdd();
    } catch (error) {
      print(error);
    }
    notifyListeners();
  }

  void removeMemberData(int index) {
    _memberData.removeAt(index);
    notifyListeners();
  }
}
