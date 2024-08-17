import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/table_data.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebIntimationFormProvider = FutureProvider<String>((ref) async {
//   final repo = ref.watch(ebTimlineRepoProvider);
//   final res= await repo.getIntimationForm(timelineName: "CORNEA_DONATION");
//  return  res.fold((l) => throw l, (r) => r);
  return await rootBundle
      .loadString('assets/eyebank/local_json/case_register.json');
});
final ebSubmitIntimationFormProvider = StateProvider((ref) {
  // final repo = ref.watch(ebTimlineRepoProvider);
  // return repo
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
