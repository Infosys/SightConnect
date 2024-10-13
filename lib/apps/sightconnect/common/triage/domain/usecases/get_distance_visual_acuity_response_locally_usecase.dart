/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../services/failure.dart';
import '../../../../helpers/usecases/usecase.dart';
import '../../data/repositories/triage_repository_impl.dart';
import '../models/triage_post_model.dart';
import '../repositories/triage_repository.dart';

var getDistanceVisualAcuityResponseLocallyUseCase = Provider(
  (ref) => GetDistanceVisualAcuityResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetDistanceVisualAcuityResponseLocallyUseCase
    implements
        UseCase<List<PostTriageObservationsModel>,
            GetDistanceVisualAcuityResponseLocallyParam> {
  final TriageRepository _repository;
  GetDistanceVisualAcuityResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>> call(
    GetDistanceVisualAcuityResponseLocallyParam params,
  ) async {
    final response =
        await _repository.getTriageDistanceVisualAcuityResponseLocally();
    return response;
  }
}

class GetDistanceVisualAcuityResponseLocallyParam {
  GetDistanceVisualAcuityResponseLocallyParam();
}
