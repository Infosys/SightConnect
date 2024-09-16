import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/vg_event_model.dart';

var vgEventDataCacheProvider = ChangeNotifierProvider((ref) => VgEventDataCacheProvider());

class VgEventDataCacheProvider extends ChangeNotifier {

//declaration of variables
  VisionGuardianEventModel? eventDetails;
  int eventId = 0;

  //getters
  VisionGuardianEventModel? get getEventDetails => eventDetails;
  int get getEventId => eventId;

  //setters
  set setEventDetails(VisionGuardianEventModel? eventDetails) {
    this.eventDetails = eventDetails;
    notifyListeners();
  }

  void setEventId(int eventId) {
    this.eventId = eventId;
    notifyListeners();
  }

  //clear methods
  void clearEventDetails() {
    eventDetails = null;
    notifyListeners();
  }

  void clearEventId() {
    eventId = 0;
    notifyListeners();
  }
}