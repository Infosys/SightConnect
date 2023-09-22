// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visual_acuity_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisualAcuityReport _$$_VisualAcuityReportFromJson(
        Map<String, dynamic> json) =>
    _$_VisualAcuityReport(
      id: json['id'] as int,
      logMarRNE: (json['logMarRNE'] as num?)?.toDouble(),
      logMarLNE: (json['logMarLNE'] as num?)?.toDouble(),
      logMarRDE: (json['logMarRDE'] as num?)?.toDouble(),
      logMarLDE: (json['logMarLDE'] as num?)?.toDouble(),
      logMarRNC: (json['logMarRNC'] as num?)?.toDouble(),
      logMarLNC: (json['logMarLNC'] as num?)?.toDouble(),
      logMarRDC: (json['logMarRDC'] as num?)?.toDouble(),
      logMarLDC: (json['logMarLDC'] as num?)?.toDouble(),
      leftEyeRemark: json['leftEyeRemark'] as String?,
      rightEyeRemark: json['rightEyeRemark'] as String?,
      leftEyeCondition: $enumDecodeNullable(
              _$EyeConditionEnumMap, json['leftEyeCondition']) ??
          EyeCondition.NORMAL,
      rightEyeCondition: $enumDecodeNullable(
              _$EyeConditionEnumMap, json['rightEyeCondition']) ??
          EyeCondition.NORMAL,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$$_VisualAcuityReportToJson(
        _$_VisualAcuityReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logMarRNE': instance.logMarRNE,
      'logMarLNE': instance.logMarLNE,
      'logMarRDE': instance.logMarRDE,
      'logMarLDE': instance.logMarLDE,
      'logMarRNC': instance.logMarRNC,
      'logMarLNC': instance.logMarLNC,
      'logMarRDC': instance.logMarRDC,
      'logMarLDC': instance.logMarLDC,
      'leftEyeRemark': instance.leftEyeRemark,
      'rightEyeRemark': instance.rightEyeRemark,
      'leftEyeCondition': _$EyeConditionEnumMap[instance.leftEyeCondition]!,
      'rightEyeCondition': _$EyeConditionEnumMap[instance.rightEyeCondition]!,
      'remarks': instance.remarks,
    };

const _$EyeConditionEnumMap = {
  EyeCondition.NORMAL: 'NORMAL',
  EyeCondition.CATARACT: 'CATARACT',
  EyeCondition.GLAUCOMA: 'GLAUCOMA',
  EyeCondition.RETINA: 'RETINA',
  EyeCondition.OTHERS: 'OTHERS',
};
