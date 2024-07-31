import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_analytics_stats.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

abstract class VTHomeRepository {
  Future<List<VTPatientDto>> getListOfPatients(TableParams tableParams);

  Future<List<VtAnalyticsStats>> getVtAnalyticsStats();
}
