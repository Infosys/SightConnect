import 'package:eye_care_for_all/apps/eyebank/helpers/respositories/contracts/eb_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_encounter_request_model.freezed.dart';
part 'reject_encounter_request_model.g.dart';

@freezed
class RejectEncounterRequestModel with _$RejectEncounterRequestModel {
  const factory RejectEncounterRequestModel({
    int? encounterId,
    Reason? reason,
    String? comments,
    String? performerId,
    String? performerRole,
    String? verifiedById,
    String? verifiedByRole,
  }) = _RejectEncounterRequestModel;

  factory RejectEncounterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RejectEncounterRequestModelFromJson(json);
}
