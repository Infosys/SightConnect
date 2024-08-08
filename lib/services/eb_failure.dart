abstract class EBFailure {
  final String errorMessage;
  final String? detail;
  final int? statusCode;
  final StackTrace? stackTrace;
  

  EBFailure({
    required this.errorMessage,
    this.detail,
    this.statusCode,
    this.stackTrace,

  });

  @override
  String toString() => 'Error: $errorMessage, Status Code: $statusCode';
}

class EBServerFailure extends EBFailure {
  EBServerFailure({
    required String errorMessage,
    required String detail,
    int? statusCode,
    StackTrace? stackTrace,
  }) : super(
          errorMessage: errorMessage,
          detail: detail,
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
