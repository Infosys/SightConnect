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
