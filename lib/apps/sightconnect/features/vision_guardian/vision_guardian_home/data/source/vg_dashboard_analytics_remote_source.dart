import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_analytics_stats.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VgDashboardAnalyticsRemoteSource {
  Future<List<VtAnalyticsStats>> getAnalytics({
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
  Future<List<VtAnalyticsStats>> getAnalytics({required int id}) async {
    var endpoint =
        "/services/orchestration/api/analytics/v2/performers/statistics?performer-id=$id&statuses=FINAL";

    try {
      var response = await _dio.get(endpoint).then((value) {
        logger.f({
          "VgDashboardAnalyticsRemoteSourceImpl": {
            "response": jsonEncode(value.data),
          }
        });
        value.data;
      });

      List<VtAnalyticsStats> analytics = response
          .map<VtAnalyticsStats>((e) => VtAnalyticsStats.fromJson(e))
          .toList();

      logger.f({
        "VgDashboardAnalyticsRemoteSourceImpl": {
          "analytics": jsonEncode(analytics),
        }
      });

      return analytics;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
