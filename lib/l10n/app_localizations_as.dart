import 'app_localizations.dart';

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current ৰ $total';
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
  String get bothEyeString => 'দুয়োটা চকু';

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
  String get homeCarousal2Description => '\nচকুৰ 7টা সমস্যাৰ বাবে পৰীক্ষা কৰা হ \'বঃ \n \n• চকু ৰঙা হোৱা, \n• চকুৰ পৰা পানী ওলোৱা, \n• চকুত বগা দাগ পৰীক্ষা কৰা হ\' ব।';

  @override
  String get homeCarousal3Title => 'চকুৰ সমস্যা। এনে বহুতো আছে যিবোৰ আপুনি চাব নোৱাৰে।';

  @override
  String get homeCarousal3Description => 'কিন্তু এজন দৃষ্টিশক্তিৰ যত্ন লোৱা বিশেষজ্ঞই কৰিব পাৰে। \nপৰৱৰ্তী সময়ত জটিলতাৰ পৰা হাত \nসাৰিবলৈ সময়মতে চকুৰ সমস্যা চিনাক্ত \nআৰু চিকিৎসা কৰাব পাৰে।';

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
  String get nearbyVisionCentersNotFound => 'কোনো দৃষ্টি কেন্দ্ৰ পোৱা নগ \"ল';

  @override
  String get tollFreeNumber => 'টোল ফ্ৰী নম্বৰ';

  @override
  String get appDrawerTitle => 'মেনু';

  @override
  String get appDrawerLanguageSelection => 'ভাষা নিৰ্বাচন';

  @override
  String get appDrawerAccessibility => 'অভিগম্যতা সংহতিসমূহ';

  @override
  String get appDrawerHome => 'ঘৰ।';

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
  String get aboutUsDescription => 'Sightconnect হৈছে এক ব্যৱহাৰকাৰী-অনুকূল চকুৰ যত্নৰ এপ যিয়ে কলৰ জৰিয়তে আত্ম-মূল্যায়ন আৰু পৰামৰ্শ প্ৰদান কৰাত সহায় কৰে। \n\nআমাৰ লক্ষ্যৰ কেন্দ্ৰবিন্দু হৈছে চকুৰ যত্ন সকলোৰে বাবে সুলভ কৰাৰ প্ৰতিশ্ৰুতি। এই এপটো জীৱনৰ সকলো ক্ষেত্ৰৰ ব্যৱহাৰকাৰীৰ বাবে অন্তৰ্ভুক্তিমূলক আৰু সুগম হোৱাকৈ ডিজাইন কৰা হৈছে, তেওঁলোকৰ বয়স, কাৰিকৰী পটভূমি, আৰু সামাজিক বা অৰ্থনৈতিক পটভূমি নিৰ্বিশেষে। এপটো আৰু ইয়াৰ সমলবোৰ ইংৰাজী আৰু অন্যান্য স্থানীয় ভাষাত উপলব্ধ কৰা হৈছে। ই ব্যৱহাৰকাৰীসকলক নিজৰ চকুৰ মূল্যায়ন কৰাত আৰু সময়মতে চিকিৎসাৰ পৰামৰ্শ লাভ কৰাত সহায় কৰে। এপটোৱে আমাৰ ব্যৱহাৰকাৰীসকলক ব্যক্তিগত চকুৰ যত্নৰ সমাধান প্ৰদান কৰিবলৈ শেহতীয়া প্ৰযুক্তি আৰু সঁজুলি ব্যৱহাৰ কৰে। তেওঁলোকৰ জীৱনটো সহজ কৰি তুলিবলৈ ইয়াত বিভিন্ন ধৰণৰ বৈশিষ্ট্য আছে।';

  @override
  String get aboutUsFeaturesTitle => 'বৈশিষ্ট্যসমূহ';

  @override
  String get aboutUsFeaturesDescription => 'ইন-এপ চকু পৰীক্ষাঃ এপটোৱে ইয়াৰ ব্যৱহাৰকাৰীসকলক কেইটামান প্ৰশ্নৰ উত্তৰ দি আৰু পৰৱৰ্তী পদক্ষেপ আৰু চিকিৎসকৰ ওচৰলৈ যোৱাৰ বিষয়ে উপযুক্ত পৰামৰ্শ লাভ কৰি নিজৰ চকুৰ মূল্যায়ন কৰিবলৈ অনুমতি দিয়ে। আনকি ব্যৱহাৰকাৰীসকলৰ বন্ধুবৰ্গ আৰু পৰিয়ালেও উপকৃত হ \'ব পাৰে। বুকিং কৰকঃ ব্যৱহাৰকাৰীসকলে চকু চিনাক্ত কৰিবলৈ চিকিৎসকৰ সৈতে অনলাইন টেলিকনচালটেশ্যন আৰু ইন-ক্লিনিক ভিজিট বুক কৰিব পাৰে। |IVR কল সেৱাসমূহঃ আমাৰ আইভিআৰ কল সেৱাসমূহ ইংৰাজী আৰু স্থানীয় ভাষাতো উপলব্ধ আৰু ই মৌলিক ফিচাৰ ফোন থকা ব্যৱহাৰকাৰীসকলক যোগান ধৰে। ব্যৱহাৰকাৰীসকলে আমাৰ চকুৰ যত্ন লোৱা পেছাদাৰীসকলক জৰুৰীকালীন অৱস্থাত বা চকু সম্পৰ্কীয় যিকোনো সমস্যাৰ বাবে তাৎক্ষণিক সহায় বিচাৰিবলৈ ডায়েল কৰিব পাৰে। এপইণ্টমেণ্ট বুকিং কৰিবলৈ বা অধিক স্পষ্টীকৰণ বিচাৰিবলৈও ফোন কৰিব পাৰে। |নিকটৱৰ্তী ক্লিনিকসমূহ: ব্যৱহাৰকাৰীসকলে তেওঁলোকৰ ওচৰৰ চকুৰ যত্ন লোৱা ক্লিনিকসমূহ বিচাৰি উলিয়াব পাৰে। |প্ৰেছক্ৰিপচন আৰু ৰিপৰ্ট: ব্যৱহাৰকাৰীৰ সকলো প্ৰেছক্ৰিপচন আৰু ৰিপৰ্ট এটা ঠাইৰ পৰা বিশেষ হেঁচা নোহোৱাকৈয়ে প্ৰৱেশ কৰিব পাৰি। |চকুৰ শিবিৰ: ব্যৱহাৰকাৰীয়ে ওচৰৰ চকুৰ শিবিৰৰ বিষয়ে তথ্য লাভ কৰি বন্ধু-বান্ধৱ আৰু পৰিয়ালৰ চকুৰ পৰীক্ষা বিনামূলীয়াকৈ কৰিব পাৰিব। |সোঁৱৰাই দিয়া আৰু সতৰ্কবাণী: ব্যৱহাৰকাৰীয়ে তেওঁলোকৰ আগন্তুক এপইণ্টমেণ্ট, ঔষধ, প্ৰতিবেদন আদিৰ সৈতে জড়িত সময়মতে সতৰ্কতা আৰু সোঁৱৰাই লাভ কৰিব পাৰে। | শ্বেয়াৰ কৰাঃ ব্যৱহাৰকাৰীসকলে এই এপটো আৰু এপটোৰ ভিতৰত প্ৰদান কৰা অন্যান্য উপযোগী তথ্য তেওঁলোকৰ বন্ধুবৰ্গ আৰু পৰিয়ালৰ সদস্যসকলৰ সৈতে শ্বেয়াৰ কৰিব পাৰে।';

  @override
  String get aboutUsConclusion => 'এই এপটো আমাৰ ব্যৱহাৰকাৰী সম্প্ৰদায়ক ভালদৰে সেৱা আগবঢ়াবলৈ আগশাৰীৰ চকুৰ যত্ন লোৱা পেছাদাৰীসকলৰ সহায়ত বিকশিত কৰা হৈছে। এক উজ্জ্বল, স্বাস্থ্যকৰ পৃথিৱী সৃষ্টি কৰাৰ বাবে আমাৰ অভিযানত যোগদান কৰক। আজি চাইটকনেক্ট এপটো ডাউনলোড আৰু শ্বেয়াৰ কৰক!';

  @override
  String get privacyPolicyDescription => 'এলভি প্ৰসাদ আই ইনষ্টিটিউট, ইয়াৰ সহযোগী, সহযোগী আৰু অনুমোদিত কোম্পানীসমূহ (সামূহিকভাৱে \"এলভিপিইআই\", \"আমাক\", \"আমি\" বুলি কোৱা হয়) আপোনাৰ অধিকাৰক্ষেত্ৰৰ আইন অনুসৰি আপোনাৰ ব্যক্তিগত তথ্য প্ৰক্ৰিয়া কৰিবলৈ প্ৰতিশ্ৰুতিবদ্ধ। আমি ইয়াৰ দ্বাৰা আপোনাক ব্যক্তিগত তথ্য প্ৰক্ৰিয়াকৰণৰ বিষয়ে তলত দিয়া তথ্যসমূহ অৱগত কৰো।';

  @override
  String get privacyPolicyPersonalDataTitle => 'ব্যক্তিগত তথ্যৰ উপাদানসমূহ সংগ্ৰহ/প্ৰক্ৰিয়া কৰা হৈছেঃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'আপুনি আৰু আপোনাৰ সংযোগৰ ব্যক্তিগত তথ্য যেনে (ইয়াৰে কিছুমান তথ্য ঐচ্ছিক হ \'ব) মোবাইল নম্বৰ, নাম, জন্মৰ তাৰিখ, লিংগ (পুৰুষ/মহিলা), ঠিকনা (পিন ক\' ড), ৰোগীৰ আইডি, সংযোগ, চকুৰ ট্ৰাইজেজ প্ৰশ্নাৱলীৰ প্ৰতিক্ৰিয়া, চকুৰ ট্ৰাইজেজ প্ৰতিবেদন, চকুৰ ছবি, আপোনাৰ চকুৰ ছবিৰ বিপৰীতে টেগ কৰা লক্ষণ, ফটোগ্ৰাফ, ঠিকনাৰ বিৱৰণ যেনে ঠিকনা, জিলাৰ নাম (জিলা ক \'ডকে ধৰি), ৰাজ্যৰ নাম (ৰাজ্যিক ক\' ডকে ধৰি), উপ-জিলাৰ নাম, গাওঁৰ নাম, চহৰৰ নাম, ইমেইল ঠিকনা, অন্তিম নাম, মধ্য নাম, ব্লাড গ্ৰুপ, উচ্চতা, ওজন, বৃত্তি, ABHA বিৱৰণ (আপুনি প্ৰদান কৰা ধৰণে), আপোনাৰ এপৰ অনুমতিৰ ওপৰত ভিত্তি কৰি কেমেৰা, GPS অৱস্থান, এপ্লিকেচনত প্ৰৱেশ কৰাৰ বাবে গ্যালাৰীলৈ প্ৰৱেশ, সম্পূৰ্ণ নেটৱৰ্ক অভিগম, নেটৱৰ্ক সংযোগসমূহ চাওক, ডিভাইচৰ তথ্য।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'প্ৰক্ৰিয়াকৰণৰ উদ্দেশ্যঃ আমি আপোনাৰ দ্বাৰা প্ৰদান কৰা ব্যক্তিগত তথ্য তলত দিয়া উদ্দেশ্যসমূহৰ বাবে প্ৰক্ৰিয়া কৰোঁ যেনেঃ';

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
  String get assessmentAndTestsReportsNotFound => 'কোনো প্ৰতিবেদন পোৱা নগ \"ল';

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
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

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
  String get assessmentResultCardAssessmentQuestions => 'মূল্যায়ন\nপ্ৰশ্ন';

  @override
  String get assessmentResultCardAcuityTest => 'তীক্ষ্ণতা\nপৰীক্ষা';

  @override
  String get assessmentResultCardEyeScan => 'চকু\nস্কেন কৰক';

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
