abstract class AvailabilityRepository {
  Future<bool> postMarkMyAvailability(bool? available, int? userId, String? mobile);
}
