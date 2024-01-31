import 'package:freezed_annotation/freezed_annotation.dart';

part 'User_details_model.freezed.dart';
part 'User_details_model.g.dart';

@freezed
class UserDetails with _$UserDetails {
 

  factory UserDetails({
    String? patientId,
    String? patientName,
    String? patientAge,
    String? address,
    String? modileNumber,
    String? city,
    String? state,
    String? gender,
    String? dateOfBirth,
    String? profileImage,
    String? condition,
    bool? isTestTaken,
    String? treatment,
    String? diagnosis,
    String? status,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}


