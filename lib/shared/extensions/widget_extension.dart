import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ScaffoldExtension on BuildContext {
  ScaffoldState get scaffold => Scaffold.of(this);
}

// Extension usage
// final scaffold = context.scaffold;
// scaffold.showSnackBar(SnackBar(
//   content: Text('Hello, world!'),
// ));

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppLocalizations? get loc => AppLocalizations.of(this);
}


// Extension usage
// final theme = context.theme;
// final primaryColor = theme.primaryColor;