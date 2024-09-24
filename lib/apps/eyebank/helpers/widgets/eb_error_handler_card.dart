import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EyeBankErrorCard {
  EyeBankErrorCard._();
  static void showErrorDialog(EBFailure failure, BuildContext context) {
    int statusCode = failure.statusCode ?? 500;
    String statusMessage = failure.errorMessage;
    // String? details = failure.errorObject?.detail;
    String? errorMessage = failure.errorObject?.message;
    String displayMessage = errorMessage ?? _getErrorMessage(statusCode);
    if (failure is EBServerFailure) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: ErrorCard(
                statusCode: statusCode,
                statusMessage: statusMessage,
                details: displayMessage),
          );
        },
      );
    } else if (failure is EBUnknownFailure) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: ErrorCard(
                statusCode: statusCode,
                statusMessage: statusMessage,
                details: displayMessage),
          );
        },
      );
    }
  }

  static void showErrorToast(EBFailure failure, BuildContext context) {
    int statusCode = failure.statusCode ?? 500;
    // String statusMessage = failure.errorMessage;
    // String? details = failure.errorObject?.detail;
    String? errorMessage = failure.errorObject?.message;
    String displayMessage = errorMessage ?? _getErrorMessage(statusCode);
    if (failure is EBServerFailure) {
      Fluttertoast.showToast(
        msg: "Error: $statusCode\n$displayMessage",
        toastLength: Toast.values[1],
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 12.0,
      );
    } else if (failure is EBUnknownFailure) {
      Fluttertoast.showToast(
        msg: "Error: $statusCode\n$displayMessage",
        toastLength: Toast.values[1],
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 12.0,
      );
    }
  }

  static void showErrorSncakBar(EBFailure failure, BuildContext context) {
    int statusCode = failure.statusCode ?? 500;
    String statusMessage = failure.errorMessage;
    // String? details = failure.errorObject?.detail;
    String? errorMessage = failure.errorObject?.message;
    String displayMessage = errorMessage ?? _getErrorMessage(statusCode);
    if (failure is EBServerFailure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: ErrorCard(
              statusCode: statusCode,
              statusMessage: statusMessage,
              details: displayMessage),
        ),
      );
    } else if (failure is EBUnknownFailure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: ErrorCard(
              statusCode: statusCode,
              statusMessage: statusMessage,
              details: displayMessage),
        ),
      );
    }
  }
}

class ErrorCard extends StatelessWidget {
  final int statusCode;
  final String? statusMessage;
  final String? details;

  const ErrorCard(
      {Key? key, required this.statusCode, this.statusMessage, this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Error: ${statusCode}',
                style: applyRobotoFont(),
              ),
              const SizedBox(height: 8),
              Text(_getErrorMessage(statusCode)),
              const SizedBox(height: 16),
              ExpansionTile(
                title: const Text('More Details'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text(details ?? 'No additional information available.'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _getErrorMessage(int statusCode) {
  switch (statusCode) {
    case 400:
      return 'Bad Request: The server cannot process the request.';
    case 401:
      return 'Unauthorized: Authentication is required.';
    case 403:
      return 'Forbidden: You don\'t have permission to access this resource.';
    case 404:
      return 'Not Found: The requested resource could not be found.';
    case 500:
      return 'Internal Server Error: Something went wrong on the server.';
    default:
      return 'An error occurred. Please try again later.';
  }
}
