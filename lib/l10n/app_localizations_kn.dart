import 'app_localizations.dart';

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} ರಲ್ಲಿ ${total}';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'ದಯವಿಟ್ಟು ಕಳುಹಿಸಿದ ಒಟಿಪಿಯನ್ನು ನಮೂದಿಸಿ ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'ಮರಳಿ ಕಳುಹಿಸಿ. ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} ರೋಗಿಗೆ ಅಪಾಯಿಂಟ್ಮೆಂಟ್ ಇದೆ';
  }

  @override
  String vgEmptyResults(String type) {
    return 'ಪ್ರಸ್ತುತ ಯಾವುದೇ ವಿಧಗಳಿಲ್ಲ. ಆಡ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ ${type}';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ಗುರುತಿನ ಚೀಟಿ, ಹೆಸರಿನ ಮೂಲಕ ಹುಡುಕಿ';
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
  String get bothEyesString => 'ಎರಡೂ ಕಣ್ಣುಗಳು';

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
  String get homeCarousal1Description => '\r\r\nಕಣ್ಣಿನ ಪೊರೆ ಮತ್ತು ಸಂಬಂಧಿತ ಅಂಶಗಳ ಹರಡುವಿಕೆಯ ಮೇಲೆ ಮಾದರಿ ವಿಧಾನದ ಕ್ರಮಬಧ್ಧವಾದ ಪ್ರದರ್ಶನ​';

  @override
  String get homeCarousal2Title => 'ಗಮನಿಸಬೇಕಾದ​ 7 ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳು!';

  @override
  String get homeCarousal2Description => '\r\r\nಪರೀಕ್ಷಿಸಲು 7 ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳು:\r\r\n \r\r\n• ಕಣ್ಣಿನ ಕೆಂಪು\r\r\n• ಕಣ್ಣುಗಳಲ್ಲಿ ನೀರು ಬರುವುದು\r\r\n• ಕಣ್ಣುಗಳ ಮೇಲೆ ಬಿಳಿ ಕಲೆಗಳು';

  @override
  String get homeCarousal3Title => 'ನೀವು ನೋಡದ ಅನೇಕ ಕಣ್ಣಿನ ತೊಂದರೆಗಳು ಇವೆ';

  @override
  String get homeCarousal3Description => 'ಆದರೆ ದೃಷ್ಟಿ ಆರೈಕೆ ತಜ್ಞರು ಮಾಡಬಹುದು.\r\r\nಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಗುರುತಿಸಿ ಮತ್ತು ತಪ್ಪಿಸಲು ಸಮಯಕ್ಕೆ ಚಿಕಿತ್ಸೆ ನೀಡಲಾಗುತ್ತದೆ';

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
  String get aboutUsDescription => 'ಸೈಟ್‌ಕನೆಕ್ಟ್ ಒಂದು ಬಳಕೆದಾರ ಸ್ನೇಹಿ ಕಣ್ಣಿನ ಆರೈಕೆ ಅಪ್ಲಿಕೇಶನ್ ಆಗಿದ್ದು ಅದು ದೂರವಾಣಿ ಕರೆಯ ಮೂಲಕ ಸ್ವಯಂ ಮೌಲ್ಯಮಾಪನ ಮತ್ತು ಸಮಾಲೋಚನೆಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.\r\r\n\r\r\nನಮ್ಮ ಮಿಷನ್‌ನ ಹೃದಯಭಾಗವು ಕಣ್ಣಿನ ಆರೈಕೆಯನ್ನು ಎಲ್ಲರಿಗೂ ಪ್ರವೇಶಿಸುವಂತೆ ಮಾಡುವ ಬದ್ಧತೆಯಾಗಿದೆ. ಅವರ ವಯಸ್ಸು, ತಾಂತ್ರಿಕ ಹಿನ್ನೆಲೆ ಮತ್ತು ಸಾಮಾಜಿಕ ಅಥವಾ ಆರ್ಥಿಕ ಹಿನ್ನೆಲೆಯನ್ನು ಲೆಕ್ಕಿಸದೆಯೇ ಎಲ್ಲಾ ಹಂತದ ಜೀವನದ ಬಳಕೆದಾರರಿಂದ ಒಳಗೊಳ್ಳಲು ಮತ್ತು ಪ್ರವೇಶಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ. ಅಪ್ಲಿಕೇಶನ್ ಮತ್ತು ಅದರ ವಿಷಯವನ್ನು ಇಂಗ್ಲಿಷ್ ಮತ್ತು ಇತರ ಸ್ಥಳೀಯ ಭಾಷೆಗಳಲ್ಲಿ ಲಭ್ಯವಾಗುವಂತೆ ಮಾಡಲಾಗಿದೆ. ಇದು ಬಳಕೆದಾರರಿಗೆ ತಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಸ್ವಯಂ-ಮೌಲ್ಯಮಾಪನ ಮಾಡಲು ಮತ್ತು ಸಕಾಲಿಕ ಚಿಕಿತ್ಸೆಯ ಸಲಹೆಯನ್ನು ಪಡೆಯಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ. ನಮ್ಮ ಬಳಕೆದಾರರಿಗೆ ವೈಯಕ್ತಿಕಗೊಳಿಸಿದ ಕಣ್ಣಿನ ಆರೈಕೆ ಪರಿಹಾರಗಳನ್ನು ಒದಗಿಸಲು ಅಪ್ಲಿಕೇಶನ್ ಇತ್ತೀಚಿನ ತಂತ್ರಜ್ಞಾನಗಳು ಮತ್ತು ಸಾಧನಗಳನ್ನು ಬಳಸುತ್ತದೆ. ಇದು ಅವರ ಜೀವನವನ್ನು ಸುಲಭಗೊಳಿಸಲು ವಿವಿಧ ವೈಶಿಷ್ಟ್ಯಗಳೊಂದಿಗೆ ಬರುತ್ತದೆ.';

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
  String get privacyPolicyPurposeOfProcessingTitle => 'ಸಂಸ್ಕರಣೆಯ ಉದ್ದೇಶ: ';

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
  String get eyeAssessmentSubtitle => '\r\r\nನಿಮ್ಮ, ನಿಮ್ಮ ಸ್ನೇಹಿತರು ಮತ್ತು ಕುಟುಂಬದ ಸದಸ್ಯರ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಕೆಲವು ಹಂತಗಳಲ್ಲಿ ನಿರ್ಣಯಿಸಿ. ದೃಷ್ಟಿ ಪರೀಕ್ಷೆಗಳ ನಂತರ ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ನಿಮಗೆ ಪ್ರಶ್ನೆಗಳ ಗುಂಪನ್ನು ಕೇಳಲಾಗುತ್ತದೆ.';

  @override
  String get eyeAssessmentGetMemberLabel => 'ಸದಸ್ಯ ಬದಲಿಸು';

  @override
  String get eyeAssessmentProceedButton => 'ಮುಂದುವರಿಸು';

  @override
  String get eyeAssessmentBrightnessLabel => '\r\r\nಹೊಳಪನ್ನು 80% ಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';

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
  String get visualAcuityTestInstructionTwo => '\r\r\nನೀವು ಸಾಧನವನ್ನು ಕಣ್ಣಿನ ಮಟ್ಟದಲ್ಲಿ ಹಿಡಿದಿರುವಿರಿ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ. ನೀವು ಕನ್ನಡಕ ಅಥವಾ ಕಾಂಟ್ಯಾಕ್ಟ್ ಲೆನ್ಸ್‌ಗಳನ್ನು ಧರಿಸಿದರೆ, ಅವುಗಳನ್ನು ಇರಿಸಿಕೊಳ್ಳಿ';

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
  String get eyeBoxText => 'ಕಣ್ಣುಗಳ ಸುತ್ತಲೂ ಹಸಿರು ಪೆಟ್ಟಿಗೆಗಳು ಕಾಣಿಸಿಕೊಳ್ಳುವವರೆಗೆ ದಯವಿಟ್ಟು ಚಿತ್ರವನ್ನು ಸರಿಹೊಂದಿಸಿ ಮತ್ತು ಇರಿಸಿ. ಕಣ್ಣನ್ನು ಹತ್ತಿರಕ್ಕೆ ಸರಿಸಿ ಮತ್ತು ಪೆಟ್ಟಿಗೆಯ ಶೇಕಡಾ 40ರಷ್ಟು ಭಾಗವು ಕಣ್ಣಿನಿಂದ ಆವೃತವಾಗಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get bottomNavItemServices => 'ಸೇವೆಗಳು';

  @override
  String get smsContent => 'ಹೇಯ್! ನನ್ನ ಕಣ್ಣುಗಳನ್ನು ನೋಡಿಕೊಳ್ಳಲು ನಾನು ಸೈಟ್ಕನೆಕ್ಟ್ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಬಳಸುತ್ತಿದ್ದೇನೆ ಮತ್ತು ನೀವೂ ಸಹ ಬಳಸಬೇಕು! ನಿಮ್ಮ ಕಣ್ಣುಗಳನ್ನು ಮೌಲ್ಯಮಾಪನ ಮಾಡಿ ಮತ್ತು ಸೈಟ್ ಕನೆಕ್ಟ್ ಅಪ್ಲಿಕೇಶನ್ನೊಂದಿಗೆ ಸಕಾಲಿಕ ಚಿಕಿತ್ಸೆಯನ್ನು ಪಡೆಯಿರಿ. ಇದು ತಡೆಗಟ್ಟುವ ಕಣ್ಣಿನ ಆರೈಕೆಯನ್ನು ನಿಮ್ಮ ಕೈಗೆ ತರುವ ಒಂದು ವಿಶಿಷ್ಟವಾದ ಅಪ್ಲಿಕೇಶನ್ ಆಗಿದೆ. ಈಗ ಅದನ್ನು ಪಡೆಯಿರಿಃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'ಸೈಟ್ಕನೆಕ್ಟ್ ಅಪ್ಲಿಕೇಶನ್ನೊಂದಿಗೆ ನಿಮ್ಮ ಕಣ್ಣಿನ ಆರೋಗ್ಯಕ್ಕೆ ಆದ್ಯತೆ ನೀಡಿ!';

  @override
  String get recentServicesCataractEyeTest => 'ಕಣ್ಣಿನ ಪೊರೆ ಪರೀಕ್ಷೆ';

  @override
  String get recentServicesRedEyeTest => 'ಕೆಂಪು ಕಣ್ಣಿನ ಪರೀಕ್ಷೆ';

  @override
  String get chatBotDefaultQuerySuggestions => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನವನ್ನು ಪ್ರಾರಂಭಿಸಿ | ಸಾಮಾನ್ಯ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳು | ಉತ್ತಮ ದೃಷ್ಟಿಗಾಗಿ ಸಲಹೆಗಳು';

  @override
  String get chatBotWelcomeMessage => 'ಹಾಯ್, ನಾನು ಇಂದು ನಿಮಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get poweredByText => 'ಶಕ್ತಿಯುತವಾಗಿದೆ';

  @override
  String get digitalHealthCard => 'ಡಿಜಿಟಲ್ ಸಾರ್ವಜನಿಕ ಆರೋಗ್ಯ ಸ್ಟ್ಯಾಕ್';

  @override
  String get inviteNowText => 'ಈಗಲೇ ಆಹ್ವಾನಿಸಿ';

  @override
  String get resend => 'ಮರಳಿ ಕಳುಹಿಸಿ.';

  @override
  String get mobileNumber => 'ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get loginVerifyMobileNumber => 'ನಿಮ್ಮ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get loginEnterMobileNumber => 'ದಯವಿಟ್ಟು ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get loginEnterValidMobileNumber => 'ದಯವಿಟ್ಟು ಮಾನ್ಯವಾದ ಮೊಬೈಲ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get loginUnableToSendOTP => 'ಈ ಸಂಖ್ಯೆಗೆ ಒಟಿಪಿಯನ್ನು ಕಳುಹಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get loginGetOTP => 'ಒಟಿಪಿಯನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get loginInvalidOTP => 'ಅಮಾನ್ಯವಾದ ಒಟಿಪಿ';

  @override
  String get loginDidntReceiveOTP => 'ಒಟಿಪಿ ಬರಲಿಲ್ಲವೇ?';

  @override
  String get loginOTPSent => 'ಒಟಿಪಿಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get areYouSure => 'ನಿಮಗೆ ಖಾತ್ರಿಯಿದೆಯೇ?';

  @override
  String get triageExitConfirmation => 'ನೀವು ಪರೀಕ್ಷೆಯಿಂದ ನಿರ್ಗಮಿಸಲು ಬಯಸುತ್ತೀರಾ?';

  @override
  String get triageReportEyeProblems => 'ಕಣ್ಣಿನ ತೊಂದರೆಗಳನ್ನು ವರದಿ ಮಾಡಿ';

  @override
  String get triageHowToReport => 'ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ವರದಿ ಮಾಡುವುದು ಹೇಗೆ?';

  @override
  String get triageReportInstructions => 'ನೀವು ಕಣ್ಣಿಗೆ ಸಂಬಂಧಿಸಿದ ಸಮಸ್ಯೆಗಳನ್ನು ಹೊಂದಿರುವ ವ್ಯಕ್ತಿಯಾಗಿದ್ದರೆ, ಸೂಕ್ತ ಮಾರ್ಗದರ್ಶನ ಪಡೆಯಲು ನೀವು ಇಲ್ಲಿ ನಿಮ್ಮ ಸಮಸ್ಯೆಗಳನ್ನು ಸ್ವಯಂ-ಘೋಷಿಸಬಹುದು ಮತ್ತು ನಮೂದಿಸಬಹುದು. ನಿಮ್ಮ ಸ್ನೇಹಿತರು ಅಥವಾ ಕುಟುಂಬ ಸದಸ್ಯರ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಸಹ ನೀವು ಇಲ್ಲಿ ಉಲ್ಲೇಖಿಸಬಹುದು ಮತ್ತು ಸೂಕ್ತ ಮಾರ್ಗದರ್ಶನವನ್ನು ಪಡೆಯಬಹುದು. ಕಣ್ಣಿನ ಸಮಸ್ಯೆಯ ಸ್ವರೂಪ ಮತ್ತು ತೀವ್ರತೆಯನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ನಿಮಗೆ ಈ ಕೆಳಗಿನ ವಿಭಾಗಗಳಲ್ಲಿ ಪ್ರಶ್ನೆಗಳ ಗುಂಪನ್ನು ಕೇಳಲಾಗುತ್ತದೆ. ಎಲ್ಲಾ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಿಸಿದ ನಂತರ ಮಾಡಬೇಕಾದ ಪರೀಕ್ಷೆಗಳು ಮತ್ತು ಅನುಸರಿಸಬೇಕಾದ ಹಂತಗಳೊಂದಿಗೆ ನಿಮಗೆ ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ ಮತ್ತು ಮಾರ್ಗದರ್ಶನ ನೀಡಲಾಗುತ್ತದೆ.';

  @override
  String get assessment => 'ಮೌಲ್ಯಮಾಪನ';

  @override
  String get triageOtherSymptomsQuestion => 'ನಿಮಗೆ ಬೇರೆ ಯಾವುದೇ ರೋಗಲಕ್ಷಣಗಳಿವೆಯೇ?';

  @override
  String get triageEnterSymptoms => 'ನಿಮ್ಮ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಇಲ್ಲಿ ನಮೂದಿಸಿ';

  @override
  String get triageEyeAssessmentResults => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನದ ಫಲಿತಾಂಶಗಳು';

  @override
  String get triageTestId => 'ಟೆಸ್ಟ್ ಐಡಿ';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get triageErrorEyeScanNotUpdated => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್ ನವೀಕರಿಸಲಾಗಿಲ್ಲ!';

  @override
  String get triageLeftEyeString => 'ಎಡ ಕಣ್ಣು';

  @override
  String get triageRightEyeString => 'ಬಲ ಕಣ್ಣು';

  @override
  String get vaEyeTest => 'ಕಣ್ಣಿನ ಪರೀಕ್ಷೆ';

  @override
  String get instructions => 'ಸೂಚನೆಗಳು';

  @override
  String get vaSwipeUp => 'ಮೇಲಕ್ಕೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get vaSwipeDown => 'ಕೆಳಕ್ಕೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get vaSwipeLeft => 'ಎಡಕ್ಕೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get vaSwipeRight => 'ಬಲಕ್ಕೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get vaSwipeGestureError => 'ಅಮಾನ್ಯವಾದ ಸ್ವೈಪ್ ಗೆಸ್ಚರ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get permissionNotGranted => 'ಅನುಮತಿ ಸಿಕ್ಕಿಲ್ಲ.';

  @override
  String get serviceNotAvailable => 'ಸೇವೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get vaDistanceToFace => 'ಮುಖಾಮುಖಿಯಾಗುವ ದೂರ';

  @override
  String get vaDistanceToFaceInstruction => 'ಕ್ಯಾಮರಾ ನಿಮ್ಮ ಮುಖದಿಂದ 40 ಸೆಂಟಿಮೀಟರ್ ದೂರದಲ್ಲಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get vaBringFaceInsideBox => 'ನಿಮ್ಮ ಮುಖವನ್ನು ಪೆಟ್ಟಿಗೆಯೊಳಗೆ ತನ್ನಿ.';

  @override
  String get startAssessment => 'ಮೌಲ್ಯಮಾಪನವನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get optoAddPatientInfo => 'ರೋಗಿಯ ಮಾಹಿತಿಯನ್ನು ಸೇರಿಸಿ';

  @override
  String get loggedOutMessage => 'ನೀವು ಲಾಗ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get optoLogoutError => 'ಕ್ಷಮಿಸಿ, ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ನಲ್ಲಿ ನಾವು ಲಾಗ್ ಔಟ್ ದೋಷವನ್ನು ಎದುರಿಸಿದೆವು.';

  @override
  String get optoLoggingOut => 'ಲಾಗ್ ಔಟ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get hello => 'ನಮಸ್ಕಾರ.';

  @override
  String get optoGetStarted => 'ಪ್ರಾರಂಭಿಸೋಣ';

  @override
  String get optoCompletedTests => 'ಪೂರ್ಣಗೊಂಡ ಪರೀಕ್ಷೆಗಳು';

  @override
  String get optoThisMonth => 'ಈ ತಿಂಗಳು';

  @override
  String get today => 'ಇಂದು';

  @override
  String get services => 'ಸೇವೆಗಳು';

  @override
  String get optoAssessmentHistory => 'ಮೌಲ್ಯಮಾಪನದ ಇತಿಹಾಸ';

  @override
  String get optoEyeAssessments => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನಗಳು';

  @override
  String get feedback => 'ಫೀಡ್ಬ್ಯಾಕ್';

  @override
  String get optoImproveApp => 'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯು ನಮ್ಮ ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಸುಧಾರಿಸಲು ನಾವು ಬಯಸುತ್ತೇವೆ.';

  @override
  String get assessments => 'ಮೌಲ್ಯಮಾಪನಗಳು';

  @override
  String get optoPatientAssistance => 'ರೋಗಿಗೆ ಸಹಾಯ ಬೇಕೇ?';

  @override
  String get optoVisualAcuity => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ';

  @override
  String get optoPatientAided => 'ರೋಗಿಗೆ ನೆರವು ನೀಡಲಾಗಿದೆಯೇ?';

  @override
  String get optoEyeScan => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್';

  @override
  String get optoLeaveFeedback => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಕೆಳಗೆ ನೀಡಿ';

  @override
  String get optoNoInternet => 'ಅಂತರ್ಜಾಲ ಸಂಪರ್ಕವಿಲ್ಲ';

  @override
  String get optoCheckInternet => 'ದಯವಿಟ್ಟು ನಿಮ್ಮ ಅಂತರ್ಜಾಲ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get optoSearchPatientId => 'ರೋಗಿಯ ಗುರುತಿನ ಚೀಟಿಯನ್ನು ಹುಡುಕಿ';

  @override
  String get optoRecentAssessments => 'ಇತ್ತೀಚಿನ ಮೌಲ್ಯಮಾಪನಗಳು';

  @override
  String get optoSelectDateRange => 'ದಯವಿಟ್ಟು ದಿನಾಂಕದ ವ್ಯಾಪ್ತಿಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';

  @override
  String get optoDataNotFound => 'ಈ ಹುಡುಕಾಟಕ್ಕಾಗಿ ದತ್ತಾಂಶವು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get optoAssessmentReport => 'ಮೌಲ್ಯಮಾಪನ ವರದಿ';

  @override
  String get optoPID => 'ಪಿಐಡಿ';

  @override
  String get category => 'ವರ್ಗ.';

  @override
  String get patientAssessmentAndTest => 'ರೋಗಿಯ ಮೌಲ್ಯಮಾಪನ ಮತ್ತು ಪರೀಕ್ಷೆ';

  @override
  String get patientSelfTestReport => 'ಸ್ವಯಂ ಪರೀಕ್ಷಾ ವರದಿ';

  @override
  String get patientClinicalReport => 'ಕ್ಲಿನಿಕಲ್ ವರದಿ';

  @override
  String get patientAppointmentTitle => 'ನೇಮಕಾತಿ.';

  @override
  String get patientBookAppointment => 'ಬುಕ್ ಅಪಾಯಿಂಟ್ಮೆಂಟ್';

  @override
  String get patientAppointmentSubtitle => 'ನಿಮ್ಮ ನೇಮಕಾತಿಗಳು';

  @override
  String get patientTelephoneConsultation => 'ದೂರವಾಣಿ ಸಮಾಲೋಚನೆ';

  @override
  String get patientAddress => 'ವಿಳಾಸ';

  @override
  String get patientReschedule => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get patientCancel => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get patientPID => 'ಪಿಐಡಿ';

  @override
  String get patientReportID => 'ಗುರುತಿನ ಚೀಟಿಯನ್ನು ವರದಿ ಮಾಡಿ';

  @override
  String get patientHideDetailedReport => 'ವಿವರವಾದ ವರದಿಯನ್ನು ಮರೆಮಾಡಿ';

  @override
  String get patientShowDetailedReport => 'ವಿವರವಾದ ವರದಿಯನ್ನು ತೋರಿಸಿ';

  @override
  String get patientEID => 'ಇ. ಐ. ಡಿ.';

  @override
  String get patientViewHistoryButton => 'ಇತಿಹಾಸವನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get patientViewReportButton => 'ವರದಿಯನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get patientNoMoreData => 'ಹೆಚ್ಚಿನ ಮಾಹಿತಿ ಇಲ್ಲ';

  @override
  String get patientErrorFetchingReport => 'ವರದಿಯನ್ನು ಪಡೆಯುವಲ್ಲಿ ದೋಷ';

  @override
  String get patientTimeline => 'ಟೈಮ್ಲೈನ್';

  @override
  String get patientRoutineCheckup => 'ನಿಯಮಿತ ತಪಾಸಣೆ';

  @override
  String get patientAssessmentID => 'ಮೌಲ್ಯಮಾಪನ ಐಡಿ';

  @override
  String get patientStartDate => 'ಆರಂಭದ ದಿನಾಂಕ';

  @override
  String get patientIVRAssessment => 'ಐವಿಆರ್ ಮೌಲ್ಯಮಾಪನ';

  @override
  String get patientEarlyConsultationRecommended => 'ಮುಂಚಿತವಾಗಿ ಸಮಾಲೋಚಿಸಲು ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ';

  @override
  String get patientCataractEyeReport => 'ಕಣ್ಣಿನ ಪೊರೆ ವರದಿ';

  @override
  String get patientRedEyeReport => 'ಕೆಂಪು ಕಣ್ಣಿನ ವರದಿ';

  @override
  String get patientScanAgain => 'ಮತ್ತೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get patientStepsToScan => 'ರೆಟಿನಲ್ ಸ್ಕ್ಯಾನಿಂಗ್ ಮಾಡಲು ಕ್ರಮಗಳು';

  @override
  String get patientProceedToScan => 'ಸ್ಕ್ಯಾನ್ಗೆ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get patientSkipAndProceedToScan => 'ಸ್ಕಿಪ್ ಮಾಡಿ ಮತ್ತು ಸ್ಕ್ಯಾನ್ಗೆ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get patientEyeScanner => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನರ್';

  @override
  String get patientErrorSelectCamera => 'ಮೊದಲು ಕ್ಯಾಮೆರಾವನ್ನು ಆಯ್ಕೆ ಮಾಡಿ!';

  @override
  String get patientEyeBoxText => 'ಕಣ್ಣಿನ ಪೆಟ್ಟಿಗೆಯ ಪಠ್ಯ';

  @override
  String get patientLoggedOut => 'ನೀವು ಲಾಗ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get patientLogoutError => 'ಕ್ಷಮಿಸಿ, ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ನಲ್ಲಿ ನಾವು ಲಾಗ್ ಔಟ್ ದೋಷವನ್ನು ಎದುರಿಸಿದೆವು.';

  @override
  String get patientUpdateProfile => 'ಪ್ರೊಫೈಲ್ ಅನ್ನು ನವೀಕರಿಸಿ';

  @override
  String get patientEdit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get patientProfileNotUpdated => 'ಪ್ರೊಫೈಲ್ ನವೀಕರಿಸಲಾಗಿಲ್ಲ';

  @override
  String get patientProfileUpdated => 'ಪ್ರೊಫೈಲ್ ಅನ್ನು ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get patientReportUnavailable => 'ವರದಿ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get patientClinicalReportNotFound => 'ಕ್ಲಿನಿಕಲ್ ವರದಿ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get patientRID => 'ಆರ್ಐಡಿ';

  @override
  String get patientUpdateUnavailable => 'ಈ ಸಮಯದಲ್ಲಿ ಅಪ್ಡೇಟ್ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get vgAddEvent => 'ಈವೆಂಟ್ ಅನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgUploadingImageAddingEvent => 'ಚಿತ್ರವನ್ನು ಅಪ್ಲೋಡ್ ಮಾಡುವುದು ಮತ್ತು ಈವೆಂಟ್ ಅನ್ನು ಸೇರಿಸುವುದು';

  @override
  String get vgEventTitle => 'ಈವೆಂಟ್ ಶೀರ್ಷಿಕೆ';

  @override
  String get vgPleaseEnterEndTime => 'ದಯವಿಟ್ಟು ಅಂತಿಮ ಸಮಯವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vgShouldNotContainSpecialCharacter => 'ಯಾವುದೇ ವಿಶೇಷ ಅಕ್ಷರಗಳನ್ನು ಹೊಂದಿರಬಾರದು.';

  @override
  String get vgEventDescription => 'ಘಟನೆಯ ವಿವರಣೆ';

  @override
  String get vgAddPatient => 'ರೋಗಿಯನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgPatients => 'ರೋಗಿಗಳು';

  @override
  String get vgDetails => 'ವಿವರಗಳು';

  @override
  String get vgTeammates => 'ತಂಡದ ಸದಸ್ಯರು';

  @override
  String get vgEyeAssessment => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನ';

  @override
  String get vgStart => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get vgEyeAssessmentDescription => 'ನಿಮ್ಮ, ನಿಮ್ಮ ಸ್ನೇಹಿತರ ಮತ್ತು ಕುಟುಂಬದ ಸದಸ್ಯರ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳನ್ನು ಕೆಲವು ಹಂತಗಳಲ್ಲಿ ಮೌಲ್ಯಮಾಪನ ಮಾಡಿ. ನಿಮ್ಮ ಕಣ್ಣಿನ ಸಮಸ್ಯೆಗಳಿಗೆ ಸಂಬಂಧಿಸಿದ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಲು ನಿಮ್ಮನ್ನು ಕೆಲವು ಪ್ರಶ್ನೆಗಳನ್ನು ಕೇಳಲಾಗುತ್ತದೆ ಮತ್ತು ನಂತರ ದೃಷ್ಟಿ ಪರೀಕ್ಷೆಗಳನ್ನು ಮಾಡಲಾಗುತ್ತದೆ.';

  @override
  String get vgLogoutMessage => 'ನೀವು ಲಾಗ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get vgLogoutErrorMessage => 'ಕ್ಷಮಿಸಿ, ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ನಲ್ಲಿ ನಾವು ಲಾಗ್ ಔಟ್ ದೋಷವನ್ನು ಎದುರಿಸಿದೆವು.';

  @override
  String get vgWelcome => 'ಸ್ವಾಗತ.';

  @override
  String get vgServices => 'ಸೇವೆಗಳು';

  @override
  String get vgEvents => 'ಘಟನೆಗಳು';

  @override
  String get vgViewAll => 'ಎಲ್ಲವನ್ನೂ ವೀಕ್ಷಿಸಿ';

  @override
  String get vtAssessmentReport => 'ಮೌಲ್ಯಮಾಪನ ವರದಿ-ಇ. ಎ.';

  @override
  String get vtRemarks => 'ಟಿಪ್ಪಣಿಗಳು';

  @override
  String get vtNoPatientFound => 'ಯಾವುದೇ ರೋಗಿಯ ಪತ್ತೆಯಾಗಿಲ್ಲ.';

  @override
  String get vtClose => 'ಮುಚ್ಚಿ.';

  @override
  String get vtBack => 'ಹಿಂತಿರುಗಿ.';

  @override
  String get vtSubmit => 'ಸಲ್ಲಿಸು';

  @override
  String get vtSomethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ';

  @override
  String get vtAssessmentClosedSuccessfully => 'ಮೌಲ್ಯಮಾಪನ ಯಶಸ್ವಿಯಾಗಿ ಮುಕ್ತಾಯಗೊಂಡಿದೆ';

  @override
  String get vtEyeScan => 'ಕಣ್ಣಿನ ಸ್ಕ್ಯಾನ್';

  @override
  String get vtDashboard => 'ಡ್ಯಾಶ್ಬೋರ್ಡ್';

  @override
  String get vtRegisterPatient => 'ರೋಗಿಯನ್ನು ನೋಂದಾಯಿಸಿ';

  @override
  String get vtTriage => 'ಟ್ರೀಟ್ಮೆಂಟ್';

  @override
  String get vtMarkMyAvailability => 'ನನ್ನ ಲಭ್ಯತೆಯನ್ನು ಗುರುತಿಸಿ';

  @override
  String get vtIVRCallHistory => 'ಐವಿಆರ್ ಕರೆ ಇತಿಹಾಸ';

  @override
  String get vtMarked => 'ಗುರುತಿಸಲಾಗಿದೆ.';

  @override
  String get vtPreliminaryAssessment => 'ಪೂರ್ವಭಾವಿ ಮೌಲ್ಯಮಾಪನ';

  @override
  String get vtAge => 'ವಯಸ್ಸು.';

  @override
  String get vtGender => 'ಲಿಂಗಭೇದ';

  @override
  String get vtAddress => 'ವಿಳಾಸ';

  @override
  String get vtProfile => 'ಪ್ರೊಫೈಲ್';

  @override
  String get vtLogoutMessage => 'ನೀವು ಲಾಗ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get vtLogoutError => 'ಕ್ಷಮಿಸಿ, ಮೊಬೈಲ್ ಅಪ್ಲಿಕೇಶನ್ನಲ್ಲಿ ನಾವು ಲಾಗ್ ಔಟ್ ದೋಷವನ್ನು ಎದುರಿಸಿದೆವು.';

  @override
  String get vtError => 'ದೋಷ';

  @override
  String get vtPatient => 'ರೋಗಿಯ.';

  @override
  String get vtMobile => 'ಮೊಬೈಲ್';

  @override
  String get vtAssessmentID => 'ಮೌಲ್ಯಮಾಪನ ಐಡಿ';

  @override
  String get vtStatus => 'ಸ್ಥಿತಿಗತಿ.';

  @override
  String get vtTimeline => 'ಟೈಮ್ಲೈನ್';

  @override
  String get vtCategory => 'ವರ್ಗ.';

  @override
  String get vtNoDataFound => 'ಯಾವುದೇ ದತ್ತಾಂಶವು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get appCameraCapture => 'ಸೆರೆಹಿಡಿಯುವಿಕೆ';

  @override
  String get appCameraRetake => 'ಮರುಪರಿಶೀಲನೆ.';

  @override
  String get appCameraUsePhoto => 'ಛಾಯಾಚಿತ್ರವನ್ನು ಬಳಸಿ';

  @override
  String get appCameraCancel => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get appCameraNotFound => 'ಕ್ಯಾಮರಾ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get appCameraException => 'ಕ್ಯಾಮರಾ ವಿನಾಯಿತಿ';

  @override
  String get appCameraProgressMessage => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get internetLostNoConnection => 'ಅಂತರ್ಜಾಲ ಸಂಪರ್ಕವಿಲ್ಲ';

  @override
  String get internetLostRetry => 'ಮರುಪ್ರಯತ್ನಿ ಮಾಡಿ.';

  @override
  String get secureJailbreak => 'ನಿಮ್ಮ ಸಾಧನವು ಜೈಲ್ ಬ್ರೋಕನ್ ಆಗಿರುವಂತೆ ತೋರುತ್ತಿದೆ.';

  @override
  String get secureRestrictedAccess => 'ಭದ್ರತಾ ಕಾರಣಗಳಿಗಾಗಿ, ಜೈಲ್ ಬ್ರೋಕನ್ ಸಾಧನಗಳಲ್ಲಿ ಈ ಅಪ್ಲಿಕೇಶನ್ಗೆ ಪ್ರವೇಶವನ್ನು ನಿರ್ಬಂಧಿಸಲಾಗಿದೆ.';

  @override
  String get secureExitApp => 'ಅಪ್ಲಿಕೇಶನ್ನಿಂದ ನಿರ್ಗಮಿಸಿ';

  @override
  String get sharedErrorPageIssues => 'ನಾವು ಕೆಲವು ಸಮಸ್ಯೆಗಳನ್ನು ಎದುರಿಸುತ್ತಿದ್ದೇವೆ. ದಯವಿಟ್ಟು ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get appointmentBookingTitle => 'ಅಪಾಯಿಂಟ್ಮೆಂಟ್ ಬುಕಿಂಗ್';

  @override
  String get comingSoon => 'ಶೀಘ್ರದಲ್ಲೇ...';

  @override
  String get miniappService => 'ಸೇವೆ.';

  @override
  String get miniappConsole => 'ಕನ್ಸೋಲ್';

  @override
  String get roleChooseYourRole => 'ನಿಮ್ಮ ಪಾತ್ರವನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';

  @override
  String get roleNote => 'ಗಮನಿಸಿಃ ಅಪ್ಲಿಕೇಶನ್ನೊಳಗೆ ನಿಮ್ಮ ಪಾತ್ರವನ್ನು ನೀವು ಬದಲಾಯಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get roleConfirm => 'ದೃಢೀಕರಿಸಿ';

  @override
  String get roleEyeCareProfessional => 'ಐ ಕೇರ್ ವೃತ್ತಿಪರ';

  @override
  String get roleVisionTechnician => 'ವಿಷನ್ ಟೆಕ್ನಿಷಿಯನ್';

  @override
  String get rolePatient => 'ರೋಗಿ.';

  @override
  String get roleVisionGuardian => 'ವಿಷನ್ ಗಾರ್ಡಿಯನ್';

  @override
  String get vtSearchText => 'ರೋಗಿಯ ಗುರುತಿನ ಚೀಟಿ, ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ಅಥವಾ ಹೆಸರಿನ ಮೂಲಕ ಹುಡುಕಿ';

  @override
  String get emptyPatientsInfo => 'ರೋಗಿಗಳ ವಿವರಗಳನ್ನು ನೋಡಲು ಅವರನ್ನು ಹುಡುಕಲು ಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get vtPersonalDetails => 'ವೈಯಕ್ತಿಕ ವಿವರಗಳು';

  @override
  String get vtHprId => 'ಎಚ್. ಪಿ. ಆರ್. ಐ. ಡಿ.';

  @override
  String get vtEmailId => 'ಇಮೇಲ್ ಐಡಿ';

  @override
  String get vtEducationalQualification => 'ಶೈಕ್ಷಣಿಕ ಅರ್ಹತೆ';

  @override
  String get vtAddressAndDoorNumber => 'ವಿಳಾಸ ಮತ್ತು ಬಾಗಿಲು ಸಂಖ್ಯೆ';

  @override
  String get vtCity => 'ನಗರ.';

  @override
  String get vtState => 'ರಾಜ್ಯ.';

  @override
  String get vtPincode => 'ಪಿನ್ಕೋಡ್';

  @override
  String get vtOrganisationDetails => 'ಸಂಸ್ಥೆಯ ವಿವರಗಳು';

  @override
  String get vtOrgId => 'ಆರ್. ಜಿ. ಐ. ಡಿ.';

  @override
  String get vtFacilityType => 'ಸೌಲಭ್ಯದ ಪ್ರಕಾರ';

  @override
  String get vtAssessments => 'ಮೌಲ್ಯಮಾಪನಗಳು';

  @override
  String get vtNoAssessmentsFound => 'ಯಾವುದೇ ಮೌಲ್ಯಮಾಪನಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get vtAnalytics => 'ವಿಶ್ಲೇಷಣೆ';

  @override
  String get vtTotalCases => 'ಒಟ್ಟು ಪ್ರಕರಣಗಳು';

  @override
  String get vtIvrCalls => 'ಐವಿಆರ್ ಕರೆಗಳು';

  @override
  String get vtClinicVisits => 'ಕ್ಲಿನಿಕ್ ಭೇಟಿಗಳು';

  @override
  String get vtCasesClosed => 'ಮುಚ್ಚಿದ ಪ್ರಕರಣಗಳು';

  @override
  String get vtCritical => 'ವಿಮರ್ಶಾತ್ಮಕ';

  @override
  String get vtRegular => 'ನಿಯಮಿತವಾಗಿ';

  @override
  String get vtAvgClosureTime => 'ಸರಾಸರಿ. ಮುಚ್ಚುವ ಸಮಯ';

  @override
  String get vtByAge => 'ವಯಸ್ಸಿನ ಪ್ರಕಾರ';

  @override
  String get vtByGender => 'ಲಿಂಗದ ಪ್ರಕಾರ';

  @override
  String get vtSymptoms => 'ರೋಗಲಕ್ಷಣಗಳು';

  @override
  String get vtSearchByMobileNo => 'ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ಮೂಲಕ ಹುಡುಕಿ.';

  @override
  String get vtInvalidMobileNo => 'ಅಮಾನ್ಯವಾದ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ.';

  @override
  String get vtCallLogEmpty => 'ಕಾಲ್ ಲಾಗ್ ಖಾಲಿಯಾಗಿದೆ.. ಇನ್ನೂ ಯಾವುದೇ ಕರೆಗಳು ಮಾಡಲಾಗಿಲ್ಲ!!';

  @override
  String get vtNoDataAvailable => 'ಯಾವುದೇ ದತ್ತಾಂಶ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get vtToday => 'ಇಂದು';

  @override
  String get vtYesterday => 'ನಿನ್ನೆ';

  @override
  String get vtIvrCallNotAvailable => 'ಐವಿಆರ್ ಕರೆ ಲಭ್ಯವಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ!!';

  @override
  String get vtMarkUnavailable => 'ಲಭ್ಯವಿಲ್ಲ ಎಂದು ಗುರುತು ಮಾಡಿ';

  @override
  String get vtStartDate => 'ಆರಂಭದ ದಿನಾಂಕ';

  @override
  String get vtEndDate => 'ಅಂತ್ಯದ ದಿನಾಂಕ';

  @override
  String get vtStartTime => 'ಪ್ರಾರಂಭದ ಸಮಯ';

  @override
  String get vtEndTime => 'ಅಂತ್ಯದ ಸಮಯ';

  @override
  String get vtAddRemarksOptional => 'ಟಿಪ್ಪಣಿಗಳನ್ನು ಸೇರಿಸಿ (ಐಚ್ಛಿಕ)';

  @override
  String get vtSave => 'ಉಳಿಸಿ.';

  @override
  String get vtCancel => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get vtPleaseEnterRemark => 'ದಯವಿಟ್ಟು ಟಿಪ್ಪಣಿ ನಮೂದಿಸಿ';

  @override
  String get vtAssessment => 'ಮೌಲ್ಯಮಾಪನ';

  @override
  String get vtIvrSelections => 'ಐವಿಆರ್ ಆಯ್ಕೆಗಳು';

  @override
  String get vtLanguageSelection => 'ಭಾಷೆಯ ಆಯ್ಕೆ';

  @override
  String get vtEnglish => 'ಇಂಗ್ಲಿಷ್';

  @override
  String get vtPatientType => 'ರೋಗಿಯ ಪ್ರಕಾರ';

  @override
  String get vtProblem => 'ಸಮಸ್ಯೆ.';

  @override
  String get vtEyeSight => 'ಕಣ್ಣಿನ ದೃಷ್ಟಿ';

  @override
  String get vtVisionTechnician => 'ದೃಷ್ಟಿ ತಂತ್ರಜ್ಞ';

  @override
  String get vtRecommendedCenter => 'ಶಿಫಾರಸು ಮಾಡಲಾದ ಕೇಂದ್ರ';

  @override
  String get vtAssessmentIDEA => 'ಮೌಲ್ಯಮಾಪನ ಐಡಿಃ ಇ. ಎ.';

  @override
  String get vtPid => 'ಪಿಐಡಿಃ ಒಪಿ';

  @override
  String get vtAssessmentTimeline => 'ಮೌಲ್ಯಮಾಪನ ಕಾಲಮಿತಿ';

  @override
  String get vtPleaseSelectEncounter => 'ದಯವಿಟ್ಟು ಎನ್ಕೌಂಟರ್ ಅನ್ನು ಆಯ್ಕೆ ಮಾಡಿ';

  @override
  String get vtTimelineEA => 'ಕಾಲಮಿತಿಃ ಇ. ಎ.';

  @override
  String get vtGeneralInformation => 'ಸಾಮಾನ್ಯ ಮಾಹಿತಿ';

  @override
  String get vtDateOfBirth => 'ಹುಟ್ಟಿದ ದಿನಾಂಕ';

  @override
  String get vtAssessmentEA => 'ಮೌಲ್ಯಮಾಪನ ಇ. ಎ.';

  @override
  String get vtNotRegistered => 'ನೀವು ವ್ಯವಸ್ಥೆಯಲ್ಲಿ ನೋಂದಾಯಿಸಿಕೊಂಡಿಲ್ಲ. ದಯವಿಟ್ಟು ಮಿಸ್ಡ್ ಕಾಲ್ ನೀಡಿ';

  @override
  String get vtOkay => 'ಸರಿ.';

  @override
  String get vtTakePicture => 'ಚಿತ್ರವನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ';

  @override
  String get vtEye => 'ಕಣ್ಣು.';

  @override
  String get vtRetakePicture => 'ಚಿತ್ರವನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get vtNext => 'ಮುಂದೆ';

  @override
  String get vtMrCode => 'ಎಂಆರ್ ಕೋಡ್';

  @override
  String get vtEnterMrCode => 'ಇಲ್ಲಿ ಎಂಆರ್ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vtPleaseEnterMrCode => 'ದಯವಿಟ್ಟು ಎಂ. ಆರ್ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vtNote => 'ಟಿಪ್ಪಣಿ';

  @override
  String get vtEnterRecommendations => 'ಶಿಫಾರಸುಗಳನ್ನು ಇಲ್ಲಿ ನಮೂದಿಸಿ';

  @override
  String get vtSolutions => 'ಪರಿಹಾರಗಳು (ಗಳು)';

  @override
  String get vtLeftEye => 'ಎಡ ಕಣ್ಣು';

  @override
  String get vtRightEye => 'ಬಲ ಕಣ್ಣು';

  @override
  String get vtBothEyes => 'ಎರಡೂ ಕಣ್ಣುಗಳು';

  @override
  String get vtFilterBy => 'ಇದರ ಮೂಲಕ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get vtLocation => 'ಸ್ಥಳ';

  @override
  String get vtEnterTime => 'ದಯವಿಟ್ಟು ಸಮಯವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vtEnterDate => 'ದಯವಿಟ್ಟು ದಿನಾಂಕವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vtRecommendation => 'ಶಿಫಾರಸು';

  @override
  String get vtVisitPrimaryCenter => 'ಪ್ರಾಥಮಿಕ ಕೇಂದ್ರಕ್ಕೆ ಭೇಟಿ ನೀಡಿ';

  @override
  String get vtVisitSecondaryCenter => 'ಮಾಧ್ಯಮಿಕ ಕೇಂದ್ರಕ್ಕೆ ಭೇಟಿ ನೀಡಿ';

  @override
  String get vtVisitTertiaryCenter => 'ತೃತೀಯ ಕೇಂದ್ರಕ್ಕೆ ಭೇಟಿ ನೀಡಿ';

  @override
  String get vtVisitCenterOfExcellence => 'ಶ್ರೇಷ್ಠತಾ ಕೇಂದ್ರಕ್ಕೆ ಭೇಟಿ ನೀಡಿ';

  @override
  String get vtIvrCallQuestion => 'ನೀವು ಐವಿಆರ್ ಕರೆಯಲ್ಲಿದ್ದೀರಾ?';

  @override
  String get vtYes => 'ಹೌದು.';

  @override
  String get vtNo => 'ಇಲ್ಲ.';

  @override
  String get vtRetry => 'ಮರುಪ್ರಯತ್ನಿ ಮಾಡಿ.';

  @override
  String get vtAssessmentQuestions => 'ಮೌಲ್ಯಮಾಪನ ಪ್ರಶ್ನೆಗಳು';

  @override
  String get vtVisionCenter => 'ದೃಷ್ಟಿ ಕೇಂದ್ರ';

  @override
  String get vtVisualAcuity => 'ದೃಷ್ಟಿ ತೀಕ್ಷ್ಣತೆ';

  @override
  String get vtInvalidValue => 'ಅಮಾನ್ಯವಾದ ಮೌಲ್ಯ';

  @override
  String get vtSeverity => 'ತೀವ್ರತೆ.';

  @override
  String get vtNoVisionCentersFound => 'ಯಾವುದೇ ದೃಷ್ಟಿ ಕೇಂದ್ರಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get vtRequestLocationPermission => 'ಸ್ಥಳ ಅನುಮತಿಗಾಗಿ ವಿನಂತಿಸಿ';

  @override
  String get vtAppSettings => 'ಅಪ್ಲಿಕೇಶನ್ ಸೆಟ್ಟಿಂಗ್ಗಳು';

  @override
  String get vtEnterSomeText => 'ದಯವಿಟ್ಟು ಕೆಲವು ಪಠ್ಯವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vtPrimary => 'ಪ್ರಾಥಮಿಕ';

  @override
  String get vtDependent => 'ಅವಲಂಬಿತ';

  @override
  String get vtAddMember => 'ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get vtCompleteProfile => 'ಸಂಪೂರ್ಣ ಪ್ರೊಫೈಲ್';

  @override
  String get vtPatientNotRegistered => 'ರೋಗಿಯು ನೋಂದಾಯಿಸಿಕೊಂಡಿಲ್ಲ';

  @override
  String get vtPatientRegistered => 'ರೋಗಿಯು ನೋಂದಾಯಿಸಿಕೊಂಡಿದ್ದಾನೆ.';

  @override
  String get vtDependentNotAdded => 'ಅವಲಂಬಿತವನ್ನು ಸೇರಿಸಲಾಗಿಲ್ಲ';

  @override
  String get vtDependentAdded => 'ಅವಲಂಬಿತ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get vtServiceNotAvailable => 'ಸೇವೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get vgEyeAssessments => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನಗಳು';

  @override
  String get vgTotal => 'ಒಟ್ಟು';

  @override
  String get vgCamps => 'ಶಿಬಿರಗಳು';

  @override
  String get vgDoorToDoor => 'ಬಾಗಿಲಿಗೆ';

  @override
  String get vgByGender => 'ಲಿಂಗದ ಪ್ರಕಾರ';

  @override
  String get vgMale => 'ಪುರುಷ.';

  @override
  String get vgFemale => 'ಹೆಂಗಸು.';

  @override
  String get vgOthers => 'ಇತರರು';

  @override
  String get vgByAge => 'ವಯಸ್ಸಿನ ಪ್ರಕಾರ';

  @override
  String get vgSlideAge => 'ವರ್ಷಗಳು.';

  @override
  String get vgSymptoms => 'ರೋಗಲಕ್ಷಣಗಳು';

  @override
  String get vgRefractive => 'ವಕ್ರೀಕಾರಕ.';

  @override
  String get vgCataract => 'ಕಣ್ಣಿನ ಪೊರೆ.';

  @override
  String get vgGlaucoma => 'ಗ್ಲುಕೋಮಾ';

  @override
  String get vgKeratitis => 'ಕೆರಾಟೈಟಿಸ್';

  @override
  String get vgBlepharitis => 'ಬ್ಲೆಫರೈಟಿಸ್';

  @override
  String get vgConjunctivitis => 'ಕಂಜಂಕ್ಟಿವಿಟಿಸ್';

  @override
  String get vgServicesCreateEvent => 'ಈವೆಂಟ್ ಅನ್ನು ರಚಿಸಿ';

  @override
  String get vgServicesEyeAssessment => 'ಕಣ್ಣಿನ ಮೌಲ್ಯಮಾಪನ';

  @override
  String get vgServicesRegisterPatient => 'ಹೊಸ ರೋಗಿಯನ್ನು ನೋಂದಾಯಿಸಿ';

  @override
  String get vgAddPatients => 'ರೋಗಿಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgEvent => 'ಈವೆಂಟ್';

  @override
  String get vgAddEventPhoto => 'ಈವೆಂಟ್ ಫೋಟೊವನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgUploadImage => 'ಚಿತ್ರವನ್ನು ಅಪ್ಲೋಡ್ ಮಾಡಿ';

  @override
  String get vgAddPhotoInstruction => 'ಥಂಬ್ನೇಲ್ ಆಗಿ ತೋರಿಸಲಾಗುವ ಈವೆಂಟ್ನ ಫೋಟೋವನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgAddressDetails => 'ವಿಳಾಸ ವಿವರಗಳು';

  @override
  String get vgVenueName => 'ಸ್ಥಳದ ಹೆಸರು';

  @override
  String get vgVenueNameError => 'ದಯವಿಟ್ಟು ಸ್ಥಳದ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vgVenueNameSpecialCharError => 'ಯಾವುದೇ ವಿಶೇಷ ಅಕ್ಷರಗಳನ್ನು ಹೊಂದಿರಬಾರದು.';

  @override
  String get vgPincode => 'ಪಿನ್ಕೋಡ್';

  @override
  String get vgPincodeError => 'ಕೇವಲ 6 ಅಂಕಿಯ ಪಿನ್ಕೋಡ್ ಅನ್ನು ಮಾತ್ರ ಅನುಮತಿಸಲಾಗಿದೆ.';

  @override
  String get vgCityTownVillage => 'ನಗರ/ಪಟ್ಟಣ/ಗ್ರಾಮ';

  @override
  String get vgCityTownVillageError => 'ದಯವಿಟ್ಟು ನಗರ/ಪಟ್ಟಣ/ಗ್ರಾಮದ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vgCityTownVillageSpecialCharError => 'ಯಾವುದೇ ವಿಶೇಷ ಅಕ್ಷರಗಳನ್ನು ಹೊಂದಿರಬಾರದು.';

  @override
  String get vgCancel => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String get vgSave => 'ಉಳಿಸಿ.';

  @override
  String get vgAddEventImage => 'ಈವೆಂಟ್ ಚಿತ್ರವನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgEventAdded => 'ಈವೆಂಟ್ ಅನ್ನು ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get vgEventNotAdded => 'ಈವೆಂಟ್ ಅನ್ನು ಸೇರಿಸಲಾಗಿಲ್ಲ';

  @override
  String get vgDateTime => 'ದಿನಾಂಕ ಮತ್ತು ಸಮಯ';

  @override
  String get vgStartDate => 'ಆರಂಭದ ದಿನಾಂಕ';

  @override
  String get vgStartTime => 'ಪ್ರಾರಂಭದ ಸಮಯ';

  @override
  String get vgLocation => 'ಸ್ಥಳ';

  @override
  String get vgViewOnMap => 'ನಕ್ಷೆಯಲ್ಲಿ ವೀಕ್ಷಿಸಿ';

  @override
  String get vgAddressAndDoorNumber => 'ವಿಳಾಸ ಮತ್ತು ಬಾಗಿಲು ಸಂಖ್ಯೆ';

  @override
  String get vgSubDistrictName => 'ಉಪ ಜಿಲ್ಲೆಯ ಹೆಸರು';

  @override
  String get vgVillageName => 'ಗ್ರಾಮದ ಹೆಸರು';

  @override
  String get vgDistrictName => 'ಜಿಲ್ಲೆಯ ಹೆಸರು';

  @override
  String get vgAbout => 'ಬಗ್ಗೆ';

  @override
  String get vgEditEvent => 'ಈವೆಂಟ್ ಅನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get vgDeleteEvent => 'ಈವೆಂಟ್ ಅನ್ನು ಅಳಿಸಿ';

  @override
  String get vgErrorFetchingEventDetails => 'ಘಟನೆಯ ವಿವರಗಳನ್ನು ಪಡೆಯುವಲ್ಲಿ ದೋಷ';

  @override
  String get vgNoPatientRegistered => 'ಹೆಸರಿನೊಂದಿಗೆ ಯಾವುದೇ ರೋಗಿಯನ್ನು ನೋಂದಾಯಿಸಲಾಗಿಲ್ಲ. ರಿಜಿಸ್ಟರ್ ರೋಗಿಯ ಮೇಲೆ ಕ್ಲಿಕ್ ಮಾಡಿ.';

  @override
  String get vgRegisterPatient => 'ರೋಗಿಯನ್ನು ನೋಂದಾಯಿಸಿ';

  @override
  String get vgPrimary => 'ಪ್ರಾಥಮಿಕ';

  @override
  String get vgDependent => 'ಅವಲಂಬಿತ';

  @override
  String get vgAddMember => 'ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgCompleteProfile => 'ಸಂಪೂರ್ಣ ಪ್ರೊಫೈಲ್';

  @override
  String get vgStartAssessment => 'ಮೌಲ್ಯಮಾಪನವನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get vgSearchPatientByPhoneNumber => 'ದೂರವಾಣಿ ಸಂಖ್ಯೆಯಿಂದ ರೋಗಿಯನ್ನು ಹುಡುಕಿ';

  @override
  String get vgInvalidPhoneNumber => 'ದಯವಿಟ್ಟು ಮಾನ್ಯವಾದ ದೂರವಾಣಿ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vgServerError => 'ಪರಿಚಾರಕ ದೋಷ';

  @override
  String get vgPatient => 'ರೋಗಿಯ.';

  @override
  String get vgReportId => 'ಗುರುತಿನ ಚೀಟಿಯನ್ನು ವರದಿ ಮಾಡಿ';

  @override
  String get vgNoEventFound => 'ಯಾವುದೇ ಈವೆಂಟ್ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get vgTeamMateDeletedSuccessfully => 'ಟೀಮ್ಮೇಟ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get vgSomethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ';

  @override
  String get vgName => 'ಹೆಸರು.';

  @override
  String get vgPhoneNumber => 'ದೂರವಾಣಿ ಸಂಖ್ಯೆ';

  @override
  String get vgErrorFetchingTeammatesDetails => 'ತಂಡದ ಸಹ ಆಟಗಾರರ ವಿವರಗಳನ್ನು ಪಡೆಯುವಲ್ಲಿ ದೋಷ';

  @override
  String get vgTeamMateAddedSuccessfully => 'ಟೀಮ್ಮೇಟ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get vgAddTeammate => 'ತಂಡದ ಸದಸ್ಯರನ್ನು ಸೇರಿಸಿ';

  @override
  String get vgPleaseEnter => 'ದಯವಿಟ್ಟು ಪ್ರವೇಶಿಸಿ';

  @override
  String get vgPleaseEnterField => 'ದಯವಿಟ್ಟು ಕ್ಷೇತ್ರವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get vgOr => 'ಅಥವಾ';

  @override
  String get vgSearch => 'ಹುಡುಕಿ.';

  @override
  String get vgEventDeletedSuccessfully => 'ಈವೆಂಟ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get vgEventDeletionFailed => 'ಈವೆಂಟ್ ಅಳಿಸುವಿಕೆಯು ವಿಫಲವಾಗಿದೆ';

  @override
  String get vgEndTimeGreaterThanStartTime => 'ಅಂತ್ಯದ ಸಮಯವು ಪ್ರಾರಂಭದ ಸಮಯಕ್ಕಿಂತ ಹೆಚ್ಚಾಗಿರಬೇಕು.';

  @override
  String get vgNoPatientsPresent => 'ಪ್ರಸ್ತುತ ಯಾವುದೇ ರೋಗಿಗಳಿಲ್ಲ. "ರೋಗಿಯನ್ನು ಸೇರಿಸಿ" ಗುಂಡಿಯನ್ನು ಒತ್ತಿ.';

  @override
  String get textSize => 'ಪಠ್ಯದ ಗಾತ್ರ';

  @override
  String get increase => 'ಹೆಚ್ಚಿಸಿ';

  @override
  String get decrease => 'ಕಡಿವಾಣಿಸಿ';

  @override
  String get reset => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get minimumTextSizeReached => 'ಕನಿಷ್ಠ ಪಠ್ಯ ಗಾತ್ರ ತಲುಪಿದೆ';

  @override
  String get maximumTextSizeReached => 'ಗರಿಷ್ಠ ಪಠ್ಯ ಗಾತ್ರ ತಲುಪಿದೆ';

  @override
  String get chatClearChat => 'Clear Chat';

  @override
  String get chatEyeAssessmentRecommended => 'Eye assessment is recommended for you.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'Do you want to take the triage eye assessment?';

  @override
  String get chatChatbotNotAvailable => 'Chatbot is not available at the moment. Please try again later.';

  @override
  String get chatTypeHere => 'Type here...';

  @override
  String get switchProfile => 'Switch Profile';

  @override
  String get switchRole => 'Switch Role';

  @override
  String get switchTenant => 'Switch Tenant';

  @override
  String get patientHeaderWelcomeText => 'Welcome to SightConnect! Taking care of your vision is important, and we are here for you every step of the way.';

  @override
  String get triageTestCardHeader => 'Your eye test is free…';

  @override
  String get triageTestCardBody1 => 'Quickly analyse your eye symptoms';

  @override
  String get triageTestCardBody2 => 'Identify if you may have an eye problem';

  @override
  String get triageTestCardBody3 => 'Know when to visit your doctor';

  @override
  String get triageTestCardButton => 'Start Free Eye Test';

  @override
  String get myConnectionListAddMembersDescription => 'Click the Add Members button to add your family and friends.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'How do you want to proceed?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'I have a problem and want to validate';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'I am not sure if I have a problem';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'I have no eye issues – just want to check';

  @override
  String get appDrawerToastMessageText => 'Apologies, we encountered a logout error in the mobile app.';
}
