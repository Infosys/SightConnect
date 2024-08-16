import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/encounter_brief_model.dart';

import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../helpers/data/respositories/contracts/eb_repository.dart';

final ebCaseCreationProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle.loadString(
      'assets/eyebank/local_json/case_register.json',
    );
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});

final ebGetRecordsProvider =
    FutureProvider.family<List<TableData>, GetRecordsParams>(
        (ref, params) async {
  final List<TableData> fakeData = List.generate(
    params.pageSize,
    (index) => TableData(
      eye: "Eye ${index + 1}",
      category: "Category ${index + 1}",
      date: DateTime.now(),
      donor: "Donor ${index + 1}",
      sampleID: "Sample ID ${index + 1}",
      status: "Status ${index + 1}",
      tissue: "Tissue ${index + 1}",
    ),
  );
  await Future.delayed(const Duration(milliseconds: 500));
  return fakeData;
});

final ebSearchRecordProvider =
    FutureProvider.family<List<EncounterBriefModel>, String>(
  (ref, query) async {
    print('Query: $query'); // Debug print
    final List<EncounterBriefModel> fakeData = List.generate(
      10,
      (index) => EncounterBriefModel(
        encounterId: index + 1,
        encounterStatus: AssessmentName.INTIMATION,
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

    final filteredData = fakeData.where((encounter) => encounter.encounterId.toString()
            .contains(query.toLowerCase()))
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
