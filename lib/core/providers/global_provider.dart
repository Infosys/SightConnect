import 'package:hooks_riverpod/hooks_riverpod.dart';

var toggleTumblingResultPage = StateProvider((ref) => false);

var initialTextScaleFactor = 1.0;
var textScaleFactorProvider = StateProvider.autoDispose<double>(
  (ref) {
    return initialTextScaleFactor;
  },
);
