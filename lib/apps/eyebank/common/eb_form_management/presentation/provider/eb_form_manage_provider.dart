import 'package:dartz/dartz.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/repositories/eb_form_manage_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/domain/entity/eb_form_action_request_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/domain/mappers/eb_form_action_request_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebFormManageProvider =
    FutureProvider.family<dynamic, EbStageParams>((ref, stage) async {
  final repo = ref.watch(ebTimlineRepoProvider);
  final res = await repo.getFormConfiguration(
      stage: stage.stageName, stageVersion: stage.stageVersion);
  return res.fold(
    (l) => throw l,
    (r) => r,
  );
  // try {
  //   return await rootBundle
  //       .loadString('assets/eyebank/local_json/screening_form.json');
  // } catch (e) {
  //   logger.f('Error Converting json: $e');
  //   rethrow;
  // }
});

class EbStageParams {
  final String? stageName;
  final String? stageVersion;

  EbStageParams({
    required this.stageName,
    required this.stageVersion,
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
  final String stageName = 'stageName';

  EbFormManageProvider(this._ebFormManageRepository);

  Future<Either<EBFailure, void>> saveOrDraft({
    required int encounterId,
    required DynamicFormSavingType action,
    required dynamic formData,
  }) async {
    EBFormActionRequestEntity data = EBFormActionRequestEntity(
      timelineName: 'timelineName',
      timelineVersion: 'timelineVersion',
      eBformData: formData,
      performerId: 'performerId',
      performerRole: 'performerRole',
      verifiedById: 'verifiedById',
      verifiedByRole: 'verifiedByRole',
    );

    EBFormActionRequestModel modelData =
        EbFormActionRequestMapper.mapToModel(data);
    return await _ebFormManageRepository.saveOrDraft(
        encounterId, stageName, action, modelData);
  }
}
