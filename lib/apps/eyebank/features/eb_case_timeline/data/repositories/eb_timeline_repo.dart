import 'package:dio/dio.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EBTimelineRepo {
  // ADD YOUR METHODS HERE
}

final ebTimlineRepoProvider = Provider(
  (ref) => EBTimelineRepoImpl(
    ref.watch(dioProvider),
  ),
);

class EBTimelineRepoImpl extends EBTimelineRepo {
  Dio dio;
  EBTimelineRepoImpl(this.dio);
}
