import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseCreationProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle.loadString(
      'assets/local_json/case_register.json',
    );
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});

final getRecordsProvider =
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
  await Future.delayed(const Duration(seconds: 2));
  return fakeData;
});

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
