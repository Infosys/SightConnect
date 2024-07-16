import 'app_localizations.dart';

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} ৰ ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'হেই! মই মোৰ চকুৰ যত্ন ল \'বলৈ চাইটকনেক্ট এপ ব্যৱহাৰ কৰি আছোঁ, আৰু আপুনিও কৰা উচিত! আপোনাৰ চকুৰ মূল্যায়ন কৰক আৰু চাইটকনেক্ট এপৰ জৰিয়তে সময়মতে চিকিৎসা কৰক। এইটো এটা অনন্য এপ যিয়ে আপোনাৰ হাতত প্ৰতিৰোধমূলক আইকেয়াৰ কঢ়িয়াই আনে। আপুনি ছাইন আপ কৰাৰ সময়ত মোৰ ৰেফাৰেল ক\' ড (ৰেফাৰেল) ব্যৱহাৰ কৰক। এতিয়া ইয়াক প্ৰাপ্ত কৰকঃ https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'অনুগ্ৰহ কৰি পঠিওৱা অ \'. টি. পি. টো প্ৰবিষ্ট কৰক ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'পুনৰ পঠিওৱা ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} ৰোগীৰ এটা এপইণ্টমেণ্ট আছে';
  }

  @override
  String vgEmptyResults(String type) {
    return 'বৰ্তমান কোনো ধৰণ নাই। যোগ কৰক ${type} টেপ কৰক';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} আইডি, নামৰ দ্বাৰা সন্ধান কৰক';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'জৰুৰীকালীন অৱস্থাত অনুগ্ৰহ কৰি ${tollFreeNumber} নম্বৰত ফোন কৰক।';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'আপোনাৰ বিষয়ে উল্লেখ কৰা হৈছে ${referredBy}';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'অনুগ্ৰহ কৰি নিশ্চিত কৰক যে কেমেৰাটো আপোনাৰ মুখৰ পৰা ${distance} ছে. মি. দূৰত আছে।';
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
  String get homeCarousal2Description => '\r\n\r\nচকুৰ 7টা সমস্যাৰ বাবে পৰীক্ষা কৰা হ \'বঃ\r\n\r\n \r\n\r\n• চকু ৰঙা হোৱা,\r\n\r\n• চকুৰ পৰা পানী ওলোৱা,\r\n\r\n• চকুত বগা দাগ পৰীক্ষা কৰা হ\' ব।';

  @override
  String get homeCarousal3Title => 'চকুৰ সমস্যা। এনে বহুতো আছে যিবোৰ আপুনি চাব নোৱাৰে।';

  @override
  String get homeCarousal3Description => 'কিন্তু এজন দৃষ্টিশক্তিৰ যত্ন লোৱা বিশেষজ্ঞই কৰিব পাৰে।\r\n\r\nপৰৱৰ্তী সময়ত জটিলতাৰ পৰা হাত\r\n\r\nসাৰিবলৈ সময়মতে চকুৰ সমস্যা চিনাক্ত\r\n\r\nআৰু চিকিৎসা কৰাব পাৰে।';

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
  String get aboutUsDescription => 'Sightconnect হৈছে এক ব্যৱহাৰকাৰী-অনুকূল চকুৰ যত্নৰ এপ যিয়ে কলৰ জৰিয়তে আত্ম-মূল্যায়ন আৰু পৰামৰ্শ প্ৰদান কৰাত সহায় কৰে।\r\n\r\n\r\n\r\nআমাৰ লক্ষ্যৰ কেন্দ্ৰবিন্দু হৈছে চকুৰ যত্ন সকলোৰে বাবে সুলভ কৰাৰ প্ৰতিশ্ৰুতি। এই এপটো জীৱনৰ সকলো ক্ষেত্ৰৰ ব্যৱহাৰকাৰীৰ বাবে অন্তৰ্ভুক্তিমূলক আৰু সুগম হোৱাকৈ ডিজাইন কৰা হৈছে, তেওঁলোকৰ বয়স, কাৰিকৰী পটভূমি, আৰু সামাজিক বা অৰ্থনৈতিক পটভূমি নিৰ্বিশেষে। এপটো আৰু ইয়াৰ সমলবোৰ ইংৰাজী আৰু অন্যান্য স্থানীয় ভাষাত উপলব্ধ কৰা হৈছে। ই ব্যৱহাৰকাৰীসকলক নিজৰ চকুৰ মূল্যায়ন কৰাত আৰু সময়মতে চিকিৎসাৰ পৰামৰ্শ লাভ কৰাত সহায় কৰে। এপটোৱে আমাৰ ব্যৱহাৰকাৰীসকলক ব্যক্তিগত চকুৰ যত্নৰ সমাধান প্ৰদান কৰিবলৈ শেহতীয়া প্ৰযুক্তি আৰু সঁজুলি ব্যৱহাৰ কৰে। তেওঁলোকৰ জীৱনটো সহজ কৰি তুলিবলৈ ইয়াত বিভিন্ন ধৰণৰ বৈশিষ্ট্য আছে।';

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
  String get assessmentResultCardAssessmentQuestions => 'মূল্যায়ন\r\n\r\nপ্ৰশ্ন';

  @override
  String get assessmentResultCardAcuityTest => 'তীক্ষ্ণতা\r\n\r\nপৰীক্ষা';

  @override
  String get assessmentResultCardEyeScan => 'চকু\r\n\r\nস্কেন কৰক';

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
  String get chatBotDefaultQuerySuggestions => 'চকুৰ মূল্যায়ন আৰম্ভ কৰক | সাধাৰণ চকুৰ সমস্যা | দৃষ্টিশক্তি উন্নত কৰাৰ পৰামৰ্শ';

  @override
  String get chatBotWelcomeMessage => 'হাই, মই আজি আপোনাক কেনেকৈ সহায় কৰিব পাৰো?';

  @override
  String get poweredByText => 'ইয়াৰ দ্বাৰা চালিত';

  @override
  String get digitalHealthCard => 'ডিজিটেল জনস্বাস্থ্য স্তুপ';

  @override
  String get inviteNowText => 'এতিয়া আমন্ত্ৰণ কৰক';

  @override
  String get resend => 'পুনৰ পঠিওৱা';

  @override
  String get mobileNumber => 'মোবাইল নম্বৰ';

  @override
  String get loginVerifyMobileNumber => 'আপোনাৰ মোবাইল নম্বৰটো পৰীক্ষা কৰক';

  @override
  String get loginEnterMobileNumber => 'অনুগ্ৰহ কৰি মোবাইল নম্বৰ প্ৰবিষ্ট কৰক';

  @override
  String get loginEnterValidMobileNumber => 'অনুগ্ৰহ কৰি বৈধ মোবাইল নম্বৰ প্ৰবিষ্ট কৰক';

  @override
  String get loginUnableToSendOTP => 'এই নম্বৰলৈ অ \'. টি. পি. প্ৰেৰণ কৰিব নোৱাৰি';

  @override
  String get loginGetOTP => 'অ \'. টি. পি. প্ৰাপ্ত কৰক';

  @override
  String get loginInvalidOTP => 'অবৈধ অ \'. টি. পি.';

  @override
  String get loginDidntReceiveOTP => 'অ \'. টি. পি. টো পোৱা নাই নেকি?';

  @override
  String get loginOTPSent => 'অ \'. টি. পি. সফলতাৰে প্ৰেৰণ কৰা হৈছে';

  @override
  String get areYouSure => 'আপুনি নিশ্চিতনে?';

  @override
  String get triageExitConfirmation => 'আপুনি পৰীক্ষাৰ পৰা বাহিৰ হ "ব বিচাৰে নেকি?';

  @override
  String get triageReportEyeProblems => 'চকুৰ সমস্যাৰ বিষয়ে অৱগত কৰক';

  @override
  String get triageHowToReport => 'চকুৰ সমস্যাবোৰ কেনেকৈ ৰিপৰ্ট কৰিব?';

  @override
  String get triageReportInstructions => 'যদি আপোনাৰ চকু সম্পৰ্কীয় সমস্যা আছে, আপুনি উপযুক্ত নিৰ্দেশনা লাভ কৰিবলৈ ইয়াত আপোনাৰ সমস্যাবোৰ স্ব-ঘোষণা কৰিব পাৰে আৰু উল্লেখ কৰিব পাৰে। আপুনি ইয়াত আপোনাৰ বন্ধুবৰ্গ বা পৰিয়ালৰ সদস্যসকলৰ চকুৰ সমস্যাবোৰ উল্লেখ কৰিব পাৰে আৰু উপযুক্ত নিৰ্দেশনা লাভ কৰিব পাৰে। চকুৰ সমস্যাৰ প্ৰকৃতি আৰু তীব্ৰতা বুজিবলৈ আপোনাক তলৰ অংশবোৰত প্ৰশ্নৰ এটা সংহতি সোধা হ \'ব। আপোনাক কৰিবলগীয়া পৰীক্ষাসমূহ আৰু সকলো প্ৰশ্নৰ উত্তৰ দিয়াৰ পিছত অনুসৰণ কৰিবলগীয়া পদক্ষেপসমূহৰ পৰামৰ্শ আৰু নিৰ্দেশনা দিয়া হ\' ব।';

  @override
  String get assessment => 'মূল্যায়ন';

  @override
  String get triageOtherSymptomsQuestion => 'আপোনাৰ আন কোনো লক্ষণ আছে নেকি?';

  @override
  String get triageEnterSymptoms => 'ইয়াত আপোনাৰ লক্ষণসমূহ প্ৰবিষ্ট কৰক';

  @override
  String get triageEyeAssessmentResults => 'চকুৰ মূল্যায়নৰ ফলাফল';

  @override
  String get triageTestId => 'পৰীক্ষা আইডি';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'চকুৰ স্কেন সফলতাৰে আপডেট কৰা হৈছে';

  @override
  String get triageErrorEyeScanNotUpdated => 'চকুৰ স্কেন আপডেট কৰা হোৱা নাই!';

  @override
  String get triageLeftEyeString => 'বাওঁ চকু';

  @override
  String get triageRightEyeString => 'সোঁ চকু';

  @override
  String get vaEyeTest => 'চকুৰ পৰীক্ষা';

  @override
  String get instructions => 'নিৰ্দেশনাসমূহ';

  @override
  String get vaSwipeUp => 'সোয়াইপ আপ কৰক';

  @override
  String get vaSwipeDown => 'স্বাইপ ডাউন কৰক';

  @override
  String get vaSwipeLeft => 'বাওঁফালে সোয়াইপ কৰক';

  @override
  String get vaSwipeRight => 'সোঁফালে সোয়াইপ কৰক';

  @override
  String get vaSwipeGestureError => 'অবৈধ সোয়াইপ অঙ্গভঙ্গি। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get permissionNotGranted => 'অনুমতি দিয়া হোৱা নাই';

  @override
  String get serviceNotAvailable => 'সেৱা উপলব্ধ নহয়';

  @override
  String get vaDistanceToFace => 'মুখামুখি হোৱাৰ দূৰত্ব';

  @override
  String get vaBringFaceInsideBox => 'বাকচটোৰ ভিতৰলৈ আপোনাৰ মুখখন আনক।';

  @override
  String get startAssessment => 'মূল্যায়ন আৰম্ভ কৰক';

  @override
  String get optoAddPatientInfo => 'ৰোগীৰ তথ্য যোগ কৰক';

  @override
  String get loggedOutMessage => 'আপোনাক লগ আউট কৰা হৈছে';

  @override
  String get optoLogoutError => 'ক্ষমা কৰিব, আমি মোবাইল এপত এটা লগআউট ত্ৰুটিৰ সন্মুখীন হৈছিলো।';

  @override
  String get optoLoggingOut => 'লগ আউট কৰা হৈছে...';

  @override
  String get hello => 'নমস্কাৰ।';

  @override
  String get optoGetStarted => 'আহক আৰম্ভ কৰোঁ';

  @override
  String get optoCompletedTests => 'সম্পূৰ্ণ কৰা পৰীক্ষাসমূহ';

  @override
  String get optoThisMonth => 'এই মাহটো';

  @override
  String get today => 'আজি';

  @override
  String get services => 'সেৱাসমূহ';

  @override
  String get optoAssessmentHistory => 'মূল্যায়নৰ ইতিহাস';

  @override
  String get optoEyeAssessments => 'চকুৰ মূল্যায়ন';

  @override
  String get feedback => 'ফিডবেক';

  @override
  String get optoImproveApp => 'আমি আপোনাৰ মতামত বিচাৰোঁ যাতে আমাৰ এপ্লিকেচন উন্নত হয়।';

  @override
  String get assessments => 'মূল্যায়নসমূহ';

  @override
  String get optoPatientAssistance => 'ৰোগীক সহায়ৰ প্ৰয়োজন হৈছিল নেকি?';

  @override
  String get optoVisualAcuity => 'দৃষ্টিশক্তিৰ তীক্ষ্ণতা';

  @override
  String get optoPatientAided => 'ৰোগীক সহায় কৰা হৈছিল নেকি?';

  @override
  String get optoEyeScan => 'চকুৰ স্কেন';

  @override
  String get optoLeaveFeedback => 'অনুগ্ৰহ কৰি আপোনাৰ মতামত তলত দিয়ক';

  @override
  String get optoNoInternet => 'ইণ্টাৰনেট সংযোগ নাই';

  @override
  String get optoCheckInternet => 'অনুগ্ৰহ কৰি আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক আৰু পুনৰ চেষ্টা কৰক';

  @override
  String get optoSearchPatientId => 'ৰোগীৰ আই. ডি. সন্ধান কৰক';

  @override
  String get optoRecentAssessments => 'শেহতীয়া মূল্যায়নসমূহ';

  @override
  String get optoSelectDateRange => 'অনুগ্ৰহ কৰি এটা তাৰিখৰ পৰিসৰ বাছনি কৰক';

  @override
  String get optoDataNotFound => 'এই সন্ধানৰ বাবে তথ্য পোৱা নগল';

  @override
  String get optoAssessmentReport => 'মূল্যায়ন প্ৰতিবেদন';

  @override
  String get optoPID => 'পি. আই. ডি.';

  @override
  String get category => 'শ্ৰেণী';

  @override
  String get patientAssessmentAndTest => 'ৰোগীৰ মূল্যায়ন আৰু পৰীক্ষা';

  @override
  String get patientSelfTestReport => 'স্ব-পৰীক্ষা প্ৰতিবেদন';

  @override
  String get patientClinicalReport => 'ক্লিনিকেল প্ৰতিবেদন';

  @override
  String get patientAppointmentTitle => 'নিযুক্তি';

  @override
  String get patientBookAppointment => 'গ্ৰন্থ নিযুক্তি';

  @override
  String get patientAppointmentSubtitle => 'আপোনাৰ নিযুক্তিসমূহ';

  @override
  String get patientTelephoneConsultation => 'টেলিফোন পৰামৰ্শ';

  @override
  String get patientAddress => 'ঠিকনা';

  @override
  String get patientReschedule => 'পুনৰ নিৰ্ধাৰণ কৰক';

  @override
  String get patientCancel => 'বাতিল কৰক';

  @override
  String get patientPID => 'পি. আই. ডি.';

  @override
  String get patientReportID => 'আই. ডি. প্ৰতিবেদন কৰক';

  @override
  String get patientHideDetailedReport => 'বিশদ প্ৰতিবেদন লুকুৱাই ৰাখক';

  @override
  String get patientShowDetailedReport => 'বিশদ প্ৰতিবেদন দেখুৱাওক';

  @override
  String get patientEID => 'ই. আই. ডি.';

  @override
  String get patientViewHistoryButton => 'ইতিহাস চাওক';

  @override
  String get patientViewReportButton => 'প্ৰতিবেদন চাওক';

  @override
  String get patientNoMoreData => 'আৰু কোনো তথ্য নাই';

  @override
  String get patientErrorFetchingReport => 'প্ৰতিবেদন প্ৰাপ্ত কৰাত ত্ৰুটি';

  @override
  String get patientTimeline => 'সময়ৰেখা';

  @override
  String get patientRoutineCheckup => 'নিয়মীয়া পৰীক্ষা';

  @override
  String get patientAssessmentID => 'মূল্যায়ন আই. ডি.';

  @override
  String get patientStartDate => 'আৰম্ভ কৰাৰ তাৰিখ';

  @override
  String get patientIVRAssessment => 'আই. ভি. আৰ. মূল্যায়ন';

  @override
  String get patientEarlyConsultationRecommended => 'আগতীয়া পৰামৰ্শৰ পৰামৰ্শ দিয়া হৈছে';

  @override
  String get patientCataractEyeReport => 'ছানি পৰা চকুৰ প্ৰতিবেদন';

  @override
  String get patientRedEyeReport => 'ৰঙা চকুৰ প্ৰতিবেদন';

  @override
  String get patientScanAgain => 'পুনৰ স্কেন কৰক';

  @override
  String get patientStepsToScan => 'ৰেটিনা স্কেনিং কৰাৰ পদক্ষেপসমূহ';

  @override
  String get patientProceedToScan => 'স্কেনলৈ যাওক';

  @override
  String get patientSkipAndProceedToScan => 'স্কিপ কৰক আৰু স্কেনলৈ আগবাঢ়ক';

  @override
  String get patientEyeScanner => 'চকুৰ স্কেনাৰ';

  @override
  String get patientErrorSelectCamera => 'প্ৰথমে এটা কেমেৰা বাছনি কৰক!';

  @override
  String get patientEyeBoxText => 'চকুৰ বাকচৰ লিখনী';

  @override
  String get patientLoggedOut => 'আপোনাক লগ আউট কৰা হৈছে';

  @override
  String get patientLogoutError => 'ক্ষমা কৰিব, আমি মোবাইল এপত এটা লগআউট ত্ৰুটিৰ সন্মুখীন হৈছিলো।';

  @override
  String get patientUpdateProfile => 'প্ৰফাইল আপডেট কৰক';

  @override
  String get patientEdit => 'সম্পাদনা কৰক';

  @override
  String get patientProfileNotUpdated => 'প্ৰফাইল আপডেট কৰা হোৱা নাই';

  @override
  String get patientProfileUpdated => 'প্ৰফাইল আপডেট কৰা হৈছে';

  @override
  String get patientReportUnavailable => 'প্ৰতিবেদন উপলব্ধ নহয়';

  @override
  String get patientClinicalReportNotFound => 'ক্লিনিকেল প্ৰতিবেদন পোৱা নগল';

  @override
  String get patientRID => 'আৰ. আই. ডি.';

  @override
  String get patientUpdateUnavailable => 'এই মুহূৰ্তত আপডেইট উপলব্ধ নহয়';

  @override
  String get vgAddEvent => 'অনুষ্ঠান যোগ কৰক';

  @override
  String get vgUploadingImageAddingEvent => 'ছবি আপলোড কৰা আৰু অনুষ্ঠান যোগ কৰা হৈছে';

  @override
  String get vgEventTitle => 'অনুষ্ঠানৰ শিৰোনাম';

  @override
  String get vgPleaseEnterEndTime => 'অনুগ্ৰহ কৰি শেষৰ সময় প্ৰবিষ্ট কৰক';

  @override
  String get vgShouldNotContainSpecialCharacter => 'কোনো বিশেষ আখৰ থাকিব নালাগে';

  @override
  String get vgEventDescription => 'অনুষ্ঠানৰ বিৱৰণ';

  @override
  String get vgAddPatient => 'ৰোগীক যোগ কৰক';

  @override
  String get vgPatients => 'ৰোগীসকল';

  @override
  String get vgDetails => 'সবিশেষ';

  @override
  String get vgTeammates => 'সতীৰ্থসকল';

  @override
  String get vgEyeAssessment => 'চকুৰ মূল্যায়ন';

  @override
  String get vgStart => 'আৰম্ভ কৰক';

  @override
  String get vgEyeAssessmentDescription => 'আপোনাৰ, আপোনাৰ বন্ধুবৰ্গৰ, আৰু পৰিয়ালৰ সদস্যসকলৰ চকুৰ সমস্যাবোৰ কেইটামান পৰ্য্যায়ত মূল্যায়ন কৰক। আপোনাৰ চকুৰ সমস্যাৰ সৈতে সম্পৰ্কিত লক্ষণবোৰ বুজিবলৈ আপোনাক কেইবাটাও প্ৰশ্ন সোধা হ \'ব আৰু তাৰ পিছত চাক্ষুষ পৰীক্ষা কৰা হ\' ব।';

  @override
  String get vgLogoutMessage => 'আপোনাক লগ আউট কৰা হৈছে';

  @override
  String get vgLogoutErrorMessage => 'ক্ষমা কৰিব, আমি মোবাইল এপত এটা লগআউট ত্ৰুটিৰ সন্মুখীন হৈছিলো।';

  @override
  String get vgWelcome => 'স্বাগতম জনাইছো।';

  @override
  String get vgServices => 'সেৱাসমূহ';

  @override
  String get vgEvents => 'অনুষ্ঠানসমূহ';

  @override
  String get vgViewAll => 'সকলো চাওক';

  @override
  String get vtAssessmentReport => 'মূল্যায়ন প্ৰতিবেদন-ই. এ.';

  @override
  String get vtRemarks => 'মন্তব্যসমূহ';

  @override
  String get vtNoPatientFound => 'কোনো ৰোগী পোৱা নগ "ল';

  @override
  String get vtClose => 'বন্ধ কৰক';

  @override
  String get vtBack => 'পিছফালে';

  @override
  String get vtSubmit => 'দাখিল কৰক';

  @override
  String get vtSomethingWentWrong => 'কিবা ভুল হৈ গ "ল।';

  @override
  String get vtAssessmentClosedSuccessfully => 'মূল্যায়ন সফলতাৰে বন্ধ কৰা হৈছে';

  @override
  String get vtEyeScan => 'চকুৰ স্কেন';

  @override
  String get vtDashboard => 'ডেশ্বব "ৰ্ড';

  @override
  String get vtRegisterPatient => 'ৰোগীক পঞ্জীয়ন কৰক';

  @override
  String get vtTriage => 'ত্ৰয়োদশ।';

  @override
  String get vtMarkMyAvailability => 'মোৰ উপলব্ধতা চিহ্নিত কৰক';

  @override
  String get vtIVRCallHistory => 'আই. ভি. আৰ. কলৰ ইতিহাস';

  @override
  String get vtMarked => 'চিহ্নিত কৰা হৈছে';

  @override
  String get vtPreliminaryAssessment => 'প্ৰাৰম্ভিক মূল্যায়ন';

  @override
  String get vtAge => 'বয়স.';

  @override
  String get vtGender => 'লিংগ';

  @override
  String get vtAddress => 'ঠিকনা';

  @override
  String get vtProfile => 'প্ৰফাইল';

  @override
  String get vtLogoutMessage => 'আপোনাক লগ আউট কৰা হৈছে';

  @override
  String get vtLogoutError => 'ক্ষমা কৰিব, আমি মোবাইল এপত এটা লগআউট ত্ৰুটিৰ সন্মুখীন হৈছিলো।';

  @override
  String get vtError => 'ত্ৰুটি';

  @override
  String get vtPatient => 'ৰোগী।';

  @override
  String get vtMobile => 'মোবাইল';

  @override
  String get vtAssessmentID => 'মূল্যায়ন আই. ডি.';

  @override
  String get vtStatus => 'অৱস্থা';

  @override
  String get vtTimeline => 'সময়ৰেখা';

  @override
  String get vtCategory => 'শ্ৰেণী';

  @override
  String get vtNoDataFound => 'কোনো তথ্য পোৱা নগল';

  @override
  String get appCameraCapture => 'ধৰা পেলোৱা';

  @override
  String get appCameraRetake => 'পুনৰ গ্ৰহণ কৰক';

  @override
  String get appCameraUsePhoto => 'ফটো ব্যৱহাৰ কৰক';

  @override
  String get appCameraCancel => 'বাতিল কৰক';

  @override
  String get appCameraNotFound => 'কেমেৰা পোৱা নগল';

  @override
  String get appCameraException => 'কেমেৰাৰ ব্যতিক্ৰম';

  @override
  String get appCameraProgressMessage => 'ল \'ড কৰা হৈছে...';

  @override
  String get internetLostNoConnection => 'ইণ্টাৰনেট সংযোগ নাই';

  @override
  String get internetLostRetry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get secureJailbreak => 'এনে লাগিছে যেন আপোনাৰ ডিভাইচটো জেলব্ৰক \'ন হৈ আছে।';

  @override
  String get secureRestrictedAccess => 'সুৰক্ষাৰ কাৰণে, এই এপটোৰ প্ৰৱেশাধিকাৰ জেলব্ৰ \'কেন ডিভাইচত সীমাবদ্ধ।';

  @override
  String get secureExitApp => 'এপৰ পৰা ওলাই যাওক';

  @override
  String get sharedErrorPageIssues => 'আমি কিছুমান সমস্যাৰ সন্মুখীন হৈছো। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get appointmentBookingTitle => 'নিযুক্তি বুকিং';

  @override
  String get comingSoon => 'অতি সোনকালেই আহিবলগীয়া...';

  @override
  String get miniappService => 'সেৱা';

  @override
  String get miniappConsole => 'কনচ \'ল';

  @override
  String get roleChooseYourRole => 'আপোনাৰ ভূমিকা বাছনি কৰক';

  @override
  String get roleNote => 'টোকাঃ আপুনি এপটোৰ ভিতৰত আপোনাৰ ভূমিকা সলনি কৰিব নোৱাৰিব।';

  @override
  String get roleConfirm => 'নিশ্চিত কৰক';

  @override
  String get roleEyeCareProfessional => 'চকুৰ যত্নৰ পেছাদাৰী';

  @override
  String get roleVisionTechnician => 'ভিজন টেকনিচিয়ান';

  @override
  String get rolePatient => 'ৰোগী';

  @override
  String get roleVisionGuardian => 'ভিজন গাৰ্ডিয়ান';

  @override
  String get vtSearchText => 'ৰোগীৰ আইডি, মোবাইল নম্বৰ বা নামৰ দ্বাৰা সন্ধান কৰক';

  @override
  String get emptyPatientsInfo => 'ৰোগীসকলৰ সবিশেষ চাবলৈ তেওঁলোকৰ সন্ধান আৰম্ভ কৰক।';

  @override
  String get vtPersonalDetails => 'ব্যক্তিগত বিৱৰণ';

  @override
  String get vtHprId => 'এইচ. পি. আৰ. আই. ডি.';

  @override
  String get vtEmailId => 'ইমেইল আইডি';

  @override
  String get vtEducationalQualification => 'শিক্ষাগত অৰ্হতা';

  @override
  String get vtAddressAndDoorNumber => 'ঠিকনা আৰু দুৱাৰ নম্বৰ';

  @override
  String get vtCity => 'চহৰ';

  @override
  String get vtState => 'ৰাজ্য';

  @override
  String get vtPincode => 'পিনক \'ড';

  @override
  String get vtOrganisationDetails => 'সংগঠনৰ সবিশেষ';

  @override
  String get vtOrgId => 'অৰ্গ আই. ডি.';

  @override
  String get vtFacilityType => 'সুবিধাৰ ধৰণ';

  @override
  String get vtAssessments => 'মূল্যায়নসমূহ';

  @override
  String get vtNoAssessmentsFound => 'কোনো মূল্যায়ন পোৱা নগ "ল';

  @override
  String get vtAnalytics => 'বিশ্লেষণ';

  @override
  String get vtTotalCases => 'মুঠ গোচৰসমূহ';

  @override
  String get vtIvrCalls => 'আই. ভি. আৰ. কলসমূহ';

  @override
  String get vtClinicVisits => 'ক্লিনিক ভ্ৰমণসমূহ';

  @override
  String get vtCasesClosed => 'গোচৰসমূহ বন্ধ কৰা হৈছে';

  @override
  String get vtCritical => 'সমালোচনামূলক';

  @override
  String get vtRegular => 'নিয়মিতভাৱে';

  @override
  String get vtAvgClosureTime => 'এ. ভি. জি. বন্ধ কৰাৰ সময়';

  @override
  String get vtByAge => 'বয়স অনুসৰি';

  @override
  String get vtByGender => 'লিংগ অনুসৰি';

  @override
  String get vtSymptoms => 'লক্ষণসমূহ';

  @override
  String get vtSearchByMobileNo => 'মোবাইল নম্বৰেৰে সন্ধান কৰক।';

  @override
  String get vtInvalidMobileNo => 'অবৈধ মোবাইল নম্বৰ।';

  @override
  String get vtCallLogEmpty => 'কল লগ খালী আছে.. এতিয়ালৈকে কোনো কল কৰা হোৱা নাই!!';

  @override
  String get vtNoDataAvailable => 'কোনো তথ্য উপলব্ধ নাই';

  @override
  String get vtToday => 'আজি';

  @override
  String get vtYesterday => 'যোৱা দিনটো';

  @override
  String get vtIvrCallNotAvailable => 'আই. ভি. আৰ. কল উপলব্ধ নহয়.. পুনৰ চেষ্টা কৰক!!';

  @override
  String get vtMarkUnavailable => 'অনুপলব্ধ হিচাপে চিহ্নিত কৰক';

  @override
  String get vtStartDate => 'আৰম্ভ কৰাৰ তাৰিখ';

  @override
  String get vtEndDate => 'শেষৰ তাৰিখ';

  @override
  String get vtStartTime => 'আৰম্ভ কৰাৰ সময়';

  @override
  String get vtEndTime => 'শেষৰ সময়';

  @override
  String get vtAddRemarksOptional => 'মন্তব্য যোগ কৰক (ঐচ্ছিক)';

  @override
  String get vtSave => 'সংৰক্ষণ কৰক';

  @override
  String get vtCancel => 'বাতিল কৰক';

  @override
  String get vtPleaseEnterRemark => 'অনুগ্ৰহ কৰি মন্তব্য প্ৰৱেশ কৰক';

  @override
  String get vtAssessment => 'মূল্যায়ন';

  @override
  String get vtIvrSelections => 'আই. ভি. আৰ. নিৰ্বাচনসমূহ';

  @override
  String get vtLanguageSelection => 'ভাষা নিৰ্বাচন';

  @override
  String get vtEnglish => 'ইংৰাজী';

  @override
  String get vtPatientType => 'ৰোগীৰ ধৰণ';

  @override
  String get vtProblem => 'সমস্যা।';

  @override
  String get vtEyeSight => 'চকুৰ দৃষ্টিশক্তি';

  @override
  String get vtVisionTechnician => 'ভিজন টেকনিচিয়ান';

  @override
  String get vtRecommendedCenter => 'পৰামৰ্শ দিয়া কেন্দ্ৰ';

  @override
  String get vtAssessmentIDEA => 'মূল্যায়ন আই. ডি.: ই. এ.';

  @override
  String get vtPid => 'পি. আই. ডি.: অ \'. পি.';

  @override
  String get vtAssessmentTimeline => 'মূল্যায়ন সময়ৰেখা';

  @override
  String get vtPleaseSelectEncounter => 'অনুগ্ৰহ কৰি এটা সাক্ষাৎ নিৰ্বাচন কৰক';

  @override
  String get vtTimelineEA => 'সময়সীমাঃ ই. এ.';

  @override
  String get vtGeneralInformation => 'সাধাৰণ তথ্য';

  @override
  String get vtDateOfBirth => 'জন্মৰ তাৰিখ';

  @override
  String get vtAssessmentEA => 'মূল্যায়ন ই. এ.';

  @override
  String get vtNotRegistered => 'আপুনি ব্যৱস্থাপ্ৰণালীত পঞ্জীয়ন কৰা নাই। অনুগ্ৰহ কৰি এটা মিছড কল দিয়ক';

  @override
  String get vtOkay => 'ঠিক আছে।';

  @override
  String get vtTakePicture => 'ছবি লোৱা';

  @override
  String get vtEye => 'চকু।';

  @override
  String get vtRetakePicture => 'পুনৰ ছবি লোৱা';

  @override
  String get vtNext => 'পৰৱৰ্তী';

  @override
  String get vtMrCode => 'এম. আৰ. কোড';

  @override
  String get vtEnterMrCode => 'ইয়াত এম. আৰ. কোড প্ৰবিষ্ট কৰক';

  @override
  String get vtPleaseEnterMrCode => 'অনুগ্ৰহ কৰি এম. আৰ. কোড প্ৰবিষ্ট কৰক';

  @override
  String get vtNote => 'মন কৰিবলগীয়া কথা';

  @override
  String get vtEnterRecommendations => 'ইয়াত পৰামৰ্শসমূহ প্ৰবিষ্ট কৰক';

  @override
  String get vtSolutions => 'সমাধানসমূহ';

  @override
  String get vtLeftEye => 'বাওঁ চকু';

  @override
  String get vtRightEye => 'সোঁ চকু';

  @override
  String get vtBothEyes => 'দুয়োৰে চকু';

  @override
  String get vtFilterBy => 'ইয়াৰ দ্বাৰা ফিল্টাৰ কৰক';

  @override
  String get vtLocation => 'অৱস্থান';

  @override
  String get vtEnterTime => 'অনুগ্ৰহ কৰি সময় প্ৰৱেশ কৰক';

  @override
  String get vtEnterDate => 'অনুগ্ৰহ কৰি তাৰিখ প্ৰৱেশ কৰক';

  @override
  String get vtRecommendation => 'পৰামৰ্শ';

  @override
  String get vtVisitPrimaryCenter => 'প্ৰাথমিক কেন্দ্ৰলৈ যাওক';

  @override
  String get vtVisitSecondaryCenter => 'মাধ্যমিক কেন্দ্ৰলৈ যাওক';

  @override
  String get vtVisitTertiaryCenter => 'তৃতীয় পৰ্যায়ৰ কেন্দ্ৰলৈ যাওক';

  @override
  String get vtVisitCenterOfExcellence => 'উৎকৃষ্টতা কেন্দ্ৰ ভ্ৰমণ কৰক';

  @override
  String get vtIvrCallQuestion => 'আপুনি আই. ভি. আৰ. কলত আছে নেকি?';

  @override
  String get vtYes => 'হয়।';

  @override
  String get vtNo => 'নাই।';

  @override
  String get vtRetry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get vtAssessmentQuestions => 'মূল্যায়নৰ প্ৰশ্নসমূহ';

  @override
  String get vtVisionCenter => 'দৃষ্টি কেন্দ্ৰ';

  @override
  String get vtVisualAcuity => 'দৃষ্টিশক্তিৰ তীক্ষ্ণতা';

  @override
  String get vtInvalidValue => 'অবৈধ মান';

  @override
  String get vtSeverity => 'তীব্ৰতা';

  @override
  String get vtNoVisionCentersFound => 'কোনো দৃষ্টি কেন্দ্ৰ পোৱা নগ "ল';

  @override
  String get vtRequestLocationPermission => 'অৱস্থানৰ অনুমতিৰ বাবে অনুৰোধ কৰক';

  @override
  String get vtAppSettings => 'এপৰ সংহতিসমূহ';

  @override
  String get vtEnterSomeText => 'অনুগ্ৰহ কৰি কিছুমান লিখনী প্ৰবিষ্ট কৰক';

  @override
  String get vtPrimary => 'প্ৰাথমিক';

  @override
  String get vtDependent => 'নিৰ্ভৰশীল';

  @override
  String get vtAddMember => 'সদস্য যোগ কৰক';

  @override
  String get vtCompleteProfile => 'সম্পূৰ্ণ প্ৰফাইল';

  @override
  String get vtPatientNotRegistered => 'ৰোগী পঞ্জীয়ন কৰা হোৱা নাই';

  @override
  String get vtPatientRegistered => 'পঞ্জীয়ন কৰা ৰোগী';

  @override
  String get vtDependentNotAdded => 'নিৰ্ভৰশীল যোগ কৰা হোৱা নাই';

  @override
  String get vtDependentAdded => 'নিৰ্ভৰশীল যোগ কৰা হৈছে';

  @override
  String get vtServiceNotAvailable => 'সেৱা উপলব্ধ নহয়';

  @override
  String get vgEyeAssessments => 'চকুৰ মূল্যায়ন';

  @override
  String get vgTotal => 'মুঠ';

  @override
  String get vgCamps => 'শিবিৰসমূহ';

  @override
  String get vgDoorToDoor => 'দুৱাৰৰ পৰা দুৱাৰলৈ';

  @override
  String get vgByGender => 'লিংগ অনুসৰি';

  @override
  String get vgMale => 'পুৰুষ।';

  @override
  String get vgFemale => 'মহিলা';

  @override
  String get vgOthers => 'আনবোৰ';

  @override
  String get vgByAge => 'বয়স অনুসৰি';

  @override
  String get vgSlideAge => 'বছৰবোৰ';

  @override
  String get vgSymptoms => 'লক্ষণসমূহ';

  @override
  String get vgRefractive => 'প্ৰতিসৰণশীল';

  @override
  String get vgCataract => 'ছানি পৰা ৰোগ।';

  @override
  String get vgGlaucoma => 'গ্লুক \'মা';

  @override
  String get vgKeratitis => 'কেৰাটাইটিছ';

  @override
  String get vgBlepharitis => 'ব্লেফাৰাইটিছ';

  @override
  String get vgConjunctivitis => 'কনজাংটিভাইটিছ';

  @override
  String get vgServicesCreateEvent => 'অনুষ্ঠান সৃষ্টি কৰক';

  @override
  String get vgServicesEyeAssessment => 'চকুৰ মূল্যায়ন';

  @override
  String get vgServicesRegisterPatient => 'নতুন ৰোগীক পঞ্জীয়ন কৰক';

  @override
  String get vgAddPatients => 'ৰোগীসকলক যোগ কৰক';

  @override
  String get vgEvent => 'অনুষ্ঠান';

  @override
  String get vgAddEventPhoto => 'অনুষ্ঠানৰ ফটো যোগ কৰক';

  @override
  String get vgUploadImage => 'ছবি আপলোড কৰক';

  @override
  String get vgAddPhotoInstruction => 'ইভেণ্টৰ এখন ফটো যোগ কৰক যিটো থাম্বনেইল হিচাপে দেখুওৱা হ \'ব।';

  @override
  String get vgAddressDetails => 'ঠিকনাৰ সবিশেষ';

  @override
  String get vgVenueName => 'স্থানৰ নাম';

  @override
  String get vgVenueNameError => 'অনুগ্ৰহ কৰি স্থানৰ নাম লিখক';

  @override
  String get vgVenueNameSpecialCharError => 'কোনো বিশেষ আখৰ থাকিব নালাগে';

  @override
  String get vgPincode => 'পিনক \'ড';

  @override
  String get vgPincodeError => 'কেৱল 6টা অংকৰ পিনক \'ডৰ অনুমতি আছে';

  @override
  String get vgCityTownVillage => 'নগৰ/নগৰ/গাঁও';

  @override
  String get vgCityTownVillageError => 'অনুগ্ৰহ কৰি চহৰ/নগৰ/গাওঁৰ নাম প্ৰবিষ্ট কৰক';

  @override
  String get vgCityTownVillageSpecialCharError => 'কোনো বিশেষ আখৰ থাকিব নালাগে';

  @override
  String get vgCancel => 'বাতিল কৰক';

  @override
  String get vgSave => 'সংৰক্ষণ কৰক';

  @override
  String get vgAddEventImage => 'অনুষ্ঠানৰ ছবি যোগ কৰক';

  @override
  String get vgEventAdded => 'অনুষ্ঠান যোগ কৰা হৈছে';

  @override
  String get vgEventNotAdded => 'অনুষ্ঠান যোগ কৰা হোৱা নাই';

  @override
  String get vgDateTime => 'তাৰিখ আৰু সময়';

  @override
  String get vgStartDate => 'আৰম্ভ কৰাৰ তাৰিখ';

  @override
  String get vgStartTime => 'আৰম্ভ কৰাৰ সময়';

  @override
  String get vgLocation => 'অৱস্থান';

  @override
  String get vgViewOnMap => 'মানচিত্ৰত চাওক';

  @override
  String get vgAddressAndDoorNumber => 'ঠিকনা আৰু দুৱাৰ নম্বৰ';

  @override
  String get vgSubDistrictName => 'উপ-জিলাৰ নাম';

  @override
  String get vgVillageName => 'গাঁৱৰ নাম';

  @override
  String get vgDistrictName => 'জিলাৰ নাম';

  @override
  String get vgAbout => 'সম্পৰ্কে';

  @override
  String get vgEditEvent => 'অনুষ্ঠান সম্পাদনা কৰক';

  @override
  String get vgDeleteEvent => 'অনুষ্ঠান মচি পেলাওক';

  @override
  String get vgErrorFetchingEventDetails => 'অনুষ্ঠানৰ সবিশেষ প্ৰাপ্ত কৰাত ত্ৰুটি';

  @override
  String get vgNoPatientRegistered => 'কোনো ৰোগীৰ নাম পঞ্জীয়ন কৰা হোৱা নাই। ৰেজিষ্টাৰ ৰোগী ত ক্লিক কৰক।';

  @override
  String get vgRegisterPatient => 'ৰোগীক পঞ্জীয়ন কৰক';

  @override
  String get vgPrimary => 'প্ৰাথমিক';

  @override
  String get vgDependent => 'নিৰ্ভৰশীল';

  @override
  String get vgAddMember => 'সদস্য যোগ কৰক';

  @override
  String get vgCompleteProfile => 'সম্পূৰ্ণ প্ৰফাইল';

  @override
  String get vgStartAssessment => 'মূল্যায়ন আৰম্ভ কৰক';

  @override
  String get vgSearchPatientByPhoneNumber => 'ফোন নম্বৰেৰে ৰোগীক বিচাৰক';

  @override
  String get vgInvalidPhoneNumber => 'অনুগ্ৰহ কৰি এটা বৈধ ফোন নম্বৰ প্ৰবিষ্ট কৰক';

  @override
  String get vgServerError => 'চাৰ্ভাৰত ত্ৰুটি';

  @override
  String get vgPatient => 'ৰোগী।';

  @override
  String get vgReportId => 'আই. ডি. প্ৰতিবেদন কৰক';

  @override
  String get vgNoEventFound => 'কোনো অনুষ্ঠান পোৱা নগ "ল';

  @override
  String get vgTeamMateDeletedSuccessfully => 'টিমমেট সফলতাৰে মচি পেলোৱা হৈছে';

  @override
  String get vgSomethingWentWrong => 'কিবা ভুল হৈ গ "ল।';

  @override
  String get vgName => 'নাম';

  @override
  String get vgPhoneNumber => 'ফোন নম্বৰ';

  @override
  String get vgErrorFetchingTeammatesDetails => 'সতীৰ্থৰ বিৱৰণ অনাৰ ক্ষেত্ৰত ত্ৰুটি';

  @override
  String get vgTeamMateAddedSuccessfully => 'টিমমেট সফলতাৰে যোগ দিয়া হৈছে';

  @override
  String get vgAddTeammate => 'টিমমেট যোগ কৰক';

  @override
  String get vgPleaseEnter => 'অনুগ্ৰহ কৰি প্ৰৱেশ কৰক';

  @override
  String get vgPleaseEnterField => 'অনুগ্ৰহ কৰি ক্ষেত্ৰখন প্ৰৱেশ কৰক';

  @override
  String get vgOr => 'বা';

  @override
  String get vgSearch => 'সন্ধান কৰক';

  @override
  String get vgEventDeletedSuccessfully => 'অনুষ্ঠানটো সফলতাৰে মচি পেলোৱা হৈছে';

  @override
  String get vgEventDeletionFailed => 'অনুষ্ঠান মচি পেলোৱাত ব্যৰ্থ';

  @override
  String get vgEndTimeGreaterThanStartTime => 'শেষৰ সময় আৰম্ভণিৰ সময়তকৈ বেছি হ \'ব লাগে';

  @override
  String get vgNoPatientsPresent => 'বৰ্তমান কোনো ৰোগী নাই। "ৰোগী যোগ কৰক" ত টেপ কৰক।';

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
  String get chatClearChat => 'চ্যাট পৰিষ্কাৰ কৰক';

  @override
  String get chatEyeAssessmentRecommended => 'আপোনাৰ বাবে চকুৰ মূল্যায়নৰ পৰামৰ্শ দিয়া হয়।';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'আপুনি ট্ৰাইজেজ চকুৰ মূল্যায়ন কৰিব বিচাৰে নেকি?';

  @override
  String get chatChatbotNotAvailable => 'এই মুহূৰ্তত চেটবট উপলব্ধ নহয়। অনুগ্ৰহ কৰি পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get chatTypeHere => 'ইয়াত টাইপ কৰক...';

  @override
  String get switchProfile => 'প্ৰফাইল সলনি কৰক';

  @override
  String get switchRole => 'ভূমিকা সলনি কৰক';

  @override
  String get switchTenant => 'ভাড়াটিয়া সলনি কৰক';

  @override
  String get patientHeaderWelcomeText => 'ছাইটকনেক্টলৈ স্বাগতম! আপোনাৰ দৃষ্টিশক্তিৰ যত্ন লোৱাটো গুৰুত্বপূৰ্ণ, আৰু আমি আপোনাৰ বাবে প্ৰতিটো পদক্ষেপেৰে ইয়াত আছো।';

  @override
  String get triageTestCardHeader => 'আপোনাৰ চকুৰ পৰীক্ষা বিনামূলীয়া...';

  @override
  String get triageTestCardBody1 => 'আপোনাৰ চকুৰ লক্ষণবোৰ দ্ৰুতভাৱে বিশ্লেষণ কৰক';

  @override
  String get triageTestCardBody2 => 'আপোনাৰ চকুৰ সমস্যা হ "ব পাৰে নেকি চিনাক্ত কৰক';

  @override
  String get triageTestCardBody3 => 'আপোনাৰ চিকিৎসকৰ ওচৰলৈ কেতিয়া যাব লাগে জানক';

  @override
  String get triageTestCardButton => 'মুক্ত চকু পৰীক্ষা আৰম্ভ কৰক';

  @override
  String get myConnectionListAddMembersDescription => 'আপোনাৰ পৰিয়াল আৰু বন্ধুবৰ্গক যোগ কৰিবলৈ সদস্য যোগ কৰক বুটামত ক্লিক কৰক।';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'আপুনি কেনেকৈ আগবাঢ়িব বিচাৰে?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'মোৰ এটা সমস্যা আছে আৰু মই ইয়াৰ বৈধকৰণ কৰিব বিচাৰো।';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'মোৰ কোনো সমস্যা আছে নে নাই মই নিশ্চিত নহয়।';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'মোৰ চকুৰ কোনো সমস্যা নাই-কেৱল পৰীক্ষা কৰিব বিচাৰোঁ';

  @override
  String get appDrawerToastMessageText => 'ক্ষমা কৰিব, আমি মোবাইল এপত এটা লগআউট ত্ৰুটিৰ সন্মুখীন হৈছিলো।';

  @override
  String get myConnectionListAddMembers => 'সদস্য যোগ কৰক';

  @override
  String get appDrawerReferral => 'ৰেফাৰেল';

  @override
  String get patientTenantDisplayPageHeader => 'ভাড়াটিয়া';

  @override
  String get patientTenantDisplayPageBody => 'তালিকাৰ পৰা এটা ভিজন চেণ্টাৰ বাছনি কৰক';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'অৱস্থানৰ অনুমতিৰ বাবে অনুৰোধ কৰক';

  @override
  String get referralGenerateSheetHeader => 'আপোনাৰ ৰেফাৰেল কোড';

  @override
  String get referralGenerateSheetTapHereButton => 'এটা কোড আছে নেকি? ইয়াত টেপ কৰক';

  @override
  String get referralGenerateSheetMyReferrals => 'মোৰ ৰেফাৰেলসমূহ';

  @override
  String get referralGenerateSheetShareCode => 'সুবিধা লাভ কৰিবলৈ আপোনাৰ বন্ধুবৰ্গ আৰু পৰিয়ালৰ সৈতে আপোনাৰ ৰেফাৰেল কোড শ্বেয়াৰ কৰক।';

  @override
  String get referralGenerateSheetReferralGenerateError => 'ক্ষমা কৰিব, আমি এই মুহূৰ্তত এটা ৰেফাৰেল কোড সৃষ্টি কৰিব পৰা নাই।';

  @override
  String get referralGenerateSheetShareButton => 'শ্বেয়াৰ কৰক';

  @override
  String get referralGenerateSheetCopy => 'কপি কৰক';

  @override
  String get referralCollectSheetYourRefferalCode => 'আপোনাৰ ৰেফাৰেল কোড';

  @override
  String get referralCollectSheetReferralCodeMessage => 'সুবিধা লাভ কৰিবলৈ আপোনাৰ বন্ধুবৰ্গ আৰু পৰিয়ালৰ সৈতে আপোনাৰ ৰেফাৰেল কোড শ্বেয়াৰ কৰক।';

  @override
  String get referralCollectSheetHeader => 'ৰেফাৰেল সংগ্ৰহ কৰক';

  @override
  String get referralCollectSheetBody => 'আপোনাৰ পুৰস্কাৰ সংগ্ৰহ কৰিবলৈ ৰেফাৰেল কোড প্ৰবিষ্ট কৰক';

  @override
  String get referralCollectSheetTextFieldHeader => 'ৰেফাৰেল কোড';

  @override
  String get referralCollectSheetTextFieldBody => 'ৰেফাৰেল কোড প্ৰবিষ্ট কৰক';

  @override
  String get referralCollectSheetSkipButton => 'স্কিপ কৰক';

  @override
  String get referralCollectSheetCollectButton => 'সংগ্ৰহ কৰক';

  @override
  String get referralCollectSheetError => 'ক্ষমা কৰিব, কিবা ভুল হৈছে। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get referralCollectSheetSuccessToast => 'ৰেফাৰেল কোড সফলতাৰে দাখিল কৰা হৈছে';

  @override
  String get referralCollectSheetErrorToast => 'আপুনি প্ৰৱেশ কৰা ৰেফাৰেল কোডটো অবৈধ। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get referralStatisticsPageHeader => 'আপোনাৰ ৰেফাৰেল পৰিসংখ্যা';

  @override
  String get referralStatisticsPageTotalReferred => 'মুঠ উল্লেখ কৰা হৈছে';

  @override
  String get referralStatisticsPageSucessfulReferred => 'সফলভাৱে উল্লেখ কৰা হৈছে';

  @override
  String get referralStatisticsPageTotalTriage => 'মুঠ ত্ৰয়োদশ';

  @override
  String get referralStatisticsPageReferFriendHeader => 'এজন বন্ধুক কেনেকৈ ৰিফাৰ কৰিব লাগে?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'আপোনাৰ ৰেফাৰেল কোড আপোনাৰ বন্ধুৰ সৈতে শ্বেয়াৰ কৰক।';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'আপোনাৰ বন্ধুৱে আপোনাৰ ৰেফাৰেল কোড ব্যৱহাৰ কৰি পঞ্জীয়ন কৰক।';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'আপোনাৰ বন্ধুৱে কমেও এটা ট্ৰাইজেজ পৰীক্ষা সম্পূৰ্ণ কৰে।';

  @override
  String get referralStatisticsPageReferFriendButton => 'এজন বন্ধুক ৰিফাৰ কৰক';

  @override
  String get referralStatisticsPageError => 'ক্ষমা কৰিব, আমি এই মুহূৰ্তত আপোনাৰ ৰেফাৰেল পৰিসংখ্যা আনিব পৰা নাই।';

  @override
  String get referralStatisticsPageRetryButton => 'পুনৰ চেষ্টা কৰক';

  @override
  String get triageInstructionPageTopAppBarEyeTest => 'Eye Test';

  @override
  String get triageInstructionPageHeader => 'What you would be doing';

  @override
  String get triageInstructionPageBody1 => 'You will need to place your device at eye level.';

  @override
  String get triageInstructionPageBody2 => 'You will need to select responses to questions.';

  @override
  String get triageInstructionPageBody3 => 'You will need to take clear pictures of your eyes.';

  @override
  String get triageInstructionPageComfortableWithSelfTest => 'If you are comfortable with doing the test by yourself, you can proceed directly';

  @override
  String get triageInstructionPageTestAssistanceRequired => 'If you need assistance, please get someone who can help you and start.';

  @override
  String get triageInstructionPageIAmReadyButton => 'I am ready';

  @override
  String get appDrawerAddReview => 'Add Review';

  @override
  String get optionCardNeedHelpTextButton => 'Need help to understand this ';

  @override
  String get triageTextTypeQuestionCounterText => 'Optional';

  @override
  String get vaTopAppBarNearVisionTest => 'Near Vision Test';
}
