import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: "http://10.89.240.91:8075/api",
    ),
  ),
);
