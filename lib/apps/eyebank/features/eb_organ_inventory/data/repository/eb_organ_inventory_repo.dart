import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/eb_organ_inventory_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_search_deligate_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class EBOrganInventoryRepository {
  // GET : Organ inventory statistics
  Future<Either<EBFailure, EbOrganInventoryAnalyticsModel>>
      getOrganInventoryStatistics();

  Future<Either<EBFailure, OrganTissueSearchDeligateModel>>
      getOrganTissueSearchDelegate(
          {List<String>? procedure,
          String? tissueId,
          String? tissueExpiry,
          int? page,
          int? size});

  Future<Either<EBFailure, OrganTissueRequestModel>> getOrganTissueRequest(
      {List<EBStageName> stage,
      List<String>? procedure,
      String? requestedBy,
      String? requestDate,
      int? page,
      int? size});
}

final ebOrganInventoryRepositoryProvider = Provider(
  (ref) => EBOrganInventoryRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class EBOrganInventoryRepositoryImpl extends EBOrganInventoryRepository {
  final Dio _dio;
  EBOrganInventoryRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, EbOrganInventoryAnalyticsModel>>
      getOrganInventoryStatistics() async {
    return EyeBankErrorHandler.handle(() async {
      const endPoint = '/services/eyebank/api/encounters/inventory/stats';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        final data = EbOrganInventoryAnalyticsModel.fromJson(response.data);
        return data;
      } else {
        throw Exception(response.statusMessage ??
            'Failed to fetch organ inventory statistics');
      }
    });
  }

  @override
  Future<Either<EBFailure, OrganTissueSearchDeligateModel>>
      getOrganTissueSearchDelegate(
          {List<String>? procedure,
          String? tissueId,
          String? tissueExpiry,
          int? page,
          int? size}) async {
    return EyeBankErrorHandler.handle(() async {
      final queryParams = {
        'procedure': procedure,
        'tissueId': tissueId,
        'tissueExpiry': tissueExpiry,
        'page': page,
        'size': size,
      };
      queryParams.removeWhere((key, value) => value == null);

      const endPoint = '/services/eyebank/api/encounters/inventory/search';

      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        final data = OrganTissueSearchDeligateModel.fromJson(response.data);
        return data;
      } else {
        throw Exception(response.statusMessage ??
            'Failed to fetch organ inventory statistics');
      }
    });
  }

  @override
  Future<Either<EBFailure, OrganTissueRequestModel>> getOrganTissueRequest(
      {List<EBStageName>? stage,
      List<String>? procedure,
      String? requestedBy,
      String? requestDate,
      int? page,
      int? size}) {
    final dummy = {
      "content": [
        {
          "id": 2101,
          "identifier": "OD-000001",
          "productCategory": "ORGAN",
          "productCode": "CORNEA_OD",
          "productStatus": null,
          "expiryDate": null,
          "lotNumber": null,
          "storageMedium": null,
          "properties": null,
          "storageTemp": null,
          "document": null,
          "recoveryInformation": {
            "id": 2151,
            "extractionMethod": "IN_SITU",
            // "extractionDateTime": "2024-08-27T06:30:00Z",
            "lotNumber": "12",
            "storageMedium": "MK_MEDIUM",
            // "expirationDate": "2024-08-27T06:30:00Z",
            "intent": "RESEARCH",
            "performedBy": "12",
            "performerRole": null,
            "assistedBy": "12",
            "assistedRole": null,
            "properties": {"comments": "12", "scleraRecovered": 0},
            "storageTemp": null,
            "documents": null,
            "productCategory": "ORGAN",
            "productCode": "CORNEA_OD",
            "productIdentifier": "OD-000001"
          },
          "encounterId": "1001"
        }
      ],
      "totalElements": 0,
      "totalPages": 0,
      "size": 0,
      "number": 0,
      "numberOfElements": 0,
      "empty": true,
      "first": true,
      "last": true
    };
    return Future.value(Right(OrganTissueRequestModel.fromJson(dummy)));

    return EyeBankErrorHandler.handle(() async {
      final queryParams = {
        'stage': stage,
        'procedure': procedure,
        'requestedBy': requestedBy,
        'requestDate': requestDate,
        'page': page,
        'size': size,
      };
      queryParams.removeWhere((key, value) => value == null);

      const endPoint =
          '/services/eyebank/api/encounters/filters/tissue-requests';

      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        final data = OrganTissueRequestModel.fromJson(response.data);
        return data;
      } else {
        throw Exception(response.statusMessage ??
            'Failed to fetch organ inventory statistics');
      }
    });
  }
}
