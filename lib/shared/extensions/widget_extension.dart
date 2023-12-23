import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  AppLocalizations? get loc => AppLocalizations.of(this);
  TargetPlatform get platform => Theme.of(this).platform;
}

extension DateExtension on DateTime {
  String get formateDate => DateFormat('dd/MM/yyyy').format(this);

  String get formateDateWithTime =>
      DateFormat('dd/MM/yyyy hh:mm a').format(this);
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String sentenceCase() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
