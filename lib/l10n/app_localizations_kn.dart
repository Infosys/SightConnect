import 'app_localizations.dart';

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current ರಲ್ಲಿ $total';
  }

  @override
  String get questionnaireTitle => 'ಕಣ್ಣು ಮೌಲ್ಯಮಾಪನ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get questionnaireExitDialog => 'ಈ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸುವುದರಿಂದ ನಿಮ್ಮ ಕಣ್ಣು ಸಮಸ್ಯೆಗಳನ್ನು ಗುರುತಿಸುವಲ್ಲಿ ಸಹಾಯವಾಗುತ್ತದೆ. ನೀವು ನಿರ್ಗಮಿಸಲು ನಿರ್ಧರಿಸಿದ್ದೀರಾ?';

  @override
  String get visualAcuityTitle => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ';

  @override
  String get visualAcuityDescription => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ ಒಂದು ಕಣ್ಣು ಅಕ್ಷರದ ವಿವರಗಳನ್ನು ನೇರವಾಗಿ ದೂರದಿಂದ ನೀವು ಹೇಗೆ ನೋಡುತ್ತೀರೋ ಅದನ್ನು ಪರೀಕ್ಷಿಸುತ್ತದೆ. ಈ ತುರ್ತು ಪರೀಕ್ಷೆಯನ್ನು ಈಗ ಮಾಡಿ!';

  @override
  String get visualAcuityHowToPerform => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆಯನ್ನು ಹೇಗೆ ಮಾಡಬೇಕು?';

  @override
  String get visualAcuityViewStepsToPerform => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ ನಡೆಸುವ ಹಂತಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get visualAcuityCompletionDialog => 'ಮುಗಿಯಿತು! ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ ಎರಡು ಕಣ್ಣುಗಳಿಗೆ ಮುಗಿಯಿತು. ನೀವು ನಿಮ್ಮ ಕಣ್ಣು ಫೋಟೋಗಳನ್ನು ಹೊಂದಿಸಬೇಕಾಗಿದೆ.';

  @override
  String get visualAcuityExitDialog => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ ನಿಮ್ಮ ಕಣ್ಣು ಸಮಸ್ಯೆಗಳ ಬಗ್ಗೆ ಹೆಚ್ಚಿನ ಮಾಹಿತಿಯನ್ನು ಗಮನಿಸಲು ಸಹಾಯಕವಾಗಿದೆ. ನೀವು ನಿರ್ಗಮಿಸಲು ನಿರ್ಧರಿಸಿದ್ದೀರಾ?';

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
  String get bothEyeString => 'ಎರಡೂ ಕಣ್ಣು';

  @override
  String get visualAcuityLeftEyeHeader => 'ಪರೀಕ್ಷೆ 2 - ಎಡ ಕಣ್ಣು';

  @override
  String get visualAcuityLeftEyeInstructions => 'ಕಣ್ಣುಗುಟ್ಟದೇ ನೀವು ನಿಮ್ಮ ಎಡ ಕಣ್ಣನ್ನು ನಿಮ್ಮ ಕೈಯಿಂದ ಮುಚ್ಚಬೇಕು. ನೀವು ಸಂಗ್ಲಾಸುಗಳನ್ನು ಧರಿಸುತ್ತೀರಿದ್ದರೆ ಅವುಗಳ ಮೇಲೆ ನಿಮ್ಮ ಕೈಯನ್ನು ಇಟ್ಟಿರಿ.';

  @override
  String get visualAcuityRightEyeHeader => 'ಪರೀಕ್ಷೆ 1 - ಬಲ ಕಣ್ಣು';

  @override
  String get visualAcuityRightEyeInstructions => 'ಕಣ್ಣುಗುಟ್ಟದೇ ನೀವು ನಿಮ್ಮ ಬಲ ಕಣ್ಣನ್ನು ನಿಮ್ಮ ಕೈಯಿಂದ ಮುಚ್ಚಬೇಕು. ನೀವು ಸಂಗ್ಲಾಸುಗಳನ್ನು ಧರಿಸುತ್ತೀರಿದ್ದರೆ ಅವುಗಳ ಮೇಲೆ ನಿಮ್ಮ ಕೈಯನ್ನು ಇಟ್ಟಿರಿ.';

  @override
  String get visualAcuityBothEyeHeader => 'ಪರೀಕ್ಷೆ 3 - ಎರಡೂ ಕಣ್ಣು';

  @override
  String get visualAcuityBothEyeInstructions => 'ನಿಮ್ಮ ಕಣ್ಣುಗಳಲ್ಲಿ ಯಾವುದನ್ನೂ ಮುಚ್ಚಬೇಡಿರಿ ಮತ್ತು ಎರಡೂ ಕಣ್ಣುಗಳಿಂದ ಬರುವ ಚಿಹ್ನೆಗಳನ್ನು ನೋಡಿ.';

  @override
  String get overlayHeaderDirection => 'ದಿಶಾನುಸರಣೆ';

  @override
  String get overlayDescription => 'ಇಲ್ಲಿ ಪ್ರತಿ ಚಿಹ್ನೆಗಾಗಿ ಮಾರ್ಗದ ಅರ್ಥವನ್ನು ನೀವು ಹೇಗೆ ಗೊತ್ತಿಸಬೇಕು ಎನ್ನುವುದು ಹೇಗಿದೆ.';

  @override
  String get overlaySymbolDirectionText => 'ಚಿಹ್ನೆ ದಿಶಾನುಸರಣೆ :';

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
  String get visualAcuityCarouselTitle => 'ದೃಷ್ಟಿ ಯೋಗ್ಯತೆ ಪರೀಕ್ಷೆ ನಡೆಸುವ ಹಂತಗಳು';

  @override
  String get eyeScanTitle => 'ಕಣ್ಣು ಸ್ಕ್ಯಾನ್';

  @override
  String get eyeScanDescription => 'ನೀವು ಸಮೀಪಿಸಿದ್ದೀರಿ! ಇನ್ನೊಂದು ಪರೀಕ್ಷೆಗಾಗಿ ನಿಮ್ಮ ಕಣ್ಣುಗಳ ಫೋಟೋಗಳನ್ನು ಎತ್ತಿರಿ.';

  @override
  String get eyeScanHowToPerform => 'ಕಣ್ಣುಗಳನ್ನು ಹೇಗೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಬೇಕು?';

  @override
  String get eyeScanViewStepsToPerform => 'ಕಣ್ಣುಗಳನ್ನು ಹೇಗೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಬೇಕು ಎಂಬ ಹಂತಗಳನ್ನು ನೋಡಿ';

  @override
  String get eyeScanExitDialog => 'ಕಣ್ಣು ಸ್ಕ್ಯಾನ್ ನಿಮ್ಮ ಕಣ್ಣು ಸಮಸ್ಯೆಗೆ ಹೆಚ್ಚು ತಿಳಿಯಲು ಸಹಾಯಕವಾಗುತ್ತದೆ. ನೀವು ನಿಜವಾಗಿಯೇ ನಿರ್ಗಮಿಸಬೇಕೆಂದು ಇಚ್ಛಿಸುತ್ತೀರಾ?';

  @override
  String get captureRightEyeString => 'ಬಲ ಕಣ್ಣನ್ನು ಹಿಡಿಯಿರಿ';

  @override
  String get captureLeftEyeString => 'ಎಡ ಕಣ್ಣನ್ನು ಹಿಡಿಯಿರಿ';

  @override
  String get skipButton => 'ವಿರಮಿಸು';

  @override
  String get startTestText => 'ಪ್ರಾರಂಭಿಸು';

  @override
  String get continueButton => 'ಮುಂದುವರಿಸು';

  @override
  String get startButton => 'ಆರಂಭಿಸು';

  @override
  String get nextButton => 'ಮುಂದು';

  @override
  String get proceedButton => 'ಮುಂದುವರಿಸು';

  @override
  String get yesButton => 'ಹೌದು';

  @override
  String get noButton => 'ಇಲ್ಲ';

  @override
  String get exitButton => 'ನಿರ್ಗಮಿಸು';

  @override
  String get okButton => 'ಸರಿ';

  @override
  String get knowMoreButton => 'ಇನ್ನಷ್ಟು ತಿಳಿಯಿರಿ';

  @override
  String get seeAllButton => 'ಎಲ್ಲಾ ನೋಡು';

  @override
  String get tryAgainButton => 'ಮತ್ತೊಮ್ಮೆ ಪ್ರಯಾಸಿಸಿ';

  @override
  String get shareNowButton => 'ಈಗ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get retryButton => 'ಮತ್ತೊಮ್ಮೆ ಪ್ರಯಾಸಿಸಿ';

  @override
  String get homeCarousal1Title => 'ಕ್ಯಾಟರ್ಯಾಕ್ಟ್ ಪ್ರಸಾರ ಮತ್ತು ಅದರ ಸಂಬಂಧಿತ ಅಂಶಗಳು ಮೇಲಿನ 40 ವರ್ಷ ಮತ್ತು ಅದರ ಮೇಲೆಯೇ';

  @override
  String get homeCarousal1Description => 'ಕ್ಯಾಟರ್ಯಾಕ್ಟ್ ಮತ್ತು ಸಂಬಂಧಿತ ಅಂಶಗಳ ಪ್ರಸಾರದ ಬಗ್ಗೆ ನಮಗೆ ಸಾಂಕೇತಿಕ ಪ್ರದರ್ಶನ';

  @override
  String get homeCarousal2Title => 'ಮಿಸ್ ಮಾಡಬಾರದ 7 ಕಣ್ಣೀರು ಸಮಸ್ಯೆಗಳು!';

  @override
  String get homeCarousal2Description => '\nಪರೀಕ್ಷಿಸಬೇಕಾದ 7 ಕಣ್ಣೀರು ಸಮಸ್ಯೆಗಳು: \n \n• ಕಣ್ಣಿನ ಕೆಂಪುತ್ತಿಯಲ್ಲ\n• ಕಣ್ಣೀರಿನ ಹೊರಗೆ ನೀರಾವರಣ\n• ಕಣ್ಣೀರಿನ ಮುತ್ತುಗಳ ಮೇಲೆ ಬೆಳೆಹಿಡಿತಗಳು';

  @override
  String get homeCarousal3Title => 'ಕಣ್ಣು ಸಮಸ್ಯೆಗಳು. ನೀವು ನೋಡಲಾರದುವುಗಳು ಬಹುತೇಕ';

  @override
  String get homeCarousal3Description => 'ಆದರೆ ದೃಷ್ಟಿ ಸಂರಕ್ಷಣ ವಿಶೇಷಜ್ಞರು ಬಹುತೇಕವನ್ನು ನೋಡಬಹುದು.\nಕಣ್ಣು ಸಮಸ್ಯೆಗಳನ್ನು ಹೇಗೆ ಗುರುತಿಸಬೇಕು ಮತ್ತು ಮುಂದುವರೆಸಬೇಕು ಎಂದು ವೇಳಿಗೆ ತಡೆಗಟ್ಟಬೇಕು';

  @override
  String get myConnectionsTitle => 'ನನ್ನ ಸದಸ್ಯರು';

  @override
  String get myConnectionsAddMember => 'ಸದಸ್ಯ ಸೇರಿಸು';

  @override
  String get myConnectionsServiceNotAvailable => 'ಸೇವೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get myConnectionsAdd => 'ಸೇರಿಸು';

  @override
  String get recentServicesTitle => 'ನನ್ನ ಇತ್ತೀಚಿನ ಸೇವೆಗಳು';

  @override
  String get recentServicesEyeAssessment => 'ಕಣ್ಣೀರು ಮೌಲಿಕತಾ ಪರೀಕ್ಷೆ';

  @override
  String get recentServicesVisualAcuityTest => 'ದೃಷ್ಟಿ ಪ್ರಾಮಾಣ ಪರೀಕ್ಷೆ';

  @override
  String get nearbyVisionCentersTitle => 'ಹತ್ತಿರದ ದೃಷ್ಟಿ ಕೇಂದ್ರಗಳು';

  @override
  String get nearbyVisionCentersNotFound => 'ದೃಷ್ಟಿ ಕೇಂದ್ರಗಳು ಕಂಡುಬರುವುದಿಲ್ಲ';

  @override
  String get tollFreeNumber => 'ಶುಲ್ಕ ಮುಕ್ತ ಸಂಖ್ಯೆ';

  @override
  String get appDrawerTitle => 'ಮೆನು';

  @override
  String get appDrawerLanguageSelection => 'ಭಾಷೆಯ ಆಯ್ಕೆ';

  @override
  String get appDrawerAccessibility => 'ಪ್ರವೇಶಿಸುವಿಕೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get appDrawerHome => 'ಹೋಮ್';

  @override
  String get appDrawerMyProfile => 'ನನ್ನ ಪ್ರೊಫೈಲ್';

  @override
  String get appDrawerAssessmentsAndTests => 'ಮೌಲಿಕತಾ ಮತ್ತು ಪರೀಕ್ಷೆಗಳು';

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
  String get aboutUsDescription => 'ಸೈಟ್‌ಕನೆಕ್ಟ್ ಸ್ವಯಂ-ಮೌಲಿಕತಾ ಮತ್ತು ಕಾಲದಲ್ಲಿ ಸಲಹೆ ನೀಡುವ ಬೆಳಕು ಸೇವೆಗಳೊಂದಿಗೆ ಸಹಾಯ ಮಾಡುವ ಸುಲಭ ಕಣ್ಣೀರು ಸೇವೆ ಆಗಿದೆ.\n\nನಮ್ಮ ಉದ್ದೇಶದ ಮಧ್ಯೆಯೇ ನಾವು ಎಲ್ಲರಿಗೂ ದೃಷ್ಟಿ ಸಂರಕ್ಷಣೆ ಲಭ್ಯವಿರಬೇಕೆಂಬ ನಿಷ್ಠೆಯಿದೆ. ಈ ಅಪ್ಲಿಕೇಶನ್ ಎಲ್ಲ ಜೀವನದ ನಡುವೆಯೂ ಬಳಸಲು ಡಿಜೈನ್ ಮಾಡಲಾಗಿದೆ, ಯಾವುದೇ ವಯಸ್ಸು, ತಾಂತ್ರಿಕ ಹಿನ್ನೆಲೆ, ಮತ್ತು ಸಾಮಾಜಿಕ ಅಥವಾ ಆರ್ಥಿಕ ಹಿನ್ನೆಲೆಯಿಂದಲೂ ಬಳಸಲು ಯೋಗ್ಯವಾಗಿದೆ. ಈ ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರ ವಿಷಯಸ್ವಲ್ಪವನ್ನು ಇಂಗ್ಲಿಷ್ ಮತ್ತು ಇತರ ಸ್ಥಳೀಯ ಭಾಷೆಗಳಲ್ಲಿ ಲಭ್ಯವಿದೆ. ಇದು ಬಳಸುಗರನ್ನು ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ವಯಂ-ಮೌಲಿಕತಾ ಮಾಡಲು ಮತ್ತು ಕಾಲದಲ್ಲಿ ಚಿಕಿತ್ಸೆ ಸಲಹೆ ಪಡೆಯಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ. ಈ ಅಪ್ಲಿಕೇಶನ್ ನಮ್ಮ ಬಳಕೆದಾರರಿಗೆ ವೈಯಕ್ತಿಕ ಕಣ್ಣೀರು ಸೇವೆಗಳನ್ನು ಒದಗಿಸಲು ಕೊಡುವಂತೆ ಸಮಗೊಳಿಸಲು ಕೊಡುತ್ತದೆ. ಇದು ಅವರ ಜೀವನವನ್ನು ಸುಲಭಗೊಳಿಸಲು ವಿವಿಧ ಅಂಶಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.';

  @override
  String get aboutUsFeaturesTitle => 'ವಿಶೇಷಗಳು';

  @override
  String get aboutUsFeaturesDescription => 'ಅಪ್ಲಿಕೇಶನ್ ನಲ್ಲಿ ಕಣ್ಣು ಪರೀಕ್ಷೆ: ಈ ಅಪ್ಲಿಕೇಶನ್ ಬಳಸುತ್ತದೆ, ಅದರ ಬಳಕೆದಾರರು ಕೆಲವು ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸುವುದರಿಂದ ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ವಯಂ ಅಳೆದುಕೊಳ್ಳಬಹುದು ಮತ್ತು ಮುಂದಿನ ಹೆಜ್ಜೆಗಳ ಮೇಲೆ ಹುಲಿಯುವ ದಾಖಲೆಗಳು ಮತ್ತು ಭೇಟಿಯಾದ ಡಾಕ್ಟರ್ಗೆ ಸೂಚಿಸಲು ಅನುಮತಿಸುತ್ತದೆ. ಬಳಕೆದಾರರ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದವರೂ ಸುಲಭವಾಗಿ ಲಾಭಿಸಬಹುದು. | ಸಂದರ್ಶನ ಬುಕ್ ಮಾಡುವುದು: ಬಳಕೆದಾರರು ನಿಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಡಯಾಗ್ನೋಸಿಸ್ ಮಾಡಲು ಆನ್ಲೈನ್ ಟೆಲಿಕನ್ಸಲ್ಟೇಷನ್ ಮತ್ತು ಕ್ಲಿನಿಕ್ ಭೇಟಿಗಳನ್ನು ಬುಕ್ ಮಾಡಬಹುದು. | IVR ಕಾಲ್ ಸೇವೆಗಳು: ನಮ್ಮ IVR ಕಾಲ್ ಸೇವೆಗಳು ಇಂಗ್ಲಿಷ್ ಮತ್ತು ಸ್ಥಳಿಕ ಭಾಷೆಗಳಲ್ಲಿ ಲಭ್ಯವಿದೆ ಮತ್ತು ಅದು ಅನುಕೂಲ ಫೀಚರ್ ಫೋನ್ಗಳುಳ್ಳ ಬಳಕೆದಾರರಿಗೂ ಸೇವೆ ಮಾಡುತ್ತದೆ. ಬಳಕೆದಾರರು ಅತ್ಯಾವಶ್ಯಕ ಸಮಯದಲ್ಲಿ ತಕ್ಷಣ ಸಹಾಯವನ್ನು ಬೇಡಲು ಅಥವಾ ಯಾವುದೇ ಕಣ್ಣು ಸಂಬಂಧಿತ ಸಮಸ್ಯೆಗಳಿಗಾಗಿ ನಮ್ಮ ಕಣ್ಣು ಆರೋಗ್ಯ ವಿಶೇಷಜ್ಞರನ್ನು ಡಯಲ್ ಮಾಡಬಹುದು. ಅವರು ಸಮಯ ವೇಳೆಯಲ್ಲಿ ಯಾವುದೇ ಹೆಚ್ಚಿನ ವಿವರಣೆಗಾಗಿ ಅಥವಾ ಬುಕ್ ಮಾಡಲು ಕರೆಯಬಹುದು. | ಹತ್ತಿರದ ಕ್ಲಿನಿಕಲ್ಸ್: ಬಳಕೆದಾರರು ತಮ್ಮ ಹತ್ತಿರದ ಕಣ್ಣು ಆರೋಗ್ಯ ಕ್ಲಿನಿಕಲ್ಸ್ ಗಳನ್ನು ಹುಡುಕಬಹುದು. | ಪ್ರೆಸ್ಕ್ರಿಪ್ಷನ್ಸ್ ಮತ್ತು ವರದಿಗಳು: ಬಳಕೆದಾರರ ಎಲ್ಲಾ ಪ್ರೆಸ್ಕ್ರಿಪ್ಷನ್ಸ್ ಮತ್ತು ವರದಿಗಳನ್ನು ಹೊಂದಿಸಬಹುದು ಹೊರಗಿನ ತುಮುಲಗಳಿಲ್ಲ. | ಕಣ್ಣು ಶಿಬಿರಗಳು: ಬಳಕೆದಾರರು ತಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದವರ ಕಣ್ಣುಗಳನ್ನು ಉಚಿತವಾಗಿ ಪರೀಕ್ಷಿಸಲು ಹತ್ತಿರದ ಕಣ್ಣು ಶಿಬಿರಗಳ ಬಗ್ಗೆ ಮಾಹಿತಿ ಪಡೆಯಬಹುದು. | ಅಲರ್ಟ್ಸ್ ಮತ್ತು ಅಲರ್ಟ್ಗಳು: ಬಳಕೆದಾರರು ತಮ್ಮ ಸಮಾಗಮ ಅಪ್ವಾಯಿಂಟ್ಗಳು, ಔಷಧಿ, ವರದಿಗಳ ಬಗ್ಗೆ ಸಮಯದಲ್ಲಿ ಅಲರ್ಟ್ಗಳು ಮತ್ತು ಅಲರ್ಟ್ಗಳನ್ನು ಪಡೆಯಬಹುದು. | ಹಂಚಿಕೊಳ್ಳುವುದು: ಬಳಕೆದಾರರು ಈ ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರಲ್ಲಿ ನೀಡಲಾದ ಉಪಯುಕ್ತ ಮಾಹಿತಿಯನ್ನು ತಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದವರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಬಹುದು. ';

  @override
  String get aboutUsConclusion => 'ಈ ಅಪ್ಲಿಕೇಶನ್ ನಮ್ಮ ಬಳಕೆದಾರ ಸಮುದಾಯಕ್ಕೆ ಉತ್ತಮವಾಗಿ ಸೇವೆ ಮಾಡಲು ಪ್ರಮುಖ ಕಣ್ಣು ಆರೋಗ್ಯ ವಿಶೇಷಜ್ಞರ ಸಹಾಯದಿಂದ ಬೆಳೆಯಿತು. ನಮ್ಮ ಹಿನ್ನೆಲೆಯನ್ನು ಉಜ್ವಲವಾಗಿ ಹೊಂದಲು ನಮ್ಮ ಕಾರ್ಯದಲ್ಲಿ ನಮ್ಮೊಂದಿಗೆ ಸೇರಿ. ಇಂದು Sightconnect ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಮತ್ತು ಹಂಚಿಕೊಳ್ಳಿ!';

  @override
  String get privacyPolicyDescription => 'ಎಲ್ವಿ ಪ್ರಸಾದ್ ಕಣ್ಣೀರು ಇನ್ಸ್ಟಿಟ್ಯೂಟ್, ಅದರ ಸಹಕಾರಿ ಸಂಘಗಳು ಮತ್ತು ಸಂಬಂಧಿತ ಕಂಪನಿಗಳು (ಒಟ್ಟುಗೂಡಿಸಿ “LVPEI”, “ನಾವು”, “ನಾವು”) ನಿಮ್ಮ ಪ್ರಾದೇಶದ ಕಾನೂನುಗಳ ಪ್ರಕಾರ ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾಗಳನ್ನು ಪ್ರಕ್ರಿಯಿಸಲು ನಿರಂತರವಾಗಿ ನಿರ್ಧರಿಸಿದ್ದಾರೆ. ನಾವು ಈಗಿನಗಾಗಲೇ ನಿಮಗೆ ವೈಯಕ್ತಿಕ ಡೇಟಾಗಳ ಪ್ರಕ್ರಿಯಣೆಯ ಬಗ್ಗೆ ಕೆಳಗಿನ ಮಾಹಿತಿಯನ್ನು ಅಧಿಸೂಚಿಸಿದ್ದೇವೆ.';

  @override
  String get privacyPolicyPersonalDataTitle => 'ಸ್ವಕೀಯ ಡೇಟಾ ಆತಂಕಗೊಳಿಸಲು ಹೊರಡುವ ವ್ಯಕ್ತಿಗಳು/ಪ್ರಕ್ರಿಯಿಸುವ ವ್ಯಕ್ತಿಗಳು:';

  @override
  String get privacyPolicyPersonalDataDescription => 'ನೀವು ಮತ್ತು ನಿಮ್ಮ ಸಂಪರ್ಕಗಳ ವ್ಯಕ್ತಿಗತ ಡೇಟಾ ಹೀಗೆ ಇದೆ (ಇವುಗಲ್ಲದೆ ಕೆಲವು ಡೇಟಾ ಐಚ್ಛಿಕವಾಗಿರಬಹುತು): ಮೊಬೈಲ್ ಸಂಖ್ಯೆ, ಹೆಸರು, ಹುಟ್ಟಿದ ದಿನಾಂಕ, ಲಿಂಗ (ಪುರುಷ/ಸ್ತ್ರೀ), ವಿಳಾಸ (ಪಿನ್ ಕೋಡ್), ರೋಗಿ ಐಡಿ, ಸಂಪರ್ಕ, ಕಣ್ಣೀರು ಗುಣಮುಖ ಪ್ರಶ್ನೋತ್ತರ ಸಂಕೇತಗಳು, ಕಣ್ಣೀರು ಗುಣಮುಖ ವರದಿ, ಕಣ್ಣೀರು ಚಿತ್ರಗಳು, ನಿಮ್ಮ ಕಣ್ಣು ಚಿತ್ರದ ವಿರುದ್ಧವಾಗಿ ಸೂಚಿಸಿದ ಲಕ್ಷಣಗಳು, ಫೋಟೋಗ್ರಾಫ್, ವಿಳಾಸ ವಿವರಗಳು ಹೀಗೆ ವಿಳಾಸ, ಜಿಲ್ಲೆ ಹೆಸರು (ಜಿಲ್ಲಾ ಕೋಡ್ ಅನ್ನು ಹೆಚ್ಚಳಿಸಿ), ಸ್ಥಿತಿ ಹೆಸರು (ಸ್ಥಿತಿ ಕೋಡ್ ಅನ್ನು ಹೆಚ್ಚಳಿಸಿ), ಉಪ ಜಿಲ್ಲೆ ಹೆಸರು, ಗ್ರಾಮ ಹೆಸರು, ನಗರ ಹೆಸರು, ಇಮೇಲ್ ವಿಳಾಸ, ಕೊನೆಯ ಹೆಸರು, ಮಧ್ಯದ ಹೆಸರು, ರಕ್ತ ಗುಂಪ, ಉದ್ಯೋಗ, ಅಬಹ ವಿವರಗಳು (ನೀವು ನೀಡಿದಂತೆ), ನಿಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ಅನುಮತಿಗಳ ಆಧಾರದ ಮೇಲೆ ಕ್ಯಾಮೆರಾ, GPS ಸ್ಥಾನ, ಅಪ್ಲಿಕೇಶನ್ ಅನುಮತಿಗಾಗಿ ಗ್ಯಾಲರಿ, ಪೂರ್ ನೆಟ್ವರ್ಕ್ ಅನುಮತಿ, ನೆಟ್ವರ್ಕ್ ಸಂಪರ್ಕಗಳು, ಸಾಧನದ ಮಾಹಿತಿ ಹೀಗೆ.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'ಪ್ರಕ್ರಿಯಣೆಯ ಉದ್ದೇಶಗಳು: ನೀವು ನೀಡಿದ ವ್ಯಕ್ತಿಗತ ಡೇಟಾವನ್ನು ನಾವು ಕೆಳಗಿನ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಪ್ರಕ್ರಿಯಿಸುತ್ತೇವೆ:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'ನಿಮಗೆ ಮತ್ತು ನಿಮ್ಮ ಸಂಪರ್ಕಗಳಿಗೆ (ನೀವು ಒದಗಿಸಿದಂತೆ) ನೇತ್ರ ಸಂಬಂಧಿತ ಆನ್‌ಲೈನ್ ಆರೋಗ್ಯ ಪರೀಕ್ಷೆಗಾಗಿ ನಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರ ವೈಶಿಷ್ಟ್ಯಗಳಿಗೆ ನೀವು ಪ್ರವೇಶಿಸಲು ಅನುಮತಿಸಲು.|ನೀವು ಯಾವುದೇ ನೇತ್ರ ಸಂಬಂಧಿತ ಅನಾರೋಗ್ಯ/ಆರೋಗ್ಯ ಸಮಸ್ಯೆಗಳಿದ್ದಲ್ಲಿ LVPEI ಅಡಿಯಲ್ಲಿರುವ ದೃಷ್ಟಿ ತಂತ್ರಜ್ಞರು, ಕಣ್ಣಿನ ವೈದ್ಯರೊಂದಿಗೆ ಸಂಪರ್ಕಿಸಲು ನೀವು ಸಕ್ಷಮವಾಗಲು.|ನಿಮ್ಮ ಆರೋಗ್ಯ ಸಲಹೆ ಮತ್ತು ನಿದಾನದ ಭಾಗವಾಗಿ ಯಾವುದೇ ನೇತ್ರ ಆರೋಗ್ಯ-ಸಂಬಂಧಿತ ಡೇಟಾವನ್ನು (ವರದಿಗಳು ಸೇರಿದಂತೆ) ಒದಗಿಸುವುದಕ್ಕೆ ಮತ್ತು ಆರೋಗ್ಯ-ಸಂಬಂಧಿತ ಚಿಂತೆಗಳ ಭಾಗವಾಗಿ ನಿಮ್ಮನ್ನು ಅಥವಾ ನಿಮ್ಮ ಸಂಪರ್ಕಗಳನ್ನು ಸಂಪರ್ಕಿಸಲು.|ನಿಮ್ಮ ನೇತ್ರ ಆರೋಗ್ಯ ಡೇಟಾವನ್ನು ನಮ್ಮ ಅಧಿಕೃತ LVPEI ಕಣ್ಣಿನ ವೈದ್ಯರು/ಡಾಕ್ಟರುಗಳೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಲು ಮತ್ತು ನೀವು LVPEI ವೈದ್ಯರನ್ನು ಚಿಕಿತ್ಸೆಗಾಗಿ ಸಂಪರ್ಕಿಸಲು ಅಸಮರ್ಥರಾದರೆ ಗ್ರಾಮ ಮುಖ್ಯಸ್ಥ/ಮೇಯರ್ ಇತ್ಯಾದಿಗಳೊಂದಿಗೆ (ನಿಮ್ಮ GPS ಸ್ಥಳಾವಕಾಶದ ಆಧಾರದಲ್ಲಿ ಅನ್ವಯಿಸುವಂತೆ) ಅವುಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ನೇತ್ರ ಸಮಸ್ಯೆಯ ಗಾಂಭೀರ್ಯದ ಆಧಾರದ ಮೇಲೆ.|LVPEI ಜೊತೆಗೂಡಿದ ಕಣ್ಣಿನ ಕ್ಲಿನಿಕ್‌ಗಳು/ಆಸ್ಪತ್ರೆಗಳ ಪಟ್ಟಿಯನ್ನು ನೀಡಲು, ನೀವು ಯಾವುದೇ ನೇತ್ರ ಸಂಬಂಧಿತ ಸಮಸ್ಯೆಗಳಿದ್ದಲ್ಲಿ ಅವುಗಳಿಗೆ ತಲುಪಲು.|ನೇತ್ರ ಚಿತ್ರ, ಕಣ್ಣಿನ ಚಿತ್ರಕ್ಕೆ ಸಂಬಂಧಿಸಿದ ಲಕ್ಷಣಗಳು, ವಯಸ್ಸು, ರಕ್ತದ ಗುಂಪು, ಸ್ಥಳ ಇತ್ಯಾದಿ ಯಾವುದೇ ಗುರುತಿಸುವಿಕೆಗಳಿಲ್ಲದೆ ನಮ್ಮ ಯಂತ್ರ ಕಲಿಕೆ ಅಥವಾ ಕೃತಕ ಬುದ್ಧಿಮತ್ತೆ ಮಾದರಿಗಳನ್ನು ತರಬೇತಿ ಮಾಡಲು ಮಾಹಿತಿ ಬಳಸುವುದಕ್ಕೆ.|ಸ್ಮರಣೆ, ಸಂವಹನ, ಪ್ರಚಾರ ಮೇಲರ್ಗಳನ್ನು ಕಳುಹಿಸಲು, ಕಣ್ಣಿನ ಆರೋಗ್ಯದ ಪರಿಜ್ಞಾನ ಸೃಷ್ಟಿಸಲು ಬಳಸುವುದಕ್ಕೆ.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ಡೇಟಾ ಸ್ವೀಕರಿಸುವವರು/ ಪ್ರವೇಶಿಸಬಹುದಾದ:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'ನೀವು ಹಂಚಿಕೊಂಡ ವೈಯಕ್ತಿಕ ಡೇಟಾ (ಸಂವೇದನಾತ್ಮಕ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಸೇರಿದಂತೆ) ಡಾಕ್ಟರ್ಗಳು/ ನೇತ್ರವೈದ್ಯರು, ವಿಜನ್ ಟೆಕ್ನೀಶಿಯನ್ಸ್, ವಿಜನ್ ಗಾರ್ಡಿಯನ್ಸ್, LVPEI ನ ಪ್ರಾತಿನಿಧಿಗಳು, ಆಂತರಿಕ/ಬಾಹ್ಯ ಲೆಕ್ಕಪರಿಶೋಧಕರು, ಅನ್ವಯಿಕ ಸರ್ಕಾರಿ ಅಧಿಕಾರಿಗಳು, ಮತ್ತು ಅನ್ವಯಿಕವಾಗಿ ನಮ್ಮ ಅಧಿಕೃತ ಸೇವಾ ಒದಗಿಸುವ ಇನ್ಫೋಸಿಸ್ ಅಧಿಕೃತ LVPEI ಸಿಬ್ಬಂದಿಗೆ ಪ್ರವೇಶಿಸಬಹುದು.';

  @override
  String get privacyPolicyDataTransferTitle => 'ಡೇಟಾ ವರ್ಗಾವಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ:';

  @override
  String get privacyPolicyDataTransferDescription => 'ನೀವು ಹಂಚಿಕೊಂಡ ವೈಯಕ್ತಿಕ ಡೇಟಾ ನಮ್ಮ ಆಂತರಿಕ ಸರ್ವರ್‌ಗಳಲ್ಲಿ, ಭಾರತದಲ್ಲಿನ ನಮ್ಮ ಅಧಿಕೃತ ಸೇವಾ ಒದಗಿಸುವವರ ಸರ್ವರ್‌ನಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗುವುದು.';

  @override
  String get privacyPolicyDataSecurityTitle => 'ಡೇಟಾ ಭದ್ರತೆ:';

  @override
  String get privacyPolicyDataSecurityDescription => 'ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ರಕ್ಷಿಸಲು LVPEI ಯುಕ್ತ ಮತ್ತು ಸೂಕ್ತ ಭದ್ರತಾ ಅಭ್ಯಾಸಗಳು ಮತ್ತು ವಿಧಾನಗಳನ್ನು ಅಳವಡಿಸುತ್ತದೆ, ಇದು ಆಡಳಿತ, ಭೌತಿಕ ಭದ್ರತೆ, ಮತ್ತು ತಾಂತ್ರಿಕ ನಿಯಂತ್ರಣಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.';

  @override
  String get privacyPolicyDataRetentionTitle => 'ಡೇಟಾ ರಿಟೆನ್ಷನ್:';

  @override
  String get privacyPolicyDataRetentionDescription => 'ಕಾನೂನು ಮತ್ತು ವ್ಯಾಪಾರ ಅಗತ್ಯಗಳಿಗನುಸಾರ ಇನ್ನು ಸಂಗ್ರಹಿಸಲು ಅಗತ್ಯವಿಲ್ಲದ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ಭದ್ರವಾದ ರೀತಿಯಲ್ಲಿ ನಿರ್ಮೂಲನೆ ಮಾಡಲಾಗುವುದು.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ಡೇಟಾ ವಿಷಯದ ಹಕ್ಕುಗಳು:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'ನೀವು ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಮಾಹಿತಿಗೆ ಪ್ರವೇಶಿಸಲು ಮತ್ತು ಸರಿಪಡಿಸಲು ಹಕ್ಕುದಾರರಾಗಿದ್ದೀರಿ. ಯಾವುದೇ ವಿನಂತಿಗಳು, ಸಮಸ್ಯೆಗಳು, ಆತಂಕಗಳು ಅಥವಾ ಪ್ರಶ್ನೆಗಳು ಇದ್ದರೆ, ನೀವು <LVPEI ಯಿಂದ DSR ಗಾಗಿ ಸಾಮಾನ್ಯ ಮೇಲ್ ಐಡಿ ಒದಗಿಸಬೇಕು> ಎಂದು ಇಮೇಲ್ ಕಳುಹಿಸುವ ಮೂಲಕ LV ಪ್ರಸಾದ ಕಚೇರಿಗೆ ಸಂಪರ್ಕಿಸಬಹುದು.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'ಹಿಂಪಡೆಯುವಿಕೆಯ ಹಕ್ಕು:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'ನಾವು ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯ ಆಧಾರದ ಮೇಲೆ ಸಂಸ್ಕರಿಸುವಾಗ, ನೀವು ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ಭವಿಷ್ಯಕ್ಕಾಗಿ ಅನ್ವಯಿಕ ಡಿಪಿ ಕಾನೂನುಗಳ ಪ್ರಕಾರ ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯನ್ನು ಹಿಂಪಡೆಯಬಹುದು. ಇದು ನಿಮ್ಮ ಹಿಂಪಡೆತದ ಮೊದಲಿನ ಯಾವುದೇ ಸಂಸ್ಕರಣಾ ಕಾರ್ಯಾಚರಣೆಯ ಕಾನೂನು ಸಮ್ಮತತೆಯನ್ನು ಪ್ರಭಾವಿತಗೊಳಿಸುವುದಿಲ್ಲ. ನಿಮ್ಮ ಒಪ್ಪಿಗೆಯನ್ನು ಹಿಂಪಡೆಯಲು, ನೀವು <LVPEI ಯಿಂದ DSR ಗಾಗಿ ಸಾಮಾನ್ಯ ಮೇಲ್ ಐಡಿ ಒದಗಿಸಬೇಕು> ಎಂದು ಇಮೇಲ್ ಕಳುಹಿಸಬಹುದು.';

  @override
  String get privacyPolicyAcknowledgement => 'ಕೆಳಗಿನ ಬಟನ್ ಕ್ಲಿಕ್ ಮಾಡುವ ಮೂಲಕ, ನೀವು ಇಲ್ಲಿನ ಹೇಳಿಕೆಯನ್ನು ಅರಿತು ಮತ್ತು ಗ್ರಹಿಸಿ, ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಸೇರಿದಂತೆ ಸಂವೇದನಾತ್ಮಕ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಮೇಲೆ ಹೇಳಿದಂತೆ ಸಂಗ್ರಹಿಸಲು ಮತ್ತು ಸಂಸ್ಕರಿಸಲು ಒಪ್ಪಿಕೊಂಡಿದ್ದೀರಿ ಎಂದು ಇಲ್ಲಿಯ ಮೇಲೆ ಹೇಳಿದ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಸಮ್ಮತಿಸುತ್ತೀರಿ. ನೀವು ಹಂಚಿಕೊಂಡಿರುವ ಯಾವುದೇ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಸೇರಿದಂತೆ ಸಂವೇದನಾತ್ಮಕ ವೈಯಕ್ತಿಕ ಡೇಟಾ (ನೀವು ಹೊರತುಪಡಿಸಿ) ಅವರಿಂದ ಸೂಕ್ತ ಒಪ್ಪಿಗೆ ಪಡೆದ ನಂತರ ಮಾತ್ರ ಹಂಚಿಕೊಂಡಿರುವುದನ್ನು ಕೂಡ ಒಪ್ಪಿಕೊಳ್ಳುತ್ತೀರಿ. ಮೇಲೆ ಹೇಳಿದ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಅಗತ್ಯವಿಲ್ಲದ ಯಾವುದೇ ವೈಯಕ್ತಿಕ ಡೇಟಾವನ್ನು (ಸಂವೇದನಾತ್ಮಕ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಸೇರಿದಂತೆ) ಹಂಚಿಕೊಳ್ಳುವುದಿಲ್ಲ ಎಂದು ಕೂಡ ಒಪ್ಪಿಕೊಳ್ಳುತ್ತೀರಿ. ನೀವು ಪೋಷಕ/ಕಾನೂನು ರಕ್ಷಕರಾಗಿ ಚಿಕ್ಕವರ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಹಂಚಿಕೊಳ್ಳುವಾಗ ಮೇಲೆ ಹೇಳಿದಂತೆ ಅವರ ಡೇಟಾ ಸಂಗ್ರಹಣೆ ಮತ್ತು ಸಂಸ್ಕರಣೆಗೆ ನೀವು ಒಪ್ಪಿಗೆ ನೀಡುತ್ತೀರಿ ಎಂದು ಕೂಡ ಒಪ್ಪಿಕೊಳ್ಳುತ್ತೀರಿ.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'ಗೌಪ್ಯತಾ ನೀತಿ ಅಂಗೀಕೃತ';

  @override
  String get helpAndSupportReachTitle => 'ನಮಗೆ ಸಂಪರ್ಕಿಸಿ';

  @override
  String get assessmentAndTestsSubtitle => 'ಇನ್ನುಮುಂದೆ ಮಾಡಲಾಗಿದೆ ಮೌಲಿಕ ಮೌಲಿಕಗಳ ಸುಂಕು ಹೇಗಿದೆ ಎಂದು ಬೇಗನೆ ನೋಡಿ.';

  @override
  String get assessmentAndTestsReportsNotFound => 'ಯಾವ ವರದಿಗಳೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get eyeAssessmentTitle => 'ಕಣ್ಣು ಮೌಲಿಕ';

  @override
  String get eyeAssessmentSubtitle => 'ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಕೆಲವು ಹೆಜ್ಜೆಗಳಲ್ಲಿ ಮೂಲಕ ಮೌಲಿಕಗೊಳಿಸಿ. ನೀವು ನಿಮ್ಮ ಕಣ್ಣು ಸಮಸ್ಯೆಗಳ ಸಂಕ್ಷೇಪ ಪರಿಶೀಲನೆಯ ಸಂದರ್ಭದಲ್ಲಿ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ಲಕ್ಷಣಗಳನ್ನು ಅರ್ಥಮಾಡಲು ಸಂದರ್ಶಕರು ನಿಮಗೆ ಹಾಗೂ ನೋಡಲು ಪ್ರಕ್ಷಿಪ್ತರಾಗುತ್ತಾರೆ.';

  @override
  String get eyeAssessmentGetMemberLabel => 'ಸದಸ್ಯ ಬದಲಿಸು';

  @override
  String get eyeAssessmentProceedButton => 'ಮುಂದುವರಿಸು';

  @override
  String get eyeAssessmentBrightnessLabel => 'ಹಾಲು ಗೊತ್ತಿಗೆ 80% ಸೆಟ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get eyeAssessmentBrightnessError => 'ಹಾಲು ದಯವಿಟ್ಟು 80% ಗೆ ಸ್ವಯಂ ಹೊಂದಿಸಿ';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ಪ್ರಶ್ನೆ ಇನ್ನೂ ಬೆಂಬಲಿಸಲಾಗಿಲ್ಲ';

  @override
  String get eyeAssessmentPopUpHeading => 'ಮೌಲಿಕಗೊಳಿಸಲು';

  @override
  String get eyeAssessmentPopUpBody => 'ನೀವು ಯಾವ ದೃಷ್ಟಿ ಸಂಬಂಧಿತ ಸಮಸ್ಯೆಯನ್ನು ಹೊಂದಿದ್ದೀರಿಯೇ?';

  @override
  String get eyeAssessmentPopUpYesButton => 'ಹೌದು';

  @override
  String get eyeAssessmentPopUpNoButton => 'ಇಲ್ಲ';

  @override
  String get visualAcuityTestInstructionOne => 'ನೆಟ್ಟಗೆ ಕುಳಿತುಕೊಳ್ಳಿ ಮತ್ತು ಉತ್ತಮ ಬಹುವರ್ಣಕೆತ್ತಲು ಸ್ಕ್ರೀನ್ ಆನುತ್ತಮ ಫಲಿತಾಂಶ ನೀಡಲು ಸ್ವಲ್ಪ ಬೆಳಗುವಿನಲ್ಲಿ ಸ್ಥಿತಿಯಲ್ಲಿರಬಹುದು, ಚಿಂತಿಸಬೇಡಿರಿ ಸ್ಕ್ರೀನ್ ಆನುತ್ತಮ ಪರಿಣಾಮ ನೀಡಲು ಸ್ವಯಂ ಬೆಳಗುವಿನಲ್ಲಿ ಸೆಟ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get visualAcuityTestInstructionTwo => 'ನೀವು ಕಣ್ಣಿಗೆ ಗ್ಲಾಸುಗಳು ಅಥವಾ ಸಂಪರ್ಕ ಕನ್ನಡ ಧರಿಸುವ ಹಾಗಿದ್ದರೆ, ಅವುಗಳನ್ನು ಧರಿಸಿಕೊಂಡಿರಿ';

  @override
  String get visualAcuityTestInstructionThree => 'ನೀವು ಪರೀಕ್ಷಿಸುವ ಸ್ಕ್ರೀನ್ ನಿಂದ 40 ಸೆಂಟಿಮೀಟರ್ ದೂರದಲ್ಲಿ ನಿಮ್ಮ ಆತ್ಮನಿಲ್ಲಿ ಇರಬೇಕು. ಪರೀಕ್ಷೆ ಸ್ಕ್ರೀನ್ ನಲ್ಲಿ ತೋರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get visualAcuityTestInstructionFour => 'ನೀವು ಗ್ಲಾಸುಗಳೊಂದಿಗೆ ಪರೀಕ್ಷಿಸುತ್ತಿದ್ದರೆ, ಯಾವಾಗಲೂ ಒಂದು ಕಣ್ಣನ್ನು ಬಿಚ್ಚಿ ಗ್ಲಾಸುಗಳ ಮೇಲೆ ಕೈ ಇಡಬೇಕು, ಒಂದು ಕಣ್ಣು ಪರೀಕ್ಷಿಸಲು ಗ್ಲಾಸುಗಳ ಮೇಲೆ ಕೈ ಇಡಬೇಕು.';

  @override
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get skipAndProceedButton => 'ವಿಲಕ್ಷಣವಾಗಿ ಹೋಗಿ ಸ್ಕ್ಯಾನ್ ಮುಂದುವರಿಸಿ';

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
  String get eyeAssessmentOngoing => 'ನಡೆಯುತ್ತಿದೆ';

  @override
  String get eyeAssessmentCompleted => 'ಮುಗಿಯಿತು';

  @override
  String get eyeAssessmentPending => 'ಬಾಕಿದವೆ';

  @override
  String get eyeAssessmentResults => 'ಮೌಲಿಕ ಪ್ರಶ್ನೆಗಳ ಪರಿಣಾಮಗಳು';

  @override
  String get eyeAssessmentCompleteSteps => 'ಪರಿಣಾಮಗಳನ್ನು ನೋಡಲು ಎಲ್ಲಾ ಹಂತಗಳನ್ನು ಮುಗಿಸಿ';

  @override
  String get eyeAssessmentToolTip => 'ದಯವಿಟ್ಟು ಫ್ಲ್ಯಾಶ್ ಆಫ್ ಆಗಿದೆಯೆಂದು ಮತ್ತು ಬೆಳಗಿನ ಪ್ರಕಾರದಲ್ಲಿ ಹಾಲು 80% ಗೆ ಸೆಟ್ ಆಗಿದೆಯೇನೋ ನಿಶ್ಚಯಿಸಿ';

  @override
  String get eyeScanInstructionOne => 'ಚಿತ್ರವನ್ನು ಮುಖವನ್ನು ಸರಿಯಾಗಿ ಫ್ರೇಮ್ ಮೇಲೆ ಇಟ್ಟುಕೊಂಡು ಹೊಂದಿಕೊಳ್ಳಲು ಕ್ಯಾಮೆರಾವನ್ನು ಹಿಡಿಯಿರಿ.';

  @override
  String get eyeScanInstructionTwo => 'ನಿಮ್ಮ ಮೊಬೈಲ್ ಫೋನ್ ನ ಹಿನ್ನೆಲೆ ಕ್ಯಾಮೆರಾವನ್ನು ಬಳಸಿ ಕಣ್ಣುಗಳ ಚಿತ್ರವನ್ನು ತೆಗೆಯಿರಿ.';

  @override
  String get eyeScanInstructionThree => 'ಫ್ಲ್ಯಾಶ್ ಹಾಕಿರುವ ಬೆಳಗುವಿನ ಪ್ರದೇಶದಲ್ಲಿ ಇದ್ದುಕೊಂಡಿರಿ.';

  @override
  String get eyeScanInstructionFour => 'ಚುಚ್ಚುವ ಹೆಜ್ಜೆ ಹಿಡಿದು ಚಿತ್ರವನ್ನು ತೆಗೆಯುವಾಗ ಹೆಚ್ಚಿನ ಹೊರಗೆ ಹೊಂದಿಸಲು ಕೆಲವರನ್ನು ಇರಿಸಿ.';

  @override
  String get eyeScanInstructionFive => 'ಒಂದು ಕಣ್ಣನ್ನು ನಿಮ್ಮ ಕೈಯಿಂದ ಮುಚ್ಚಿ ಇನ್ನೊಂದು ಕಣ್ಣಿಗೆ ಹತ್ತಿರದಲ್ಲಿ ನೋಡಿರುವಂತೆ ಚಿತ್ರವನ್ನು ತೆಗೆಯಿರಿ.';

  @override
  String get eyeScanInstructionSix => 'ಚಿತ್ರವನ್ನು ಪ್ಯಾನೆಲ್ ನಲ್ಲಿ ಕಣ್ಣುಗಳನ್ನು ಮಧ್ಯದಲ್ಲಿ ಇಡಿರಿ ಮುಂದುವರೆಯುವ ಮೊದಲು.';

  @override
  String get eyeScanInstructionSeven => 'ಫ್ಲ್ಯಾಶ್ ಆಫ್ ಆಗುವ ಹತ್ತಿರ \'ಬಿಪ್\' ಶಬ್ದವು ಚೇತರಿಸುವ ತನಕ ದಯವಿಟ್ಟು ಕಣ್ಣುಗಳನ್ನು ವಿಶಾಲವಾಗಿ ತೆಗೆದುಕೊಂಡಿರಿ, ಚಿತ್ರದ ಅಂತ್ಯವನ್ನು ಸೂಚಿಸುವ ವೇಳೆಗೆ \'ಬಿಪ್\' ಶಬ್ದವಾಗುವದು.';

  @override
  String get eyeAssessmentNote => 'ಗಮನಿಸಿ: ಇಲ್ಲಿ ತೋರಿಸಿರುವ ಚಿತ್ರಗಳು ಕೇವಲ ಸೂಚನೆಗಾಗಿ ಮಾತ್ರ. ನಿಜ ಜೀವನದಲ್ಲಿ ಅವರು ಒಂದೇ ರೀತಿ ಕಾಣಿಸಿಕೊಳ್ಳದಿರಬಹುದು.';

  @override
  String get agreeButton => 'ನಾನು ಒಪ್ಪಿಗೆಯಾಗುತ್ತೇನೆ';

  @override
  String get consentPageCheckbox => 'ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳನ್ನು ನಾನು ಒಪ್ಪುತ್ತೇನೆ';

  @override
  String get confirmButton => 'ದೃಢೀಕರಿಸಿ';

  @override
  String get discardButton => 'ವಿಸರ್ಗಿಸಿ';

  @override
  String get imageNotCapturedToastMessage => 'ಚಿತ್ರ ಸೆರೆಹಿಡಿಯಲಾಗಿಲ್ಲ';

  @override
  String get eyeCaptureCompletionDialogHeading => 'ಪರೀಕ್ಷೆ ಮುಗಿಯಿತು';

  @override
  String get eyeCaptureCompletionDialogBody => 'ನೀವು ಪರೀಕ್ಷೆಯನ್ನು ಮುಗಿಸಿದ್ದೀರಿ. ಫಲಿತಾಂಶವನ್ನು ನೋಡಲು ದಯವಿಟ್ಟು ಕೆಳಗಿನ ಬಟನ್ ಮೇಲೆ ಕ್ಲಿಕ್ ಮಾಡಿ.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ಫಲಿತಾಂಶ ವೀಕ್ಷಿಸಿ';

  @override
  String get eyeCaptureTriageSavedLocally => 'ಟ್ರೈಯೇಜ್ ಸ್ಥಳೀಯವಾಗಿ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get visualAcuityTestResults => 'ದೃಷ್ಟಿ ಸ್ಪಷ್ಟತೆ ಪರೀಕ್ಷಾ ಫಲಿತಾಂಶಗಳು';

  @override
  String get assessmentResultPageMoreDetailsText => 'ಹತ್ತಿರದ ದೃಷ್ಟಿ ಕೇಂದ್ರಕ್ಕೆ ಹೋಗಲು ಹೆಚ್ಚಿನ ವಿವರಗಳಿಗಾಗಿ. ನಮ್ಮ ದೃಷ್ಟಿ ತಂತ್ರಜ್ಞರ ಜೊತೆ ಮಾತನಾಡಲು ಟೋಲ್-ಫ್ರೀ ಸಂಖ್ಯೆಗೆ ಕರೆ ಮಾಡಿ.';

  @override
  String get assessmentReportButton => 'ಕಣ್ಣು ಮೌಲಿಕ ವರದಿ';

  @override
  String get notificationsTitle => 'ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get notificationsNotAvailable => 'ಯಾವ ಅಧಿಸೂಚನೆಗಳೂ ಇಲ್ಲ';

  @override
  String get servicesPatientCare => 'ರೋಗಿ ಆರೋಗ್ಯ ಸೇವೆ';

  @override
  String get reportAssessmentId => 'ಮೌಲ್ಯಾಂಕನ ಐಡಿ';

  @override
  String get reportDateAndTime => 'ದಿನಾಂಕ ಮತ್ತು ಸಮಯ';

  @override
  String get reportSeverityAbnormal => 'ತೀವ್ರ ಪರೀಕ್ಷೆ';

  @override
  String get reportSeverityHigh => 'ಮೊದಲ ಪರೀಕ್ಷೆ';

  @override
  String get reportSeverityLow => 'ನಿಯಮಿತ ಪರೀಕ್ಷೆ';

  @override
  String get reportDataUnavailable => 'ಡೇಟಾ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get reportTumblingTitle => 'ಏಕ್ಯೂಟಿ ಟೆಸ್ಟ್ - ಟಂಬ್ಲಿಂಗ್ ಈ';

  @override
  String get rightCornea => 'ಬಲ ಕರ್ಣ';

  @override
  String get leftCornea => 'ಎಡ ಕರ್ಣ';

  @override
  String get myProfileGeneralInfo => 'ಸಾಮಾನ್ಯ ಮಾಹಿತಿ';

  @override
  String get myProfileAge => 'ವಯಸ್ಸು';

  @override
  String get myProfileAddress => 'ವಿಳಾಸ';

  @override
  String get myProfileLine => 'ಲೈನ್';

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
  String get swipeGestureError => 'ತಪ್ಪಾದ ಸ್ವೈಪ್! ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get swipeGestureCardText => 'ಪ್ರತೀಕದ ದಿಕ್ಕಿನಲ್ಲಿ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get assessmentResultCardAssessmentQuestions => 'ಮೌಲ್ಯಾಂಕನ\nಪ್ರಶ್ನೆಗಳು';

  @override
  String get assessmentResultCardAcuityTest => 'ದೃಷ್ಟಿ\nಪರೀಕ್ಷೆ';

  @override
  String get assessmentResultCardEyeScan => 'ಕಣ್ಣಿನ\nಸ್ಕ್ಯಾನ್';

  @override
  String get viewReportButton => 'ವರದಿ ವೀಕ್ಷಿಸಿ';

  @override
  String get updateButton => 'ನವೀಕರಿಸಿ';

  @override
  String get assessmentCardUrgentConsult => 'ತಕ್ಷಣ ಸಲಹೆ';

  @override
  String get assessmentCardRoutineCheckUp => 'ಸರಿಯಾದ ಪರಿಶ್ವೇಕ್ಷಣೆ';

  @override
  String get assessmentCardEarlyCheckUp => 'ಮುನ್ನಡೆದ ಪರಿಶೀಲನೆ';

  @override
  String get testAgainButton => 'ಮತ್ತೆ ಪರೀಕ್ಷೆ ಮಾಡಿ';

  @override
  String get homeButton => 'ಹೋಮ್';

  @override
  String get homeTriageCardTitle => 'ನಮ್ಮ ಕಣ್ಣುಗಳು ಅತ್ಯಂತ ಮೌಲ್ಯಯುತ ಆಸ್ತಿಗಳು.';

  @override
  String get homeTriageCardDescription => 'ಕಣ್ಣು ಸಮಸ್ಯೆಗಳನ್ನು ಹೆಚ್ಚಿನ ತೊಂದರೆಗಳಿಂದ ತಡೆಯಲು ಸಮಯದಲ್ಲಿ ಪರೀಕ್ಷಿಸಿ.';

  @override
  String get homeTriageCardTest => 'ಕಣ್ಣು ಪರೀಕ್ಷೆ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get homeHelplineCardDescrition => 'ಅಚಾನಕ ದೃಷ್ಟಿ ಕೊನೆಗೆಯುವ ಸಂದರ್ಭದಲ್ಲಿ, ಈ ಆಪಾತಕಾಲೀನ ಹೆಲ್ಪ್‌ಲೈನ್ ಗೆ ಕಾಲ್ ಮಾಡಿ';

  @override
  String get inviteCardTitle => 'ಇತರರನ್ನು ಆಹ್ವಾನಿಸಿ';

  @override
  String get inviteCardDescription => '5 ಜನ ಸ್ನೇಹಿತರನ್ನು ಮತ್ತು ಕುಟುಂಬದ ಸದಸ್ಯರನ್ನು ಆಹ್ವಾನಿಸಿ, ಅವರು ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನುಮೂಲೆಕೆಳಗೆ ಟೆಸ್ಟ್ ಮಾಡಿ ಮತ್ತು ಭವಿಷ್ಯದಲ್ಲಿ ಕಣ್ಣು ಸಮಸ್ಯೆಗಳನ್ನು ತಡೆಗಟ್ಟುವಂತೆ ಮಾಡಿಕೊಳ್ಳಿ.';

  @override
  String get inviteCardInvitation => 'ಈಗ ಆಹ್ವಾನಿಸಿ';

  @override
  String get partnerCardTitle => 'ಭಾಗಿತವಾದ';

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
  String get somethingWentWrong => 'Something went wrong.';

  @override
  String get triageUpdatedSuccessfully => 'Triage Updated successfully.';

  @override
  String get noPreviewAvailable => 'No Preview Available';

  @override
  String get appointmentTitle => 'Appointments';

  @override
  String get appointmentSubtitle => 'All Appointments';
}
