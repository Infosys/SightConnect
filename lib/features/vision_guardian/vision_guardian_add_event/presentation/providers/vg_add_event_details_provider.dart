import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/core/providers/global_volunteer_provider.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final addEventDetailsProvider =
    ChangeNotifierProvider.autoDispose<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
    globalVGProvider: ref.read(globalVGProvider),
    fileMsProvider: ref.read(fileMsServiceProvider),
    globalVolunteerProvider: ref.read(globalVolunteerProvider),
  );
});

class AddEventDetailsNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;
  final GlobalVGProvider globalVGProvider;
  final FileMsService fileMsProvider;
  final GlobalVolunteerProvider globalVolunteerProvider;
  AddEventDetailsNotifier({
    required this.vgAddEventRepository,
    required this.globalVGProvider,
    required this.fileMsProvider,
    required this.globalVolunteerProvider,
  }) {
    List<VisionGuardianEventModel> previousList = [];
    getVgEvents(previousList, "default");
    eventPatientController.addListener(scrollListener);
    eventListController.addListener(defaulteventScrollListener);
    searchEventListController.addListener(searcheventScrollListener);
  }

  String eventId = "";
  var formKey = GlobalKey<FormState>();
  var error = false;
  var errorMessage = "";
  var isLoading = false;

  var getisLoading = false;

  var eventLoading = false;

  List<VisionGuardianEventModel> listOfEventDetails = [];
  List<VisionGuardianEventModel> newEventList = [];

  List<VisionGuardianEventModel> searchEventResults = [];
  List<VisionGuardianEventModel> newSearchEventList = [];

  List<VisionGuardianEventModel> searchResults = [];
  List<VisionGuardianPatientResponseModel> listOfEventPatients = [];
  List<VisionGuardianPatientResponseModel> listOfSearchEventPatients = [];
  List<VisionGuardianPatientResponseModel> newEventPatientList = [];

  String eventStatusFilter = "ALL";
  String queryData = "";
  TextEditingController searchController = TextEditingController();
  ScrollController eventPatientController = ScrollController();
  ScrollController eventListController = ScrollController();
  ScrollController searchEventListController = ScrollController();

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

  var offset = 0;
  get getOffset => offset;
  bool initialValue = true;
  get initialVal => initialValue;

  var eventOffset = 0;
  var searchEventOffset = 0;
  get getEventOffset => eventOffset;

  var eventSearchQuery = "";

  void getEventPatientTriageReport(previousList) async {
    try {
      logger.d("getPatientTriageReport");
      getisLoading = true;
      initialValue = true;
      var eventId = int.parse(eventIdValue);

      List<VisionGuardianPatientResponseModel> response;

      if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        response = await vgAddEventRepository.getTriageReport(queryData: {
          "campaignEventId": eventId,
          "performerId": [globalVolunteerProvider.userId],
          "pageable": {"page": offset, "size": 10}
        });
        // response = response + responseVolunteer;
      } else {
        response = await vgAddEventRepository.getTriageReport(queryData: {
          "campaignEventId": eventId,
          "performerId": [globalVGProvider.userId],
          "pageable": {"page": offset, "size": 10}
        });
      }

      setEventPatients(previousList + response);
      setSearchEventPatients(previousList + response);
      newEventPatientList = response;
      getisLoading = false;
      error = false;
    } catch (e) {
      error = true;
      getisLoading = false;
    }
    notifyListeners();
  }

  void getVgEvents(previousList, type) async {
    logger.d("callledddddddddddddddd");
    try {
      eventLoading = true;
      List<VisionGuardianEventModel> response;
      if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        response = await vgAddEventRepository.getVGEvents(
          queryData: {
            "actorIdentifier": globalVolunteerProvider.userId.toString(),
            "eventStatusFilter":
                eventStatusFilter.isEmpty ? "ALL" : eventStatusFilter,
            "pageable": {
              "page": type == "search" ? searchEventOffset : eventOffset,
              "size": 10,
              "title-like": eventSearchQuery,
            },
          },
        );
      } else {
        response = await vgAddEventRepository.getVGEvents(
          queryData: {
            "actorIdentifier": globalVGProvider.userId.toString(),
            "eventStatusFilter":
                eventStatusFilter.isEmpty ? "ALL" : eventStatusFilter,
            "pageable": {
              "page": type == "search" ? searchEventOffset : eventOffset,
              "size": 10,
              "title-like": eventSearchQuery,
            },
          },
        );
      }

      setEventList(previousList + response, type);
      if (type == "search") {
        newSearchEventList = response;
      } else {
        newEventList = response;
      }

      eventLoading = false;
    } catch (e) {
      error = true;
      errorMessage = e.toString();
      eventLoading = false;
    }
    notifyListeners();
  }

  void setEventList(List<VisionGuardianEventModel> response, String type) {
    if (type == "search") {
      searchEventResults = response;
    } else {
      listOfEventDetails = response;
    }
  }

  void setEventId(String id) {
    eventId = id;
    searchController.text = "";
    offset = 0;
    List<VisionGuardianPatientResponseModel> previousList = [];
    getEventPatientTriageReport(previousList);
  }

  void setIsLoading() {
    isLoading = false;
  }

  void loadingToggle() {
    initialValue = false;
    getisLoading = !getisLoading;
    notifyListeners();
  }

  void setStartDate(String date) {
    _startDate.text = date;
    notifyListeners();
  }

  void setEndDate(String date) {
    _endDate.text = date;
    notifyListeners();
  }

  Future<int> deleteEventDetails({required String eventId}) async {
    isLoading = true;
    notifyListeners();
    var statusCode =
        await vgAddEventRepository.deleteVGEvents(eventId: eventId);
    return statusCode;
  }

  Future<void> addEventDetails() async {
    try {
      logger.d("inside add event details");
      isLoading = true;
      notifyListeners();
      String file = await fileMsProvider.uploadImage(File(_image?.path ?? ""));
      Map<String, String> fileMap = fileMsProvider.parseUrl(file);
      Map<String, dynamic> actors;
      if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        actors = {
          "role": "VOLUNTEER",
          "identifier": globalVolunteerProvider.userId.toString(),
          "isOwner": true
        };
      } else {
        actors = {
          "role": "MEDICAL_DOCTOR",
          "identifier": globalVGProvider.userId.toString(),
          "isOwner": true
        };
      }

      logger.d("after uplopading image");

      DateTime startDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_startDate.text).toString());
      DateTime endDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_endDate.text).toString());

      var startFormat =
          "${startDateFormat.year}-${startDateFormat.month.toString().padLeft(2, '0')}-${startDateFormat.day.toString().padLeft(2, '0')}";
      var endFormat =
          "${endDateFormat.year}-${endDateFormat.month.toString().padLeft(2, '0')}-${endDateFormat.day.toString().padLeft(2, '0')}";
      DateFormat format = DateFormat("HH:mm");
      DateTime starttime = format.parse(startTime.text);
      DateTime endtime = format.parse(endTime.text);
      log(starttime.timeZoneName);

      log(startTime.text);
      log(endTime.text);
      log(starttime.toString());
      log(endtime.toString());
      log("start time is: ${starttime.toIso8601String()}Z");
      log("end time is: ${endtime.toIso8601String()}Z");

      VisionGuardianEventModel vgEventModel = VisionGuardianEventModel(
          title: _eventTitle.text,
          serviceProvider: 0,
          description: _eventDescription.text,
          startDate: startFormat,
          endDate: endFormat,
          startTime: "${starttime.toIso8601String()}Z",
          endTime: "${endtime.toIso8601String()}Z",
          maximumAttendeeCapacity: 0,
          sponsor: "r6B",
          images: [
            VisionGuardianEventImage(
              baseUrl: fileMap["baseUrl"],
              endpoint: fileMap["endPoint"],
              fileId: fileMap["fileId"],
              thumbnail: true,
              status: "ACTIVE",
            )
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

      logger.d("vgEventModel is: $vgEventModel");

      await vgAddEventRepository.postVGEvents(
        vgEventModel: vgEventModel,
        actor: actors,
      );

      filterListEvents(-1, "ALL");
      isLoading = false;
      notifyListeners();
    } catch (e) {
      logger.e(e);
      isLoading = false;
      notifyListeners();
      rethrow;
    }
    resetFields();
  }

  void setSearchEventList(String query) async {
    eventSearchQuery = query;
    List<VisionGuardianEventModel> previousList = [];
    eventLoading = true;
    notifyListeners();
    getVgEvents(previousList, "search");
  }

  void setSearchPatientList(String query) async {
    logger.d(listOfSearchEventPatients);
    List<VisionGuardianPatientResponseModel> resultList = [];

    for (int i = 0; i < listOfSearchEventPatients.length; i++) {
      if (listOfSearchEventPatients[i]
          .name!
          .toLowerCase()
          .contains(query.toLowerCase())) {
        resultList.add(listOfSearchEventPatients[i]);
      } else if (listOfSearchEventPatients[i]
          .id!
          .toString()
          .contains(query.toLowerCase())) {
        resultList.add(listOfSearchEventPatients[i]);
      } else if (listOfSearchEventPatients[i]
          .diagnosticReportId!
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase())) {
        resultList.add(listOfSearchEventPatients[i]);
      }
    }
    listOfEventPatients = resultList;

    notifyListeners();
  }

  void resetListOfEventPatients() {
    listOfEventPatients = [];
    notifyListeners();
  }

  void filterListEvents(selectedIndex, selectedValue) {
    eventSearchQuery = "";
    eventOffset = 0;
    isSelected = selectedIndex;
    eventStatusFilter = selectedValue;

    List<VisionGuardianEventModel> previousList = [];
    listOfEventDetails = [];
    eventLoading = true;
    notifyListeners();
    getVgEvents(previousList, "default");
  }

  void setEventDetails(eventDetails) {
    listOfEventDetails = eventDetails;
  }

  void setSearchEventDetails(eventDetails) {
    searchResults = eventDetails;
  }

  void resetFields() {
    _eventTitle.clear();
    _eventDescription.clear();
    _startDate.clear();
    _endDate.clear();
    _startTime.clear();
    _endTime.clear();
    _venueName.clear();
    _pincode.clear();
    _city.clear();
    _image = null;
    notifyListeners();
  }

  void setEventPatients(List<VisionGuardianPatientResponseModel> response) {
    listOfEventPatients = response;
    logger.d(listOfEventPatients);
  }

  void setSearchEventPatients(
      List<VisionGuardianPatientResponseModel> response) {
    listOfSearchEventPatients = response;
  }

  void resetSearchFeild() {
    searchController.text = "";
  }

  void scrollListener() {
    logger.d("page");
    if (eventPatientController.position.pixels ==
            eventPatientController.position.maxScrollExtent &&
        (newEventPatientList.length == 10 || newEventPatientList.isEmpty)) {
      offset = offset + 1;
      getEventPatientTriageReport(listOfEventPatients);
    }
  }

  void defaulteventScrollListener() {
    if (eventListController.position.pixels ==
            eventListController.position.maxScrollExtent &&
        (newEventList.length == 10)) {
      eventOffset = eventOffset + 1;
      getVgEvents(listOfEventDetails, "default");
    }
  }

  void searcheventScrollListener() {
    if (searchEventListController.position.pixels ==
            searchEventListController.position.maxScrollExtent &&
        (newSearchEventList.length == 10)) {
      searchEventOffset = searchEventOffset + 1;
      getVgEvents(searchEventResults, "search");
    }
  }

  void resetPagination() {
    listOfEventDetails = [];
    eventOffset = 0;
  }

  void resetSearchEventList() {
    searchEventResults = [];
    newSearchEventList = [];
    searchEventOffset = 0;
  }

  void resetListOfEvents() {
    listOfEventDetails = [];
    notifyListeners();
  }
}
