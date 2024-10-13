/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_search_page/data/contracts/vt_search_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_search_page/data/source/vt_search_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtPatientSearchRepositoryProvider = Provider<VTSearchRepository>(
  (ref) => VTPatientSearchRepositoryImpl(
    ref.watch(vtSearchRemoteSource),
  ),
);

class VTPatientSearchRepositoryImpl extends VTSearchRepository {
  VTSearchRemoteSource remoteDataSource;
  VTPatientSearchRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VTPatientDto>> getPatientProfile(String query) async {
    return await remoteDataSource.getPatientProfile(query);
  }
}
