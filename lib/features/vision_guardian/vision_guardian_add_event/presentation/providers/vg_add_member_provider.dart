import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/source/vg_add_event_remote_source.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuadianAddMemberProvider = ChangeNotifierProvider(
  (ref) => VisionGuardianAddMemberProvider(ref.read(vgAddEventRemoteSource)),
);

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  VgAddEventRemoteSource remoteDataSource;

  VisionGuardianAddMemberProvider(this.remoteDataSource);
  final _memberData = [
    {
      "name": "Ritu Gupta",
      "mobile": "+91 8876543321",
    }
  ];

  //get member data
  List get getMemberData => _memberData;

  void addMemberData(String name, String mobile) async {
    await remoteDataSource.postAddTeammate(eventId: "",actorIdentifier: "11067400874");
    // _memberData.add({
    //   "name": name,
    //   "mobile": mobile,
    // });
    notifyListeners();
  }

  void removeMemberData(int index) {
    _memberData.removeAt(index);
    notifyListeners();
  }
}
