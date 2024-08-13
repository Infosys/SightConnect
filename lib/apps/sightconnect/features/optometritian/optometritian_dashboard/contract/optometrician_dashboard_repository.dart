import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/optometrician_dashboard_model.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';

abstract class OptometricianDashboardRepository {
  Future<Either<Failure, OptometricianDashboardModel>>
      getOptometricianDashboard(String capturedBy);
}
