import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';

abstract class Failure {
  final String errorMessage;
  final dynamic data;
  const Failure({
    required this.errorMessage,
    this.data,
  });

  @override
  String toString() => errorMessage;
}

class ServerFailure extends Failure {
  ServerFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
}

class CacheFailure extends Failure {
  CacheFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
}

class UnknownFailure extends Failure {
  UnknownFailure({required String errorMessage})
      : super(errorMessage: errorMessage);
}

class TriageFailure extends Failure {
  TriageFailure(
      {required String errorMessage, required TriagePostModel triageResponse})
      : super(errorMessage: errorMessage, data: triageResponse);
}
