import 'app_localizations.dart';

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current ರಲ್ಲಿ $total';
  }

  @override
  String get questionnaireTitle => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get questionnaireExitDialog => 'ಈ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸುವುದರಿಂದ ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಗುರುತಿಸುವಲ್ಲಿ ಸಹಾಯವಾಗುತ್ತದೆ. ನೀವು ನಿಜವಾಗಿಯೂ ನಿರ್ಗಮಿಸಲು ಬಯಸುವಿರಾ?';

  @override
  String get visualAcuityTitle => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆ';

  @override
  String get visualAcuityDescription => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆಯು ಕಣ್ಣಿನ ಪರೀಕ್ಷೆಯಾಗಿದ್ದು ಅದು ನಿರ್ದಿಷ್ಟ ದೂರದಿಂದ ಅಕ್ಷರ ಅಥವಾ ಚಿಹ್ನೆಯ ವಿವರಗಳನ್ನು ನೀವು ಎಷ್ಟು ಚೆನ್ನಾಗಿ ನೋಡುತ್ತೀರಿ ಎಂಬುದನ್ನು ಪರಿಶೀಲಿಸುತ್ತದೆ. ಈ ಶೀಘ್ರ​ ಪರೀಕ್ಷೆಯನ್ನು ಮಾಡಿ!';

  @override
  String get visualAcuityHowToPerform => 'ದೃಷ್ಟಿ  ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆಯನ್ನು ಹೇಗೆ ಮಾಡಬೇಕು?';

  @override
  String get visualAcuityViewStepsToPerform => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆಯನ್ನು ಮಾಡಲು ಹಂತಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get visualAcuityCompletionDialog => 'ಮುಗಿದಿದೆ! ಎರಡೂ ಕಣ್ಣುಗಳಿಗೆ ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆಯ ಪರೀಕ್ಷೆ ಪೂರ್ಣಗೊಂಡಿದೆ. ಮುಂದೆ ನಿಮ್ಮ ಕಣ್ಣಿನ ಫೋಟೋಗಳನ್ನು ನೀವು ಸೆರೆಹಿಡಿಯಬೇಕು.';

  @override
  String get visualAcuityExitDialog => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆಯು ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಯನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ಒಂದು ಪ್ರಮುಖ ಪರೀಕ್ಷೆಯಾಗಿದೆ. ನೀವು ನಿಜವಾಗಿಯೂ ನಿರ್ಗಮಿಸಲು ಬಯಸುವಿರಾ?';

  @override
  String get swipeGestureTab => 'ಸ್ವೈಪ್ ಸೂಚನೆ';

  @override
  String get voiceAssistTab => 'ಧ್ವನಿ ಸಹಾಯ';

  @override
  String get distanceString => 'ದೂರ';

  @override
  String get leftEyeString => 'ಎಡ ಕಣ್ಣು';

  @override
  String get rightEyeString => 'ಬಲ ಕಣ್ಣು';

  @override
  String get bothEyeString => 'ಎರಡೂ ಕಣ್ಣುಗಳು';

  @override
  String get visualAcuityLeftEyeHeader => 'ಪರೀಕ್ಷೆ 2 - ಎಡ ಕಣ್ಣು';

  @override
  String get visualAcuityLeftEyeInstructions => 'ಕಣ್ಣಿನ ರೆಪ್ಪೆಯ ಮೇಲೆ ಒತ್ತದೆ, ನಿಮ್ಮ ಕೈಯಿಂದ ಬಲಗಣ್ಣನ್ನು ಮುಚ್ಚಿ. ನೀವು ಕನ್ನಡಕವನ್ನು ಧರಿಸುತ್ತಿದ್ದರೆ ನಿಮ್ಮ ಕೈಯನ್ನು ಕನ್ನಡಕದ ಮೇಲೆ ಇರಿಸಿ.';

  @override
  String get visualAcuityRightEyeHeader => 'ಪರೀಕ್ಷೆ 1 - ಬಲ ಕಣ್ಣು';

  @override
  String get visualAcuityRightEyeInstructions => 'ಕಣ್ಣಿನ ರೆಪ್ಪೆಯ ಮೇಲೆ ಒತ್ತದೆ, ನಿಮ್ಮ ಕೈಯಿಂದ ಎಡಗಣ್ಣನ್ನು ಮುಚ್ಚಿ. ನೀವು ಕನ್ನಡಕವನ್ನು ಧರಿಸುತ್ತಿದ್ದರೆ ನಿಮ್ಮ ಕೈಯನ್ನು ಕನ್ನಡಕದ ಮೇಲೆ ಇರಿಸಿ.';

  @override
  String get visualAcuityBothEyeHeader => 'ಪರೀಕ್ಷೆ 3 - ಎರಡೂ ಕಣ್ಣುಗಳು';

  @override
  String get visualAcuityBothEyeInstructions => 'ನಿಮ್ಮ ಯಾವುದೇ ಕಣ್ಣುಗಳನ್ನು ಮುಚ್ಚಬೇಡಿ ಮತ್ತು ಮುಂದೆ ಬರುವ ಚಿಹ್ನೆಗಳನ್ನು ಎರಡೂ ಕಣ್ಣುಗಳಿಂದ ವೀಕ್ಷಿಸಿ.';

  @override
  String get overlayHeaderDirection => 'ಮಾರ್ಗದರ್ಶನ';

  @override
  String get overlayDescription => 'ಪ್ರತಿ ಚಿಹ್ನೆಯ ಮಾರ್ಗದರ್ಶನಗಳನ್ನು ನೀವು ಹೇಗೆ ಅರ್ಥಮಾಡಿಕೊಳ್ಳುತ್ತೀರಿ ಎಂಬುದು ಇಲ್ಲಿದೆ';

  @override
  String get overlaySymbolDirectionText => 'ಚಿಹ್ನೆ ಮಾರ್ಗದರ್ಶನ :';

  @override
  String get directionDown => 'ಕೆಳಕ್ಕೆ';

  @override
  String get directionUp => 'ಮೇಲಕ್ಕೆ';

  @override
  String get directionLeft => 'ಎಡ';

  @override
  String get directionRight => 'ಬಲ';

  @override
  String get dontShowAgainString => 'ಮತ್ತೆ ತೋರಿಸಬೇಡಿ';

  @override
  String get visualAcuityCarouselTitle => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆಯ ಪರೀಕ್ಷೆಯನ್ನು ಮಾಡುವ ಹಂತಗಳು';

  @override
  String get eyeScanTitle => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್';

  @override
  String get eyeScanDescription => 'ನೀವು ಹತ್ತಿರದಲ್ಲಿದ್ದೀರಿ! ಇನ್ನೊಂದು ಪರೀಕ್ಷೆಗಾಗಿ ನಿಮ್ಮ ಕಣ್ಣುಗಳ ಫೋಟೋಗಳನ್ನು ಸೆರೆಹಿಡಿಯಿರಿ';

  @override
  String get eyeScanHowToPerform => 'ನಿಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡುವುದು ಹೇಗೆ?';

  @override
  String get eyeScanViewStepsToPerform => 'ನಿಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡುವುದು ಹೇಗೆ ಎಂದು ತಿಳಿಯಲು ಹಂತಗಳನ್ನು ವೀಕ್ಷಿಸಿ.';

  @override
  String get eyeScanExitDialog => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್ ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಯ ಬಗ್ಗೆ ಇನ್ನಷ್ಟು ತಿಳಿದುಕೊಳ್ಳಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ. ನೀವು ನಿಜವಾಗಿಯೂ ನಿರ್ಗಮಿಸಲು ಬಯಸುವಿರಾ?';

  @override
  String get captureRightEyeString => 'ಬಲಗಣ್ಣನ್ನು ಸೆರೆಹಿಡಿಯಿರಿ';

  @override
  String get captureLeftEyeString => 'ಎಡಗಣ್ಣನ್ನು ಸೆರೆಹಿಡಿಯಿರಿ';

  @override
  String get skipButton => 'ಮುಂದುವರಿ';

  @override
  String get startTestText => 'ಪರೀಕ್ಷೆಯನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get continueButton => 'ಮುಂದುವರಿಸಿ';

  @override
  String get startButton => 'ಆರಂಭಿಸಿ';

  @override
  String get nextButton => 'ಮುಂದೆ';

  @override
  String get proceedButton => 'ಮುಂದುವರಿಸಿ';

  @override
  String get yesButton => 'ಹೌದು';

  @override
  String get noButton => 'ಇಲ್ಲ';

  @override
  String get exitButton => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String get okButton => 'ಸರಿ';

  @override
  String get knowMoreButton => 'ಇನ್ನಷ್ಟು ತಿಳಿಯಿರಿ';

  @override
  String get seeAllButton => 'ಎಲ್ಲವನ್ನೂ ನೋಡಿ';

  @override
  String get tryAgainButton => 'ಮತ್ತೊಮ್ಮೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get shareNowButton => 'ಈಗ ಶೇರ್ ಮಾಡಿ';

  @override
  String get retryButton => 'ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get homeCarousal1Title => '40 ವರ್ಷ ಮತ್ತು ಮೇಲ್ಪಟ್ಟ ವಯಸ್ಕರಲ್ಲಿ ಕಣ್ಣಿನ ಪೊರೆ ಹರಡುವಿಕೆ ಮತ್ತು ಅದರ ಸಂಬಂಧಿತ ಅಂಶಗಳು';

  @override
  String get homeCarousal1Description => '\r\nಕಣ್ಣಿನ ಪೊರೆ ಮತ್ತು ಸಂಬಂಧಿತ ಅಂಶಗಳ ಹರಡುವಿಕೆಯ ಮೇಲೆ ಮಾದರಿ ವಿಧಾನದ ಕ್ರಮಬಧ್ಧವಾದ ಪ್ರದರ್ಶನ​';

  @override
  String get homeCarousal2Title => 'ಗಮನಿಸಬೇಕಾದ​ 7 ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳು!';

  @override
  String get homeCarousal2Description => '\r\nಪರೀಕ್ಷಿಸಲು 7 ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳು:\r\n \r\n• ಕಣ್ಣಿನ ಕೆಂಪು\r\n• ಕಣ್ಣುಗಳಲ್ಲಿ ನೀರು ಬರುವುದು\r\n• ಕಣ್ಣುಗಳ ಮೇಲೆ ಬಿಳಿ ಕಲೆಗಳು';

  @override
  String get homeCarousal3Title => 'ನೀವು ನೋಡದ ಅನೇಕ ಕಣ್ಣಿನ ತೊಂದರೆಗಳು ಇವೆ';

  @override
  String get homeCarousal3Description => 'ಆದರೆ ದೃಷ್ಟಿ ಆರೈಕೆ ತಜ್ಞರು ಮಾಡಬಹುದು.\r\nಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಗುರುತಿಸಿ ಮತ್ತು ತಪ್ಪಿಸಲು ಸಮಯಕ್ಕೆ ಚಿಕಿತ್ಸೆ ನೀಡಲಾಗುತ್ತದೆ';

  @override
  String get myConnectionsTitle => 'ನನ್ನ ಸದಸ್ಯರು';

  @override
  String get myConnectionsAddMember => 'ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get myConnectionsServiceNotAvailable => 'ಸೇವೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get myConnectionsAdd => 'ಸೇರಿಸಿ';

  @override
  String get recentServicesTitle => 'ನನ್ನ ಇತ್ತೀಚಿನ ಸೇವೆಗಳು';

  @override
  String get recentServicesEyeAssessment => 'ಕಣ್ಣಿನ ಪರೀಕ್ಷೆ';

  @override
  String get recentServicesVisualAcuityTest => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆ';

  @override
  String get nearbyVisionCentersTitle => 'ಹತ್ತಿರದ ದೃಷ್ಟಿ ಕೇಂದ್ರಗಳು';

  @override
  String get nearbyVisionCentersNotFound => 'ಯಾವುದೇ ದೃಷ್ಟಿ ಕೇಂದ್ರಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get tollFreeNumber => 'ಶುಲ್ಕ ಮುಕ್ತ ಸಂಖ್ಯೆ';

  @override
  String get appDrawerTitle => 'ಮೆನು';

  @override
  String get appDrawerHome => 'ಹೋಮ್';

  @override
  String get appDrawerLanguageSelection => 'ಭಾಷೆಯ ಆಯ್ಕೆ';

  @override
  String get appDrawerAccessibility => 'ಪ್ರವೇಶಿಸುವಿಕೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get appDrawerMyProfile => 'ನನ್ನ ಪ್ರೊಫೈಲ್';

  @override
  String get appDrawerAssessmentsAndTests => 'ಮೌಲ್ಯಮಾಪನಗಳು ಮತ್ತು ಪರೀಕ್ಷೆಗಳು';

  @override
  String get appDrawerScanner => 'QR ಕೋಡ್ ಸ್ಕ್ಯಾನರ್';

  @override
  String get appDrawerAboutUs => 'ನಮ್ಮ ಬಗ್ಗೆ';

  @override
  String get appDrawerPrivacyPolicy => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಡೇಟಾ ನೀತಿ';

  @override
  String get appDrawerHelpAndSupport => 'ಸಹಾಯ ಮತ್ತು ಬೆಂಬಲ';

  @override
  String get appDrawerSignOut => 'ಲಾಗ್ ಔಟ್';

  @override
  String get aboutUsDescription => 'ಸೈಟ್‌ಕನೆಕ್ಟ್ ಒಂದು ಬಳಕೆದಾರ ಸ್ನೇಹಿ ಕಣ್ಣಿನ ಆರೈಕೆ ಅಪ್ಲಿಕೇಶನ್ ಆಗಿದ್ದು ಅದು ದೂರವಾಣಿ ಕರೆಯ ಮೂಲಕ ಸ್ವಯಂ ಮೌಲ್ಯಮಾಪನ ಮತ್ತು ಸಮಾಲೋಚನೆಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.\r\n\r\nನಮ್ಮ ಮಿಷನ್‌ನ ಹೃದಯಭಾಗವು ಕಣ್ಣಿನ ಆರೈಕೆಯನ್ನು ಎಲ್ಲರಿಗೂ ಪ್ರವೇಶಿಸುವಂತೆ ಮಾಡುವ ಬದ್ಧತೆಯಾಗಿದೆ. ಅವರ ವಯಸ್ಸು, ತಾಂತ್ರಿಕ ಹಿನ್ನೆಲೆ ಮತ್ತು ಸಾಮಾಜಿಕ ಅಥವಾ ಆರ್ಥಿಕ ಹಿನ್ನೆಲೆಯನ್ನು ಲೆಕ್ಕಿಸದೆಯೇ ಎಲ್ಲಾ ಹಂತದ ಜೀವನದ ಬಳಕೆದಾರರಿಂದ ಒಳಗೊಳ್ಳಲು ಮತ್ತು ಪ್ರವೇಶಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ. ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರ ವಿಷಯವನ್ನು ಇಂಗ್ಲಿಷ್ ಮತ್ತು ಇತರ ಸ್ಥಳೀಯ ಭಾಷೆಗಳಲ್ಲಿ ಲಭ್ಯವಾಗುವಂತೆ ಮಾಡಲಾಗಿದೆ. ಇದು ಬಳಕೆದಾರರಿಗೆ ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ವಯಂ-ಮೌಲ್ಯಮಾಪನ ಮಾಡಲು ಮತ್ತು ಸಕಾಲಿಕ ಚಿಕಿತ್ಸೆಯ ಸಲಹೆಯನ್ನು ಪಡೆಯಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ. ನಮ್ಮ ಬಳಕೆದಾರರಿಗೆ ವೈಯಕ್ತಿಕಗೊಳಿಸಿದ ಕಣ್ಣಿನ ಆರೈಕೆ ಪರಿಹಾರಗಳನ್ನು ಒದಗಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಇತ್ತೀಚಿನ ತಂತ್ರಜ್ಞಾನಗಳು ಮತ್ತು ಸಾಧನಗಳನ್ನು ಬಳಸುತ್ತದೆ. ಇದು ಅವರ ಜೀವನವನ್ನು ಸುಲಭಗೊಳಿಸಲು ವಿವಿಧ ವೈಶಿಷ್ಟ್ಯಗಳೊಂದಿಗೆ ಬರುತ್ತದೆ.';

  @override
  String get aboutUsFeaturesTitle => 'ವೈಶಿಷ್ಟ್ಯಗಳು';

  @override
  String get aboutUsFeaturesDescription => 'ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಕಣ್ಣಿನ ಪರೀಕ್ಷೆ: ಅಪ್ಲಿಕೇಶನ್ ತನ್ನ ಬಳಕೆದಾರರಿಗೆ ಕೆಲವು ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸುವ ಮೂಲಕ ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ವಯಂ-ಮೌಲ್ಯಮಾಪನ ಮಾಡಲು ಅನುಮತಿಸುತ್ತದೆ ಮತ್ತು ಮುಂದಿನ ಹಂತಗಳು ಮತ್ತು ವೈದ್ಯರನ್ನು ಭೇಟಿ ಮಾಡಲು ಸೂಕ್ತ ಶಿಫಾರಸುಗಳನ್ನು ಪಡೆಯುತ್ತದೆ. ಸ್ನೇಹಿತರು ಮತ್ತು ಬಳಕೆದಾರರ ಕುಟುಂಬದವರು ಸಹ ಪ್ರಯೋಜನ ಪಡೆಯಬಹುದು. |ಅಪಾಯಿಂಟ್ಮೆಂಟ್ ಬುಕಿಂಗ್: ಬಳಕೆದಾರರು ತಮ್ಮ ಕಣ್ಣುಗಳ ರೋಗನಿರ್ಣಯವನ್ನು ಪಡೆಯಲು ವೈದ್ಯರೊಂದಿಗೆ ಆನ್‌ಲೈನ್ ಟೆಲಿಕನ್ಸಲ್ಟೇಶನ್‌ಗಳು ಮತ್ತು ಇನ್-ಕ್ಲಿನಿಕ್ ಭೇಟಿಗಳನ್ನು ಬುಕ್ ಮಾಡಬಹುದು. |IVR ಕರೆ ಸೇವೆಗಳು: ನಮ್ಮ IVR ಕರೆ ಸೇವೆಗಳು ಇಂಗ್ಲಿಷ್ ಮತ್ತು ಸ್ಥಳೀಯ ಭಾಷೆಗಳಲ್ಲಿ ಲಭ್ಯವಿವೆ ಮತ್ತು ಇದು ಮೂಲಭೂತ ವೈಶಿಷ್ಟ್ಯದ ಫೋನ್‌ಗಳನ್ನು ಹೊಂದಿರುವ ಬಳಕೆದಾರರನ್ನು ಸಹ ಪೂರೈಸುತ್ತದೆ. ತುರ್ತು ಸಮಯದಲ್ಲಿ ಅಥವಾ ಯಾವುದೇ ಕಣ್ಣಿನ ಸಂಬಂಧಿತ ಸಮಸ್ಯೆಗಳಿಗೆ ತ್ವರಿತ ಸಹಾಯವನ್ನು ಪಡೆಯಲು ಬಳಕೆದಾರರು ನಮ್ಮ ಕಣ್ಣಿನ ಆರೈಕೆ ವೃತ್ತಿಪರರಿಗೆ ಡಯಲ್ ಮಾಡಬಹುದು. ಅವರು ಅಪಾಯಿಂಟ್‌ಮೆಂಟ್‌ಗಳನ್ನು ಕಾಯ್ದಿರಿಸಲು ಕರೆ ಮಾಡಬಹುದು ಅಥವಾ ಯಾವುದೇ ಹೆಚ್ಚಿನ ಸ್ಪಷ್ಟೀಕರಣಗಳನ್ನು ಪಡೆಯಬಹುದು. |ಹತ್ತಿರದ ಚಿಕಿತ್ಸಾಲಯಗಳು: ಬಳಕೆದಾರರು ತಮ್ಮ ಸಮೀಪದಲ್ಲಿರುವ ನೇತ್ರ ಚಿಕಿತ್ಸಾಲಯಗಳನ್ನು ಪತ್ತೆ ಮಾಡಬಹುದು. |ಪ್ರಿಸ್ಕ್ರಿಪ್ಷನ್‌ಗಳು ಮತ್ತು ವರದಿಗಳು: ಬಳಕೆದಾರರ ಎಲ್ಲಾ ಪ್ರಿಸ್ಕ್ರಿಪ್ಷನ್‌ಗಳು ಮತ್ತು ವರದಿಗಳನ್ನು ಹೆಚ್ಚು ತೊಂದರೆಯಿಲ್ಲದೆ ಒಂದೇ ಸ್ಥಳದಿಂದ ಪ್ರವೇಶಿಸಬಹುದು. |ಕಣ್ಣಿನ ಶಿಬಿರಗಳು: ಬಳಕೆದಾರರು ತಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದವರ ಕಣ್ಣುಗಳನ್ನು ಉಚಿತವಾಗಿ ಪರೀಕ್ಷಿಸಲು ಹತ್ತಿರದ ಕಣ್ಣಿನ ಶಿಬಿರಗಳ ಬಗ್ಗೆ ಮಾಹಿತಿಯನ್ನು ಪಡೆಯಬಹುದು. |ಜ್ಞಾಪನೆಗಳು ಮತ್ತು ಎಚ್ಚರಿಕೆಗಳು: ಬಳಕೆದಾರರು ತಮ್ಮ ಮುಂಬರುವ ಅಪಾಯಿಂಟ್‌ಮೆಂಟ್‌ಗಳು, ಔಷಧಿಗಳು, ವರದಿಗಳು ಇತ್ಯಾದಿಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ಸಮಯೋಚಿತ ಎಚ್ಚರಿಕೆಗಳು ಮತ್ತು ಜ್ಞಾಪನೆಗಳನ್ನು ಸ್ವೀಕರಿಸಬಹುದು.|ಹಂಚಿಕೆ: ಬಳಕೆದಾರರು ಈ ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ಒದಗಿಸಲಾದ ಇತರ ಉಪಯುಕ್ತ ಮಾಹಿತಿಯನ್ನು ತಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬ ಸದಸ್ಯರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಬಹುದು.';

  @override
  String get aboutUsConclusion => 'ನಮ್ಮ ಬಳಕೆದಾರರ ಸಮುದಾಯಕ್ಕೆ ಉತ್ತಮವಾಗಿ ಸೇವೆ ಸಲ್ಲಿಸಲು ಪ್ರಮುಖ ಕಣ್ಣಿನ ಆರೈಕೆ ವೃತ್ತಿಪರರ ಸಹಾಯದಿಂದ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಅಭಿವೃದ್ಧಿಪಡಿಸಲಾಗಿದೆ. ಪ್ರಕಾಶಮಾನವಾದ, ಆರೋಗ್ಯಕರ ಜಗತ್ತನ್ನು ರಚಿಸುವ ನಮ್ಮ ಮಿಷನ್‌ನಲ್ಲಿ ನಮ್ಮೊಂದಿಗೆ ಸೇರಿ. ಇಂದು ಸೈಟ್‌ಕನೆಕ್ಟ್ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಮತ್ತು ಹಂಚಿಕೊಳ್ಳಿ!';

  @override
  String get privacyPolicyDescription => 'ಎಲ್‌ವಿ ಪ್ರಸಾದ್ ಐ ಇನ್‌ಸ್ಟಿಟ್ಯೂಟ್, ಅದರ ಅಂಗಸಂಸ್ಥೆಗಳು, ಸಹವರ್ತಿಗಳು ಮತ್ತು ಸಂಯೋಜಿತ ಕಂಪನಿಗಳು (ಒಟ್ಟಾರೆಯಾಗಿ "LVPEI", "ನಮಗೆ", "ನಾವು" ಎಂದು ಉಲ್ಲೇಖಿಸಲಾಗುತ್ತದೆ) ನಿಮ್ಮ ಅಧಿಕಾರ ವ್ಯಾಪ್ತಿಯ ಕಾನೂನುಗಳ ಪ್ರಕಾರ ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಲು ಬದ್ಧವಾಗಿದೆ. ವೈಯಕ್ತಿಕ ಡೇಟಾದ ಪ್ರಕ್ರಿಯೆಯ ಕುರಿತು ನಾವು ಈ ಕೆಳಗಿನ ಮಾಹಿತಿಯನ್ನು ನಿಮಗೆ ತಿಳಿಸುತ್ತೇವೆ.';

  @override
  String get privacyPolicyPersonalDataTitle => 'ವೈಯಕ್ತಿಕ ಡೇಟಾ ಅಂಶಗಳನ್ನು ಸಂಗ್ರಹಿಸಲಾಗಿದೆ/ಸಂಸ್ಕರಿಸಲಾಗಿದೆ:';

  @override
  String get privacyPolicyPersonalDataDescription => 'ನೀವು ಮತ್ತು ನಿಮ್ಮ ಸಂಪರ್ಕಗಳ ವೈಯಕ್ತಿಕ ಡೇಟಾದಂತಹ (ಈ ಡೇಟಾಗಳಲ್ಲಿ ಕೆಲವು ಐಚ್ಛಿಕವಾಗಿರುತ್ತದೆ) ಮೊಬೈಲ್ ಸಂಖ್ಯೆ, ಹೆಸರು, ಹುಟ್ಟಿದ ದಿನಾಂಕ, ಲಿಂಗ (ಪುರುಷ/ಹೆಣ್ಣು), ವಿಳಾಸ (ಪಿನ್ ಕೋಡ್), ರೋಗಿಯ ಐಡಿ, ಸಂಪರ್ಕ, ಕಣ್ಣಿನ ಚಿಕಿತ್ಸೆಯ ಸರದಿ ನಿರ್ಧಾರದ ಪ್ರಶ್ನಾವಳಿಯ ಪ್ರತಿಕ್ರಿಯೆಗಳು, ಕಣ್ಣು ಚಿಕಿತ್ಸೆಯ ಸರದಿ ನಿರ್ಧಾರ ವರದಿ, ಕಣ್ಣಿನ ಚಿತ್ರಗಳು, ನಿಮ್ಮ ಕಣ್ಣಿನ ಚಿತ್ರದ ವಿರುದ್ಧ ಟ್ಯಾಗ್ ಮಾಡಲಾದ ಲಕ್ಷಣಗಳು, ಛಾಯಾಚಿತ್ರ, ವಿಳಾಸದ ವಿವರಗಳಾದ ವಿಳಾಸ, ಜಿಲ್ಲೆಯ ಹೆಸರು (ಜಿಲ್ಲೆಯ ಕೋಡ್ ಸೇರಿದಂತೆ), ರಾಜ್ಯದ ಹೆಸರು (ರಾಜ್ಯ ಕೋಡ್ ಸೇರಿದಂತೆ), ಉಪ ಜಿಲ್ಲೆಯ ಹೆಸರು, ಗ್ರಾಮದ ಹೆಸರು, ಪಟ್ಟಣದ ಹೆಸರು, ಇಮೇಲ್ ವಿಳಾಸ, ಕೊನೆಯ ಹೆಸರು, ಮಧ್ಯದ ಹೆಸರು, ರಕ್ತದ ಗುಂಪು, ಎತ್ತರ, ತೂಕ, ಉದ್ಯೋಗ, ABHA ವಿವರಗಳು (ನೀವು ಒದಗಿಸಿದಂತೆ), ನಿಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ಅನುಮತಿಗಳ ಆಧಾರದ ಮೇಲೆ ಕ್ಯಾಮರಾ, GPS ಸ್ಥಳ, ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಪ್ರವೇಶಿಸಲು ಗ್ಯಾಲರಿ, ಪೂರ್ಣ ನೆಟ್‌ವರ್ಕ್ ಪ್ರವೇಶ, ನೆಟ್‌ವರ್ಕ್ ಸಂಪರ್ಕಗಳನ್ನು ವೀಕ್ಷಿಸಿ, ಸಾಧನದ ಮಾಹಿತಿ.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'ಸಂಸ್ಕರಣೆಯ ಉದ್ದೇಶ: ಈ ಕೆಳಗಿನ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನೀವು ಒದಗಿಸಿದ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ನಾವು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುತ್ತೇವೆ:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'ನೀವು ಮತ್ತು ನಿಮ್ಮ ಸಂಪರ್ಕಗಳಿಗಾಗಿ (ನೀವು ಒದಗಿಸಿರುವಂತೆ) ಕಣ್ಣಿನ ಸಂಬಂಧಿತ ಆನ್‌ಲೈನ್ ಆರೋಗ್ಯ ತಪಾಸಣೆಗಾಗಿ ನಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಪ್ರವೇಶಿಸಲು ನಿಮಗೆ ಅನುವು ಮಾಡಿಕೊಡಲು. ಅನಾರೋಗ್ಯ/ಆರೋಗ್ಯ ತೊಂದರೆಗಳು.|ನಿಮ್ಮ ಆರೋಗ್ಯ ಸಮಾಲೋಚನೆ ಮತ್ತು ರೋಗನಿರ್ಣಯದ ಭಾಗವಾಗಿ ಯಾವುದೇ ಕಣ್ಣಿನ ಆರೋಗ್ಯ-ಸಂಬಂಧಿತ ಡೇಟಾವನ್ನು (ವರದಿಗಳು ಇತ್ಯಾದಿಗಳನ್ನು ಒಳಗೊಂಡಂತೆ) ಒದಗಿಸಲು ಮತ್ತು ಆರೋಗ್ಯ-ಸಂಬಂಧಿತ ಕಾಳಜಿಗಳ ಭಾಗವಾಗಿ ನಿಮ್ಮನ್ನು ಅಥವಾ ನಿಮ್ಮ ಸಂಪರ್ಕಗಳನ್ನು ಸಂಪರ್ಕಿಸಲು.|ನಿಮ್ಮ ಹಂಚಿಕೆಗಾಗಿ ಉತ್ತಮ ರೋಗನಿರ್ಣಯಕ್ಕಾಗಿ ನಮ್ಮ ಅಧಿಕೃತ LVPEI ನೇತ್ರಶಾಸ್ತ್ರಜ್ಞರು/ವೈದ್ಯರೊಂದಿಗೆ ಕಣ್ಣಿನ ಆರೋಗ್ಯದ ಡೇಟಾವನ್ನು ನೀವು ತಲುಪಲು ಸಾಧ್ಯವಾಗದಿದ್ದಲ್ಲಿ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಯ ತೀವ್ರತೆಯನ್ನು ಅವಲಂಬಿಸಿ ಗ್ರಾಮದ ಮುಖ್ಯಸ್ಥ/ಮೇಯರ್ ಇತ್ಯಾದಿಗಳೊಂದಿಗೆ (ಅಲ್ಲಿ ನಿಮ್ಮ GPS ಸ್ಥಳವನ್ನು ಆಧರಿಸಿ ಅನ್ವಯಿಸುತ್ತದೆ) ಹಂಚಿಕೊಳ್ಳುವುದು ಚಿಕಿತ್ಸೆಗಾಗಿ LVPEI ವೈದ್ಯರಿಗೆ ತಿಳಿಸಲು/ ತಿಳಿಸಲು.|ನಿಮ್ಮ ಬಳಿ ಇರುವ LVPEI ನೊಂದಿಗೆ ಸಂಯೋಜಿತವಾಗಿರುವ ಕಣ್ಣಿನ ಚಿಕಿತ್ಸಾಲಯಗಳು/ಆಸ್ಪತ್ರೆಗಳ ಪಟ್ಟಿಯನ್ನು ಒದಗಿಸಲು, ಯಾವುದೇ ಕಣ್ಣಿನ ಸಂಬಂಧಿತ ಸಮಸ್ಯೆಗಳ ಸಂದರ್ಭದಲ್ಲಿ ನೀವು ಸಂಪರ್ಕಿಸಲು.|ಕಣ್ಣಿನ ಚಿತ್ರದಂತಹ ಮಾಹಿತಿಯನ್ನು ಬಳಸಲು, ಭವಿಷ್ಯದಲ್ಲಿ ಸರಿಯಾದ ರೋಗನಿರ್ಣಯವನ್ನು ಒದಗಿಸುವ ಉದ್ದೇಶಕ್ಕಾಗಿ ನಮ್ಮ ಯಂತ್ರ ಕಲಿಕೆ ಅಥವಾ ಕೃತಕ ಬುದ್ಧಿಮತ್ತೆ ಮಾದರಿಗಳಿಗೆ ತರಬೇತಿ ನೀಡಲು ಸಹಾಯ ಮಾಡಲು ಯಾವುದೇ ಗುರುತಿಸುವಿಕೆಗಳಿಲ್ಲದ ಕಣ್ಣಿನ ಚಿತ್ರ, ವಯಸ್ಸು, ರಕ್ತದ ಗುಂಪು, ಸ್ಥಳಕ್ಕೆ ಸಂಬಂಧಿಸಿದ ಲಕ್ಷಣಗಳು|ಜ್ಞಾಪನೆ, ಸಂವಹನ, ಪ್ರಚಾರ ಮೇಲ್ ಕಳುಹಿಸಲು, ಜಾಗೃತಿ ಮೂಡಿಸಲು ಕಣ್ಣಿನ ಆರೋಗ್ಯ.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ಡೇಟಾ ಸ್ವೀಕರಿಸುವವರು/ ಪ್ರವೇಶಿಸಬಹುದಾದ:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'ನೀವು ಹಂಚಿಕೊಂಡ ವೈಯಕ್ತಿಕ ಡೇಟಾ (ಸೂಕ್ಷ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಒಳಗೊಂಡಂತೆ) ವೈದ್ಯರು/ ನೇತ್ರಶಾಸ್ತ್ರಜ್ಞರು, ದೃಷ್ಟಿ ತಂತ್ರಜ್ಞರು, ದೃಷ್ಟಿ ರಕ್ಷಕರು, LVPEI ನ ಪ್ರಾತಿನಿಧಿಗಳು, ಆಂತರಿಕ/ಬಾಹ್ಯ ಲೆಕ್ಕಪರಿಶೋಧಕರು, ಅನ್ವಯಿಕ ಸರ್ಕಾರಿ ಅಧಿಕಾರಿಗಳು, ಮತ್ತು ಅನ್ವಯಿಕವಾಗಿ ನಮ್ಮ ಅಧಿಕೃತ ಸೇವಾ ಒದಗಿಸುವ ಇನ್ಫೋಸಿಸ್ ಅಧಿಕೃತ LVPEI ಸಿಬ್ಬಂದಿಗೆ ಪ್ರವೇಶಿಸಬಹುದು.';

  @override
  String get privacyPolicyDataTransferTitle => 'ಡೇಟಾ ವರ್ಗಾವಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ:';

  @override
  String get privacyPolicyDataTransferDescription => 'ನೀವು ಹಂಚಿಕೊಂಡ ವೈಯಕ್ತಿಕ ಡೇಟಾ ನಮ್ಮ ಆಂತರಿಕ ಸರ್ವರ್‌ಗಳಲ್ಲಿ, ಭಾರತದಲ್ಲಿನ ನಮ್ಮ ಅಧಿಕೃತ ಸೇವಾ ಒದಗಿಸುವವರ ಸರ್ವರ್‌ನಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get privacyPolicyDataSecurityTitle => 'ಡೇಟಾ ಭದ್ರತೆ:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ರಕ್ಷಿಸಲು ಆಡಳಿತಾತ್ಮಕ, ಭೌತಿಕ ಭದ್ರತೆ ಮತ್ತು ತಾಂತ್ರಿಕ ನಿಯಂತ್ರಣಗಳನ್ನು ಒಳಗೊಂಡಂತೆ ಸಮಂಜಸವಾದ ಮತ್ತು ಸೂಕ್ತವಾದ ಭದ್ರತಾ ಅಭ್ಯಾಸಗಳು ಮತ್ತು ಕಾರ್ಯವಿಧಾನಗಳನ್ನು ಅಳವಡಿಸಿಕೊಳ್ಳುತ್ತದೆ.';

  @override
  String get privacyPolicyDataRetentionTitle => 'ಡೇಟಾ ಧಾರಣ:';

  @override
  String get privacyPolicyDataRetentionDescription => 'ಕಾನೂನು ಮತ್ತು ವ್ಯವಹಾರದ ಅಗತ್ಯತೆಗಳ ಪ್ರಕಾರ ಇನ್ನು ಮುಂದೆ ಉಳಿಸಿಕೊಳ್ಳಲು ಅಗತ್ಯವಿಲ್ಲದ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಸುರಕ್ಷಿತ ರೀತಿಯಲ್ಲಿ ವಿಲೇವಾರಿ ಮಾಡಲಾಗುತ್ತದೆ.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ಡೇಟಾ ವಿಷಯದ ಹಕ್ಕುಗಳು:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'ನೀವು ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಗೆ ಪ್ರವೇಶಿಸಲು ಮತ್ತು ಸರಿಪಡಿಸಲು ಹಕ್ಕುದಾರರಾಗಿದ್ದೀರಿ. ಯಾವುದೇ ವಿನಂತಿಗಳು, ಸಮಸ್ಯೆಗಳು, ಆತಂಕಗಳು ಅಥವಾ ಪ್ರಶ್ನೆಗಳು ಇದ್ದರೆ, ನೀವು <LVPEI ಯಿಂದ DSR ಗಾಗಿ ಸಾಮಾನ್ಯ ಮೇಲ್ ಐಡಿ ಒದಗಿಸಬೇಕು> ಎಂದು ಇಮೇಲ್ ಕಳುಹಿಸುವ ಮೂಲಕ LV ಪ್ರಸಾದ ಕಚೇರಿಗೆ ಸಂಪರ್ಕಿಸಬಹುದು.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'ಹಿಂಪಡೆಯುವಿಕೆಯ ಹಕ್ಕು:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'ನಾವು ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯ ಆಧಾರದ ಮೇಲೆ ಸಂಸ್ಕರಿಸುವಾಗ, ನೀವು ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ಭವಿಷ್ಯಕ್ಕಾಗಿ ಅನ್ವಯಿಕ ಡಿಪಿ ಕಾನೂನುಗಳ ಪ್ರಕಾರ ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯನ್ನು ಹಿಂಪಡೆಯಬಹುದು. ಇದು ನಿಮ್ಮ ಹಿಂಪಡೆತದ ಮೊದಲಿನ ಯಾವುದೇ ಸಂಸ್ಕರಣಾ ಕಾರ್ಯಾಚರಣೆಯ ಕಾನೂನು ಸಮ್ಮತತೆಯನ್ನು ಪ್ರಭಾವಿತಗೊಳಿಸುವುದಿಲ್ಲ. ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯನ್ನು ಹಿಂಪಡೆಯಲು, ನೀವು <LVPEI ಯಿಂದ DSR ಗಾಗಿ ಸಾಮಾನ್ಯ ಮೇಲ್ ಐಡಿ ಒದಗಿಸಬೇಕು> ಎಂದು ಇಮೇಲ್ ಕಳುಹಿಸಬಹುದು.';

  @override
  String get privacyPolicyAcknowledgement => 'ಕೆಳಗಿನ ಬಟನ್ ಅನ್ನು ಕ್ಲಿಕ್ ಮಾಡುವ ಮೂಲಕ, ಸೂಕ್ಷ್ಮವಾದ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಒಳಗೊಂಡಂತೆ ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಮೇಲೆ ತಿಳಿಸಿದ ರೀತಿಯಲ್ಲಿ ಸಂಗ್ರಹಿಸಬಹುದು ಮತ್ತು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಬಹುದು ಮತ್ತು ಮೇಲೆ ತಿಳಿಸಿದ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಈ ಮೂಲಕ ಸಮ್ಮತಿಸುತ್ತೀರಿ ಎಂದು ನೀವು ಈ ಮೂಲಕ ಅಂಗೀಕರಿಸುತ್ತೀರಿ ಮತ್ತು ಅರ್ಥಮಾಡಿಕೊಳ್ಳುತ್ತೀರಿ. ನೀವು ಹಂಚಿಕೊಂಡ ಸೂಕ್ಷ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾ (ನಿಮ್ಮನ್ನು ಹೊರತುಪಡಿಸಿ) ಸೇರಿದಂತೆ ಯಾವುದೇ ವೈಯಕ್ತಿಕ ಡೇಟಾವು ಅವರಿಂದ ಸೂಕ್ತ ಒಪ್ಪಿಗೆಯನ್ನು ಪಡೆದ ನಂತರವೇ ಎಂದು ನೀವು ಅಂಗೀಕರಿಸುತ್ತೀರಿ. ಮೇಲೆ ತಿಳಿಸಿದ ಉದ್ದೇಶಗಳಿಗೆ ಅಗತ್ಯವಿಲ್ಲದ ಯಾವುದೇ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು (ಸೂಕ್ಷ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಒಳಗೊಂಡಂತೆ) ನೀವು ಹಂಚಿಕೊಳ್ಳುವುದಿಲ್ಲ ಎಂದು ಸಹ ನೀವು ಅಂಗೀಕರಿಸುತ್ತೀರಿ. ನೀವು ಅಪ್ರಾಪ್ತ ವಯಸ್ಕರ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಅವರ ಪೋಷಕರು/ಕಾನೂನು ಪಾಲಕರಾಗಿ ಹಂಚಿಕೊಳ್ಳುತ್ತಿರುವಾಗ ಅವರ ಡೇಟಾ ಸಂಗ್ರಹಣೆ ಮತ್ತು ಪ್ರಕ್ರಿಯೆಗೆ ಮೇಲೆ ತಿಳಿಸಿದಂತೆ ನೀವು ಸಮ್ಮತಿಸುತ್ತೀರಿ ಎಂಬುದನ್ನು ಸಹ ನೀವು ಅಂಗೀಕರಿಸುತ್ತೀರಿ.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'ಗೌಪ್ಯತಾ ನೀತಿಯನ್ನು ಸ್ವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get helpAndSupportReachTitle => 'ನಮ್ಮನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get assessmentAndTestsSubtitle => 'ಇಲ್ಲಿಯವರೆಗೆ ಮಾಡಿದ ಮೌಲ್ಯಮಾಪನಗಳ ತ್ವರಿತ ನೋಟ ಇಲ್ಲಿದೆ.';

  @override
  String get assessmentAndTestsReportsNotFound => 'ಯಾವುದೇ ವರದಿಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get eyeAssessmentTitle => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನ';

  @override
  String get eyeAssessmentSubtitle => '\r\nನಿಮ್ಮ, ನಿಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದ ಸದಸ್ಯರ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಕೆಲವು ಹಂತಗಳಲ್ಲಿ ನಿರ್ಣಯಿಸಿ. ದೃಷ್ಟಿ ಪರೀಕ್ಷೆಗಳ ನಂತರ ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ನಿಮಗೆ ಪ್ರಶ್ನೆಗಳ ಗುಂಪನ್ನು ಕೇಳಲಾಗುತ್ತದೆ.';

  @override
  String get eyeAssessmentGetMemberLabel => 'ಸದಸ್ಯ ಬದಲಿಸು';

  @override
  String get eyeAssessmentProceedButton => 'ಮುಂದುವರಿಸು';

  @override
  String get eyeAssessmentBrightnessLabel => '\r\nಹೊಳಪನ್ನು 80% ಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';

  @override
  String get eyeAssessmentBrightnessError => 'ದಯವಿಟ್ಟು ಹೊಳಪನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ 80% ಗೆ ಹೊಂದಿಸಿ';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ಪ್ರಶ್ನೆಯು ಇನ್ನೂ ಬೆಂಬಲಿತವಾಗಿಲ್ಲ';

  @override
  String get eyeAssessmentPopUpHeading => 'ಮೌಲ್ಯಮಾಪನ';

  @override
  String get eyeAssessmentPopUpBody => 'ನಿಮಗೆ ದೃಷ್ಟಿಗೆ ಸಂಬಂಧಿಸಿದ ಯಾವುದೇ ಸಮಸ್ಯೆ ಇದೆಯೇ?';

  @override
  String get eyeAssessmentPopUpYesButton => 'ಹೌದು';

  @override
  String get eyeAssessmentPopUpNoButton => 'ಇಲ್ಲ';

  @override
  String get visualAcuityTestInstructionOne => 'ಉತ್ತಮ ಬೆಳಕಿನ ಸ್ಥಳದಲ್ಲಿ ಆರಾಮವಾಗಿ ಕುಳಿತುಕೊಳ್ಳಿ. ನೀವು ಹೊಳಪಿನಲ್ಲಿ ಹಠಾತ್ ಬದಲಾವಣೆಯನ್ನು ಗಮನಿಸಬಹುದು, ಚಿಂತಿಸಬೇಡಿ ಅತ್ಯುತ್ತಮ ಫಲಿತಾಂಶವನ್ನು ಒದಗಿಸಲು ಸ್ಕ್ರೀನ್ ನ್ನು ಸ್ವಯಂ-ಪ್ರಕಾಶಮಾನಕ್ಕೆ ಹೊಂದಿಸಲಾಗಿದೆ';

  @override
  String get visualAcuityTestInstructionTwo => '\r\nನೀವು ಸಾಧನವನ್ನು ಕಣ್ಣಿನ ಮಟ್ಟದಲ್ಲಿ ಹಿಡಿದಿರುವಿರಿ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ. ನೀವು ಕನ್ನಡಕ ಅಥವಾ ಕಾಂಟ್ಯಾಕ್ಟ್ ಲೆನ್ಸ್‌ಗಳನ್ನು ಧರಿಸಿದರೆ, ಅವುಗಳನ್ನು ಇರಿಸಿಕೊಳ್ಳಿ';

  @override
  String get visualAcuityTestInstructionThree => 'ನೀವು ಪರೀಕ್ಷಿಸುವ ಸ್ಕ್ರೀನ್ ನಿಂದ 40 ಸೆಂ.ಮೀ. ದೂರದಲ್ಲಿ ಇರಬೇಕು. ಪರೀಕ್ಷಾ ಸ್ಕ್ರೀನ್ನಲ್ಲಿ ದೂರವನ್ನು ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get visualAcuityTestInstructionFour => 'ನೀವು ಕನ್ನಡಕವನ್ನು ಹಾಕಿಕೊಂಡು ಪರೀಕ್ಷೆ ಮಾಡುತ್ತಿದ್ದರೆ, ಒಂದು ಕಣ್ಣನ್ನು ಮಾತ್ರ ಪರೀಕ್ಷಿಸಿದಾಗ ಕನ್ನಡಕದ ಮೇಲೆ ನಿಮ್ಮ ಕೈಯಿಂದ ಒಂದು ಕಣ್ಣನ್ನು ಮುಚ್ಚಿ.';

  @override
  String get skipAndProceedButton => 'ಸ್ಕಿಪ್ ಮಾಡಿ ಮತ್ತು ಸ್ಕ್ಯಾನ್ ಮಾಡಲು ಮುಂದುವರಿಯಿರಿ';

  @override
  String get proceedToScanButton => 'ಸ್ಕ್ಯಾನ್ ಮುಂದುವರಿಸಿ';

  @override
  String get eyeAssessmentSteps => 'ಹಂತಗಳು';

  @override
  String get eyeAssessmentStepOne => 'ಹಂತ 1 - ಕಣ್ಣು ಮೌಲಿಕ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get eyeAssessmentStepTwo => 'ಹಂತ 2 - ಕಣ್ಣು ಮೌಲಿಕ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get eyeAssessmentStepThree => 'ಹಂತ 3 - ಕಣ್ಣು ಮೌಲಿಕ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get eyeAssessmentOngoing => 'ಚಾಲ್ತಿಯಲ್ಲಿದೆ';

  @override
  String get eyeAssessmentCompleted => 'ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get eyeAssessmentPending => 'ಬಾಕಿಯಿದೆ';

  @override
  String get eyeAssessmentResults => 'ಮೌಲ್ಯಮಾಪನ ಫಲಿತಾಂಶಗಳು';

  @override
  String get eyeAssessmentCompleteSteps => 'ಫಲಿತಾಂಶಗಳನ್ನು ವೀಕ್ಷಿಸಲು ಎಲ್ಲಾ ಹಂತಗಳನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get eyeAssessmentToolTip => 'ದಯವಿಟ್ಟು ಫ್ಲ್ಯಾಷ್ ಅನ್ನು ಆಫ್ ಮಾಡಲಾಗಿದೆ ಮತ್ತು ಹೊಳಪನ್ನು 80% ಗೆ ಹೊಂದಿಸಲಾಗಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ';

  @override
  String get eyeScanInstructionOne => 'ಚೌಕಟ್ಟಿನ ಮೇಲೆ ಮುಖವನ್ನು ಸರಿಯಾಗಿ ಹೊಂದಿಕೊಳ್ಳಲು ಕ್ಯಾಮರಾವನ್ನು ಹಿಡಿದುಕೊಳ್ಳಿ.';

  @override
  String get eyeScanInstructionTwo => 'ನಿಮ್ಮ ಫೋನ್‌ನ ಹಿಂದಿನ ಕ್ಯಾಮೆರಾವನ್ನು ಬಳಸಿಕೊಂಡು ಕಣ್ಣುಗಳ ಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ.';

  @override
  String get eyeScanInstructionThree => 'ಫ್ಲ್ಯಾಶ್ ಆನ್‌ನೊಂದಿಗೆ ಚೆನ್ನಾಗಿ ಬೆಳಕಿರುವ​ ಪ್ರದೇಶದಲ್ಲಿ ಇರುವುದನ್ನು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get eyeScanInstructionFour => 'ಉತ್ತಮ ಸೆರೆಹಿಡಿಯುವಿಕೆ ಮತ್ತು ಸ್ಪಷ್ಟತೆಗಾಗಿ, ಚಿತ್ರವನ್ನು ಕ್ಲಿಕ್ ಮಾಡಲು ಬೆೇರೆಯವರ ಸಹಾಯವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ';

  @override
  String get eyeScanInstructionFive => 'ಚಿತ್ರವನ್ನು ತೆಗೆಯುವಾಗ ಒಂದು ಕಣ್ಣನ್ನು ನಿಮ್ಮ ಕೈಯಿಂದ ಮುಚ್ಚಿ ಮತ್ತು ಇನ್ನೊಂದು ಕಣ್ಣಿನಿಂದ ನೇರವಾಗಿ ಮುಂದೆ ನೋಡಿ.';

  @override
  String get eyeScanInstructionSix => 'ಚಿತ್ರವನ್ನು ಪ್ರಾರಂಭಿಸುವ ಮೊದಲು ಫಲಕದ ಒಳಗೆ ಕಣ್ಣನ್ನು ಕೇಂದ್ರೀಕರಿಸಿ.';

  @override
  String get eyeScanInstructionSeven => 'ಫ್ಲ್ಯಾಷ್ ಆಫ್ ಆಗುವವರೆಗೆ ಕಣ್ಣುಗಳನ್ನು ಅಗಲವಾಗಿ ತೆರೆದಿಡಿ, ಚಿತ್ರದ ಅಂತ್ಯವನ್ನು ಸೂಚಿಸುವ ವೇಳೆಗೆ \'ಬಿಪ್\' ಶಬ್ದವಾಗುವದು.';

  @override
  String get eyeAssessmentNote => 'ಗಮನಿಸಿ: ಇಲ್ಲಿ ತೋರಿಸಿರುವ ಚಿತ್ರಗಳು ಕೇವಲ ಸೂಚನೆಗಾಗಿ ಮಾತ್ರ. ನಿಜ ಜೀವನದಲ್ಲಿ ಅವು ಒಂದೇ ರೀತಿ ಕಾಣಿಸಿಕೊಳ್ಳದಿರಬಹುದು.';

  @override
  String get agreeButton => 'ನಾನು ಒಪ್ಪುತ್ತೇನೆ';

  @override
  String get consentPageCheckbox => 'ನಾನು ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳನ್ನು ಒಪ್ಪುತ್ತೇನೆ';

  @override
  String get confirmButton => 'ದೃಢೀಕರಿಸಿ';

  @override
  String get discardButton => 'ತಿರಸ್ಕರಿಸು';

  @override
  String get imageNotCapturedToastMessage => 'ಚಿತ್ರವನ್ನು ಸೆರೆಹಿಡಿಯಲಾಗಿಲ್ಲ';

  @override
  String get eyeCaptureCompletionDialogHeading => 'ಪರೀಕ್ಷೆ ಮುಗಿಯಿತು';

  @override
  String get eyeCaptureCompletionDialogBody => 'ನೀವು ಪರೀಕ್ಷೆಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ. ಫಲಿತಾಂಶವನ್ನು ವೀಕ್ಷಿಸಲು ದಯವಿಟ್ಟು ಕೆಳಗಿನ ಬಟನ್ ಮೇಲೆ ಕ್ಲಿಕ್ ಮಾಡಿ.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ಫಲಿತಾಂಶ ವೀಕ್ಷಿಸಿ';

  @override
  String get eyeCaptureTriageSavedLocally => 'ಚಿಕಿತ್ಸೆಯ ಸರದಿ ನಿರ್ಧಾರವನ್ನು ಸ್ಥಳೀಯವಾಗಿ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get visualAcuityTestResults => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆಯ ಪರೀಕ್ಷೆಯ ಫಲಿತಾಂಶಗಳು';

  @override
  String get assessmentResultPageMoreDetailsText => 'ಹೆಚ್ಚಿನ ವಿವರಗಳಿಗಾಗಿ ಹತ್ತಿರದ ದೃಷ್ಟಿ ಕೇಂದ್ರವನ್ನು ಭೇಟಿ ಮಾಡಿ. ನಮ್ಮ ದೃಷ್ಟಿ ತಂತ್ರಜ್ಞರೊಂದಿಗೆ ಮಾತನಾಡಲು ಟೋಲ್-ಫ್ರೀ ಸಂಖ್ಯೆಗೆ ಕರೆ ಮಾಡಿ.';

  @override
  String get assessmentReportButton => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನ ವರದಿ';

  @override
  String get notificationsTitle => 'ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get notificationsNotAvailable => 'ಯಾವುದೇ ಅಧಿಸೂಚನೆಗಳಿಲ್ಲ';

  @override
  String get servicesPatientCare => 'ರೋಗಿಗಳ ಆರೈಕೆ';

  @override
  String get reportAssessmentId => 'ಮೌಲ್ಯಮಾಪನ ID';

  @override
  String get reportDateAndTime => 'ದಿನಾಂಕ ಮತ್ತು ಸಮಯ';

  @override
  String get reportSeverityAbnormal => 'ತುರ್ತು ಸಲಹೆ';

  @override
  String get reportSeverityHigh => 'ಆರಂಭಿಕ ತಪಾಸಣೆ';

  @override
  String get reportSeverityLow => 'ದಿನಚರಿ ತಪಾಸಣೆ';

  @override
  String get reportDataUnavailable => 'ಯಾವುದೇ ಮಾಹಿತಿ ಇಲ್ಲ';

  @override
  String get reportTumblingTitle => 'ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆ - ಟಂಬ್ಲಿಂಗ್ ಇ';

  @override
  String get rightCornea => 'ಬಲ ಕಾರ್ನಿಯಾ';

  @override
  String get leftCornea => 'ಎಡ ಕಾರ್ನಿಯಾ';

  @override
  String get myProfileGeneralInfo => 'ಸಾಮಾನ್ಯ ಮಾಹಿತಿ';

  @override
  String get myProfileAge => 'ವಯಸ್ಸು';

  @override
  String get myProfileAddress => 'ವಿಳಾಸ';

  @override
  String get myProfileLine => 'ಸಾಲು';

  @override
  String get myProfileCity => 'ನಗರ';

  @override
  String get myProfileDistrict => 'ಜಿಲ್ಲೆ';

  @override
  String get myProfileState => 'ರಾಜ್ಯ';

  @override
  String get myProfilePinCode => 'ಪಿನ್ ಕೋಡ್';

  @override
  String get submitButton => 'ಸಲ್ಲಿಸು';

  @override
  String get swipeGestureError => 'ತಪ್ಪಾದ ಸ್ವೈಪ್! ದಯವಿಟ್ಟು ಪುನಃ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get swipeGestureCardText => 'ಚಿಹ್ನೆಯ ದಿಕ್ಕಿನಲ್ಲಿ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get assessmentResultCardAssessmentQuestions => 'ಮೌಲ್ಯಮಾಪನ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get assessmentResultCardAcuityTest => 'ತೀಕ್ಷ್ಣತೆ ಪರೀಕ್ಷೆ';

  @override
  String get assessmentResultCardEyeScan => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್';

  @override
  String get viewReportButton => 'ವರದಿಯನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get updateButton => 'ನವೀಕರಿಸಿ';

  @override
  String get assessmentCardUrgentConsult => 'ತುರ್ತು ಸಲಹೆ';

  @override
  String get assessmentCardRoutineCheckUp => 'ದಿನಚರಿ ತಪಾಸಣೆ';

  @override
  String get assessmentCardEarlyCheckUp => 'ಆರಂಭಿಕ ತಪಾಸಣೆ';

  @override
  String get testAgainButton => 'ಮತ್ತೊಮ್ಮೆ ಪರೀಕ್ಷಿಸು';

  @override
  String get homeButton => 'ಹೋಮ್';

  @override
  String get homeTriageCardTitle => 'ನಮ್ಮ ಕಣ್ಣುಗಳು ಅತ್ಯಮೂಲ್ಯ ಆಸ್ತಿ.';

  @override
  String get homeTriageCardDescription => 'ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ತಡೆಗಟ್ಟಲು ಅವುಗಳನ್ನು ಸಮಯಕ್ಕೆ ಪರೀಕ್ಷಿಸಿ.';

  @override
  String get homeTriageCardTest => 'ಕಣ್ಣಿನ ಪರೀಕ್ಷೆಯನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get homeHelplineCardDescrition => 'ಅಚಾನಕ ದೃಷ್ಟಿ ನಷ್ಟದ ಸಂದರ್ಭದಲ್ಲಿ, ಈ ತುರ್ತು ಸಹಾಯವಾಣಿಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get inviteCardTitle => 'ಇತರರನ್ನು ಆಹ್ವಾನಿಸಿ';

  @override
  String get inviteCardDescription => '5 ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬ ಸದಸ್ಯರನ್ನು ಆಹ್ವಾನಿಸಿ ಇದರಿಂದ ಅವರು ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಮೌಲ್ಯಮಾಪನ ಮಾಡಬಹುದು ಮತ್ತು ಭವಿಷ್ಯದಲ್ಲಿ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ತಡೆಯಬಹುದು.';

  @override
  String get inviteCardInvitation => 'ಈಗಲೆ ಆಹ್ವಾನಿಸಿ';

  @override
  String get partnerCardTitle => 'ಪಾಲುದಾರ';

  @override
  String get languageSelection => 'ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get profileTitle => 'ಪ್ರೊಫೈಲ್';

  @override
  String get eyeAssessmentEnterLabel => 'ಇಲ್ಲಿ ನಮೂದಿಸಿ';

  @override
  String get profilePageAddressDetails => 'ವಿಳಾಸ ವಿವರಗಳು';

  @override
  String get profilePaeCheckReports => 'ನಿಮ್ಮ ವರದಿಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get bottomNavItemEyeTest => 'ಕಣ್ಣಿನ ಪರೀಕ್ಷೆ';

  @override
  String get bottomNavItemAppointment => 'ನೇಮಕಾತಿಗಳು';

  @override
  String get memberSelection => 'ಸದಸ್ಯರನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';

  @override
  String get triageAlerDialogBoxTitle => 'ಮತ್ತೆಮಾಡಲು ಹಂತಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get scannerTitle => 'ಸ್ಕ್ಯಾನರ್';

  @override
  String get visualAcuityTestDistanceInstruction => 'ಕ್ಯಾಮರಾವನ್ನು ಕಣ್ಣಿನಿಂದ 40 ಸೆಂ.ಮೀ ದೂರದಲ್ಲಿ ಇರಿಸಿ.';

  @override
  String get somethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ.';

  @override
  String get triageUpdatedSuccessfully => 'ಚಿಕಿತ್ಸೆಯ ಸರದಿ ನಿರ್ಧಾರವನ್ನು ಯಶಸ್ವಿಯಾಗಿ ನವೀಕರಿಸಲಾಗಿದೆ.';

  @override
  String get noPreviewAvailable => 'ಯಾವುದೇ ಮುನ್ನೋಟ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get privacyPolicyTitle => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಡೇಟಾ ರಕ್ಷಣೆ';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'ಕೆಳಗಿನ ಉದ್ದೇಶಗಳಿಗಾಗಿ ನೀವು ಒದಗಿಸಿದ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ನಾವು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುತ್ತೇವೆ:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'ನೀವು ಕ್ಯಾಮರಾಕ್ಕೆ ತುಂಬಾ ಹತ್ತಿರವಾಗಿದ್ದೀರಿ, ಕ್ಯಾಮರಾವನ್ನು ಕಣ್ಣಿನಿಂದ 40cm ದೂರದಲ್ಲಿ ಇರಿಸಿ.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'ನೀವು ಕ್ಯಾಮರಾದಿಂದ ತುಂಬಾ ದೂರದಲ್ಲಿದ್ದೀರಿ, ಕ್ಯಾಮರಾವನ್ನು ಕಣ್ಣಿನಿಂದ 40cm ದೂರದಲ್ಲಿ ಇರಿಸಿ.';

  @override
  String get myProfileABHAID => 'ABHA ಐಡಿ';

  @override
  String get myProfileEmail => 'ಇಮೇಲ್';

  @override
  String get viewHistoryButton => 'ಇತಿಹಾಸವನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get profilePagePersonalDetails => 'ವೈಯಕ್ತಿಕ ವಿವರಗಳು';

  @override
  String get profilePageDateOfBirth => 'ಹುಟ್ತಿದ ದಿನ';

  @override
  String get profilePageGender => 'ಲಿಂಗ';

  @override
  String get profilePageMobile => 'ಮೊಬೈಲ್';

  @override
  String get profilePageHealthCardTitle => 'ಆರೋಗ್ಯ ಕಾರ್ಡ್';

  @override
  String get appointmentTitle => 'ನೇಮಕಾತಿಗಳು';

  @override
  String get appointmentSubtitle => 'ಎಲ್ಲಾ ನೇಮಕಾತಿಗಳು';

  @override
  String get eyeBoxText => 'Please adjust and position the image until green boxes appear around the eyes. Move the eye closer and ensure that 40% of the box is covered by the eye.';

  @override
  String get bottomNavItemServices => 'Services';

  @override
  String get smsContent => 'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hand. Get it now: https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'Prioritize your eye health with SightConnect App!';

  @override
  String get recentServicesCataractEyeTest => 'Cataract Eye Test';

  @override
  String get recentServicesRedEyeTest => 'Red Eye Test';
}
