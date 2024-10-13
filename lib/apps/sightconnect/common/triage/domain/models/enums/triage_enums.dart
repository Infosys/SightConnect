/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

enum TriageStatus { OPEN, CLOSED, DELETED }

enum TriageSource { SELF, HEALTH_WORKER, FACILITY }

enum TriageAction { NO_ACTION, REFER, ADMIT, DISCHARGE }

enum TriageUrgency { EMERGENCY, PRIORITY, ROUTINE }

enum TriageReason { CATARACT, GLAUCOMA, RETINA, OTHERS }

enum TriageEyeCondition { NORMAL, CATARACT, GLAUCOMA, RETINA, OTHERS }

enum TriageEyeType { LEFT, RIGHT, BOTH, UNKNOWN }

enum QuestionnaireUrgency { EMERGENCY, PRIORITY, ROUTINE }

enum VisualAcuityUrgency { EMERGENCY, PRIORITY, ROUTINE }

enum TriagePriority { ROUTINE, URGENT, ASAP, STAT }
