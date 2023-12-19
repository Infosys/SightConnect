import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/contracts/availability_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/source/availability_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/domain/models/availability_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var availabilityRepository = Provider(
  (ref) => AvailabilityRepositoryImpl(ref.watch(availabilityRemoteSource)),
);

class AvailabilityRepositoryImpl extends AvailabilityRepository {
  AvailabilityRemoteSource availabilityRemoteSource;

  AvailabilityRepositoryImpl(this.availabilityRemoteSource);

  @override
  Future<bool> postMarkMyAvailability({required bool available}) async {
    return await availabilityRemoteSource.markAvailability(
      availability: AvailabilityModel(
        userId: 1001,
        userType: "PRACTITIONER",
        mobile: "8985050009",
        available: available,
      ),
    );
  }
}
