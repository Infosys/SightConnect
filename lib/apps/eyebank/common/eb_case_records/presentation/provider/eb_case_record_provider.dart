import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/mappers/encounter_brief_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/faker/dummy_encounter_brief.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebIntimationFormProvider = FutureProvider<dynamic>((ref) async {
  final repo = ref.watch(ebTimlineRepoProvider);
  final res = await repo.getIntimationForm(timelineName: "CORNEA_DONATION");
  return res.fold(
    (l) => throw l,
    (r) => r.stage,
  );
});
final ebSubmitIntimationFormProvider = StateProvider((ref) {
  // final repo = ref.watch(ebTimlineRepoProvider);
  // return repo
});

//EncounterBriefEntity
final ebGetRecordsProvider =
    FutureProvider.family<EncounterBriefEntity, GetRecordsParams>(
        (ref, params) async {
  await Future.delayed(const Duration(milliseconds: 500));

  final apiData = EncounterBriefModel.fromJson(dummyEncounterBrief);
  final result = EncounterBriefMapper.mapToEntity(apiData);
  Log.d({'ebGetRecordsProvider', result});
  return Future.value(result);
});

final ebSearchRecordProvider =
    FutureProvider.family<List<ContentBriefEntity>, String>(
  (ref, query) async {
    final apiData = EncounterBriefModel.fromJson(dummyEncounterBrief);
    final result = EncounterBriefMapper.mapToEntity(apiData);

    await Future.delayed(const Duration(milliseconds: 300));
    final filteredData = result.content
        ?.where((encounter) =>
                encounter.encounterId?.toString().contains(query.toLowerCase()) ??
                false)
        .toList();

    return filteredData!;
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
