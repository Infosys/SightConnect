import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';

class VtAnalyticsStats {
  final VtAnalyticsType statisticType;
  final List<StatisticPayload> statisticPayload;
  final int order;

  VtAnalyticsStats(
      {required this.statisticType,
      required this.statisticPayload,
      required this.order});

  factory VtAnalyticsStats.fromJson(Map<String, dynamic> json) {
    return VtAnalyticsStats(
        statisticType: VtAnalyticsType.values
            .firstWhere((e) => e.name == json['statisticType']),
        statisticPayload: (json['statisticPayload'] as List)
            .map((e) => StatisticPayload.fromJson(e))
            .toList(),
        order: json['order']);
  }
}

class StatisticPayload {
  final String title;
  final double value;
  final int order;

  StatisticPayload(
      {required this.title, required this.value, required this.order});

  factory StatisticPayload.fromJson(Map<String, dynamic> json) {
    return StatisticPayload(
        title: json['title'], value: json['value'], order: json['order']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['value'] = value;
    data['order'] = order;
    return data;
  }

  @override
  String toString() {
    return 'StatisticPayload{title: $title, value: $value, order: $order}';
  }
}
