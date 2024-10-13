/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

class VisionGuardianEyeAssessmentPatientModel {
  String? name;
  String? age;
  String? gender;
  String? reportDate;
  String? reportTime;
  String? assessmentId;
  String? urgency;
  String? profession;
  String? recommendation;
  String? image;
  String? prefix;

  VisionGuardianEyeAssessmentPatientModel({
    required this.name,
    required this.age,
    required this.gender,
    required this.reportDate,
    required this.reportTime,
    required this.assessmentId,
    required this.urgency,
    required this.profession,
    required this.recommendation,
    required this.image,
    required this.prefix,
  });
}
