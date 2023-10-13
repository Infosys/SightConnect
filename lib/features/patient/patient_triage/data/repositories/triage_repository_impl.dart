import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../contracts/triage_repository.dart';

var triageRepositoryProvider = Provider<TriageRepository>(
  (ref) => TriageRepositoryImpl(ref.read(dioProvider)),
);

class TriageRepositoryImpl implements TriageRepository {
  Dio dio;
  TriageRepositoryImpl(this.dio);

  @override
  Future<Either<Failure, TriageAssessment>> getTriage() {
    TriageAssessment triageAssessment = const TriageAssessment(
      mediaListSections: [],
      observationsSections: [],
      questionnaireSections: [
        QuestionnaireSection(
          questionnaire: [
            Questionnaire(
              description: "This is a description",
              questions: [
                Question(
                  statement: "This is a statement",
                )
              ],
            ),
          ],
        )
      ],
    );
    return Future.value(Right(triageAssessment));
  }

  @override
  Future<Either<Failure, TriageResponse>> saveTriage(
      {required TriageResponse triage}) {
    // TODO: implement saveTriage
    throw UnimplementedError();
  }
}
