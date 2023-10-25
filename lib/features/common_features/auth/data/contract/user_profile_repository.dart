import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/user_profile.dart';

abstract class UserProfileRepository {
  Either<Failure, UserProfile> getUserProfile();
  Either<Failure, UserProfile> updateUserProfile({
    required UserProfile userProfile,
  });
}
