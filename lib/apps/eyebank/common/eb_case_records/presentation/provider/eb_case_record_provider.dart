import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/case_register_repository_impl.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/contracts/case_register_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/mappers/encounter_brief_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/eb_case_timeline/data/models/eb_form_intimation_response_model.dart';

final ebIntimationFormProvider =
    FutureProvider<EBFormIntimationResponseModel>((ref) async {
  final repo = ref.watch(ebTimlineRepoProvider);
  final res = await repo.getIntimationForm(timelineName: "CORNEA_DONATION");
  return res.fold(
    (l) => throw l,
    (r) => r,
  );
});

//GET ALL ENCOUNTERS
final ebGetRecordsProvider =
    FutureProvider.family<EncounterBriefEntity, GetRecordsParams>(
  (ref, params) async {
    final repo = ref.watch(ebCaseRegisterRepositoryProvider);
    final p = GetAllEncountersParams(
      encounterStage: params.encounterStage,
      startDate: params.startDate,
      endDate: params.endDate,
      page: params.page,
      size: params.size,
    );

    final result = await repo.getAllEncounters(p);
    return result.fold(
      (l) => throw l,
      (r) => EncounterBriefMapper.mapToEntity(r),
    );
  },
);

//SEARCH ENCOUNTER
final ebSearchRecordProvider =
    FutureProvider.family<EncounterBriefEntity, SearchRecordParams>(
  (ref, params) async {
    if (params.searchKey.isEmpty && params.identifier == null) {
      return EncounterBriefEntity(content: []);
    }
    final repo = ref.watch(ebCaseRegisterRepositoryProvider);
    final p = SearchEncounterParams(
      mobile: params.searchKey,
      page: params.pageNumber,
      size: params.pageSize,
      identifier: params.identifier,
      identifierType: params.identifierType,
    );

    final result = await repo.searchEncounter(p);
    return result.fold(
      (l) => throw l,
      (r) => EncounterBriefMapper.mapToEntity(r),
    );
  },
);

class GetRecordsParams {
  final String? encounterStage;
  final String? startDate;
  final String? endDate;
  final int? page;
  final int? size;

  GetRecordsParams({
    this.encounterStage,
    this.startDate,
    this.endDate,
    this.page,
    this.size,
  });
}

class SearchRecordParams {
  final List<String>? filters;
  final int pageNumber;
  final int pageSize;
  final String searchKey;
  final String? identifierType;
  final String? identifier;

  SearchRecordParams({
    this.filters,
    required this.pageNumber,
    required this.pageSize,
    required this.searchKey,
    this.identifierType,
    this.identifier,
  });
}
