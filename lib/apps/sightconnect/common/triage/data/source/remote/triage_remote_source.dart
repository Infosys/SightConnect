/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<DiagnosticReportTemplateFHIRModel> getTriage();
  Future<TriagePostModel> saveTriage({required TriagePostModel triage});
  Future<TriagePostModel> updateTriage({
    required TriageUpdateModel triage,
  });
  Future<TriagePostModel> saveTriageForEvent({
    required TriagePostModel triage,
    required String eventId,
  });
}

class TriageRemoteSourceImpl implements TriageRemoteSource {
  Dio dio;
  GetTriageModelNotifier getTriageModelNotifier;
  GlobalTenantProvider globalTenantProvider;
  TriageRemoteSourceImpl(
      this.dio, this.getTriageModelNotifier, this.globalTenantProvider);

  @override
  Future<DiagnosticReportTemplateFHIRModel> getTriage() async {
    // change the endpoint to the correct one and add tenant id and organization id
    //from the global tenant provider
    // const endpoint =
    //     "/services/assessments/api/diagnostic-report-templates/assessment/1351";
    final tenantCode = globalTenantProvider.tenantId;
    final organizationCode = globalTenantProvider.organizationId;
    String endpoint =
        "/services/assessments/api/diagnostic-report-templates/assessments/Vision Test Form 1/tenant/organisation";

    if (tenantCode != null) {
      endpoint += "?tenant-code=$tenantCode";
      if (organizationCode != null) {
        endpoint += "&organisation-code=$organizationCode";
      }
    } else if (organizationCode != null) {
      endpoint += "?organisation-code=$organizationCode";
    }

    logger.d(
        "tenant code in global tenant provider before api call : ${globalTenantProvider.tenantId ?? "Tenant Code is null"}, organization code : ${globalTenantProvider.organizationId ?? "Organization Code is null"}");

    try {
      var response = await dio.get(endpoint);
      logger.d("assessment response : ${response.data}");
      if (tenantCode == null) {
        globalTenantProvider.setTenantId(response.data['tenantCode']);
      }
      if (organizationCode == null) {
        globalTenantProvider
            .setOrganizationId(response.data['organizationCode']);
      }
      logger.d(
          "tenant code in global tenant provider after api call : ${globalTenantProvider.tenantId ?? "Tenant Code is null"}, organization code : ${globalTenantProvider.organizationId ?? "Organization Code is null"}");
      return DiagnosticReportTemplateFHIRModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerException();
    } catch (e) {
      logger.e("this is the error ${e.toString()}");
      throw UnknownException();
    }
  }

  @override
  Future<TriagePostModel> saveTriage({
    required TriagePostModel triage,
  }) async {
    const endpoint = "/services/triage/api/v2/triage-report";
    try {
      logger.d({"triage model to be saved in remote source": triage.toJson()});
      var response = await dio.post(endpoint, data: triage.toJson());
      getTriageModelNotifier.triagePostModel =
          TriagePostModel.fromJson(response.data);
      return getTriageModelNotifier._triagePostModel;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerException();
    } catch (e) {
      logger.e("this is the error ${e.toString()}");
      throw UnknownException();
    }
  }

  @override
  Future<TriagePostModel> updateTriage({
    required TriageUpdateModel triage,
  }) async {
    final id = triage.diagnosticReportId;
    try {
      var endpoint = "/services/triage/api/v2/triage-report/$id";
      logger.d({"API updateTriage": endpoint, "data": triage.toJson()});
      final response = await dio.patch(endpoint, data: triage.toJson());
      return TriagePostModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerException();
    } catch (e) {
      logger.e("this is the error ${e.toString()}");
      throw UnknownException();
    }
  }

  @override
  Future<TriagePostModel> saveTriageForEvent({
    required TriagePostModel triage,
    required String eventId,
  }) async {
    const endpoint = "/services/triage/api/v2/campaign-events/triage-report";
    try {
      logger.d({"triage model to be saved in remote source": triage.toJson()});
      var response = await dio.post(
        endpoint,
        data: triage.toJson(),
        queryParameters: {
          "event-id": int.parse(eventId),
        },
      );
      getTriageModelNotifier.triagePostModel =
          TriagePostModel.fromJson(response.data);

      return getTriageModelNotifier._triagePostModel;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerException();
    } catch (e) {
      logger.e("this is the error ${e.toString()}");
      throw UnknownException();
    }
  }
}

var triageRemoteSource = Provider<TriageRemoteSource>(
  (ref) => TriageRemoteSourceImpl(
    ref.watch(dioProvider),
    ref.watch(getTriageModelProvider),
    ref.watch(globalTenantProvider),
  ),
);

var getTriageModelProvider = ChangeNotifierProvider<GetTriageModelNotifier>(
  (ref) => GetTriageModelNotifier(),
);

class GetTriageModelNotifier extends ChangeNotifier {
  TriagePostModel _triagePostModel = const TriagePostModel();

  TriagePostModel get triagePostModel => _triagePostModel;

  set triagePostModel(TriagePostModel value) {
    _triagePostModel = value;
    notifyListeners();
  }
}
