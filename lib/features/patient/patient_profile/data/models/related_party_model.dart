import 'package:eye_care_for_all/features/common_features/auth/data/enums/relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_party_model.freezed.dart';
part 'related_party_model.g.dart';

@freezed
class RelatedPartyModel with _$RelatedPartyModel{
  const factory RelatedPartyModel({
    int? patientId,
    Relationship? relation,
    int? parentPatientId,
    String? regRef,
    String? name,
    String? profilePicture,
    int? age
  }) = _RelatedPartyModel;

  factory RelatedPartyModel.fromJson(Map<String, dynamic> json) =>
      _$RelatedPartyModelFromJson(json); 
}