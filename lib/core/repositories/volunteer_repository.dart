import 'package:eye_care_for_all/core/models/volunteer_post_model.dart';

abstract class VolunteerRepository {
  Future<void> postVolunteer(VolunteerPostModel volunteerPostModel);
}
