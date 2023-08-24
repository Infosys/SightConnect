import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get formateDate => DateFormat('dd/MM/yyyy').format(this);
}
