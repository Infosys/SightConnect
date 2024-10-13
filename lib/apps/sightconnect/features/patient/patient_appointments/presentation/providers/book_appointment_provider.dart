/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var bookAppointmentProvider =
    ChangeNotifierProvider((ref) => BookAppointmentProvider());

class BookAppointmentProvider extends ChangeNotifier {
  BookAppointmentProvider() {
    setTimeSlot('10:00 am - 10:30 am');
  }

  String _selectedConsultationType = "Online";
  DateTime _selectedDate = DateTime.now();
  String _selectedPatientName = '';
  String _selectedPatientId = '';
  String _selectedEyeProblem = '';
  DateTime? _appointmentStartDateTime;
  DateTime? _appointmentEndDateTime;
  String _timeSlot = '';

  String get selectedConsultationType => _selectedConsultationType;
  DateTime get selectedDate => _selectedDate;
  String get selectedPatientName => _selectedPatientName;
  String get selectedPatientId => _selectedPatientId;
  String get selectedEyeProblem => _selectedEyeProblem;
  DateTime? get appointmentStartDateTime => _appointmentStartDateTime;
  DateTime? get appointmentEndDateTime => _appointmentEndDateTime;
  String get timeSlot => _timeSlot;

  void setTimeSlot(String value) {
    _timeSlot = value;
    convertTimeSlotToDateTime(value);
    notifyListeners();
  }

  void setSelectedEyeProblem(String value) {
    _selectedEyeProblem = value;
    convertTimeSlotToDateTime(_timeSlot);
    notifyListeners();
  }

  void setSelectedPatientDetails(String name, String id) {
    _selectedPatientName = name;
    _selectedPatientId = id;
    convertTimeSlotToDateTime(_timeSlot);
    notifyListeners();
  }

  void setSelectedDate(DateTime value) {
    _selectedDate = value;
    convertTimeSlotToDateTime(_timeSlot);
    notifyListeners();
  }

  void setConsultationType(String value) {
    if (value == "Telephone Consultation") {
      _selectedConsultationType = "Online";
    } else if (value == "In Clinic Consultation") {
      _selectedConsultationType = "Physical";
    }
    convertTimeSlotToDateTime(_timeSlot);
    notifyListeners();
  }

  void convertTimeSlotToDateTime(String timeSlot) {
    // Split the time slot string into "from" and "to" times
    final parts = timeSlot.split(' - ');
    final startTime = parts[0];
    final endTime = parts[1];

    // Parse the individual times (assuming 12-hour format)
    var startHour = int.parse(startTime.split(':')[0]);
    var startMinute = int.parse(startTime.split(':')[1].split(' ')[0]);
    var endHour = int.parse(endTime.split(':')[0]);
    var endMinute = int.parse(endTime.split(':')[1].split(' ')[0]);

    // Get today's date
    final now = _selectedDate;

    // Check for AM/PM and adjust hours accordingly
    if (startTime.endsWith('pm') && startHour != 12) {
      startHour += 12;
    } else if (startTime.endsWith('am') && startHour == 12) {
      startHour = 0;
    }

    if (endTime.endsWith('pm') && endHour != 12) {
      endHour += 12;
    } else if (endTime.endsWith('am') && endHour == 12) {
      endHour = 0;
    }

    // Create DateTime objects for start and end times
    _appointmentStartDateTime =
        DateTime(now.year, now.month, now.day, startHour, startMinute);
    notifyListeners();
    _appointmentEndDateTime =
        DateTime(now.year, now.month, now.day, endHour, endMinute);
    notifyListeners();

    // Return the start time as the selected DateTime
  }
}
