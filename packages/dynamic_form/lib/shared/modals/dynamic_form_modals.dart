import 'package:flutter/material.dart';

class DynamicFormModals {
  DynamicFormModals._();

  static void showSnackBar({
    required BuildContext context,
    required String message,
  }) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.removeCurrentSnackBar();
    scaffold.showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color(0xFF296DF6),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        content: Row(
          children: [
            const Icon(
              Icons.info,
              color: Colors.white,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
