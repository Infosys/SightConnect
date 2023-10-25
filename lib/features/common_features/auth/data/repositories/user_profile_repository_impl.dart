import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/contract/user_profile_repository.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/user_profile.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/source/local/user_profile_local_source.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/source/remote/user_profile_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var userProfileRepository = Provider(
  (ref) => UserProfileRepositoryImpl(
    ref.watch(userProfileLocalSource),
    ref.watch(userProfileRemoteSource),
  ),
);

class UserProfileRepositoryImpl implements UserProfileRepository {
  UserProfileLocalSource localDataSource;
  UserProfileRemoteSource remoteDataSource;

  UserProfileRepositoryImpl(this.localDataSource, this.remoteDataSource);

  @override
  Either<Failure, UserProfile> getUserProfile() {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Either<Failure, UserProfile> updateUserProfile(
      {required UserProfile userProfile}) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }
}
