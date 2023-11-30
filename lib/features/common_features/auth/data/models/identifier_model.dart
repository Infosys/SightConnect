import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/identifier_type.dart';

part 'identifier_model.freezed.dart';
part 'identifier_model.g.dart';

@freezed
class IdentifierModel with _$IdentifierModel {
  const factory IdentifierModel({
    int? id,
    IdentifierType? type,
  }) = _IdentifierModel;

  factory IdentifierModel.fromJson(Map<String, dynamic> json) =>
      _$IdentifierModelFromJson(json);
}
