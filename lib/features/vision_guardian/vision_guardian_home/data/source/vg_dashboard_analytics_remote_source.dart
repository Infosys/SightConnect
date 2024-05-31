import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VgDashboardAnalyticsRemoteSource {
  Future getAnalytics({
    required int id,
  });
}

var vgDashboardAnalyticsRemoteSource = Provider(
  (ref) => VgDashboardAnalyticsRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

class VgDashboardAnalyticsRemoteSourceImpl
    implements VgDashboardAnalyticsRemoteSource {
  final Dio _dio;
  VgDashboardAnalyticsRemoteSourceImpl(this._dio);
  @override
  Future<Map<String, dynamic>> getAnalytics({required int id}) async {
    var endpoint = "/services/orchestration/api/v2/practitioners/$id/analytics";

    try {
      var response = await _dio.get(endpoint);
      Map<String, dynamic> analytics = json.decode(response.data);

      return analytics;
    } catch (e) {
      rethrow;
    }
  }
}
