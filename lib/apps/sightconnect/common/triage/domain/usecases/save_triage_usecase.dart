/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageUseCase = Provider(
  (ref) => SaveTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageUseCase implements UseCase<TriagePostModel, SaveTriageParam> {
  final TriageRepository _repository;
  SaveTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    SaveTriageParam params,
  ) async {
    logger.d({"Triage Param": params.triagePostModel});
    final response = await _repository.saveTriageResponse(
      triageResponse: params.triagePostModel,
    );
    return response;
  }
}

class SaveTriageParam {
  final TriagePostModel triagePostModel;
  SaveTriageParam({required this.triagePostModel});
}
