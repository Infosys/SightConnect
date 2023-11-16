import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Extension usage
// final scaffold = context.scaffold;
// scaffold.showSnackBar(SnackBar(
//   content: Text('Hello, world!'),
// ));

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  AppLocalizations? get loc => AppLocalizations.of(this);
  TargetPlatform get platform => Theme.of(this).platform;
}


// Extension usage
// final theme = context.theme;
// final primaryColor = theme.primaryColor;