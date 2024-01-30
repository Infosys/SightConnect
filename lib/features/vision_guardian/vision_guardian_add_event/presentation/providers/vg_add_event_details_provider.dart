import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/contracts/vg_add_event_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/repository/vg_add_event_respository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final addEventDetailsProvider =
    ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier(
    vgAddEventRepository: ref.watch(vgAddEventRepository),
    globalVGProvider: ref.read(globalVGProvider),
    fileMsProvider: ref.read(fileMsServiceProvider),
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
          actorIdentifier: ref.read(globalVGProvider).userId.toString(),
          eventStatusFilter: statusfilter);

  ref.read(addEventDetailsProvider).setEventDetails(response.reversed.toList());
  ref
      .read(addEventDetailsProvider)
      .setSearchEventDetails(response.reversed.toList());

  return response.reversed.toList();
});

class AddEventDetailsNotifier extends ChangeNotifier {
  final VgAddEventRepository vgAddEventRepository;
  final GlobalVGProvider globalVGProvider;
  final FileMsService fileMsProvider;
  AddEventDetailsNotifier({
    required this.vgAddEventRepository,
    required this.globalVGProvider,
    required this.fileMsProvider,
  }) {
    eventPatientController.addListener(scrollListener);
  }

  String eventId = "";
  var formKey = GlobalKey<FormState>();
  var error = false;
  var isLoading = false;

  var getisLoading = false;
  List<VisionGuardianEventModel> listOfEventDetails = [];
  List<VisionGuardianEventModel> searchResults = [];
  List<VisionGuardianPatientResponseModel> listOfEventPatients = [];
  List<VisionGuardianPatientResponseModel> listOfSearchEventPatients = [];
  List<VisionGuardianPatientResponseModel> newEventPatientList = [];

  String eventStatusFilter = "";
  String queryData = "";
  TextEditingController searchController = TextEditingController();
  ScrollController eventPatientController = ScrollController();
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

  void getEventPatientTriageReport(previousList) async {
    try {
      logger.d("getPatientTriageReport");
      getisLoading = true;
      var eventId = int.parse(eventIdValue);

      List<VisionGuardianPatientResponseModel> response =
          await vgAddEventRepository.getTriageReport(queryData: {
        "campaignEventId": eventId,
        "performerId": [globalVGProvider.userId],
        "pageable": {"page": offset, "size": 10}
      });

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
      isLoading = true;
      notifyListeners();
      String file = await fileMsProvider.uploadImage(File(_image!.path));
      Map<String, String> fileMap = fileMsProvider.parseUrl(file);
      Map<String, dynamic> actors = {
        "role": "MEDICAL_DOCTOR",
        "identifier": globalVGProvider.userId.toString(),
        "isOwner": true
      };

      DateTime startDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_startDate.text).toString());
      DateTime endDateFormat = DateFormat("yyyy-MM-dd")
          .parse(DateFormat('d MMM yyyy').parse(_endDate.text).toString());

      var startFormat =
          "${startDateFormat.year}-${startDateFormat.month.toString().padLeft(2, '0')}-${startDateFormat.day.toString().padLeft(2, '0')}";
      var endFormat =
          "${endDateFormat.year}-${endDateFormat.month.toString().padLeft(2, '0')}-${endDateFormat.day.toString().padLeft(2, '0')}";
      DateFormat format = DateFormat("hh:mm a");
      DateTime starttime = format.parse(startTime.text);
      DateTime endtime = format.parse(endTime.text);

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
    isSelected = selectedIndex;
    eventStatusFilter = selectedValue;

    notifyListeners();
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
}
