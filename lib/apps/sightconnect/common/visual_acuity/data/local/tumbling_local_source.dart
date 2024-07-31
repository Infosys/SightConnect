import 'dart:math';

import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../domain/enums/tumbling_enums.dart';
import '../../domain/models/tumbling_models.dart';

var tumblingLocalSource =
    ChangeNotifierProvider((ref) => TumblingLocalSourceImpl());

abstract class TumblingLocalSource {
  List<Level> getLevels();
  Level getLevel(int levelNumber, GameMode mode);
  void resetTestState();
  int get maxLevel;
  double lookUpLogMarTable(double decimal);
}

class TumblingLocalSourceImpl extends ChangeNotifier
    implements TumblingLocalSource {
  TumblingLocalSourceImpl() {
    mapLevelsToLevelNumber();
  }

  final List<Level> _levels = [
    Level(
      levelNumber: 0,
      size: 0.5817,
      sizeThreeMeters: 4.3633,
      sizeTwoMeters: 2.908766667,
      logMar: 0.1,
      snellerFraction: "20/200",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.29,
      sizeThreeMeters: 2.18,
      sizeTwoMeters: 1.46,
      logMar: 0.2,
      snellerFraction: "20/100",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.23,
      sizeThreeMeters: 1.7453,
      sizeTwoMeters: 1.163766667,
      logMar: 0.25,
      snellerFraction: "20/80",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.18,
      sizeThreeMeters: 1.3744,
      sizeTwoMeters: 0.9168,
      logMar: 0.32,
      snellerFraction: "20/62.5",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.1454,
      sizeThreeMeters: 1.0908,
      sizeTwoMeters: 0.727266667,
      logMar: 0.4,
      snellerFraction: "20/50",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.1163,
      sizeThreeMeters: 0.8726,
      sizeTwoMeters: 0.5812,
      logMar: 0.5,
      snellerFraction: "20/40",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.093,
      sizeThreeMeters: 0.6981,
      sizeTwoMeters: 0.4647,
      logMar: 0.63,
      snellerFraction: "20/31.77",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.0727,
      sizeThreeMeters: 0.5454,
      sizeTwoMeters: 0.3636,
      logMar: 0.8,
      snellerFraction: "20/25",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.0581,
      sizeThreeMeters: 0.4363,
      sizeTwoMeters: 0.291066667,
      logMar: 1.0,
      snellerFraction: "20/20",
      mode: GameMode.regular,
      image: AppImages.tumblingE,
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
      size: 0.5817,
      sizeThreeMeters: 4.3633,
      sizeTwoMeters: 2.908766667,
      logMar: 0.1,
      snellerFraction: "20/200",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.29,
      sizeThreeMeters: 2.18,
      sizeTwoMeters: 1.46,
      logMar: 0.2,
      snellerFraction: "20/100",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.23,
      sizeThreeMeters: 1.7453,
      sizeTwoMeters: 1.163766667,
      logMar: 0.25,
      snellerFraction: "20/80",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.18,
      sizeThreeMeters: 1.3744,
      sizeTwoMeters: 0.9168,
      logMar: 0.32,
      snellerFraction: "20/62.5",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.1454,
      sizeThreeMeters: 1.0908,
      sizeTwoMeters: 0.727266667,
      logMar: 0.4,
      snellerFraction: "20/50",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.1163,
      sizeThreeMeters: 0.8726,
      sizeTwoMeters: 0.5812,
      logMar: 0.5,
      snellerFraction: "20/40",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.093,
      sizeThreeMeters: 0.6981,
      sizeTwoMeters: 0.4647,
      logMar: 0.63,
      snellerFraction: "20/31.77",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.0727,
      sizeThreeMeters: 0.5454,
      sizeTwoMeters: 0.3636,
      logMar: 0.8,
      snellerFraction: "20/25",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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
      size: 0.0581,
      sizeThreeMeters: 0.4363,
      sizeTwoMeters: 0.291066667,
      logMar: 1.0,
      snellerFraction: "20/20",
      mode: GameMode.isFive,
      image: AppImages.tumblingE,
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

  final List<Level> levelToRegular = [];
  final List<Level> levelToIsFive = [];

  @override
  List<Level> getLevels() {
    return _levels;
  }

  @override
  Level getLevel(int levelNumber, GameMode mode) {
    // return _levels.firstWhere(
    //   (element) => element.levelNumber == levelNumber && element.mode == mode,
    // );
    if (mode == GameMode.regular) {
      return levelToRegular[levelNumber];
    } else {
      return levelToIsFive[levelNumber];
    }
  }

  @override
  void resetTestState() {
    for (var level in _levels) {
      for (var question in level.questions) {
        question.questionStatus = QuestionStatus.unattempted;
      }
    }

    mapLevelsToLevelNumber();
  }

  @override
  int get maxLevel => 8;

  @override
  double lookUpLogMarTable(double decimal) {
    switch (decimal) {
      case 0.1:
        return 1.0;
      case 0.2:
        return 0.6989;
      case 0.25:
        return 0.6021;
      case 0.32:
        return 0.4947;
      case 0.4:
        return 0.3979;
      case 0.5:
        return 0.3010;
      case 0.63:
        return 0.1761;
      case 0.8:
        return 0.0969;
      case 1.0:
        return 0.0;
      default:
        return 0.0;
    }
  }

  void mapLevelsToLevelNumber() {
    logger.d("mapping levels inside distance local source");
    for (var level in _levels) {
      level = getRandomQuestionDirectionFromLevel(level);
      GameMode mode = level.mode;
      if (mode == GameMode.regular) {
        levelToRegular.add(level);
      } else {
        levelToIsFive.add(level);
      }
    }
  }

  Level getRandomQuestionDirectionFromLevel(Level level) {
    var questions = level.questions;
    for (var question in questions) {
      question.direction = randomQuestionDirection(question);
      question.angle = lookUpQuestionAngle(question.direction);
    }
    return level;
  }

  QuestionDirection randomQuestionDirection(Question question) {
    var random = Random.secure();
    var randomNumber = random.nextInt(4);
    return QuestionDirection.values[randomNumber];
  }

  int lookUpQuestionAngle(QuestionDirection questionDirection) {
    switch (questionDirection) {
      case QuestionDirection.left:
        return 2;
      case QuestionDirection.right:
        return 4;
      case QuestionDirection.up:
        return 3;
      case QuestionDirection.down:
        return 1;
      default:
        return 0;
    }
  }
}
