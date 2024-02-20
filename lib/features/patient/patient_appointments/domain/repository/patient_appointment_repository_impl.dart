import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/services/failure.dart';
import '../../data/models/eua_on_search_model.dart';
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
  Future<Either<Failure, List<EuaOnSearchModel>>> getDoctorsList() async {
    try {
      final remotePatientAppointments = await remoteDataSource.getDoctorsList();
      return Right(remotePatientAppointments);
    } on Exception {
      return Left(ServerFailure(errorMessage: 'Error'));
    }
  }

  @override
  Future<void> sendAppointmentDetails(UhiSearchModel uhiSearchModel) async {
    try {
      final data =
          await remoteDataSource.sendAppointmentDetails(uhiSearchModel);
      if (data) {
        Fluttertoast.showToast(msg: "Data Posted Successfully");
      } else {
        throw ServerFailure(errorMessage: 'Error');
      }
    } on Exception {
      throw ServerFailure(errorMessage: 'Error');
    }
  }
}
