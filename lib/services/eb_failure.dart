abstract class EBFailure {
  final String errorMessage;
  final int? statusCode;
  final StackTrace? stackTrace;

  EBFailure({
    required this.errorMessage,
    this.statusCode,
    this.stackTrace,
  });

  @override
  String toString() => 'Error: $errorMessage, Status Code: $statusCode';
}

class EBServerFailure extends EBFailure {
  EBServerFailure({
    required String errorMessage,
    int? statusCode,
    StackTrace? stackTrace,
  }) : super(
          errorMessage: errorMessage,
          statusCode: statusCode,
          stackTrace: stackTrace,
        );
}

class EBUnknownFailure extends EBFailure {
  EBUnknownFailure({
    required String errorMessage,
    StackTrace? stackTrace,
  }) : super(
          errorMessage: errorMessage,
          stackTrace: stackTrace,
        );
}
