import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalVTProvider = ChangeNotifierProvider((ref) => GlobalVTProvider());

class GlobalVTProvider extends ChangeNotifier {
  final int userId = 9627849180;

//TODO: Create profile model here for vision guardian
}
