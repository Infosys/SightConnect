import 'app_localizations.dart';

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} ৰ ${total}';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'Please enter the OTP sent to ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'Resend in ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} has an appointment';
  }

  @override
  String vgEmptyResults(String type) {
    return 'There are no ${type}s at present. Tap on "Add ${type}"';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return 'Search by ${searchType} ID, Name';
  }

  @override
  String get questionnaireTitle => 'চকুৰ মূল্যায়নৰ প্ৰশ্নসমূহ';

  @override
  String get questionnaireExitDialog => 'এই প্ৰশ্নবোৰৰ উত্তৰে আপোনাৰ চকুৰ সমস্যাবোৰ চিনাক্ত কৰাত সহায় কৰিব। আপুনি সঁচাকৈয়ে বাহিৰ হোৱাটো বিচাৰে নেকি?';

  @override
  String get visualAcuityTitle => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা';

  @override
  String get visualAcuityDescription => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা হৈছে চকুৰ পৰীক্ষা যিয়ে আপুনি এটা নিৰ্দিষ্ট দূৰত্বৰ পৰা এখন আখৰ বা চিহ্নৰ বিৱৰণ কিমান ভালদৰে দেখে সেয়া পৰীক্ষা কৰে। এই দ্ৰুত পৰীক্ষাটো এতিয়া কৰক!';

  @override
  String get visualAcuityHowToPerform => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা কেনেকৈ সম্পন্ন কৰিব লাগে?';

  @override
  String get visualAcuityViewStepsToPerform => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা সম্পন্ন কৰাৰ পদক্ষেপসমূহ চাওক';

  @override
  String get visualAcuityCompletionDialog => 'সম্পূৰ্ণ! দুয়োটা চকুৰ বাবে চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা সম্পূৰ্ণ হৈছে। ইয়াৰ পিছত আপুনি আপোনাৰ চকুৰ ফটো ল \'ব লাগিব।';

  @override
  String get visualAcuityExitDialog => 'দৃষ্টিশক্তিৰ তীক্ষ্ণতা আপোনাৰ চকুৰ সমস্যাৰ বিষয়ে বুজিবলৈ এক গুৰুত্বপূৰ্ণ পৰীক্ষা। আপুনি সঁচাকৈয়ে বাহিৰলৈ ওলাব বিচাৰে নেকি?';

  @override
  String get swipeGestureTab => 'স্বাইপ কৰক অঙ্গভঙ্গি';

  @override
  String get voiceAssistTab => 'ভইচ এচিস্ট';

  @override
  String get distanceString => 'দূৰত্ব';

  @override
  String get leftEyeString => 'বাওঁ চকু';

  @override
  String get rightEyeString => 'সোঁ চকু';

  @override
  String get bothEyesString => 'দুয়োটা চকু';

  @override
  String get visualAcuityLeftEyeHeader => 'পৰীক্ষা 2-বাওঁ চকু';

  @override
  String get visualAcuityLeftEyeInstructions => 'চকুৰ পতাত হেঁচা নিদিয়াকৈ সোঁ চকুখন হাতেৰে ঢাকি ৰাখক। যদি আপুনি চশমা পিন্ধি আছে তেন্তে আপোনাৰ হাতখন চশমাৰ ওপৰত ৰাখক।';

  @override
  String get visualAcuityRightEyeHeader => 'পৰীক্ষা 1-সোঁ চকু';

  @override
  String get visualAcuityRightEyeInstructions => 'চকুৰ পতাত হেঁচা নিদিয়াকৈ বাওঁ চকুখন হাতেৰে ঢাকি ৰাখক। যদি আপুনি চশমা পিন্ধি আছে তেন্তে আপোনাৰ হাতখন চশমাৰ ওপৰত ৰাখক।';

  @override
  String get visualAcuityBothEyeHeader => 'পৰীক্ষা 3-দুয়োটা চকু';

  @override
  String get visualAcuityBothEyeInstructions => 'আপোনাৰ কোনো চকু ঢাকিব নালাগে আৰু দুয়ো চকুৰে ওচৰত দেখা দিয়া চিহ্নবোৰ চাব নালাগে।';

  @override
  String get overlayHeaderDirection => 'নিৰ্দেশনা';

  @override
  String get overlayDescription => 'ইয়াত আপুনি প্ৰতিটো চিহ্নৰ দিশবোৰ কেনেদৰে বুজি পায়।';

  @override
  String get overlaySymbolDirectionText => 'চিহ্নৰ দিশঃ';

  @override
  String get directionDown => 'তলমুৱা।';

  @override
  String get directionUp => 'ওপৰলৈ।';

  @override
  String get directionLeft => 'বাওঁফালে';

  @override
  String get directionRight => 'ঠিকেই।';

  @override
  String get dontShowAgainString => 'পুনৰ দেখুৱাব নালাগে';

  @override
  String get visualAcuityCarouselTitle => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা সম্পন্ন কৰাৰ পদক্ষেপসমূহ';

  @override
  String get eyeScanTitle => 'চকুৰ স্কেন';

  @override
  String get eyeScanDescription => 'আপুনি ওচৰতে আছে! মাত্ৰ আৰু এটা পৰীক্ষা বাকী আছে। তাৰ পিছত আপোনাৰ চকুৰ ফটোবোৰ কেপচাৰ কৰক।';

  @override
  String get eyeScanHowToPerform => 'আপোনাৰ চকু কেনেকৈ স্কেন কৰিব?';

  @override
  String get eyeScanViewStepsToPerform => 'আপোনাৰ চকু কেনেকৈ স্কেন কৰিব লাগে জানিবলৈ পদক্ষেপসমূহ চাওক।';

  @override
  String get eyeScanExitDialog => 'চকুৰ স্কেনে আপোনাৰ চকুৰ সমস্যাৰ বিষয়ে অধিক বুজাত সহায় কৰে। আপুনি সঁচাকৈয়ে বাহিৰলৈ ওলাব বিচাৰে নেকি?';

  @override
  String get captureRightEyeString => 'সোঁ চকু ধৰক';

  @override
  String get captureLeftEyeString => 'বাওঁ চকু ধৰক';

  @override
  String get skipButton => 'স্কিপ কৰক';

  @override
  String get startTestText => 'পৰীক্ষা আৰম্ভ কৰক';

  @override
  String get continueButton => 'অব্যাহত ৰাখক';

  @override
  String get startButton => 'আৰম্ভ কৰক';

  @override
  String get nextButton => 'পৰৱৰ্তী';

  @override
  String get proceedButton => 'আগবাঢ়ি যাওক';

  @override
  String get yesButton => 'হয়।';

  @override
  String get noButton => 'নাই।';

  @override
  String get exitButton => 'প্ৰস্থান কৰক';

  @override
  String get okButton => 'ঠিক আছে।';

  @override
  String get knowMoreButton => 'অধিক জানক';

  @override
  String get seeAllButton => 'সকলো চাওক';

  @override
  String get tryAgainButton => 'পুনৰ চেষ্টা কৰক';

  @override
  String get shareNowButton => 'এতিয়া শ্বেয়াৰ কৰক';

  @override
  String get retryButton => 'পুনৰ চেষ্টা কৰক';

  @override
  String get homeCarousal1Title => '40 বছৰ আৰু তাতকৈ অধিক বয়সৰ প্ৰাপ্তবয়স্কসকলৰ মাজত ছানি পৰাৰ প্ৰাদুৰ্ভাৱ আৰু ইয়াৰ লগত জড়িত কাৰকসমূহ';

  @override
  String get homeCarousal1Description => 'ছানি পৰাৰ প্ৰাদুৰ্ভাৱ আৰু ইয়াৰ লগত জড়িত কাৰকসমূহৰ ওপৰত নমুনা প্ৰক্ৰিয়াৰ পৰিকল্পিত উপস্থাপন';

  @override
  String get homeCarousal2Title => 'চকুৰ 7টা সমস্যা হেৰুৱাব নোৱাৰিব!';

  @override
  String get homeCarousal2Description => '\r\nচকুৰ 7টা সমস্যাৰ বাবে পৰীক্ষা কৰা হ \'বঃ \r\n \r\n• চকু ৰঙা হোৱা, \r\n• চকুৰ পৰা পানী ওলোৱা, \r\n• চকুত বগা দাগ পৰীক্ষা কৰা হ\' ব।';

  @override
  String get homeCarousal3Title => 'চকুৰ সমস্যা। এনে বহুতো আছে যিবোৰ আপুনি চাব নোৱাৰে।';

  @override
  String get homeCarousal3Description => 'কিন্তু এজন দৃষ্টিশক্তিৰ যত্ন লোৱা বিশেষজ্ঞই কৰিব পাৰে। \r\nপৰৱৰ্তী সময়ত জটিলতাৰ পৰা হাত \r\nসাৰিবলৈ সময়মতে চকুৰ সমস্যা চিনাক্ত \r\nআৰু চিকিৎসা কৰাব পাৰে।';

  @override
  String get myConnectionsTitle => 'মোৰ সদস্যসকল';

  @override
  String get myConnectionsAddMember => 'সদস্য যোগ কৰক';

  @override
  String get myConnectionsServiceNotAvailable => 'সেৱা উপলব্ধ নহয়';

  @override
  String get myConnectionsAdd => 'যোগ কৰক';

  @override
  String get recentServicesTitle => 'মোৰ শেহতীয়া সেৱাসমূহ';

  @override
  String get recentServicesEyeAssessment => 'চকুৰ মূল্যায়ন';

  @override
  String get recentServicesVisualAcuityTest => 'চাক্ষুষ তীক্ষ্ণতা পৰীক্ষা';

  @override
  String get nearbyVisionCentersTitle => 'ওচৰৰ দৃষ্টি কেন্দ্ৰসমূহ';

  @override
  String get nearbyVisionCentersNotFound => 'কোনো দৃষ্টি কেন্দ্ৰ পোৱা নগ "ল';

  @override
  String get tollFreeNumber => 'টোল ফ্ৰী নম্বৰ';

  @override
  String get appDrawerTitle => 'মেনু';

  @override
  String get appDrawerHome => 'ঘৰ।';

  @override
  String get appDrawerLanguageSelection => 'ভাষা নিৰ্বাচন';

  @override
  String get appDrawerAccessibility => 'অভিগম্যতা সংহতিসমূহ';

  @override
  String get appDrawerMyProfile => 'মোৰ প্ৰফাইল';

  @override
  String get appDrawerAssessmentsAndTests => 'মূল্যায়ন আৰু পৰীক্ষা';

  @override
  String get appDrawerScanner => 'QR ক\'ড স্ক্যানাৰ';

  @override
  String get appDrawerAboutUs => 'আমাৰ বিষয়ে';

  @override
  String get appDrawerPrivacyPolicy => 'গোপনীয়তা আৰু তথ্য নীতি';

  @override
  String get appDrawerHelpAndSupport => 'সহায় আৰু সমৰ্থন';

  @override
  String get appDrawerSignOut => 'ছাইন আউট কৰক';

  @override
  String get aboutUsDescription => 'Sightconnect হৈছে এক ব্যৱহাৰকাৰী-অনুকূল চকুৰ যত্নৰ এপ যিয়ে কলৰ জৰিয়তে আত্ম-মূল্যায়ন আৰু পৰামৰ্শ প্ৰদান কৰাত সহায় কৰে। \r\n\r\nআমাৰ লক্ষ্যৰ কেন্দ্ৰবিন্দু হৈছে চকুৰ যত্ন সকলোৰে বাবে সুলভ কৰাৰ প্ৰতিশ্ৰুতি। এই এপটো জীৱনৰ সকলো ক্ষেত্ৰৰ ব্যৱহাৰকাৰীৰ বাবে অন্তৰ্ভুক্তিমূলক আৰু সুগম হোৱাকৈ ডিজাইন কৰা হৈছে, তেওঁলোকৰ বয়স, কাৰিকৰী পটভূমি, আৰু সামাজিক বা অৰ্থনৈতিক পটভূমি নিৰ্বিশেষে। এপটো আৰু ইয়াৰ সমলবোৰ ইংৰাজী আৰু অন্যান্য স্থানীয় ভাষাত উপলব্ধ কৰা হৈছে। ই ব্যৱহাৰকাৰীসকলক নিজৰ চকুৰ মূল্যায়ন কৰাত আৰু সময়মতে চিকিৎসাৰ পৰামৰ্শ লাভ কৰাত সহায় কৰে। এপটোৱে আমাৰ ব্যৱহাৰকাৰীসকলক ব্যক্তিগত চকুৰ যত্নৰ সমাধান প্ৰদান কৰিবলৈ শেহতীয়া প্ৰযুক্তি আৰু সঁজুলি ব্যৱহাৰ কৰে। তেওঁলোকৰ জীৱনটো সহজ কৰি তুলিবলৈ ইয়াত বিভিন্ন ধৰণৰ বৈশিষ্ট্য আছে।';

  @override
  String get aboutUsFeaturesTitle => 'বৈশিষ্ট্যসমূহ';

  @override
  String get aboutUsFeaturesDescription => 'ইন-এপ চকু পৰীক্ষাঃ এপটোৱে ইয়াৰ ব্যৱহাৰকাৰীসকলক কেইটামান প্ৰশ্নৰ উত্তৰ দি আৰু পৰৱৰ্তী পদক্ষেপ আৰু চিকিৎসকৰ ওচৰলৈ যোৱাৰ বিষয়ে উপযুক্ত পৰামৰ্শ লাভ কৰি নিজৰ চকুৰ মূল্যায়ন কৰিবলৈ অনুমতি দিয়ে। আনকি ব্যৱহাৰকাৰীসকলৰ বন্ধুবৰ্গ আৰু পৰিয়ালেও উপকৃত হ \'ব পাৰে। বুকিং কৰকঃ ব্যৱহাৰকাৰীসকলে চকু চিনাক্ত কৰিবলৈ চিকিৎসকৰ সৈতে অনলাইন টেলিকনচালটেশ্যন আৰু ইন-ক্লিনিক ভিজিট বুক কৰিব পাৰে। |IVR কল সেৱাসমূহঃ আমাৰ আইভিআৰ কল সেৱাসমূহ ইংৰাজী আৰু স্থানীয় ভাষাতো উপলব্ধ আৰু ই মৌলিক ফিচাৰ ফোন থকা ব্যৱহাৰকাৰীসকলক যোগান ধৰে। ব্যৱহাৰকাৰীসকলে আমাৰ চকুৰ যত্ন লোৱা পেছাদাৰীসকলক জৰুৰীকালীন অৱস্থাত বা চকু সম্পৰ্কীয় যিকোনো সমস্যাৰ বাবে তাৎক্ষণিক সহায় বিচাৰিবলৈ ডায়েল কৰিব পাৰে। এপইণ্টমেণ্ট বুকিং কৰিবলৈ বা অধিক স্পষ্টীকৰণ বিচাৰিবলৈও ফোন কৰিব পাৰে। |নিকটৱৰ্তী ক্লিনিকসমূহ: ব্যৱহাৰকাৰীসকলে তেওঁলোকৰ ওচৰৰ চকুৰ যত্ন লোৱা ক্লিনিকসমূহ বিচাৰি উলিয়াব পাৰে। |প্ৰেছক্ৰিপচন আৰু ৰিপৰ্ট: ব্যৱহাৰকাৰীৰ সকলো প্ৰেছক্ৰিপচন আৰু ৰিপৰ্ট এটা ঠাইৰ পৰা বিশেষ হেঁচা নোহোৱাকৈয়ে প্ৰৱেশ কৰিব পাৰি। |চকুৰ শিবিৰ: ব্যৱহাৰকাৰীয়ে ওচৰৰ চকুৰ শিবিৰৰ বিষয়ে তথ্য লাভ কৰি বন্ধু-বান্ধৱ আৰু পৰিয়ালৰ চকুৰ পৰীক্ষা বিনামূলীয়াকৈ কৰিব পাৰিব। |সোঁৱৰাই দিয়া আৰু সতৰ্কবাণী: ব্যৱহাৰকাৰীয়ে তেওঁলোকৰ আগন্তুক এপইণ্টমেণ্ট, ঔষধ, প্ৰতিবেদন আদিৰ সৈতে জড়িত সময়মতে সতৰ্কতা আৰু সোঁৱৰাই লাভ কৰিব পাৰে। | শ্বেয়াৰ কৰাঃ ব্যৱহাৰকাৰীসকলে এই এপটো আৰু এপটোৰ ভিতৰত প্ৰদান কৰা অন্যান্য উপযোগী তথ্য তেওঁলোকৰ বন্ধুবৰ্গ আৰু পৰিয়ালৰ সদস্যসকলৰ সৈতে শ্বেয়াৰ কৰিব পাৰে।';

  @override
  String get aboutUsConclusion => 'এই এপটো আমাৰ ব্যৱহাৰকাৰী সম্প্ৰদায়ক ভালদৰে সেৱা আগবঢ়াবলৈ আগশাৰীৰ চকুৰ যত্ন লোৱা পেছাদাৰীসকলৰ সহায়ত বিকশিত কৰা হৈছে। এক উজ্জ্বল, স্বাস্থ্যকৰ পৃথিৱী সৃষ্টি কৰাৰ বাবে আমাৰ অভিযানত যোগদান কৰক। আজি চাইটকনেক্ট এপটো ডাউনলোড আৰু শ্বেয়াৰ কৰক!';

  @override
  String get privacyPolicyDescription => 'এলভি প্ৰসাদ আই ইনষ্টিটিউট, ইয়াৰ সহযোগী, সহযোগী আৰু অনুমোদিত কোম্পানীসমূহ (সামূহিকভাৱে "এলভিপিইআই", "আমাক", "আমি" বুলি কোৱা হয়) আপোনাৰ অধিকাৰক্ষেত্ৰৰ আইন অনুসৰি আপোনাৰ ব্যক্তিগত তথ্য প্ৰক্ৰিয়া কৰিবলৈ প্ৰতিশ্ৰুতিবদ্ধ। আমি ইয়াৰ দ্বাৰা আপোনাক ব্যক্তিগত তথ্য প্ৰক্ৰিয়াকৰণৰ বিষয়ে তলত দিয়া তথ্যসমূহ অৱগত কৰো।';

  @override
  String get privacyPolicyPersonalDataTitle => 'ব্যক্তিগত তথ্যৰ উপাদানসমূহ সংগ্ৰহ/প্ৰক্ৰিয়া কৰা হৈছেঃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'আপুনি আৰু আপোনাৰ সংযোগৰ ব্যক্তিগত তথ্য যেনে (ইয়াৰে কিছুমান তথ্য ঐচ্ছিক হ \'ব) মোবাইল নম্বৰ, নাম, জন্মৰ তাৰিখ, লিংগ (পুৰুষ/মহিলা), ঠিকনা (পিন ক\' ড), ৰোগীৰ আইডি, সংযোগ, চকুৰ ট্ৰাইজেজ প্ৰশ্নাৱলীৰ প্ৰতিক্ৰিয়া, চকুৰ ট্ৰাইজেজ প্ৰতিবেদন, চকুৰ ছবি, আপোনাৰ চকুৰ ছবিৰ বিপৰীতে টেগ কৰা লক্ষণ, ফটোগ্ৰাফ, ঠিকনাৰ বিৱৰণ যেনে ঠিকনা, জিলাৰ নাম (জিলা ক \'ডকে ধৰি), ৰাজ্যৰ নাম (ৰাজ্যিক ক\' ডকে ধৰি), উপ-জিলাৰ নাম, গাওঁৰ নাম, চহৰৰ নাম, ইমেইল ঠিকনা, অন্তিম নাম, মধ্য নাম, ব্লাড গ্ৰুপ, উচ্চতা, ওজন, বৃত্তি, ABHA বিৱৰণ (আপুনি প্ৰদান কৰা ধৰণে), আপোনাৰ এপৰ অনুমতিৰ ওপৰত ভিত্তি কৰি কেমেৰা, GPS অৱস্থান, এপ্লিকেচনত প্ৰৱেশ কৰাৰ বাবে গ্যালাৰীলৈ প্ৰৱেশ, সম্পূৰ্ণ নেটৱৰ্ক অভিগম, নেটৱৰ্ক সংযোগসমূহ চাওক, ডিভাইচৰ তথ্য।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'প্ৰক্ৰিয়াকৰণৰ উদ্দেশ্যঃ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'আপোনাৰ আৰু আপোনাৰ সংযোগৰ বাবে চকু সম্পৰ্কীয় অনলাইন স্বাস্থ্য পৰীক্ষাৰ বাবে আমাৰ এপ্লিকেচন আৰু ইয়াৰ বৈশিষ্ট্যসমূহ প্ৰৱেশ কৰিবলৈ আপোনাক সক্ষম কৰিবলৈ (আপোনাৰ দ্বাৰা প্ৰদান কৰা অনুসৰি)। |যিকোনো চকু সম্পৰ্কীয় ৰোগ/স্বাস্থ্য সমস্যাৰ ক্ষেত্ৰত প্ৰযোজ্য হোৱাকৈ, এল. ভি. পি. ই. আই.-ৰ অধীনত দৃষ্টিশক্তি প্ৰযুক্তিবিদ, চকুৰোগ বিশেষজ্ঞৰ সৈতে যোগাযোগ কৰিবলৈ আপোনাক সক্ষম কৰক। |আপোনাৰ স্বাস্থ্য পৰামৰ্শ আৰু ৰোগ নিৰ্ণয়ৰ অংশ হিচাপে আৰু স্বাস্থ্য সম্পৰ্কীয় চিন্তাৰ অংশ হিচাপে আপোনাৰ সৈতে বা আপোনাৰ সংযোগৰ সৈতে যোগাযোগ কৰিবলৈ যিকোনো চকুৰ স্বাস্থ্য সম্পৰ্কীয় তথ্য (প্ৰতিবেদনকে ধৰি) প্ৰদান কৰক। |ভাল ৰোগ নিৰ্ণয়ৰ বাবে আমাৰ অনুমোদিত এল. ভি. পি. ই. আই. চকুৰোগ বিশেষজ্ঞ/চিকিৎসকৰ সৈতে আপোনাৰ চকুৰ স্বাস্থ্যৰ তথ্য ভাগ বতৰা কৰক আৰু ইয়াক গাঁও প্ৰধান/মেয়ৰ আদিৰ সৈতে ভাগ বতৰা কৰক। (য \'ত আপোনাৰ জিপিএছ অৱস্থানৰ ওপৰত ভিত্তি কৰি প্ৰযোজ্য) চকুৰ সমস্যাৰ তীব্ৰতাৰ ওপৰত নিৰ্ভৰ কৰি যদি আপুনি চিকিৎসাৰ বাবে এলভিপিইআই চিকিৎসকৰ ওচৰলৈ যাব/অৱগত কৰিব নোৱাৰে। আপোনাৰ ওচৰৰ এল. ভি. পি. ই. আই.-ৰ সৈতে সংযুক্ত চকুৰ ক্লিনিক/চিকিৎসালয়সমূহৰ তালিকা প্ৰদান কৰিবলৈ, যাতে আপুনি চকু সম্পৰ্কীয় যিকোনো সমস্যাৰ ক্ষেত্ৰত যোগাযোগ কৰিব পাৰে। |চকুৰ ছবিৰ দৰে তথ্য ব্যৱহাৰ কৰিবলৈ, চকুৰ ছবিৰ সৈতে সম্পৰ্কিত লক্ষণ, বয়স, তেজৰ গোট, কোনো চিনাক্তকৰণ নোহোৱা অৱস্থান যাতে ভৱিষ্যতে সঠিক ৰোগ নিৰ্ণয় প্ৰদান কৰাৰ উদ্দেশ্যে আমাৰ যন্ত্ৰ শিক্ষণ বা কৃত্ৰিম বুদ্ধিমত্তা মডেলসমূহক প্ৰশিক্ষণ প্ৰদান কৰাত সহায় কৰিব পাৰি। |চকুৰ স্বাস্থ্যৰ বাবে সজাগতা সৃষ্টি কৰিবলৈ ৰিমাইণ্ডাৰ, যোগাযোগ, প্ৰচাৰ মেইলৰ প্ৰেৰণৰ বাবে।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'তথ্য গ্ৰহণকাৰী/ইয়াত উপলব্ধঃ';

  @override
  String get privacyPolicyDataRecipientsDescription => 'আপুনি শ্বেয়াৰ কৰা ব্যক্তিগত তথ্য (স্পৰ্শকাতৰ ব্যক্তিগত তথ্যকে ধৰি) চিকিৎসক/চকুৰোগ বিশেষজ্ঞ, ভিজন টেকনিচিয়ান, ভিজন গাৰ্ডিয়ান, এলভিপিইআইৰ প্ৰতিনিধি, আভ্যন্তৰীণ/বাহ্যিক অডিটাৰ, চৰকাৰী কৰ্তৃপক্ষ য \'ত প্ৰযোজ্য, আৰু আমাৰ অনুমোদিত সেৱা প্ৰদানকাৰী Infosys দৰে অনুমোদিত এলভিপিইআই কৰ্মচাৰীসকলৰ বাবে উপলব্ধ হ\' ব।';

  @override
  String get privacyPolicyDataTransferTitle => 'তথ্য স্থানান্তৰ আৰু সংৰক্ষণঃ';

  @override
  String get privacyPolicyDataTransferDescription => 'আপুনি ভাগ-বতৰা কৰা ব্যক্তিগত তথ্য আমাৰ আভ্যন্তৰীণ চাৰ্ভাৰ, ভাৰতত থকা আমাৰ অনুমোদিত সেৱা প্ৰদানকাৰীৰ চাৰ্ভাৰত সংৰক্ষণ কৰা হ \'ব।';

  @override
  String get privacyPolicyDataSecurityTitle => 'তথ্য সুৰক্ষাঃ';

  @override
  String get privacyPolicyDataSecurityDescription => 'এল. ভি. পি. ই. আই.-এ আপোনাৰ ব্যক্তিগত তথ্য সুৰক্ষিত কৰাৰ বাবে প্ৰশাসনিক, শাৰীৰিক সুৰক্ষা, আৰু কাৰিকৰী নিয়ন্ত্ৰণকে ধৰি যুক্তিসংগত আৰু উপযুক্ত সুৰক্ষা অনুশীলন আৰু প্ৰক্ৰিয়া গ্ৰহণ কৰে।';

  @override
  String get privacyPolicyDataRetentionTitle => 'তথ্য ধৰি ৰখাঃ';

  @override
  String get privacyPolicyDataRetentionDescription => 'আইনী আৰু ব্যৱসায়িক প্ৰয়োজনীয়তা অনুসৰি আৰু ৰখাৰ প্ৰয়োজন নথকা ব্যক্তিগত তথ্য সুৰক্ষিতভাৱে নিষ্পত্তি কৰা হ \'ব।';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'তথ্য বিষয়ৰ অধিকাৰঃ';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'আপোনাৰ যিকোনো সময়তে আপোনাৰ ব্যক্তিগত তথ্য প্ৰৱেশ আৰু সংশোধন কৰাৰ অধিকাৰ আছে। যিকোনো অনুৰোধ, সমস্যা, উদ্বেগ বা প্ৰশ্নৰ ক্ষেত্ৰত আপুনি ডিএছআৰৰ বাবে জেনেৰিক মেইল আইডি প্ৰদান কৰিবলৈ <এলভিপিইআইলৈ ইমেইল প্ৰেৰণ কৰি এলভি প্ৰসাদ কাৰ্যালয়লৈ যোগাযোগ কৰিব পাৰে।';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'প্ৰত্যাহাৰৰ অধিকাৰঃ';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'য \'ত আমি আপোনাৰ সন্মতিৰ ভিত্তিত আপোনাৰ ব্যক্তিগত তথ্য প্ৰক্ৰিয়া কৰোঁ, আপুনি ভৱিষ্যতৰ বাবে যিকোনো সময়তে প্ৰযোজ্য ডিপি আইন অনুসৰি প্ৰক্ৰিয়াকৰণৰ বাবে আপোনাৰ সন্মতি প্ৰত্যাহাৰ কৰিব পাৰে। ই আপোনাৰ প্ৰত্যাহাৰৰ আগতে কোনো প্ৰক্ৰিয়াকৰণ কাৰ্য্যকলাপৰ বৈধতা প্ৰভাৱিত নকৰে। আপোনাৰ সন্মতি প্ৰত্যাহাৰ কৰিবলৈ, আপুনি ডিএছআৰৰ বাবে জেনেৰিক মেইল আইডি প্ৰদান কৰিবলৈ <এলভিপিইআইলৈ এটা ইমেইল প্ৰেৰণ কৰিব পাৰে।';

  @override
  String get privacyPolicyAcknowledgement => 'তলৰ বুটামটোত ক্লিক কৰি, আপুনি ইয়াৰ দ্বাৰা স্বীকাৰ কৰে আৰু বুজি পায় যে স্পৰ্শকাতৰ ব্যক্তিগত তথ্যকে ধৰি আপোনাৰ ব্যক্তিগত তথ্য ওপৰত উল্লেখ কৰা ধৰণে সংগ্ৰহ আৰু প্ৰক্ৰিয়া কৰা হ \'ব পাৰে আৰু ইয়াৰ দ্বাৰা ওপৰত উল্লেখ কৰা উদ্দেশ্যসমূহৰ বাবে ইয়াৰ বাবে সন্মতি প্ৰদান কৰে। আপুনি এইটোও স্বীকাৰ কৰে যে আপুনি শ্বেয়াৰ কৰা স্পৰ্শকাতৰ ব্যক্তিগত তথ্যকে ধৰি যিকোনো ব্যক্তিগত তথ্য (আপোনাৰ বাহিৰে) কেৱল তেওঁলোকৰ পৰা উপযুক্ত সন্মতি লোৱাৰ পিছতহে। আপুনি লগতে স্বীকাৰ কৰে যে আপুনি ওপৰত উল্লেখ কৰা উদ্দেশ্যসমূহৰ বাবে প্ৰয়োজনীয় নোহোৱা কোনো ব্যক্তিগত তথ্য (স্পৰ্শকাতৰ ব্যক্তিগত তথ্যকে ধৰি) শ্বেয়াৰ নকৰে। আপুনি লগতে স্বীকাৰ কৰে যে যেতিয়া আপুনি নাবালিকাগৰাকীৰ ব্যক্তিগত তথ্য তেওঁলোকৰ পিতৃ-মাতৃ/আইনী অভিভাৱক হিচাপে শ্বেয়াৰ কৰে তেতিয়া আপুনি ওপৰত উল্লেখ কৰা অনুসৰি তেওঁলোকৰা তথ্য সংগ্';

  @override
  String get privacyPolicyBottomAppBarLabel => 'গোপনীয়তা নীতি গ্ৰহণযোগ্য';

  @override
  String get helpAndSupportReachTitle => 'আমাৰ সৈতে যোগাযোগ কৰক';

  @override
  String get assessmentAndTestsSubtitle => 'ইয়াত এতিয়ালৈকে কৰা মূল্যায়নৰ এক দ্ৰুত দৃষ্টিভংগী দিয়া হৈছে।';

  @override
  String get assessmentAndTestsReportsNotFound => 'কোনো প্ৰতিবেদন পোৱা নগ "ল';

  @override
  String get eyeAssessmentTitle => 'চকুৰ মূল্যায়ন';

  @override
  String get eyeAssessmentSubtitle => 'আপোনাৰ, আপোনাৰ বন্ধুবৰ্গৰ, আৰু পৰিয়ালৰ সদস্যসকলৰ চকুৰ সমস্যাবোৰ কেইটামান পৰ্য্যায়ত মূল্যায়ন কৰক। আপোনাৰ চকুৰ সমস্যাৰ সৈতে সম্পৰ্কিত লক্ষণবোৰ বুজিবলৈ আপোনাক কেইবাটাও প্ৰশ্ন সোধা হ \'ব আৰু তাৰ পিছত চাক্ষুষ পৰীক্ষা কৰা হ\' ব।';

  @override
  String get eyeAssessmentGetMemberLabel => 'সদস্য সলনি কৰক';

  @override
  String get eyeAssessmentProceedButton => 'আগবাঢ়ি যাওক';

  @override
  String get eyeAssessmentBrightnessLabel => 'উজ্জ্বলতা 80 শতাংশত নিৰ্ধাৰণ কৰা হৈছে';

  @override
  String get eyeAssessmentBrightnessError => 'অনুগ্ৰহ কৰি উজ্জ্বলতাটো হাতেৰে 80 শতাংশত ছেট কৰক';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'প্ৰশ্নটো এতিয়াও সমৰ্থন কৰা হোৱা নাই';

  @override
  String get eyeAssessmentPopUpHeading => 'মূল্যায়ন';

  @override
  String get eyeAssessmentPopUpBody => 'আপোনাৰ চকুৰ সমস্যা আছে নেকি?';

  @override
  String get eyeAssessmentPopUpYesButton => 'হয়।';

  @override
  String get eyeAssessmentPopUpNoButton => 'নাই।';

  @override
  String get visualAcuityTestInstructionOne => 'ভাল পোহৰৰ স্থানত আৰামদায়কভাৱে বহি থাকক। আপুনি হয়তো হঠাৎ উজ্জ্বলতাৰ পৰিৱৰ্তন অনুভৱ কৰিব পাৰে, চিন্তা নকৰিব যে অনুকূল ফলাফল প্ৰদান কৰিবলৈ পৰ্দাটো স্বয়ংক্ৰিয়-উজ্জ্বলতাত সংহতি কৰা হৈছে।';

  @override
  String get visualAcuityTestInstructionTwo => 'নিশ্চিত কৰক যে আপুনি যন্ত্ৰটো চকুৰ স্তৰত ধৰি আছে। যদি আপুনি চশমা বা কণ্টেক্ট লেন্স পিন্ধে, সেইবোৰ পিন্ধি ৰাখক।';

  @override
  String get visualAcuityTestInstructionThree => 'পৰ্দাৰ পৰা নিজকে 40 ছে. মি. দূৰত্বত ৰাখক। পৰীক্ষা পৰ্দাত দূৰত্ব দেখুওৱা হ \'ব।';

  @override
  String get visualAcuityTestInstructionFour => 'যদি আপুনি চশমা পিন্ধি পৰীক্ষা কৰি আছে, কেৱল এটা চকু পৰীক্ষা কৰাৰ সময়ত চশমাৰ ওপৰত আপোনাৰ হাতেৰে এটা চকু ঢাকি ৰাখক।';

  @override
  String get skipAndProceedButton => 'স্কিপ কৰক আৰু স্কেনলৈ আগবাঢ়ক';

  @override
  String get proceedToScanButton => 'স্কেনলৈ যাওক';

  @override
  String get eyeAssessmentSteps => 'পদক্ষেপসমূহ';

  @override
  String get eyeAssessmentStepOne => 'পদক্ষেপ 1-চকুৰ মূল্যায়নৰ প্ৰশ্নসমূহ';

  @override
  String get eyeAssessmentStepTwo => 'পদক্ষেপ 2-চকুৰ মূল্যায়নৰ প্ৰশ্নসমূহ';

  @override
  String get eyeAssessmentStepThree => 'পদক্ষেপ 3-চকুৰ মূল্যায়নৰ প্ৰশ্নসমূহ';

  @override
  String get eyeAssessmentOngoing => 'চলি আছে।';

  @override
  String get eyeAssessmentCompleted => 'সম্পূৰ্ণ কৰা হৈছে';

  @override
  String get eyeAssessmentPending => 'বাকী আছে।';

  @override
  String get eyeAssessmentResults => 'মূল্যায়নৰ ফলাফল';

  @override
  String get eyeAssessmentCompleteSteps => 'ফলাফল চাবলৈ সকলো পদক্ষেপ সম্পূৰ্ণ কৰক';

  @override
  String get eyeAssessmentToolTip => 'অনুগ্ৰহ কৰি নিশ্চিত কৰক যে ফ্লেশটো বন্ধ কৰি দিয়া হৈছে আৰু উজ্জ্বলতা 80 শতাংশত নিৰ্ধাৰণ কৰা হৈছে।';

  @override
  String get eyeScanInstructionOne => 'ফ্ৰেমৰ ওপৰত মুখখন ভালদৰে ৰাখি কেমেৰাটো ধৰি ৰাখক।';

  @override
  String get eyeScanInstructionTwo => 'আপোনাৰ ফোনৰ পিছফালৰ কেমেৰা ব্যৱহাৰ কৰি চকুৰ এখন ছবি লওক।';

  @override
  String get eyeScanInstructionThree => 'ফ্লাছ অন কৰি ভালদৰে পোহৰ দিয়া ঠাইত থকাটো নিশ্চিত কৰক।';

  @override
  String get eyeScanInstructionFour => 'ভাল কেপচাৰ আৰু স্পষ্টতাৰ বাবে, ছবিখন ক্লিক কৰিবলৈ আন কাৰোবাক দিয়ক।';

  @override
  String get eyeScanInstructionFive => 'ছবিখন লোৱাৰ সময়ত এখন চকু আপোনাৰ হাতেৰে ঢাকি ৰাখক আৰু আনটো চকুৰে পোনকৈ সন্মুখলৈ চাওক।';

  @override
  String get eyeScanInstructionSix => 'ছবিখন আৰম্ভ কৰাৰ আগতে পেনেলৰ ভিতৰত চকু কেন্দ্ৰ কৰক।';

  @override
  String get eyeScanInstructionSeven => 'ফ্লেছটো বন্ধ নোহোৱালৈকে চকু মুকলি কৰি ৰাখক, যেতিয়ালৈকে \'বীপ\' শব্দই ফটোখনৰ শেষৰ সংকেত নিদিয়ে।';

  @override
  String get eyeAssessmentNote => 'বি:দ্ৰ: ইয়াত দেখুওৱা ছবিসমূহ কেৱল ইংগিতৰ বাবেহে। বাস্তৱ জীৱনত হয়তো একে ধৰণে দেখা নাযায়।';

  @override
  String get agreeButton => 'মই একমত।';

  @override
  String get consentPageCheckbox => 'মই নিয়ম আৰু চৰ্তসমূহৰ সৈতে সন্মত।';

  @override
  String get confirmButton => 'নিশ্চিত কৰক';

  @override
  String get discardButton => 'বিসৰ্জন কৰক';

  @override
  String get imageNotCapturedToastMessage => 'ছবি ধৰা পৰা হোৱা নাই';

  @override
  String get eyeCaptureCompletionDialogHeading => 'পৰীক্ষা সম্পূৰ্ণ কৰা হৈছে';

  @override
  String get eyeCaptureCompletionDialogBody => 'আপুনি পৰীক্ষাটো সম্পূৰ্ণ কৰিছে। ফলাফল চাবলৈ অনুগ্ৰহ কৰি তলৰ বুটামটোত ক্লিক কৰক।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ফলাফল চাওক';

  @override
  String get eyeCaptureTriageSavedLocally => 'ট্ৰেইজ স্থানীয়ভাৱে সংৰক্ষণ কৰা হৈছে';

  @override
  String get visualAcuityTestResults => 'ভিজুৱেল এক্যুইটি পৰীক্ষাৰ ফলাফল';

  @override
  String get assessmentResultPageMoreDetailsText => 'অধিক বিৱৰণৰ বাবে নিকটতম দৃষ্টি কেন্দ্ৰলৈ যাওক। আমাৰ দৃষ্টি প্ৰযুক্তিবিদৰ সৈতে কথা পাতিবলৈ টোল-ফ্ৰী নম্বৰত ফোন কৰক।';

  @override
  String get assessmentReportButton => 'চকুৰ মূল্যায়ন প্ৰতিবেদন';

  @override
  String get notificationsTitle => 'জাননীসমূহ';

  @override
  String get notificationsNotAvailable => 'কোনো জাননী নাই';

  @override
  String get servicesPatientCare => 'ৰোগীৰ যত্ন';

  @override
  String get reportAssessmentId => 'মূল্যায়ন আইডি';

  @override
  String get reportDateAndTime => 'তাৰিখ আৰু সময়';

  @override
  String get reportSeverityAbnormal => 'অস্বাভাবিক পৰীক্ষা';

  @override
  String get reportSeverityHigh => 'আগত পৰীক্ষা';

  @override
  String get reportSeverityLow => 'নিয়মিত পৰীক্ষা';

  @override
  String get reportDataUnavailable => 'ডাটা প্ৰাপ্তয়োগ্য নহয়';

  @override
  String get reportTumblingTitle => 'দৃষ্টিশক্তি পৰীক্ষা - টাম্ব্লিং ই';

  @override
  String get rightCornea => 'সোঁহালি কর্ণ';

  @override
  String get leftCornea => 'বাওঁহালি কর্ণ';

  @override
  String get myProfileGeneralInfo => 'সাধাৰণ তথ্য';

  @override
  String get myProfileAge => 'বয়স';

  @override
  String get myProfileAddress => 'ঠিকানা';

  @override
  String get myProfileLine => 'লাইন';

  @override
  String get myProfileCity => 'নগৰ';

  @override
  String get myProfileDistrict => 'জিলা';

  @override
  String get myProfileState => 'ৰাজ্য';

  @override
  String get myProfilePinCode => 'পিন কোড';

  @override
  String get submitButton => 'দাখিল কৰক';

  @override
  String get swipeGestureError => 'ভুল চুইপ! অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get swipeGestureCardText => 'চিহ্নৰ দিশত চুইপ কৰক';

  @override
  String get assessmentResultCardAssessmentQuestions => 'মূল্যায়ন\r\nপ্ৰশ্ন';

  @override
  String get assessmentResultCardAcuityTest => 'তীক্ষ্ণতা\r\nপৰীক্ষা';

  @override
  String get assessmentResultCardEyeScan => 'চকু\r\nস্কেন কৰক';

  @override
  String get viewReportButton => 'প্ৰতিবেদন চাওক';

  @override
  String get updateButton => 'নবীকৰণ';

  @override
  String get assessmentCardUrgentConsult => 'জৰুৰী পৰামৰ্শ';

  @override
  String get assessmentCardRoutineCheckUp => 'ৰুটিন চেকআপ';

  @override
  String get assessmentCardEarlyCheckUp => 'আগতীয়াকৈ পৰীক্ষা কৰা';

  @override
  String get testAgainButton => 'আবার পরীক্ষা কৰক';

  @override
  String get homeButton => 'হোম';

  @override
  String get homeTriageCardTitle => 'আমাৰ চক্ষুসমূহ শ্ৰেষ্ঠ সম্পদ।';

  @override
  String get homeTriageCardDescription => 'চক্ষু সমস্যা পূৰ্ববর্তী কৰিবলৈ সময়ত তালক পাওক।';

  @override
  String get homeTriageCardTest => 'চক্ষু পৰীক্ষা আৰম্ভ কৰক';

  @override
  String get homeHelplineCardDescrition => 'অচানক চক্ষু হাৰে যাবলৈ, এই জরুৰী সহায়তা হেলপলাইনটো কল কৰক';

  @override
  String get inviteCardTitle => 'অন্যকল কৰক';

  @override
  String get inviteCardDescription => '5টা বন্ধু আৰু পৰিবারজনক আমন্ত্ৰণ কৰক যাতে তাঁদেৰ চক্ষু মূল্যায়ন কৰিব পাৰে আৰু ভবিষ্যতত চক্ষু সমস্যা পূৰ্ববর্তী কৰিব পাৰে।';

  @override
  String get inviteCardInvitation => 'এতিয়াই আমন্ত্ৰণ কৰক';

  @override
  String get partnerCardTitle => 'সহযোগীত';

  @override
  String get languageSelection => 'ভাষা নিৰ্বাচন কৰক';

  @override
  String get profileTitle => 'ৰূপৰেখা';

  @override
  String get eyeAssessmentEnterLabel => 'ইয়াত প্ৰৱেশ কৰক';

  @override
  String get profilePageAddressDetails => 'ঠিকনাৰ বিৱৰণ';

  @override
  String get profilePaeCheckReports => 'আপোনাৰ প্ৰতিবেদনসমূহ পৰীক্ষা কৰক';

  @override
  String get bottomNavItemEyeTest => 'চকুৰ পৰীক্ষা';

  @override
  String get bottomNavItemAppointment => 'নিযুক্তি';

  @override
  String get memberSelection => 'সদস্য নিৰ্বাচন কৰক';

  @override
  String get triageAlerDialogBoxTitle => 'পুনৰায় কৰিবলৈ পদক্ষেপসমূহ নিৰ্ব্বাচন কৰক';

  @override
  String get scannerTitle => 'স্ক্যানাৰ';

  @override
  String get visualAcuityTestDistanceInstruction => 'কেমেৰাটো চকুৰ পৰা 40 ছে. মি. দূৰত ৰাখক।';

  @override
  String get somethingWentWrong => 'কিবা ভুল হৈছিল।';

  @override
  String get triageUpdatedSuccessfully => 'ট্ৰেইজ সফলতাৰে আপডেইট কৰা হৈছে';

  @override
  String get noPreviewAvailable => 'কোনো পূৰ্বদৰ্শন উপলব্ধ নাই';

  @override
  String get privacyPolicyTitle => 'গোপনীয়তা আৰু তথ্য সুৰক্ষা';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'আমি আপোনাৰ দ্বাৰা প্ৰদান কৰা ব্যক্তিগত তথ্য তলত দিয়া উদ্দেশ্যসমূহৰ বাবে প্ৰক্ৰিয়া কৰোঁ যেনেঃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'আপুনি কেমেৰাৰ অতি ওচৰত আছে, কেমেৰাটো চকুৰ পৰা 40 ছে. মি. দূৰত ৰাখক।';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'আপুনি কেমেৰাৰ পৰা বহু দূৰত আছে, কেমেৰাটো চকুৰ পৰা 40 ছে. মি. দূৰত ৰাখক।';

  @override
  String get myProfileABHAID => 'এবিএইচএ আইডি';

  @override
  String get myProfileEmail => 'ই-মেইল';

  @override
  String get viewHistoryButton => 'ইতিহাস চাওক';

  @override
  String get profilePagePersonalDetails => 'ব্যক্তিগত বিৱৰণ';

  @override
  String get profilePageDateOfBirth => 'জন্মৰ তাৰিখ';

  @override
  String get profilePageGender => 'লিংগ';

  @override
  String get profilePageMobile => 'মোবাইল';

  @override
  String get profilePageHealthCardTitle => 'স্বাস্থ্য কাৰ্ড';

  @override
  String get appointmentTitle => 'নিযুক্তিসমূহ';

  @override
  String get appointmentSubtitle => 'সকলো নিযুক্তি';

  @override
  String get eyeBoxText => 'চকুৰ চাৰিওফালে সেউজীয়া বাকচ দেখা নোপোৱালৈকে অনুগ্ৰহ কৰি ছবিখন সলনি কৰক আৰু অৱস্থান কৰক। চকুখন ওচৰলৈ লৈ যাওক আৰু নিশ্চিত কৰক যে বাকচটোৰ 40 শতাংশ চকুৰে আবৃত হৈ আছে।';

  @override
  String get bottomNavItemServices => 'সেৱাসমূহ';

  @override
  String get smsContent => 'হেৰা! মই মোৰ চকুৰ যত্ন ল \'বলৈ চাইটকনেক্ট এপ ব্যৱহাৰ কৰিছো, আৰু আপুনিও কৰা উচিত! আপোনাৰ চকুৰ মূল্যায়ন কৰক আৰু চাইট কানেক্ট এপৰ জৰিয়তে সময়মতে চিকিৎসা কৰক। এইটো এটা অনন্য এপ যিয়ে আপোনাৰ হাতত প্ৰতিৰোধমূলক চকুৰ যত্ন কঢ়িয়াই আনে। এতিয়া ইয়াক প্ৰাপ্ত কৰকঃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'চাইট কানেক্ট এপৰ জৰিয়তে আপোনাৰ চকুৰ স্বাস্থ্যক অগ্ৰাধিকাৰ দিয়ক!';

  @override
  String get recentServicesCataractEyeTest => 'ছানি পৰা চকুৰ পৰীক্ষা';

  @override
  String get recentServicesRedEyeTest => 'ৰঙা চকুৰ পৰীক্ষা';

  @override
  String get chatBotDefaultQuerySuggestions => 'চকুৰ মূল্যায়ন আৰম্ভ কৰক। সাধাৰণ চকুৰ সমস্যা। দৃষ্টিশক্তি উন্নত কৰাৰ পৰামৰ্শ';

  @override
  String get chatBotWelcomeMessage => 'হাই, মই আজি আপোনাক কেনেকৈ সহায় কৰিব পাৰো?';

  @override
  String get poweredByText => 'ইয়াৰ দ্বাৰা চালিত';

  @override
  String get digitalHealthCard => 'ডিজিটেল জনস্বাস্থ্য স্তুপ';

  @override
  String get inviteNowText => 'এতিয়া আমন্ত্ৰণ কৰক';

  @override
  String get resend => 'Resend';

  @override
  String get mobileNumber => 'Mobile Number';

  @override
  String get loginVerifyMobileNumber => 'Verify your mobile number';

  @override
  String get loginEnterMobileNumber => 'Please enter mobile number';

  @override
  String get loginEnterValidMobileNumber => 'Please enter valid mobile number';

  @override
  String get loginUnableToSendOTP => 'Unable to send OTP to this number';

  @override
  String get loginGetOTP => 'Get OTP';

  @override
  String get loginInvalidOTP => 'Invalid OTP';

  @override
  String get loginDidntReceiveOTP => 'Didn\'t receive the OTP?';

  @override
  String get loginOTPSent => 'OTP sent successfully';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get triageExitConfirmation => 'Do you want to exit the Test?';

  @override
  String get triageReportEyeProblems => 'Report Eye Problems';

  @override
  String get triageHowToReport => 'How to report eye problems?';

  @override
  String get triageReportInstructions => 'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\r\n\r\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.';

  @override
  String get assessment => 'Assessment';

  @override
  String get triageOtherSymptomsQuestion => 'Do you have any other symptoms?';

  @override
  String get triageEnterSymptoms => 'Enter your symptoms here';

  @override
  String get triageEyeAssessmentResults => 'Eye Assessment Results';

  @override
  String get triageTestId => 'Test ID';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'Eye scan updated successfully';

  @override
  String get triageErrorEyeScanNotUpdated => 'Eye scan not updated!';

  @override
  String get triageLeftEyeString => 'Left Eye';

  @override
  String get triageRightEyeString => 'Right Eye';

  @override
  String get vaEyeTest => 'Eye Test';

  @override
  String get instructions => 'Instructions';

  @override
  String get vaSwipeUp => 'Swipe Up';

  @override
  String get vaSwipeDown => 'Swipe Down';

  @override
  String get vaSwipeLeft => 'Swipe Left';

  @override
  String get vaSwipeRight => 'Swipe Right';

  @override
  String get vaSwipeGestureError => 'Invalid swipe gesture. Please try again.';

  @override
  String get permissionNotGranted => 'Permission not granted';

  @override
  String get serviceNotAvailable => 'Service not available';

  @override
  String get vaDistanceToFace => 'Distance to face';

  @override
  String get vaDistanceToFaceInstruction => 'Please ensure that the camera is 40cm away from your face';

  @override
  String get vaBringFaceInsideBox => 'Bring your face inside the box';

  @override
  String get startAssessment => 'Start Assessment';

  @override
  String get optoAddPatientInfo => 'Add Patient Information';

  @override
  String get loggedOutMessage => 'You have been logged out';

  @override
  String get optoLogoutError => 'Apologies, we encountered a logout error in the mobile app.';

  @override
  String get optoLoggingOut => 'Logging out...';

  @override
  String get hello => 'Hello';

  @override
  String get optoGetStarted => 'Let\'s get started';

  @override
  String get optoCompletedTests => 'Completed tests';

  @override
  String get optoThisMonth => 'This month';

  @override
  String get today => 'Today';

  @override
  String get services => 'Services';

  @override
  String get optoAssessmentHistory => 'Assessment History';

  @override
  String get optoEyeAssessments => 'Eye Assessments';

  @override
  String get feedback => 'FeedBack';

  @override
  String get optoImproveApp => 'We would like your feedback to improve our application';

  @override
  String get assessments => 'Assessments';

  @override
  String get optoPatientAssistance => 'Did the patient need assistance?';

  @override
  String get optoVisualAcuity => 'Visual Acuity';

  @override
  String get optoPatientAided => 'Was the patient Aided?';

  @override
  String get optoEyeScan => 'Eye Scan';

  @override
  String get optoLeaveFeedback => 'Please leave your feedback below';

  @override
  String get optoNoInternet => 'No Internet Connection';

  @override
  String get optoCheckInternet => 'Please check your internet connection and try again';

  @override
  String get optoSearchPatientId => 'Search Patient ID';

  @override
  String get optoRecentAssessments => 'Recent Assessments';

  @override
  String get optoSelectDateRange => 'Please select a date range';

  @override
  String get optoDataNotFound => 'Data not found for this search';

  @override
  String get optoAssessmentReport => 'Assessment Report';

  @override
  String get optoPID => 'PID';

  @override
  String get category => 'Category';

  @override
  String get patientAssessmentAndTest => 'Patient Assessment and Test';

  @override
  String get patientSelfTestReport => 'Self Test Report';

  @override
  String get patientClinicalReport => 'Clinical Report';

  @override
  String get patientAppointmentTitle => 'Appointment';

  @override
  String get patientBookAppointment => 'Book Appointment';

  @override
  String get patientAppointmentSubtitle => 'Your Appointments';

  @override
  String get patientTelephoneConsultation => 'Telephone Consultation';

  @override
  String get patientAddress => 'Address';

  @override
  String get patientReschedule => 'Reschedule';

  @override
  String get patientCancel => 'Cancel';

  @override
  String get patientPID => 'PID';

  @override
  String get patientReportID => 'Report ID';

  @override
  String get patientHideDetailedReport => 'Hide Detailed Report';

  @override
  String get patientShowDetailedReport => 'Show Detailed Report';

  @override
  String get patientEID => 'EID';

  @override
  String get patientViewHistoryButton => 'View History';

  @override
  String get patientViewReportButton => 'View Report';

  @override
  String get patientNoMoreData => 'No more data';

  @override
  String get patientErrorFetchingReport => 'Error in fetching report';

  @override
  String get patientTimeline => 'Timeline';

  @override
  String get patientRoutineCheckup => 'Routine Checkup';

  @override
  String get patientAssessmentID => 'Assessment ID';

  @override
  String get patientStartDate => 'Start Date';

  @override
  String get patientIVRAssessment => 'IVR Assessment';

  @override
  String get patientEarlyConsultationRecommended => 'Early Consultation Recommended';

  @override
  String get patientCataractEyeReport => 'Cataract Eye Report';

  @override
  String get patientRedEyeReport => 'Red Eye Report';

  @override
  String get patientScanAgain => 'Scan Again';

  @override
  String get patientStepsToScan => 'Steps to do the retinal scanning';

  @override
  String get patientProceedToScan => 'Proceed to Scan';

  @override
  String get patientSkipAndProceedToScan => 'Skip & Proceed to Scan';

  @override
  String get patientEyeScanner => 'Eye Scanner';

  @override
  String get patientErrorSelectCamera => 'Select a camera first!';

  @override
  String get patientEyeBoxText => 'Eye Box Text';

  @override
  String get patientLoggedOut => 'You have been logged out';

  @override
  String get patientLogoutError => 'Apologies, we encountered a logout error in the mobile app.';

  @override
  String get patientUpdateProfile => 'Update Profile';

  @override
  String get patientEdit => 'edit';

  @override
  String get patientProfileNotUpdated => 'Profile not updated';

  @override
  String get patientProfileUpdated => 'Profile updated';

  @override
  String get patientReportUnavailable => 'Report not available';

  @override
  String get patientClinicalReportNotFound => 'Clinical Report not found';

  @override
  String get patientRID => 'RID';

  @override
  String get patientUpdateUnavailable => 'Update not available at this moment';

  @override
  String get vgAddEvent => 'Add Event';

  @override
  String get vgUploadingImageAddingEvent => 'Uploading Image and adding event';

  @override
  String get vgEventTitle => 'Event Title';

  @override
  String get vgPleaseEnterEndTime => 'Please Enter End time';

  @override
  String get vgShouldNotContainSpecialCharacter => 'Should not contain any special character';

  @override
  String get vgEventDescription => 'Event Description';

  @override
  String get vgAddPatient => 'Add Patient';

  @override
  String get vgPatients => 'Patients';

  @override
  String get vgDetails => 'Details';

  @override
  String get vgTeammates => 'Teammates';

  @override
  String get vgEyeAssessment => 'Eye Assessment';

  @override
  String get vgStart => 'Start';

  @override
  String get vgEyeAssessmentDescription => 'Get the eye problems of you, your friends, and family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.';

  @override
  String get vgLogoutMessage => 'You have been logged out';

  @override
  String get vgLogoutErrorMessage => 'Apologies, we encountered a logout error in the mobile app.';

  @override
  String get vgWelcome => 'Welcome';

  @override
  String get vgServices => 'Services';

  @override
  String get vgEvents => 'Events';

  @override
  String get vgViewAll => 'View All';

  @override
  String get vtAssessmentReport => 'Assessment Report - EA';

  @override
  String get vtRemarks => 'Remarks';

  @override
  String get vtNoPatientFound => 'No patient found';

  @override
  String get vtClose => 'Close';

  @override
  String get vtBack => 'Back';

  @override
  String get vtSubmit => 'Submit';

  @override
  String get vtSomethingWentWrong => 'Something went wrong';

  @override
  String get vtAssessmentClosedSuccessfully => 'Assessment Closed Successfully';

  @override
  String get vtEyeScan => 'Eye Scan';

  @override
  String get vtDashboard => 'Dashboard';

  @override
  String get vtRegisterPatient => 'Register Patient';

  @override
  String get vtTriage => 'Triage';

  @override
  String get vtMarkMyAvailability => 'Mark My Availability';

  @override
  String get vtIVRCallHistory => 'IVR Call History';

  @override
  String get vtMarked => 'Marked';

  @override
  String get vtPreliminaryAssessment => 'Preliminary Assessment';

  @override
  String get vtAge => 'Age';

  @override
  String get vtGender => 'Gender';

  @override
  String get vtAddress => 'Address';

  @override
  String get vtProfile => 'Profile';

  @override
  String get vtLogoutMessage => 'You have been logged out';

  @override
  String get vtLogoutError => 'Apologies, we encountered a logout error in the mobile app.';

  @override
  String get vtError => 'Error';

  @override
  String get vtPatient => 'Patient';

  @override
  String get vtMobile => 'Mobile';

  @override
  String get vtAssessmentID => 'Assessment ID';

  @override
  String get vtStatus => 'Status';

  @override
  String get vtTimeline => 'Timeline';

  @override
  String get vtCategory => 'Category';

  @override
  String get vtNoDataFound => 'No Data Found';

  @override
  String get appCameraCapture => 'Capture';

  @override
  String get appCameraRetake => 'Retake';

  @override
  String get appCameraUsePhoto => 'Use Photo';

  @override
  String get appCameraCancel => 'Cancel';

  @override
  String get appCameraNotFound => 'Camera not found';

  @override
  String get appCameraException => 'Camera Exception';

  @override
  String get appCameraProgressMessage => 'Loading...';

  @override
  String get internetLostNoConnection => 'No Internet Connection';

  @override
  String get internetLostRetry => 'Retry';

  @override
  String get secureJailbreak => 'It seems your device is jailbroken';

  @override
  String get secureRestrictedAccess => 'For security reasons, access to this app is restricted on jailbroken devices.';

  @override
  String get secureExitApp => 'Exit App';

  @override
  String get sharedErrorPageIssues => 'We are facing some issues. Please try again later.';

  @override
  String get appointmentBookingTitle => 'Appointment Booking';

  @override
  String get comingSoon => 'Coming Soon...';

  @override
  String get miniappService => 'Service';

  @override
  String get miniappConsole => 'Console';

  @override
  String get roleChooseYourRole => 'Choose Your Role';

  @override
  String get roleNote => 'Note: You cannot change your role inside the app.';

  @override
  String get roleConfirm => 'Confirm';

  @override
  String get roleEyeCareProfessional => 'EYE CARE PROFESSIONAL';

  @override
  String get roleVisionTechnician => 'VISION TECHNICIAN';

  @override
  String get rolePatient => 'PATIENT';

  @override
  String get roleVisionGuardian => 'VISION GUARDIAN';

  @override
  String get vtSearchText => 'Search by Patient ID, Mobile No or Name';

  @override
  String get emptyPatientsInfo => 'Start searching for patients to view their details .. ';

  @override
  String get vtPersonalDetails => 'Personal Details';

  @override
  String get vtHprId => 'HPR ID';

  @override
  String get vtEmailId => 'Email ID';

  @override
  String get vtEducationalQualification => 'Educational Qualification';

  @override
  String get vtAddressAndDoorNumber => 'Address and Door Number';

  @override
  String get vtCity => 'City';

  @override
  String get vtState => 'State';

  @override
  String get vtPincode => 'Pincode';

  @override
  String get vtOrganisationDetails => 'Organisation Details';

  @override
  String get vtOrgId => 'Org ID';

  @override
  String get vtFacilityType => 'Facility Type';

  @override
  String get vtAssessments => 'Assessments';

  @override
  String get vtNoAssessmentsFound => 'No Assessments Found';

  @override
  String get vtAnalytics => 'Analytics';

  @override
  String get vtTotalCases => 'Total Cases';

  @override
  String get vtIvrCalls => 'IVR Calls';

  @override
  String get vtClinicVisits => 'Clinic Visits';

  @override
  String get vtCasesClosed => 'Cases Closed';

  @override
  String get vtCritical => 'Critical';

  @override
  String get vtRegular => 'Regular';

  @override
  String get vtAvgClosureTime => 'Avg. Closure Time';

  @override
  String get vtByAge => 'By Age';

  @override
  String get vtByGender => 'By Gender';

  @override
  String get vtSymptoms => 'Symptoms';

  @override
  String get vtSearchByMobileNo => 'Search by Mobile No.';

  @override
  String get vtInvalidMobileNo => 'Invalid Mobile No.';

  @override
  String get vtCallLogEmpty => 'Call Log is Empty.. No Calls made yet!!';

  @override
  String get vtNoDataAvailable => 'No Data available';

  @override
  String get vtToday => 'TODAY';

  @override
  String get vtYesterday => 'YESTERDAY';

  @override
  String get vtIvrCallNotAvailable => 'IVR call not available.. Try Again!!';

  @override
  String get vtMarkUnavailable => 'Mark as Unavailable';

  @override
  String get vtStartDate => 'Start Date';

  @override
  String get vtEndDate => 'End Date';

  @override
  String get vtStartTime => 'Start Time';

  @override
  String get vtEndTime => 'End Time';

  @override
  String get vtAddRemarksOptional => 'Add Remarks (Optional)';

  @override
  String get vtSave => 'Save';

  @override
  String get vtCancel => 'Cancel';

  @override
  String get vtPleaseEnterRemark => 'Please enter Remark';

  @override
  String get vtAssessment => 'Assessment';

  @override
  String get vtIvrSelections => 'IVR Selections';

  @override
  String get vtLanguageSelection => 'Language Selection';

  @override
  String get vtEnglish => 'English';

  @override
  String get vtPatientType => 'Patient Type';

  @override
  String get vtProblem => 'Problem';

  @override
  String get vtEyeSight => 'Eye Sight';

  @override
  String get vtVisionTechnician => 'Vision Technician';

  @override
  String get vtRecommendedCenter => 'Recommended Center';

  @override
  String get vtAssessmentIDEA => 'Assessment ID: EA';

  @override
  String get vtPid => 'PID: OP';

  @override
  String get vtAssessmentTimeline => 'Assessment Timeline';

  @override
  String get vtPleaseSelectEncounter => 'Please select an encounter';

  @override
  String get vtTimelineEA => 'Timeline: EA';

  @override
  String get vtGeneralInformation => 'General Information';

  @override
  String get vtDateOfBirth => 'Date of Birth';

  @override
  String get vtAssessmentEA => 'Assessment EA';

  @override
  String get vtNotRegistered => 'You are not registered in the system. Please give a missed call to';

  @override
  String get vtOkay => 'Okay';

  @override
  String get vtTakePicture => 'Take Picture';

  @override
  String get vtEye => 'Eye';

  @override
  String get vtRetakePicture => 'Retake Picture';

  @override
  String get vtNext => 'Next';

  @override
  String get vtMrCode => 'MR Code';

  @override
  String get vtEnterMrCode => 'Enter MR Code Here';

  @override
  String get vtPleaseEnterMrCode => 'Please enter MR Code';

  @override
  String get vtNote => 'Note';

  @override
  String get vtEnterRecommendations => 'Enter Recommendations Here';

  @override
  String get vtSolutions => 'Solutions(s)';

  @override
  String get vtLeftEye => 'Left Eye';

  @override
  String get vtRightEye => 'Right Eye';

  @override
  String get vtBothEyes => 'Both Eyes';

  @override
  String get vtFilterBy => 'Filter by';

  @override
  String get vtLocation => 'Location';

  @override
  String get vtEnterTime => 'Please enter Time';

  @override
  String get vtEnterDate => 'Please enter Date';

  @override
  String get vtRecommendation => 'Recommendation';

  @override
  String get vtVisitPrimaryCenter => 'Visit Primary Center';

  @override
  String get vtVisitSecondaryCenter => 'Visit Secondary Center';

  @override
  String get vtVisitTertiaryCenter => 'Visit Tertiary Center';

  @override
  String get vtVisitCenterOfExcellence => 'Visit Center of Excellence';

  @override
  String get vtIvrCallQuestion => 'Are you on IVR Call?';

  @override
  String get vtYes => 'Yes';

  @override
  String get vtNo => 'No';

  @override
  String get vtRetry => 'Retry';

  @override
  String get vtAssessmentQuestions => 'Assessment Questions';

  @override
  String get vtVisionCenter => 'Vision Center';

  @override
  String get vtVisualAcuity => 'Visual Acuity';

  @override
  String get vtInvalidValue => 'Invalid value';

  @override
  String get vtSeverity => 'Severity';

  @override
  String get vtNoVisionCentersFound => 'No Vision Centers Found';

  @override
  String get vtRequestLocationPermission => 'Request Location Permission';

  @override
  String get vtAppSettings => 'App Settings';

  @override
  String get vtEnterSomeText => 'Please enter some text';

  @override
  String get vtPrimary => 'Primary';

  @override
  String get vtDependent => 'Dependent';

  @override
  String get vtAddMember => 'Add Member';

  @override
  String get vtCompleteProfile => 'Complete Profile';

  @override
  String get vtPatientNotRegistered => 'Patient not registered';

  @override
  String get vtPatientRegistered => 'Patient registered';

  @override
  String get vtDependentNotAdded => 'Dependent not added';

  @override
  String get vtDependentAdded => 'Dependent added';

  @override
  String get vtServiceNotAvailable => 'Service Not Available';

  @override
  String get vgEyeAssessments => 'Eye Assessments';

  @override
  String get vgTotal => 'Total';

  @override
  String get vgCamps => 'Camps';

  @override
  String get vgDoorToDoor => 'Door to Door';

  @override
  String get vgByGender => 'By Gender';

  @override
  String get vgMale => 'Male';

  @override
  String get vgFemale => 'Female';

  @override
  String get vgOthers => 'Others';

  @override
  String get vgByAge => 'By Age';

  @override
  String get vgSlideAge => 'Yrs';

  @override
  String get vgSymptoms => 'Symptoms';

  @override
  String get vgRefractive => 'Refractive';

  @override
  String get vgCataract => 'Cataract';

  @override
  String get vgGlaucoma => 'Glaucoma';

  @override
  String get vgKeratitis => 'Keratitis';

  @override
  String get vgBlepharitis => 'Blepharitis';

  @override
  String get vgConjunctivitis => 'Conjunctivitis';

  @override
  String get vgServicesCreateEvent => 'Create\r\nEvent';

  @override
  String get vgServicesEyeAssessment => 'Eye\r\nAssessment';

  @override
  String get vgServicesRegisterPatient => 'Register\r\nNew Patient';

  @override
  String get vgAddPatients => 'Add Patients';

  @override
  String get vgEvent => 'Event';

  @override
  String get vgAddEventPhoto => 'Add Event Photo';

  @override
  String get vgUploadImage => 'Upload Image';

  @override
  String get vgAddPhotoInstruction => 'Add a photo of the Event which\r\nwill be shown as thumbnail';

  @override
  String get vgAddressDetails => 'Address Details';

  @override
  String get vgVenueName => 'Venue Name';

  @override
  String get vgVenueNameError => 'Please enter Venue name';

  @override
  String get vgVenueNameSpecialCharError => 'Should not contain any special character';

  @override
  String get vgPincode => 'Pincode';

  @override
  String get vgPincodeError => 'Only 6 digit pincode allowed';

  @override
  String get vgCityTownVillage => 'City/Town/Village';

  @override
  String get vgCityTownVillageError => 'Please enter City/Town/Village name';

  @override
  String get vgCityTownVillageSpecialCharError => 'Should not contain any special character';

  @override
  String get vgCancel => 'Cancel';

  @override
  String get vgSave => 'Save';

  @override
  String get vgAddEventImage => 'Add Event Image';

  @override
  String get vgEventAdded => 'Event added';

  @override
  String get vgEventNotAdded => 'Event not added';

  @override
  String get vgDateTime => 'Date & Time';

  @override
  String get vgStartDate => 'Start Date';

  @override
  String get vgStartTime => 'Start Time';

  @override
  String get vgLocation => 'Location';

  @override
  String get vgViewOnMap => 'View On Map';

  @override
  String get vgAddressAndDoorNumber => 'Address and Door Number';

  @override
  String get vgSubDistrictName => 'Sub District Name';

  @override
  String get vgVillageName => 'Village Name';

  @override
  String get vgDistrictName => 'District Name';

  @override
  String get vgAbout => 'About';

  @override
  String get vgEditEvent => 'Edit Event';

  @override
  String get vgDeleteEvent => 'Delete Event';

  @override
  String get vgErrorFetchingEventDetails => 'Error fetching event details';

  @override
  String get vgNoPatientRegistered => 'No Patient with Name is registered. Click on the  Register Patient.';

  @override
  String get vgRegisterPatient => 'Register Patient';

  @override
  String get vgPrimary => 'Primary';

  @override
  String get vgDependent => 'Dependent';

  @override
  String get vgAddMember => 'Add Member';

  @override
  String get vgCompleteProfile => 'Complete Profile';

  @override
  String get vgStartAssessment => 'Start\r\nAssessment';

  @override
  String get vgSearchPatientByPhoneNumber => 'Search Patient by Phone Number';

  @override
  String get vgInvalidPhoneNumber => 'Please enter a valid phone number';

  @override
  String get vgServerError => 'Server Error';

  @override
  String get vgPatient => 'Patient';

  @override
  String get vgReportId => 'Report ID';

  @override
  String get vgNoEventFound => 'No Event Found';

  @override
  String get vgTeamMateDeletedSuccessfully => 'TeamMate Deleted Successfully';

  @override
  String get vgSomethingWentWrong => 'Something went wrong';

  @override
  String get vgName => 'Name';

  @override
  String get vgPhoneNumber => 'Phone Number';

  @override
  String get vgErrorFetchingTeammatesDetails => 'Error fetching teammates details';

  @override
  String get vgTeamMateAddedSuccessfully => 'TeamMate Added Successfully';

  @override
  String get vgAddTeammate => 'Add Teammate';

  @override
  String get vgPleaseEnter => 'Please enter';

  @override
  String get vgPleaseEnterField => 'Please enter field';

  @override
  String get vgOr => 'Or';

  @override
  String get vgSearch => 'Search';

  @override
  String get vgEventDeletedSuccessfully => 'Event Deleted Successfully';

  @override
  String get vgEventDeletionFailed => 'Event Deletion Failed';

  @override
  String get vgEndTimeGreaterThanStartTime => 'End time should be greater than start time';

  @override
  String get vgNoPatientsPresent => 'There are no patients at present. Tap on "Add Patient"';

  @override
  String get textSize => 'পাঠ্যৰ আকাৰ';

  @override
  String get increase => 'বাৰাওক';

  @override
  String get decrease => 'কমাওক';

  @override
  String get reset => 'পুনৰ সেট কৰক';

  @override
  String get minimumTextSizeReached => 'ন্যূনতম পাঠ আকাৰ পৌঁছাইছে';

  @override
  String get maximumTextSizeReached => 'সৰ্বাধিক পাঠ আকাৰ পৌঁছাইছে';

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
}
