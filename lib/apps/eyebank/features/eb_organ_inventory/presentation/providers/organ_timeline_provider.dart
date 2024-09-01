import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_intimation_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/mappers/eb_timeline_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/eb_organ_inventory_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/repository/eb_organ_inventory_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../../../../../services/eb_failure.dart';
import '../../../../helpers/data/models/eb_timeline_config_model.dart';
import '../../../../helpers/data/respositories/eb_repository_impl.dart';

final ebAddRequestProvider =
    FutureProvider<EBFormIntimationResponseModel>((ref) async {
  final repo = ref.watch(ebTimlineRepoProvider);
  final res = await repo.getIntimationForm(timelineName: "CORNEA_TRANSPLANT");
  return res.fold(
    (l) => throw l,
    (r) => r,
  );
});

final ebOrganTimelineProvider = FutureProvider.family
    .autoDispose<List<EBTimelineEntity>, EbOrganTimlineParams>(
        (ref, data) async {
  final repo = ref.read(ebRepositoryProvider);
  try {
    final timelinesResult = await repo.fetchTimelineByID(data.encounterID);
    // logger.f('timelinesResult: $timelinesResult');
    final stagesResult =
        await repo.fetchTimelineStages(data.timelineName, data.timelineVersion);
    // logger.f('stagesResult: $stagesResult');
    if (timelinesResult.isRight() && stagesResult.isRight()) {
      final timelines = timelinesResult.getOrElse(() => []);
      final stages =
          stagesResult.getOrElse(() => const EbTimelineConfigModel());
      // log(EBTimelineMapper.mapToEntity(timelines, stages).toString());
      return EBTimelineMapper.mapToEntity(timelines, stages);
    } else {
      throw EBServerFailure(
        errorMessage: "failure in fetching timeline",
        errorObject: EBErrorObject(),
      );
    }
  } on EBFailure catch (e) {
    logger.e('EBFailure: $e');
    rethrow;
  } catch (e) {
    logger.e('Error: $e');
    rethrow;
  }
});

class EbOrganTimlineParams {
  final String? encounterID;
  final String timelineName;
  final String? timelineVersion;

  EbOrganTimlineParams({
    this.encounterID,
    this.timelineName = "CORNEA_TRANSPLANT",
    this.timelineVersion,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EbOrganTimlineParams &&
        other.encounterID == encounterID &&
        other.timelineVersion == timelineVersion;
  }

  @override
  int get hashCode => encounterID.hashCode ^ timelineVersion.hashCode;
}

final ebOrganInventoryAnalyticsProvder =
    FutureProvider.autoDispose<EbOrganInventoryAnalyticsModel>((ref) async {
  final repository = ref.watch(ebOrganInventoryRepositoryProvider);
  final result = await repository.getOrganInventoryStatistics();
  return result.fold(
    (l) => throw l,
    (r) => r,
  );
});

class GetOrganTissueRequestParams {
  final int page;
  final int size;
  final String? surgeryType;
  final String? stage;
  final String? requestDate;

  GetOrganTissueRequestParams({
    required this.page,
    required this.size,
    this.surgeryType,
    this.stage,
    this.requestDate,
  });
}

final organRequestOverviewProvider =
    FutureProvider.family<OrganTissueRequestModel, GetOrganTissueRequestParams>(
        (ref, param) async {
  final repo = ref.read(ebOrganInventoryRepositoryProvider);
  final response = await repo.getOrganTissueRequest(
    page: param.page,
    size: param.size,
  );
  return response.fold((e) => throw e, (data) {
    return data;
  });
});
