import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../core/services/failure.dart';
import '../../data/models/uhi_search_model.dart';
import '../../data/repository/patient_appointment_repository.dart';
import '../../data/source/patient_appointment_remote_source.dart';
//import riverpod provider as PatientProvider
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;

var patientAppointmentRepositoryProvider =
    riverpod.Provider<PatientAppointmentRepository>(
        (ref) => PatientAppointmentRepositoryImpl(
              ref.watch(appointmentRemoteSourceProvider),
            ));

class PatientAppointmentRepositoryImpl extends PatientAppointmentRepository {
  PatientAppointmentRemoteSource remoteDataSource;
  PatientAppointmentRepositoryImpl(this.remoteDataSource);

  @override
  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    try {
      log("sendAppointmentDetails called from IMPL and the data is : $uhiSearchModel");
  
       
     
      final data =
          await remoteDataSource.sendAppointmentDetails(uhiSearchModel);
       await remoteDataSource.initializeStompClient();
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
