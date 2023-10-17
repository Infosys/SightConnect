import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:eye_care_for_all/main.dart';
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
              description: "Are you facing sudden loss of vision?",
              questions: [
                Question(
                  code: 30000001,
                  statement: "No",
                ),
                Question(
                  code: 30000034,
                  statement: "Yes",
                ),
              ],
            ),
          ],
        ),
        QuestionnaireSection(
          questionnaire: [
            Questionnaire(
              description:
                  "Is your vision not clear or disturbed? Choose the symptoms you are facing.",
              questions: [
                Question(
                  code: 30000002,
                  statement: "I see halos or colored rings around lights",
                ),
                Question(
                  code: 30000003,
                  statement:
                      "My vision is blocked partly or completely with dark shapes",
                ),
                Question(
                  code: 30000004,
                  statement: "I see two images of an object",
                ),
                Question(
                  code: 30000005,
                  statement:
                      "I have pain or discomfort when viewing bright light",
                ),
                Question(
                  code: 30000006,
                  statement:
                      "I see wavy lines or irregular shapes when viewing straight images",
                ),
                Question(
                  code: 30000007,
                  statement: "I see flashes and flickers when viewing objects",
                ),
                Question(
                  code: 30000008,
                  statement: "I see dark spots or shapes floating across",
                ),
              ],
            ),
          ],
        ),
        QuestionnaireSection(
          questionnaire: [
            Questionnaire(
              description:
                  "3.Are you experiencing any of the below problems in your eyes? Choose whichever problem is applicable.",
              questions: [
                Question(
                  code: 30000009,
                  statement: "Tears flow out of my eyes often",
                ),
                Question(
                  code: 300000010,
                  statement:
                      "White part of my eye looks red with pain itching or swollen eyes",
                ),
                Question(
                  code: 300000011,
                  statement:
                      "My eyes produce sticky yellow or green liquid with eye irritation",
                ),
                Question(
                  code: 300000012,
                  statement: "I have white spots on the black part of my eye",
                ),
                Question(
                  code: 300000013,
                  statement:
                      "I have irritation in eyes with itching burning or pain",
                ),
                Question(
                  code: 300000014,
                  statement:
                      "Particle of dust, wood, glass, metal or an insect got into my eye",
                ),
                Question(
                  code: 300000015,
                  statement:
                      "My eyelids twitch uncontrollably with jerky contractions",
                ),
                Question(
                  code: 300000016,
                  statement:
                      "My eyes close and open uncontrollably and rapidly",
                ),
                Question(
                  code: 300000017,
                  statement: "My eyes turn and point in different directions",
                ),
                Question(
                  code: 300000018,
                  statement: "My eyes involuntarily squeeze and shut tightly",
                ),
                Question(
                  code: 300000019,
                  statement: "My eyelids hang or droop at a lower level",
                ),
                Question(
                  code: 300000020,
                  statement: "My eyes appear wide open and bulged out",
                ),
                Question(
                  code: 300000021,
                  statement: "My eyes are of different sizes",
                ),
              ],
            ),
          ],
        ),
      ],
    );

    return Future.value(Right(triageAssessment));
  }

  @override
  Future<Either<Failure, TriageResponse>> saveTriage(
      {required TriageResponse triage}) async {
    var endpoint = "/patient-responses";

    logger.i(triage.toJson());
    logger.i(endpoint);

    try {
      var response = await dio.post(
        endpoint,
        data: triage.toJson(),
      );
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return Future.value(Right(triage));
      } else {
        return Future.value(
          Left(Failure(response.statusMessage!)),
        );
      }
    } catch (e) {
      return Future.value(
        Left(Failure(e.toString())),
      );
    }
  }
}
