import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/user_profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class UserProfileRemoteSource {
  Future<UserProfile> getUserProfile();
  Future<UserProfile> updateUserProfile({
    required UserProfile userProfile,
  });
}

class UserProfileRemoteSourceImpl implements UserProfileRemoteSource {
  Dio dio;
  UserProfileRemoteSourceImpl(this.dio);

  @override
  Future<UserProfile> getUserProfile() {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future<UserProfile> updateUserProfile({required UserProfile userProfile}) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }
}

var userProfileRemoteSource = Provider(
  (ref) => UserProfileRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);
