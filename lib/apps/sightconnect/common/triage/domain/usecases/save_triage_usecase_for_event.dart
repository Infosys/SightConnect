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

var saveTriageUseCaseForEvent = Provider(
  (ref) => SaveTriageUseCaseForEvent(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageUseCaseForEvent
    implements UseCase<TriagePostModel, SaveTriageParamForEvent> {
  final TriageRepository _repository;
  SaveTriageUseCaseForEvent(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    SaveTriageParamForEvent params,
  ) async {
    logger.d({
      "Triage Param": params.triagePostModel,
      "Event Id": params.eventId,
    });
    final response = await _repository.saveTriageResponseForEvent(
      triageResponse: params.triagePostModel,
      eventId: params.eventId,
    );
    return response;
  }
}

class SaveTriageParamForEvent {
  final TriagePostModel triagePostModel;
  final String eventId;
  SaveTriageParamForEvent({
    required this.triagePostModel,
    required this.eventId,
  });
}
