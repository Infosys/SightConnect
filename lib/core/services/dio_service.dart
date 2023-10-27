import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: "http://10.110.36.226:8075/validation-ms",
    ),
  ),
);
