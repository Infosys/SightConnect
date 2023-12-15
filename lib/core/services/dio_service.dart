import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: "http://10.110.36.226:8075/validation-ms",
    ),
  ),
);

var dioExotelProvider = Provider(
  (ref) => Dio(BaseOptions(
      baseUrl: "https://eyecare4all-dev.infosysapps.com/services/exotel")),
);
