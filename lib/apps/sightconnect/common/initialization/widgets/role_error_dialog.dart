import 'package:flutter/material.dart';

class RoleErrorDialog {
  static roleErrorDialog(
    Function onLogout,
  ) {
    return AlertDialog(
      title: const Text('Error'),
      content: const Text(
          'You do not have the required role to access this feature.'),
      actions: <Widget>[
        //logout text button
        TextButton(
          onPressed: () {
            onLogout();
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
