/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

//import riverpod provider as PatientProvider
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as riverpod;

import '../../../../../../../services/failure.dart';
import '../../data/models/uhi_search_model.dart';
import '../../data/repository/patient_appointment_repository.dart';
import '../../data/source/patient_appointment_remote_source.dart';

var patientAppointmentRepositoryProvider =
    riverpod.Provider<PatientAppointmentRepository>(
  (ref) => PatientAppointmentRepositoryImpl(
    ref.watch(appointmentRemoteSourceProvider),
  ),
);

class PatientAppointmentRepositoryImpl extends PatientAppointmentRepository {
  PatientAppointmentRemoteSource remoteDataSource;
  PatientAppointmentRepositoryImpl(this.remoteDataSource);

  @override
  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    try {
      await remoteDataSource.initializeStompClient();

      final data =
          await remoteDataSource.sendAppointmentDetails(uhiSearchModel);
      if (data) {
        Fluttertoast.showToast(msg: "Data Posted Successfully");
        return true;
      } else {
        throw ServerFailure(errorMessage: 'Error');
      }
    } on Exception {
      throw ServerFailure(errorMessage: 'Error');
    }
  }
}
