import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuadianAddMemberProvider = ChangeNotifierProvider.autoDispose((ref) =>
    VisionGuardianAddMemberProvider(ref.read(vgAddEventRemoteSource),
        ref.read(addEventDetailsProvider), ref.read(globalVGProvider)));

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;
  AddEventDetailsNotifier addEventDetailsProvider;
  GlobalVGProvider globalVGProvider;
  VisionGuardianAddMemberProvider(this.remoteDataSource,
      this.addEventDetailsProvider, this.globalVGProvider) {
    getTeammatesList();
  }

  List teammateList = [];
  List searchResults = [];

  bool loading = false;
  bool error = false;

  var add = false;
  get getTeammateList => teammateList;

  void setAdd() {
    add = !add;
    notifyListeners();
  }

  Future<void> getTeammatesList() async {
    try {
      loading = true;
      error = false;
      notifyListeners();
      var eventId = addEventDetailsProvider.eventId;

      List response = await remoteDataSource.getTeammates(
          eventId: eventId,
          actorIdentifier: globalVGProvider.userId.toString());
      setTeammates(response);

      loading = false;
      notifyListeners();
    } catch (err) {
      error = true;
      loading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> addMemberData(int officialNumber) async {
    var eventId = addEventDetailsProvider.eventIdValue;

    try {
      loading = true;
      notifyListeners();
      await remoteDataSource.postAddTeammate(
          eventId: eventId,
          actorIdentifier: globalVGProvider.userId.toString(),
          officialMobile: officialNumber);
      getTeammatesList();
    } catch (error) {
      loading = false;
      rethrow;
    }
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

  Future<void> deleteMember(String actorIdentifier) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    try {
      loading = true;
      notifyListeners();
      await remoteDataSource.deleteTeamMate(
          eventId: eventId,
          loginActorIdentifier: globalVGProvider.userId.toString(),
          actorIdentifier: actorIdentifier);
      if (actorIdentifier != globalVGProvider.userId.toString()) {
        getTeammatesList();
      }
    } catch (error) {
      loading = false;
      notifyListeners();
      rethrow;
    }
    notifyListeners();
  }

  void setTeammates(teammates) {
    teammateList = teammates;
  }
}
