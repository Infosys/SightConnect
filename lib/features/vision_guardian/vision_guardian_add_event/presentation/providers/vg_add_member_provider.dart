import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var teamListProvider = FutureProvider.autoDispose<dynamic>((ref) async {

  ref.watch(visionGuadianAddMemberProvider).add;
  var eventId = ref.read(addEventDetailsProvider).eventId;

  List response = await ref.watch(vgAddEventRemoteSource).getTeammates(
      eventId: eventId,
      actorIdentifier: ref.read(globalVGProvider).userId.toString());
  ref.watch(visionGuadianAddMemberProvider).setTeammates(response);
  return response;
});

var visionGuadianAddMemberProvider = ChangeNotifierProvider((ref) =>
    VisionGuardianAddMemberProvider(ref.read(vgAddEventRemoteSource),
        ref.read(addEventDetailsProvider), ref.read(globalVGProvider)));

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;
  AddEventDetailsNotifier addEventDetailsProvider;
  GlobalVGProvider globalVGProvider;
  VisionGuardianAddMemberProvider(this.remoteDataSource,
      this.addEventDetailsProvider, this.globalVGProvider);

  List teammateList = [];
  List searchResults = [];

  var add = false;
  get getTeammateList => teammateList;

  void setAdd() {
    add = !add;
    notifyListeners();
  }

  void addMemberData(int officialNumber) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    await remoteDataSource
        .postAddTeammate(
            eventId: eventId,
            actorIdentifier: globalVGProvider.user!.id!.toString(),
            officialMobile: officialNumber)
        .then((value) {
      setAdd();
    }).catchError((error) {
      return error;
    });
    notifyListeners();
  }

  void setSearchTeammateList(String query) async {
    List resultList = [];

    for (int i = 0; i < teammateList.length; i++) {
      if (teammateList[i]["personalInformation"]["firstName"]
          .toLowerCase()
          .contains(query.toLowerCase())) {
        resultList.add(teammateList[i]);
      } else if (teammateList[i]["personalInformation"]["lastName"]
          .toLowerCase()
          .contains(query.toLowerCase())) {
        resultList.add(teammateList[i]);
      } else if (teammateList[i]["officialMobile"]
          .toString()
          .contains(query.toLowerCase())) {
        resultList.add(teammateList[i]);
      }
    }
    teammateList = resultList;

    notifyListeners();
  }

  void deleteMember(String actorIdentifier) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    try {
      await remoteDataSource.deleteTeamMate(
          eventId: eventId,
          loginActorIdentifier: globalVGProvider.user!.id!.toString(),
          actorIdentifier: actorIdentifier);
      setAdd();
    } catch (error) {
      rethrow;
    }
    notifyListeners();
  }

  void setTeammates(teammates) {
    teammateList = teammates;
  }
}
