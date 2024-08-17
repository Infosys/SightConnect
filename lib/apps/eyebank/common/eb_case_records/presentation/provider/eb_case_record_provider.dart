import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/mappers/encounter_brief_mapper.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/faker/dummy_ecounter_brief.dart';
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
    FutureProvider.family<List<EncounterBriefEntity>, GetRecordsParams>(
        (ref, params) async {
  await Future.delayed(const Duration(milliseconds: 500));

  final apiData =
      dummyEncounterBrief.map((e) => EncounterBriefModel.fromJson(e)).toList();
  return Future.value(
      apiData.map((e) => EncounterBriefMapper.mapToEntity(e)).toList());
});

final ebSearchRecordProvider =
    FutureProvider.family<List<EncounterBriefModel>, String>(
  (ref, query) async {
    print('Query: $query'); // Debug print
    final List<EncounterBriefModel> fakeData = List.generate(
      10,
      (index) => EncounterBriefModel(
        encounterId: index + 1,
        encounterStatus: "PENDING",
        donorBrief: const DonorBrief(
          id: 0,
          name: "George Soros",
          contact: "9363476747",
        ),
        intimateDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
        performerId: 0,
        deathDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
      ),
    );

    // Simulate a delay for fetching the data

    await Future.delayed(const Duration(milliseconds: 500));

    // Filter the data based on the query

    final filteredData = fakeData
        .where((encounter) =>
            encounter.encounterId.toString().contains(query.toLowerCase()))
        .toList();

    return filteredData;
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
