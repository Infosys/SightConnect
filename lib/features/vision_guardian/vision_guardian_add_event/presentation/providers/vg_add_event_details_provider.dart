import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class AddEventDetailsNotifier extends ChangeNotifier {
  XFile? _image;
  XFile? get image => _image;
  List<VisionGuardianEventModel> events=eventDetails;
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
}

final addEventDetailsProvider =
    ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier();
});
