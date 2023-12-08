class AssessmentTimelineViewModel {
  final String type;
  final String title;
  final String subtitle;
  final String date;
  final String call;
  final String assessmentId;

  AssessmentTimelineViewModel({
    required this.type,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.call,
    required this.assessmentId,
  });

  @override
  String toString() {
    return 'AssessmentTimelineViewModel(type: $type, title: $title, subtitle: $subtitle, date: $date, call: $call, assessmentId: $assessmentId)';
  }
}
