import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
  AppLocalizations? get loc => AppLocalizations.of(this);
  TargetPlatform get platform => Theme.of(this).platform;
}

extension DateExtension on DateTime? {
  String get formateDate =>
      this == null ? "" : DateFormat('dd/MM/yyyy').format(this!);

  String get formateTime =>
      this == null ? "" : DateFormat('hh:mm a').format(this!);

  String get formatDateTimeMonthName =>
      this == null ? "" : DateFormat("dd MMM yy").format(this!);

  String get formateDateWithTime =>
      this == null ? "" : DateFormat('dd/MM/yyyy hh:mm a').format(this!);
  String get formatDateTimeMonthNameWithTime =>
      this == null ? "" : DateFormat("dd MMM yyyy, hh:mm a").format(this!);
}

extension StringExtension on String? {
  String capitalize() {
    if (this == null) {
      return "";
    } else {
      final String str = this!;
      return "${str[0].toUpperCase()}${str.substring(1)}";
    }
  }

  String sentenceCase() {
    if (this == null) {
      return "";
    } else {
      final String str = this!;
      return "${str[0].toUpperCase()}${str.substring(1).toLowerCase()}";
    }
  }

  String capitalizeFirstOfEach() {
    if (this == null) {
      return "";
    } else {
      final String str = this!;
      return str.split(" ").map((str) => str.capitalize()).join(" ");
    }
  }
}
