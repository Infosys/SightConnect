/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

abstract class EBFailure {
  final String errorMessage;
  final int? statusCode;
  final StackTrace? stackTrace;
  final EBErrorObject? errorObject;

  EBFailure({
    required this.errorMessage,
    this.statusCode,
    this.stackTrace,
    this.errorObject,
  });

  @override
  String toString() => 'Error: $errorMessage, Status Code: $statusCode';
}

class EBServerFailure extends EBFailure {
  EBServerFailure({
    required String errorMessage,
    int? statusCode,
    StackTrace? stackTrace,
    required EBErrorObject? errorObject,
  }) : super(
          errorMessage: errorMessage,
          statusCode: statusCode,
          stackTrace: stackTrace,
          errorObject: errorObject,
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

class EBErrorObject {
  String? type;
  String? title;
  int? status;
  String? detail;
  String? instance;
  String? message;
  String? params;
  String? path;

  EBErrorObject({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
    this.message,
    this.params,
    this.path,
  });

  factory EBErrorObject.fromJson(Map<String, dynamic> json) {
    return EBErrorObject(
      type: json['type'],
      title: json['title'],
      status: json['status'],
      detail: json['detail'],
      instance: json['instance'],
      message: json['message'],
      params: json['params'],
      path: json['path'],
    );
  }
}



//  {
//    "type": "https://www.jhipster.tech/problem/problem-with-message",
//    "title": "Bad Request",
//    "status": 400,
//    "detail": "400 BAD_REQUEST, ProblemDetailWithCause[type='https://www.jhipster.tech/problem/problem-with-message', title='Bad Request', status=400, detail='null', instance='null', properties='{message=error.Invalid Role, params=Analytics-Service}']",
//    "instance": "/services/orchestration/api/analytics/v2/performers/statistics",
//    "message": "error.Invalid Role",
//    "params": "Analytics-Service",
//    "path": "/services/orchestration/api/analytics/v2/performers/statistics"
//  }