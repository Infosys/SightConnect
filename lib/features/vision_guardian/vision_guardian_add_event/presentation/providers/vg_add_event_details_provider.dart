import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getEventDetailsProvider =
    FutureProvider.autoDispose<List<VisionGuardianEventModel>>((ref) async {
  return await ref
      .watch(vgAddEventRepository)
      .getVGEvents(actorIdentifier: "011067400874");
});

class AddEventDetailsNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;

  AddEventDetailsNotifier({required this.vgAddEventRepository});

  var isLoading = false;

  XFile? _image;
  XFile? get image => _image;
  set image(XFile? value) {
    _image = value;
    notifyListeners();
  }

  final TextEditingController _eventTitle = TextEditingController();
  final TextEditingController _eventDescription = TextEditingController();
  final TextEditingController _startDate = TextEditingController();
  final TextEditingController _endDate = TextEditingController();
  final TextEditingController _startTime = TextEditingController();
  final TextEditingController _endTime = TextEditingController();
  final TextEditingController _venueName = TextEditingController();
  final TextEditingController _pincode = TextEditingController();
  final TextEditingController _city = TextEditingController();

  TextEditingController get eventTitle => _eventTitle;
  TextEditingController get eventDescription => _eventDescription;
  TextEditingController get startDate => _startDate;
  TextEditingController get endDate => _endDate;
  TextEditingController get startTime => _startTime;
  TextEditingController get endTime => _endTime;
  TextEditingController get venueName => _venueName;
  TextEditingController get pincode => _pincode;
  TextEditingController get city => _city;

  Future addEventDetails() async {
    print(_startDate.text);
    try {
      isLoading = true;
      notifyListeners();
      var actors = {
        "role": "MEDICAL_DOCTOR",
        "identifier": "011067400874",
        "isOwner": true
      };

      VisionGuardianEventModel vgEventModel = VisionGuardianEventModel(
          title: _eventTitle.text,
          serviceProvider: 0,
          description: _eventDescription.text,
          startDate: _startDate.text,
          endDate: _endDate.text,
          startTime: DateTime.now().toIso8601String() + "Z",
          endTime: DateTime.now().toIso8601String() + "Z",
          maximumAttendeeCapacity: 0,
          sponsor: "r6B",
          images: [
            VisionGuardianEventImage(
                baseUrl: "https://www.google.com",
                endpoint: "/1",
                fileId: "42A4946E08983-c34Ee5BA-eccA-8Ef4-dC9A-4ED7dD8f969A",
                thumbnail: true,
                status: "ACTIVE")
          ],
          addresses: [
            VisionGuardianEventAddress(
                venueName: _venueName.text,
                addressLine1: _venueName.text,
                addressLine2: _city.text,
                landmark: _venueName.text,
                street: _city.text,
                city: _city.text,
                subDistrict: _city.text,
                district: _city.text,
                state: _city.text,
                pinCode: _pincode.text,
                country: _city.text,
                latitude: 0,
                longitude: 0,
                isPrimary: true,
                addressType: "HOME",
                isDeleted: true)
          ]);

      await vgAddEventRepository.postVGEvents(
          vgEventModel: vgEventModel, actor: actors);
    } catch (e) {
      print(e);
      isLoading = false;
      notifyListeners();
    }
  }
}

final addEventDetailsProvider =
    ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
  );
});
