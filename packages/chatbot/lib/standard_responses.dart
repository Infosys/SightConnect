Future<StandardAction?> resolveStandardAction(String query) async {
  final text = query.trim().toLowerCase();
  if (RegExp(r'^start ').hasMatch(text)) {
    // Word starts with "start"
    switch (text) {
      case StandardResponses.eyeAssessment:
        return StandardAction.eyeAssessment;
      case StandardResponses.eyeScan:
        return StandardAction.eyeScan;

      default:
        return null;
    }
  }
  return null;
}

enum StandardAction {
  eyeAssessment,
  eyeScan,
}

class StandardResponses {
  static const eyeAssessment = "start eye assessment";
  static const eyeScan = "start eye scan";
}
