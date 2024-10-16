/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final carePlanProvider = ChangeNotifierProvider((ref) => CarePlanProvider());

class CarePlanProvider extends ChangeNotifier {
  PatientInstruction? _patientInstruction;
  PatientInstruction? get patientInstruction => _patientInstruction;
  List<PatientInstruction> availableInstruction = [
    PatientInstruction.VISIT_PRIMARY_CLINIC,
    PatientInstruction.VISIT_SECONDARY_CLINIC,
    PatientInstruction.VISIT_TERTIARY_CLINIC,
    PatientInstruction.VISIT_COE,
    PatientInstruction.VISIT_AS_PER_CONSULT
  ];
  void setPatientInstruction(PatientInstruction? patientInstruction) {
    logger.d("patientInstruction : $patientInstruction");
    _patientInstruction = patientInstruction;
    notifyListeners();
  }
}
