import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/mappers/encounter_brief_mapper.dart';
import 'package:eye_care_for_all/faker/dummy_ecounter_brief.dart';
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
    FutureProvider.family<List<EncounterBriefEntity>, GetRecordsParams>(
        (ref, params) async {
  await Future.delayed(const Duration(milliseconds: 500));

  final apiData =
      dummyEncounterBrief.map((e) => EncounterBriefModel.fromJson(e)).toList();
  return Future.value(
      apiData.map((e) => EncounterBriefMapper.mapToEntity(e)).toList());
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
