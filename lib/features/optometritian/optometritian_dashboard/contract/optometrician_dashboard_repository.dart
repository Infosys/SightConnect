import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_dashboard_model.dart';

abstract class OptometricianDashboardRepository {
  Future<Either<Failure, OptometricianDashboardModel>>
      getOptometricianDashboard(String capturedBy);
}
