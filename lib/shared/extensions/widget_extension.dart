import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
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
  String get formateDate2 =>
      this == null ? "" : DateFormat('dd MMM yyyy').format(this!);

  String get formateTime =>
      this == null ? "" : DateFormat('hh:mm a').format(this!);

  String get formatDateTimeMonthName =>
      this == null ? "" : DateFormat("dd MMM yy").format(this!);

  String get formateDateWithTime =>
      this == null ? "" : DateFormat('dd/MM/yyyy hh:mm a').format(this!);
  String get formatDateTimeMonthNameWithTime =>
      this == null ? "" : DateFormat("dd MMM yyyy, hh:mm a").format(this!);

  String get formatDateTimeWithFullMonthName =>
      this == null ? "" : DateFormat("dd MMM yyyy, hh:mm a").format(this!);
}

extension StringExtension on String? {
  String capitalize() {
    final String str = this ?? '';
    if (str.isEmpty) return '';
    return "${str[0].toUpperCase()}${str.substring(1)}";
  }

  String sentenceCase() {
    final String str = this ?? '';
    if (str.isEmpty) return '';
    return "${str[0].toUpperCase()}${str.substring(1).toLowerCase()}";
  }

  String capitalizeFirstOfEach() {
    String str = this ?? '';
    str = str.toLowerCase();
    if (str.isEmpty) return '';
    return str.split(" ").map((str) => str.capitalize()).join(" ");
  }

  String formatTitle() {
    final String str = this ?? '';
    if (str.isEmpty) return '';
    return str.replaceAll("_", " ").toLowerCase().sentenceCase();
  }
}

extension StringExtensions on String? {
  String formatNumber() {
    if (this == null) {
      return '0'; // Default value for null
    }

    int? number = int.tryParse(this!);
    if (number == null) {
      return '0'; // Default value for non-numeric strings
    }

    if (number >= 1000000000) {
      return '${(number / 1000000000).toStringAsFixed(1)}B';
    } else if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    } else {
      return number.toString();
    }
  }
}
