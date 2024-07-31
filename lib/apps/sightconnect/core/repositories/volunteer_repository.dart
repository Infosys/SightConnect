import 'package:eye_care_for_all/apps/sightconnect/core/models/volunteer_post_model.dart';

abstract class VolunteerRepository {
  Future<void> postVolunteer(VolunteerPostModel volunteerPostModel);
  Future<void> extendVolunteer(
      VolunteerPostModel volunteerPostModel, int volunteerId);
}
