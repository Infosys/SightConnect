// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organ_tissue_search_deligate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganTissueSearchDeligateModelImpl
    _$$OrganTissueSearchDeligateModelImplFromJson(Map<String, dynamic> json) =>
        _$OrganTissueSearchDeligateModelImpl(
          content: (json['content'] as List<dynamic>?)
              ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList(),
          totalElements: (json['totalElements'] as num?)?.toInt(),
          totalPages: (json['totalPages'] as num?)?.toInt(),
          size: (json['size'] as num?)?.toInt(),
          number: (json['number'] as num?)?.toInt(),
          numberOfElements: (json['numberOfElements'] as num?)?.toInt(),
          empty: json['empty'] as bool?,
          first: json['first'] as bool?,
          last: json['last'] as bool?,
        );

Map<String, dynamic> _$$OrganTissueSearchDeligateModelImplToJson(
        _$OrganTissueSearchDeligateModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
      'first': instance.first,
      'last': instance.last,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      tissueId: json['tissueId'] as String?,
      cellCount: (json['cellCount'] as num?)?.toInt(),
      harvestDate: json['harvestDate'] as String?,
      suitableProcedures: (json['suitableProcedures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      clearZone: json['clearZone'] as String?,
      lensType: json['lensType'] as String?,
      pachemetry: json['pachemetry'] as String?,
      tissueExpiry: json['tissueExpiry'] as String?,
      extractionMethod: json['extractionMethod'] as String?,
      storageMedium: json['storageMedium'] as String?,
      encounterId: (json['encounterId'] as num?)?.toInt(),
      donorAge: (json['donorAge'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'tissueId': instance.tissueId,
      'cellCount': instance.cellCount,
      'harvestDate': instance.harvestDate,
      'suitableProcedures': instance.suitableProcedures,
      'clearZone': instance.clearZone,
      'lensType': instance.lensType,
      'pachemetry': instance.pachemetry,
      'tissueExpiry': instance.tissueExpiry,
      'extractionMethod': instance.extractionMethod,
      'storageMedium': instance.storageMedium,
      'encounterId': instance.encounterId,
      'donorAge': instance.donorAge,
    };
