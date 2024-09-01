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
      id: (json['id'] as num?)?.toInt(),
      tissueId: json['tissueId'] as String?,
      identifier: json['identifier'] as String?,
      productCategory: json['productCategory'] as String?,
      productCode: json['productCode'] as String?,
      productStatus: json['productStatus'],
      expiryDate: json['expiryDate'],
      lotNumber: json['lotNumber'],
      storageMedium: json['storageMedium'],
      properties: json['properties'],
      storageTemp: json['storageTemp'],
      document: json['document'],
      recoveryInformation: json['recoveryInformation'] == null
          ? null
          : RecoveryInformation.fromJson(
              json['recoveryInformation'] as Map<String, dynamic>),
      encounterId: (json['encounterId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tissueId': instance.tissueId,
      'identifier': instance.identifier,
      'productCategory': instance.productCategory,
      'productCode': instance.productCode,
      'productStatus': instance.productStatus,
      'expiryDate': instance.expiryDate,
      'lotNumber': instance.lotNumber,
      'storageMedium': instance.storageMedium,
      'properties': instance.properties,
      'storageTemp': instance.storageTemp,
      'document': instance.document,
      'recoveryInformation': instance.recoveryInformation?.toJson(),
      'encounterId': instance.encounterId,
    };

_$RecoveryInformationImpl _$$RecoveryInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoveryInformationImpl(
      id: (json['id'] as num?)?.toInt(),
      extractionMethod: json['extractionMethod'] as String?,
      extractionDateTime: json['extractionDateTime'] == null
          ? null
          : DateTime.parse(json['extractionDateTime'] as String),
      lotNumber: json['lotNumber'] as String?,
      storageMedium: json['storageMedium'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      intent: json['intent'] as String?,
      performedBy: json['performedBy'] as String?,
      performerRole: json['performerRole'],
      assistedBy: json['assistedBy'] as String?,
      assistedRole: json['assistedRole'],
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
      storageTemp: json['storageTemp'],
      documents: json['documents'],
      productCategory: json['productCategory'] as String?,
      productCode: json['productCode'] as String?,
      productIdentifier: json['productIdentifier'] as String?,
    );

Map<String, dynamic> _$$RecoveryInformationImplToJson(
        _$RecoveryInformationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extractionMethod': instance.extractionMethod,
      'extractionDateTime': instance.extractionDateTime?.toIso8601String(),
      'lotNumber': instance.lotNumber,
      'storageMedium': instance.storageMedium,
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'intent': instance.intent,
      'performedBy': instance.performedBy,
      'performerRole': instance.performerRole,
      'assistedBy': instance.assistedBy,
      'assistedRole': instance.assistedRole,
      'properties': instance.properties?.toJson(),
      'storageTemp': instance.storageTemp,
      'documents': instance.documents,
      'productCategory': instance.productCategory,
      'productCode': instance.productCode,
      'productIdentifier': instance.productIdentifier,
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      comments: json['comments'] as String?,
      scleraRecovered: (json['scleraRecovered'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'scleraRecovered': instance.scleraRecovered,
    };
