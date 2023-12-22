import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalUserProvider = ChangeNotifierProvider((ref) => GlobalUserProvider());

class GlobalUserProvider extends ChangeNotifier {
  final int userId = 9627849183;
}
