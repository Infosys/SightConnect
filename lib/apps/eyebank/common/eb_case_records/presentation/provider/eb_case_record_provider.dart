import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/case_register_repository_impl.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/contracts/case_register_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/mappers/encounter_brief_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebIntimationFormProvider = FutureProvider<dynamic>((ref) async {
  final repo = ref.watch(ebTimlineRepoProvider);
  final res = await repo.getIntimationForm(timelineName: "CORNEA_DONATION");
  return res.fold(
    (l) => throw l,
    (r) => r.stage,
  );
});
// final ebSubmitIntimationFormProvider = StateProvider((ref) {
//   // final repo = ref.watch(ebTimlineRepoProvider);
//   // return repo
// });

//GET ALL ENCOUNTERS
final ebGetRecordsProvider =
    FutureProvider.family<EncounterBriefEntity, GetRecordsParams>(
  (ref, params) async {
    final repo = ref.watch(ebCaseRegisterRepositoryProvider);
    final p = GetAllEncountersParams(
      // encounterStage: null,
      // startDate: null,
      // endDate: null,
      page: params.pageNumber,
      size: params.pageSize,
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
    if (params.searchKey.isEmpty) {
      return EncounterBriefEntity(content: []);
    }
    final repo = ref.watch(ebCaseRegisterRepositoryProvider);
    final p = SearchEncounterParams(
      mobile: params.searchKey,
      page: params.pageNumber,
      size: params.pageSize,
    );

    final result = await repo.searchEncounter(p);
    return result.fold(
      (l) => throw l,
      (r) => EncounterBriefMapper.mapToEntity(r),
    );
  },
);

class GetRecordsParams {
  final List<String>? filters;
  final int pageNumber;
  final int pageSize;

  GetRecordsParams({
    this.filters,
    required this.pageNumber,
    required this.pageSize,
  });
}

class SearchRecordParams {
  final List<String>? filters;
  final int pageNumber;
  final int pageSize;
  final String searchKey;

  SearchRecordParams({
    this.filters,
    required this.pageNumber,
    required this.pageSize,
    required this.searchKey,
  });
}
