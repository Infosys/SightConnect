import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data_model.freezed.dart';
part 'meta_data_model.g.dart';

@freezed
class MetaDataModel with _$MetaDataModel{
  const factory MetaDataModel({
    String? hipId,
    String? counterId,
    String? hprId,
    String? latitude,
    String? longitute
  }) = _MetaDataModel;

  factory MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModelFromJson(json); 
}