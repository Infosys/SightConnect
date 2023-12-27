import 'package:freezed_annotation/freezed_annotation.dart';

part 'miniapp_injection_model.freezed.dart';
part 'miniapp_injection_model.g.dart';

@freezed
class MiniAppInjectionModel with _$MiniAppInjectionModel {
  const factory MiniAppInjectionModel({
    Action? action,
    int? parentPatientId,
    String? mobileNumber,
  }) = _MiniAppInjectionModel;
  factory MiniAppInjectionModel.fromJson(Map<String, dynamic> json) =>
      _$MiniAppInjectionModelFromJson(json);
}

enum Action {
  REGISTER,
  UPDATE,
  ADD_MEMBER,
}


//generate model command with dart run build_runner build --delete-conflicting-outputs