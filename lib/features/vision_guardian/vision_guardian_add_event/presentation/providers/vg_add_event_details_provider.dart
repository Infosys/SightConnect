import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddEventDetailsNotifier extends ChangeNotifier {
  XFile? image;
  TextEditingController eventTitle = TextEditingController();
  TextEditingController eventDescription = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  TextEditingController venueName = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController city = TextEditingController();
}

// Finally, we are using ChangeNotifierProvider to allow the UI to interact with
// our TodosNotifier class.
final addEventDetailsProvider =
    ChangeNotifierProvider<AddEventDetailsNotifier>((ref) {
  return AddEventDetailsNotifier();
});
