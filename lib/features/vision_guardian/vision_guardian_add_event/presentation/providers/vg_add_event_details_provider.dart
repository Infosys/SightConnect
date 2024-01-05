import 'dart:async';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/vision_guardian_constants.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final addEventDetailsProvider =
    ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
  );
});

var getEventDetailsProvider =
    FutureProvider.autoDispose<List<VisionGuardianEventModel>>((ref) async {
  ref.watch(addEventDetailsProvider).eventStatusFilterValue;
  ref.watch(addEventDetailsProvider).isSelected;

  var statusfilter = ref.read(addEventDetailsProvider).eventStatusFilterValue;

  List<VisionGuardianEventModel> response = await ref
      .watch(vgAddEventRepository)
      .getVGEvents(
          actorIdentifier: actorIdentifierValue,
          eventStatusFilter: statusfilter);

  ref.read(addEventDetailsProvider).setEventDetails(response);
  ref.read(addEventDetailsProvider).setSearchEventDetails(response);
  return response;
});

var getPatientTriageReportsProvider =
    FutureProvider.autoDispose<List<VisionGuardianPatientResponseModel>>(
        (ref) async {
  var eventId = int.parse(ref.watch(addEventDetailsProvider).eventIdValue);
  logger.d(eventId);

  return await ref
      .watch(vgAddEventRepository)
      .getTriageReport(campaignEventId: eventId, performerId: [11067400874]);
});

class AddEventDetailsNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;

  AddEventDetailsNotifier({required this.vgAddEventRepository});

  String eventId = "";

  var isLoading = false;
  List<VisionGuardianEventModel> listOfEventDetails = [];
  List<VisionGuardianEventModel> searchResults = [];
  String eventStatusFilter = "";
  String queryData = "";
  var isSelected = -1;
  var eventStatus = const ["ALL", "CURRENT", "UPCOMING", "PAST", "CANCELLED"];
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

  get isSelectedValue => isSelected;
  get eventStatusFilterValue => eventStatusFilter;
  get eventIdValue => eventId;
  get listOfEventDetailsValue => listOfEventDetails;

  void setEventId(String id) {
    eventId = id;
    notifyListeners();
  }

  Future<int> deleteEventDetails({required String eventId}) async {
    isLoading = true;
    notifyListeners();
    var statusCode =
        await vgAddEventRepository.deleteVGEvents(eventId: eventId);
    return statusCode;
  }

  Future addEventDetails() async {
    try {
      isLoading = true;
      /* notifyListeners(); */
      Map<String, dynamic> actors = actorsValue;

      DateTime startDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_startDate.text).toString());
      DateTime endDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_endDate.text).toString());

      var startFormat =
          "${startDateFormat.year}-${startDateFormat.month.toString().padLeft(2, '0')}-${startDateFormat.day.toString().padLeft(2, '0')}";
      var endFormat =
          "${endDateFormat.year}-${endDateFormat.month.toString().padLeft(2, '0')}-${endDateFormat.day.toString().padLeft(2, '0')}";

      VisionGuardianEventModel vgEventModel = VisionGuardianEventModel(
          title: _eventTitle.text,
          serviceProvider: 0,
          description: _eventDescription.text,
          startDate: startFormat,
          endDate: endFormat,
          startTime: startDateFormat.toUtc().toIso8601String(),
          endTime: endDateFormat.toUtc().toIso8601String(),
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

      filterListEvents(-1, "All");
    } catch (e) {
      isLoading = false;

      notifyListeners();
    }
  }

  void setSearchEventList(String query) async {
    List<VisionGuardianEventModel> resultList = [];

    for (int i = 0; i < searchResults.length; i++) {
      if (searchResults[i].title!.toLowerCase().contains(query.toLowerCase())) {
        resultList.add(searchResults[i]);
      } else if (searchResults[i]
          .id!
          .toString()
          .contains(query.toLowerCase())) {
        resultList.add(searchResults[i]);
      } else if (searchResults[i]
          .description!
          .toLowerCase()
          .contains(query.toLowerCase())) {
        resultList.add(searchResults[i]);
      }
    }
    listOfEventDetails = resultList;

    notifyListeners();
  }

  void filterListEvents(selectedIndex, selectedValue) {
    isSelected = selectedIndex;
    eventStatusFilter = selectedValue;

    notifyListeners();
  }

  void addPatientTriage() async {
    var response =
        await vgAddEventRepository.postTriageReport(eventId: eventIdValue);
    logger.d(response);
  }

  void setEventDetails(eventDetails) {
    listOfEventDetails = eventDetails;
/*     notifyListeners(); */
  }

  void setSearchEventDetails(eventDetails) {
    searchResults = eventDetails;
/*     notifyListeners(); */
  }
}
