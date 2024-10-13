/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_timeline_view_model.freezed.dart';
part 'assessment_timeline_view_model.g.dart';

@freezed
class AssessmentTimelineViewModel with _$AssessmentTimelineViewModel {
  const factory AssessmentTimelineViewModel({
    int? encounterId,
    String? title,
    String? description,
    @TimestampConverter() DateTime? date,
    int? assessmentId,
    String? status,
    TimelineSource? source,
    String? type,
  }) = _AssessmentTimelineViewModel;

  factory AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentTimelineViewModelFromJson(json);
}

enum TimelineSource { PATIENT_APP, VT_APP, VG_APP, IVR, IN_PERSION, OTHERS }
