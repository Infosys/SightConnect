import 'package:dartz/dartz.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/repositories/eb_form_manage_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/domain/entity/eb_form_action_request_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/domain/mappers/eb_form_action_request_mapper.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebFormManageProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle
        .loadString('assets/eyebank/local_json/screening_form.json');
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});

final ebSaveOrDraftProvider = Provider<EbFormManageProvider>((ref) {
  return EbFormManageProvider(ref.watch(ebFormManageRepositoryProvider));
});

class EbFormManageProvider extends ChangeNotifier {
  final EBFormManageRepository _ebFormManageRepository;
  final String stageName = 'stageName';

  EbFormManageProvider(this._ebFormManageRepository);

  Future<Either<EBFailure, void>> saveOrDraft(
    int encounterId,
    DynamicFormSavingType action,
    dynamic formData,
  ) async {
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
