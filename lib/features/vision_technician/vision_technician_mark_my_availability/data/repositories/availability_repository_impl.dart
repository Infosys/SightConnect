import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/models/availability_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../contracts/availability_repository.dart';
import '../source/availability_remote_source.dart';

var availabilityRepository = Provider(
  (ref) => AvailabilityRepositoryImpl(ref.watch(availabilityRemoteSource)),
);

class AvailabilityRepositoryImpl extends AvailabilityRepository {
  AvailabilityRemoteSource availabilityRemoteSource;

  AvailabilityRepositoryImpl(this.availabilityRemoteSource);

  @override
  Future postMarkMyAvailability({required bool available}) {
    return availabilityRemoteSource.markAvailability(
        availability: AvailabilityModel(
            userId: 1234,
            userType: "Practitioner",
            mobile: "8985050890",
            available: available));
  }
}
