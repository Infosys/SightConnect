import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/models/tumbling_models.dart';

int maxLevel = 8;
// 0 to 8 total is 9

class TumblingDataSource {
  TumblingDataSource();

  List<Level> levels = [
    Level(
      levelNumber: 0,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
      ],
    ),
    Level(
      levelNumber: 1,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
      ],
    ),
    Level(
      levelNumber: 2,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 3,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
      ],
    ),

    Level(
      levelNumber: 4,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
      ],
    ),

    Level(
      levelNumber: 5,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
      ],
    ),
    Level(
      levelNumber: 6,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
      ],
    ),
    Level(
      levelNumber: 7,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),

    Level(
      levelNumber: 8,
      mode: GameMode.regular,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 1,
      questions: [
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
      ],
    ),
    ////////////////////////
    Level(
      levelNumber: 0,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 1,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 2,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 3,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 4,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),

    Level(
      levelNumber: 5,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 6,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 7,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
    Level(
      levelNumber: 8,
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
      size: 22,
      totalQuestions: 5,
      questions: [
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
        Question(
          angle: 4,
          direction: QuestionDirection.right,
        ),
        Question(
          angle: 3,
          direction: QuestionDirection.up,
        ),
        Question(
          angle: 1,
          direction: QuestionDirection.down,
        ),
        Question(
          angle: 2,
          direction: QuestionDirection.left,
        ),
      ],
    ),
  ];

  Level getLevel(int levelNumber, GameMode mode) {
    return levels.firstWhere(
      (element) => element.levelNumber == levelNumber && element.mode == mode,
    );
  }

  getESizeFromLevel(int level) {
    switch (level) {
      case 0:
        return 0.5817;
      case 1:
        return 0.29;
      case 2:
        return 0.23;
      case 3:
        return 0.18;
      case 4:
        return 0.1454;
      case 5:
        return 0.1163;
      case 6:
        return 0.093;
      case 7:
        return 0.0727;
      case 8:
        return 0.0581;

      default:
        return 0.0581;
    }
  }

  getLogMarFromLevel(int level) {
    switch (level) {
      case 8:
        return 0.1;
      case 7:
        return 0.2;
      case 6:
        return 0.25;
      case 5:
        return 0.32;
      case 4:
        return 0.4;
      case 3:
        return 0.5;
      case 2:
        return 0.63;
      case 1:
        return 0.8;
      case 0:
        return 1.0;

      default:
        return 1.0;
    }
  }

  getSnellerFraction(int level) {
    switch (level) {
      case 0:
        return "20/200";
      case 1:
        return "20/100";
      case 2:
        return "20/80";
      case 3:
        return "20/62.5";
      case 4:
        return "20/50";
      case 5:
        return "20/40";
      case 6:
        return "20/31.77";
      case 7:
        return "20/25";
      case 8:
        return "20/20";

      default:
        return "20/20";
    }
  }

  resetDataSource() {
    for (var level in levels) {
      for (var question in level.questions) {
        question.questionStatus = QuestionStatus.unattempted;
      }
    }
  }
}
