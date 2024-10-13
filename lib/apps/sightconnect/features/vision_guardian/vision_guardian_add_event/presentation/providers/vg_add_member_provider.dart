/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vg_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'vg_user_data_provider.dart';

var visionGuadianAddMemberProvider = ChangeNotifierProvider.autoDispose((ref) =>
    VisionGuardianAddMemberProvider(
        ref.read(vgAddEventRemoteSource),
        ref.read(addEventDetailsProvider),
        ref.read(globalVGProvider),
        ref.read(vgUserDataProvider)));

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;
  AddEventDetailsNotifier addEventDetailsProvider;
  GlobalVGProvider globalVGProvider;
  VGUserDataProvider vgUserDataProvider;
  VisionGuardianAddMemberProvider(
      this.remoteDataSource,
      this.addEventDetailsProvider,
      this.globalVGProvider,
      this.vgUserDataProvider) {
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

  void resetSearch() {
    searchResults = teammateList;
  }

  Future<void> getTeammatesList() async {
    try {
      loading = true;
      error = false;
      notifyListeners();
      var eventId = addEventDetailsProvider.eventId;

      List response;
      // if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        response = await remoteDataSource.getTeammates(
            eventId: eventId,
            actorIdentifier: vgUserDataProvider.userId.toString());

        setTeammates(response);
      // } 
      // else {
      //   response = await remoteDataSource.getTeammates(
      //       eventId: eventId,
      //       actorIdentifier: globalVGProvider.userId.toString());

      //   setTeammates(response);
      // }

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
      // if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        await remoteDataSource.postAddTeammate(
            eventId: eventId,
            actorIdentifier: vgUserDataProvider.userId.toString(),
            officialMobile: officialNumber);
        getTeammatesList();
      // } 
      // else {
      //   await remoteDataSource.postAddTeammate(
      //       eventId: eventId,
      //       actorIdentifier: globalVGProvider.userId.toString(),
      //       officialMobile: officialNumber);
      //   getTeammatesList();
      // }
    } catch (error) {
      loading = false;
      notifyListeners();
      rethrow;
    }
    notifyListeners();
  }

  void setSearchTeammateList(String query) async {
    List resultList = [];

    if (teammateList.isNotEmpty) {
      for (int i = 0; i < teammateList.length; i++) {
        if (teammateList[i][0]["firstName"]
            .toLowerCase()
            .contains(query.toLowerCase())) {
          resultList.add(teammateList[i]);
        } else if (teammateList[i][0]["lastName"]
            .toLowerCase()
            .contains(query.toLowerCase())) {
          resultList.add(teammateList[i]);
        } else if (teammateList[i][0]["officialMobile"]
            .toString()
            .contains(query.toLowerCase())) {
          resultList.add(teammateList[i]);
        }
      }
      searchResults = resultList;
    }

    notifyListeners();
  }

  Future<void> deleteMember(String actorIdentifier) async {
    var eventId = addEventDetailsProvider.eventIdValue;
    try {
      loading = true;
      notifyListeners();
      // if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        await remoteDataSource.deleteTeamMate(
            eventId: eventId,
            loginActorIdentifier: vgUserDataProvider.userId.toString(),
            actorIdentifier: actorIdentifier);
        if (actorIdentifier != vgUserDataProvider.userId.toString()) {
          getTeammatesList();
        }
      // }
      //  else {
      //   await remoteDataSource.deleteTeamMate(
      //       eventId: eventId,
      //       loginActorIdentifier: globalVGProvider.userId.toString(),
      //       actorIdentifier: actorIdentifier);
      //   if (actorIdentifier != globalVGProvider.userId.toString()) {
      //     getTeammatesList();
      //   }
      // }
    } catch (error) {
      loading = false;
      notifyListeners();
      rethrow;
    }
    notifyListeners();
  }

  void setTeammates(teammates) {
    teammateList = teammates;
    searchResults = teammates;
  }
}
