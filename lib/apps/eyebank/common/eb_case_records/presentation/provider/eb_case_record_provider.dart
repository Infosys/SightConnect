import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/contracts/eb_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

//EncounterBriefEntity
final ebGetRecordsProvider =
    FutureProvider.family<List<EncounterBriefModel>, GetRecordsParams>(
        (ref, params) async {
  final List<EncounterBriefModel> fakeData = List.generate(
    params.pageSize,
    (index) => EncounterBriefModel(
      encounterId: index,
      encounterStatus: AssessmentName.INTIMATION,
      donorBrief: const DonorBrief(
        id: 0,
        name: "MEHUL MANTOO",
        contact: "9363476747",
      ),
      intimateDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
      performerId: 0,
      deathDate: DateTime.parse('2024-08-13T07:41:19.691Z'),
      bodyLocation: const BodyLocation(
        addressLine1: "42 Avenue Street",
        addressLine2: "New York City",
        street: "42 Avenue Street",
        city: "New York City",
        state: "New York",
        zipCode: "10001",
        country: "USA",
        landmark: "string",
        village: "string",
        district: "string",
        latitude: "string",
        longitude: "string",
      ),
      organExtracted: ["Heart"],
      lastModifiedDate: DateTime.parse('2024-08-13T07:41:19.692Z'),
    ),
  );
  await Future.delayed(const Duration(milliseconds: 500));
  return fakeData;
});

// final ebSearchRecordProvider =
//     FutureProvider.family<List<TableData>, GetRecordsParams>(
//         (ref, params) async {
//   final List<TableData> fakeData = List.generate(
//     params.pageSize,
//     (index) => TableData(
//       eye: "Eye ${index + 1}",
//       category: "Category ${index + 1}",
//       date: DateTime.now(),
//       donor: "Donor ${index + 1}",
//       sampleID: "Sample ID ${index + 1}",
//       status: "Status ${index + 1}",
//       tissue: "Tissue ${index + 1}",
//     ),
//   );
//   await Future.delayed(const Duration(milliseconds: 500));
//   return fakeData;
// });

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
