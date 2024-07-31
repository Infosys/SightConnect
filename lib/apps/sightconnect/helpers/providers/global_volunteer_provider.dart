import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/performer_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/performers_profile_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalVolunteerProvider =
    ChangeNotifierProvider((ref) => GlobalVolunteerProvider());

class GlobalVolunteerProvider extends ChangeNotifier {
  PerformerModel? _user;

  PerformerModel? get user => _user;
  String get name => _user?.profile?.firstName ?? "";
  int get userId => _user!.id!;
  int get userPatientId => _user!.userId!;

  void setUser(PerformerModel parentUser) {
    _user = parentUser;
    notifyListeners();
    logger.d({
      "GlobalVolunteerProvider": {
        "user": _user?.toJson(),
      }
    });
  }
}

var getVolunteerProfileProvider = FutureProvider.autoDispose((ref) async {
  try {
    final response = await ref
        .read(performersProfileRepositoryProvider)
        .getPerformerProfile();
    ref.read(globalVolunteerProvider).setUser(response);
    return response;
  } on DioException catch (e) {
    logger.d("Error in getVolunteerProfileProvider : $e");
    DioErrorHandler.handleDioError(e);
    rethrow;
  }
});
