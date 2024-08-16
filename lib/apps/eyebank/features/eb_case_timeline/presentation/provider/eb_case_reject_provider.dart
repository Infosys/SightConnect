import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_reject_case_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/repositories/eb_timeline_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseRejectProvider = ChangeNotifierProvider(
  (ref) => EBCaseRejectProvider(
    ref.watch(ebTimlineRepoProvider),
  ),
);

class EBCaseRejectProvider extends ChangeNotifier {
  EBTimelineRepo ebTimelineRepo;
  EBCaseRejectProvider(this.ebTimelineRepo);

  TextEditingController commentController = TextEditingController();
  EBRejectCaseReasonEnum? rejectReason;

  set setRejectReason(EBRejectCaseReasonEnum? value) {
    rejectReason = value;
    notifyListeners();
  }

  Future<Either<EBFailure, void>> rejectCase(int caseId) async {
    final request = EBRejectCaseRequestModel(
      reason: rejectReason!.value,
      comments: commentController.text,
    );
    return await ebTimelineRepo.rejectCase(request, caseId);
  }

  List<EBRejectCaseReasonEnum> getRejectReason() {
    return EBRejectCaseReasonEnum.values;
  }

  @override
  void dispose() {
    commentController.dispose();
    rejectReason = null;

    super.dispose();
  }
}
