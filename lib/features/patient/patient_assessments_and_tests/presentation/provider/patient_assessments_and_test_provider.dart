import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/fake_data_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var assessmentsAndTestProvider =
    ChangeNotifierProvider((ref) => AssessmentsAndTestProvider());

class AssessmentsAndTestProvider extends ChangeNotifier {
  List<Map<String, dynamic>> data = [
    {
      'name': 'Raghavi Pandey',
      'image': 'assets/images/connection_dp_one.png',
      'about': 'Me,22 years',
      'checkupType': "Routine Checkup",
      'reminderMessage': "Post OPS Care",
      "appointmentType": "IVR",
      "MessageText":
          "Cataract Surgery completed. Recommended to continue post operative care follow-ups.",
    },
    {
      'name': 'Raghavi Pandey',
      'image': 'assets/images/connection_dp_one.png',
      'about': 'Me,22 years',
      'checkupType': "Urgent Checkup",
      'reminderMessage': "3rd Reminder Sent",
      "appointmentType": "APP",
      "MessageText":
          "Hi Raghavi, this is a gentle reminder to visit an eye specialist to prevent eye problems in future.",
    },
    {
      'name': 'Chunkey Pandey',
      'image': 'assets/images/connection_dp_two.png',
      'about': 'Father,65 years',
      'checkupType': "Routine Checkup",
      'reminderMessage': "Visit Vision Center",
      "appointmentType": "IVR",
      "MessageText":
          "Patient consistently identifies the orientation of most “E” letters but struggles with a few.",
    },
  ];

  List<Map<String, dynamic>> stateData = [];
  int selectedOption = 1;
  String selectedName = people[0]['name'];
  set setSelectedName(String value) {
    selectedName = value;
    logger.d('\n\n$selectedName\n\n');
    notifyListeners();
  }

  set setSelectedOption(int value) {
    selectedOption = value;
    notifyListeners();
    logger.d('\n\n$selectedOption\n\n');
  }

  get getStateData => stateData;

  setstate() {
    if (selectedOption == 1) {
      stateData = data;
    } else if (selectedOption == 2) {
      stateData =
          data.where((element) => element['name'] == selectedName).toList();
    }
    logger.d('Function k andar ka\n\n$stateData\n\n');
  }
}
