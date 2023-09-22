import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/repository/triage_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/repository/triage_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepsProvider = ChangeNotifierProvider(
  (ref) => TriageStepsProvider(
    ref.read(triageRepositoryProvider),
  ),
);

class TriageStepsProvider extends ChangeNotifier {
  TriageRepository triageRepository;
  TriageStepsProvider(this.triageRepository);

  Future<void> saveTriage() async {
    Triage triage = const Triage(
      id: 0,
    );
    await triageRepository.saveTriage(triage: triage);
    notifyListeners();
  }
}
