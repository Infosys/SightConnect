import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/data/contracts/availability_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/data/source/availability_remote_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/domain/models/availability_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var availabilityRepository = Provider(
  (ref) => AvailabilityRepositoryImpl(ref.watch(availabilityRemoteSource)),
);

class AvailabilityRepositoryImpl extends AvailabilityRepository {
  AvailabilityRemoteSource availabilityRemoteSource;

  AvailabilityRepositoryImpl(this.availabilityRemoteSource);

  @override
  Future<bool> postMarkMyAvailability(
      bool? available, int? userId, String? mobile) async {
    return await availabilityRemoteSource.markAvailability(
      availability: AvailabilityModel(
        userId: userId ?? 0,
        userType: "PRACTITIONER",
        mobile: mobile,
        available: available,
      ),
    );
  }
}
