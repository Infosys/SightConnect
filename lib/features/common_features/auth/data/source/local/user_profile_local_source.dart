import 'package:eye_care_for_all/features/common_features/auth/data/models/user_profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class UserProfileLocalSource {
  Future<UserProfile> getUserProfile();
  Future<UserProfile> updateUserProfile({
    required UserProfile userProfile,
  });
  Future<void> saveUserProfile({
    required UserProfile userProfile,
  });
}

class UserProfileLocalSourceImpl implements UserProfileLocalSource {
  @override
  Future<UserProfile> getUserProfile() {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserProfile({required UserProfile userProfile}) {
    // TODO: implement saveUserProfile
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> updateUserProfile({required UserProfile userProfile}) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }
}

var userProfileLocalSource = Provider(
  (ref) => UserProfileLocalSourceImpl(),
);
