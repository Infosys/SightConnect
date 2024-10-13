/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
