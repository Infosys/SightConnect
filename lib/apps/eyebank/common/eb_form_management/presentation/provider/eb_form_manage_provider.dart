import 'package:dartz/dartz.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/repositories/eb_form_manage_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_form_prefilled_response_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/mappers/eb_form_prefilled_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebFormManageProvider = FutureProvider.family
    .autoDispose<EBFormPrefilledResponseEntity, EbStageParams>(
        (ref, stage) async {
  try {
    final repo = ref.watch(ebTimlineRepoProvider);
    final res = await repo.getFormConfiguration(
        stage: stage.stageName, stageVersion: stage.stageVersion);
    final result1 = res.fold(
      (l) => throw l,
      (r) => r,
    );
    if (stage.serviceRequestId == null) {
      return EBFormPrefilledMapper.mapToEntity(null, result1);
    }
    //-----------------Fetch prefilled form-------------------
    final res2 = await repo.fetchPrefilledFormByStageAndId(
        stage.encounterId, stage.serviceRequestId, stage.stageName);

    final result2 = res2.fold(
      (l) => null, // This has to change
      (r) {
        // logger.d("PrefilledForm ${r.toJson()}");
        return r;
      },
    );
    return EBFormPrefilledMapper.mapToEntity(result2, result1);
  } catch (e) {
    logger.f('Error fetching form: $e');
    rethrow;
  }
});

class EbStageParams {
  final String? stageName;
  final String? stageVersion;
  final String? encounterId;
  final String? serviceRequestId;

  EbStageParams({
    required this.stageName,
    required this.stageVersion,
    required this.encounterId,
    required this.serviceRequestId,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EbStageParams &&
        other.stageName == stageName &&
        other.stageVersion == stageVersion;
  }

  @override
  int get hashCode => stageName.hashCode ^ stageVersion.hashCode;
}

//--------------------Provider-------------------------

final ebSaveOrDraftProvider = Provider<EbFormManageProvider>((ref) {
  return EbFormManageProvider(ref.watch(ebFormManageRepositoryProvider));
});

class EbFormManageProvider extends ChangeNotifier {
  final EBFormManageRepository _ebFormManageRepository;

  EbFormManageProvider(this._ebFormManageRepository);

  Future<Either<EBFailure, void>> saveOrDraft({
    required String? encounterId,
    required String? stageName,
    required String? stageVersion,
    required String? serviceRequestId,
    required DynamicFormSavingType action,
    required EBFormActionRequestModel ebFormActionRequestModel,
    required dynamic formData,
  }) async {
    return await _ebFormManageRepository.saveOrDraft(
      encounterId,
      stageName,
      stageVersion,
      serviceRequestId,
      action,
      ebFormActionRequestModel,
    );
  }

  Future<Either<EBFailure, void>> saveOrDraftTransplatForm({
    required DynamicFormSavingType action,
    required EBSubmitFormDataRequestModel ebFormActionRequestModel,
  }) async {
    return await _ebFormManageRepository.saveOrDraftTransplatForm(
      ebFormActionRequestModel,
      action,
    );
  }
}
