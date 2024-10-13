/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/contracts/vt_home_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_analytics_stats.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/source/vt_home_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtHomeRepository = Provider(
  (ref) => VTHomeRepositoryImpl(
    ref.watch(vtHomeRemoteSource),
  ),
);

class VTHomeRepositoryImpl extends VTHomeRepository {
  VTHomeRemoteSource remoteDataSource;
  VTHomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VTPatientDto>> getListOfPatients(TableParams tableParams) async {
    return await remoteDataSource.getListOfPatients(tableParams);
  }

  @override
  Future<List<VtAnalyticsStats>> getVtAnalyticsStats() {
    return remoteDataSource.getVtAnalyticsStats();
  }
}
