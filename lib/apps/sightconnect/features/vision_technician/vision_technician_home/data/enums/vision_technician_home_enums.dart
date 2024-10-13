/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

enum SeverityCategory { CRITICAL, EARLY, ROUTINE, URGENT, ASAP, STAT }

enum Gender { MALE, FEMALE, OTHERS }

enum VtAnalyticsType {
  TRIAGE_URGENCY_COUNT,
  TRIAGE_COMPLETED_COUNT,
  TRIAGE_ACTIVE_COUNT,
  TRIAGE_TRANSFERRED_COUNT,
  TRIAGE_COMPLETED_PERCENTAGE,
  TOTAL_TRIAGES,
  GENDER_COUNT,
  AGE_GROUP_COUNT,
  IVR_CALL_COUNT
}
