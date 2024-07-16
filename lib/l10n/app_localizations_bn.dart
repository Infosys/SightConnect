import 'app_localizations.dart';

/// The translations for Bengali (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} এর মধ্যে ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'আরে! আমি আমার চোখের যত্ন নেওয়ার জন্য সাইট কানেক্ট অ্যাপ ব্যবহার করছি, এবং আপনারও করা উচিত! আপনার চোখের মূল্যায়ন করুন এবং সাইট কানেক্ট অ্যাপ দিয়ে সময়মতো চিকিৎসা করুন। এটি একটি অনন্য অ্যাপ যা আপনার হাতে প্রতিরোধমূলক চোখের যত্ন নিয়ে আসে। সাইন আপ করার সময় আমার রেফারেল কোড (রেফারেল) ব্যবহার করুন। এখনই এটি পানঃ https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'দয়া করে যে ওটিপি পাঠানো হয়েছে তা প্রবেশ করান ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'পুনরায় পাঠান ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} রোগীর একটি অ্যাপয়েন্টমেন্ট আছে';
  }

  @override
  String vgEmptyResults(String type) {
    return 'বর্তমানে কোন প্রকার নেই। অ্যাড ${type} ট্যাপ করুন।';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} আইডি, নাম দিয়ে অনুসন্ধান করুন';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'জরুরী পরিস্থিতিতে, দয়া করে ${tollFreeNumber}-এ কল করুন।';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'আপনাকে ${referredBy} দ্বারা উল্লেখ করা হয়েছে।';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'দয়া করে নিশ্চিত করুন যে ক্যামেরাটি আপনার মুখ থেকে ${distance} সেন্টিমিটার দূরে রয়েছে।';
  }

  @override
  String get questionnaireTitle => 'চোখের মূল্যায়ন প্রশ্ন';

  @override
  String get questionnaireExitDialog => 'এই প্রশ্নগুলির উত্তর দেওয়া আপনার চোখের সমস্যাগুলি শনাক্ত করতে সাহায্য করবে। আপনি কি সত্যিই এই সমস্যা থেকে বেরিয়ে আসতে চান?';

  @override
  String get visualAcuityTitle => 'চাক্ষুষ তীক্ষ্ণতা পরীক্ষা';

  @override
  String get visualAcuityDescription => 'একটি চাক্ষুষ তীক্ষ্ণতা পরীক্ষা হল একটি চক্ষু পরীক্ষা যা পরীক্ষা করে যে আপনি একটি নির্দিষ্ট দূরত্ব থেকে একটি অক্ষর বা প্রতীকের বিবরণ কতটা ভাল দেখতে পান। এখনই এই দ্রুত পরীক্ষাটি করুন!';

  @override
  String get visualAcuityHowToPerform => 'কিভাবে চাক্ষুষ তীক্ষ্ণতা পরীক্ষা করা যায়?';

  @override
  String get visualAcuityViewStepsToPerform => 'চাক্ষুষ তীক্ষ্ণতা পরীক্ষা করার পদক্ষেপগুলি দেখুন';

  @override
  String get visualAcuityCompletionDialog => 'সম্পন্ন! উভয় চোখের জন্য ভিজ্যুয়াল অ্যাকুইটি টেস্ট সম্পন্ন হয়েছে। এরপরে আপনাকে আপনার চোখের ছবি তুলতে হবে।';

  @override
  String get visualAcuityExitDialog => 'দৃষ্টিশক্তির তীক্ষ্ণতা আপনার চোখের সমস্যা সম্পর্কে বোঝার জন্য একটি গুরুত্বপূর্ণ পরীক্ষা। আপনি কি সত্যিই এর থেকে বেরিয়ে আসতে চান?';

  @override
  String get swipeGestureTab => 'স্বাইপ অঙ্গভঙ্গি';

  @override
  String get voiceAssistTab => 'ভয়েস অ্যাসিস্ট';

  @override
  String get distanceString => 'দূরত্ব';

  @override
  String get leftEyeString => 'বাঁ চোখ।';

  @override
  String get rightEyeString => 'ডান চোখ।';

  @override
  String get bothEyesString => 'উভয় চোখ।';

  @override
  String get visualAcuityLeftEyeHeader => 'পরীক্ষা 2-বাম চোখ';

  @override
  String get visualAcuityLeftEyeInstructions => 'চোখের পাতায় চাপ না দিয়ে, আপনার হাত দিয়ে ডান চোখটি ঢেকে রাখুন। আপনি যদি চশমা পরে থাকেন তবে চশমার উপর আপনার হাত রাখুন।';

  @override
  String get visualAcuityRightEyeHeader => 'পরীক্ষা 1-ডান চোখ';

  @override
  String get visualAcuityRightEyeInstructions => 'চোখের পাতায় চাপ না দিয়ে বাম চোখটি আপনার হাত দিয়ে ঢেকে রাখুন। আপনি যদি চশমা পরে থাকেন তবে চশমার উপর আপনার হাত রাখুন।';

  @override
  String get visualAcuityBothEyeHeader => 'পরীক্ষা 3-উভয় চোখ';

  @override
  String get visualAcuityBothEyeInstructions => 'আপনার কোনও চোখ ঢেকে রাখবেন না এবং উভয় চোখ দিয়ে পাশে প্রদর্শিত প্রতীকগুলি দেখুন।';

  @override
  String get overlayHeaderDirection => 'দিকনির্দেশনা';

  @override
  String get overlayDescription => 'এখানে আপনি প্রতিটি প্রতীকের দিকনির্দেশগুলি বুঝতে পারেন।';

  @override
  String get overlaySymbolDirectionText => 'প্রতীকের দিকনির্দেশঃ';

  @override
  String get directionDown => 'নিচে।';

  @override
  String get directionUp => 'উপরে।';

  @override
  String get directionLeft => 'বাঁ দিক থেকে।';

  @override
  String get directionRight => 'ডান';

  @override
  String get dontShowAgainString => 'আর দেখাবেন না';

  @override
  String get visualAcuityCarouselTitle => 'ভিজ্যুয়াল অ্যাকুইটি টেস্ট করার পদক্ষেপ';

  @override
  String get eyeScanTitle => 'চোখের স্ক্যান';

  @override
  String get eyeScanDescription => 'আপনি কাছাকাছি! আরও একটি পরীক্ষা বাকি। তারপর আপনার চোখের ছবি তুলুন।';

  @override
  String get eyeScanHowToPerform => 'কিভাবে চোখ স্ক্যান করবেন?';

  @override
  String get eyeScanViewStepsToPerform => 'কিভাবে আপনার চোখ স্ক্যান করতে হয় তা জানতে ধাপগুলি দেখুন।';

  @override
  String get eyeScanExitDialog => 'চোখের স্ক্যান আপনার চোখের সমস্যা সম্পর্কে আরও বুঝতে সাহায্য করে। আপনি কি সত্যিই সেখান থেকে বেরিয়ে আসতে চান?';

  @override
  String get captureRightEyeString => 'ডান চোখ ধরে রাখুন';

  @override
  String get captureLeftEyeString => 'বাম চোখ ধরে রাখুন';

  @override
  String get skipButton => 'এড়িয়ে যান।';

  @override
  String get startTestText => 'পরীক্ষা শুরু করুন';

  @override
  String get continueButton => 'চালিয়ে যান।';

  @override
  String get startButton => 'শুরু করুন।';

  @override
  String get nextButton => 'পরবর্তী';

  @override
  String get proceedButton => 'এগিয়ে যান।';

  @override
  String get yesButton => 'হ্যাঁ।';

  @override
  String get noButton => 'না।';

  @override
  String get exitButton => 'প্রস্থান করুন।';

  @override
  String get okButton => 'ঠিক আছে।';

  @override
  String get knowMoreButton => 'আরও জানুন';

  @override
  String get seeAllButton => 'সব দেখুন';

  @override
  String get tryAgainButton => 'আবার চেষ্টা করুন।';

  @override
  String get shareNowButton => 'এখন শেয়ার করুন';

  @override
  String get retryButton => 'পুনরায় চেষ্টা করুন।';

  @override
  String get homeCarousal1Title => '40 বছর এবং তার বেশি বয়সী প্রাপ্তবয়স্কদের মধ্যে ছানি বিস্তার এবং এর সাথে সম্পর্কিত কারণগুলি';

  @override
  String get homeCarousal1Description => 'ছানি এবং সংশ্লিষ্ট কারণগুলির প্রাদুর্ভাব সম্পর্কে নমুনা সংগ্রহ পদ্ধতির পরিকল্পিত উপস্থাপনা';

  @override
  String get homeCarousal2Title => 'চোখের 7টি সমস্যা দূর হবে না!';

  @override
  String get homeCarousal2Description => '•চোখের লালভাব• চোখে জল আসা •চোখে সাদা দাগ।';

  @override
  String get homeCarousal3Title => 'চোখের সমস্যা। এমন অনেক কিছু আছে যা আপনি দেখতে পান না।';

  @override
  String get homeCarousal3Description => 'কিন্তু একজন দৃষ্টি বিশেষজ্ঞ পারেন। চোখের সমস্যাগুলি চিহ্নিত করে সময়মতো চিকিৎসা করান যাতে পরে জটিলতা এড়ানো যায়।';

  @override
  String get myConnectionsTitle => 'আমার সদস্যরা';

  @override
  String get myConnectionsAddMember => 'সদস্য যোগ করুন';

  @override
  String get myConnectionsServiceNotAvailable => 'পরিষেবা পাওয়া যাচ্ছে না।';

  @override
  String get myConnectionsAdd => 'যোগ করুন';

  @override
  String get recentServicesTitle => 'আমার সাম্প্রতিক পরিষেবাগুলি';

  @override
  String get recentServicesEyeAssessment => 'চোখের মূল্যায়ন';

  @override
  String get recentServicesVisualAcuityTest => 'চাক্ষুষ তীক্ষ্ণতা পরীক্ষা';

  @override
  String get nearbyVisionCentersTitle => 'নিকটবর্তী দৃষ্টি কেন্দ্র';

  @override
  String get nearbyVisionCentersNotFound => 'কোনও দৃষ্টি কেন্দ্র পাওয়া যায়নি';

  @override
  String get tollFreeNumber => 'টোল ফ্রি নম্বর';

  @override
  String get appDrawerTitle => 'মেনু';

  @override
  String get appDrawerHome => 'বাড়ি।';

  @override
  String get appDrawerLanguageSelection => 'ভাষা নির্বাচন';

  @override
  String get appDrawerAccessibility => 'অ্যাক্সেসিবিলিটি সেটিংস';

  @override
  String get appDrawerMyProfile => 'আমার প্রোফাইল';

  @override
  String get appDrawerAssessmentsAndTests => 'মূল্যায়ন ও পরীক্ষা';

  @override
  String get appDrawerScanner => 'কিউ আর কোড স্ক্যানার';

  @override
  String get appDrawerAboutUs => 'আমাদের সম্পর্কে';

  @override
  String get appDrawerPrivacyPolicy => 'গোপনীয়তা ও তথ্য নীতি';

  @override
  String get appDrawerHelpAndSupport => 'সহায়তা এবং  সমর্থন';

  @override
  String get appDrawerSignOut => 'সাইন আউট করুন';

  @override
  String get aboutUsDescription => 'সাইট কানেক্ট একটি ব্যবহারকারী-বান্ধব চোখের যত্নের অ্যাপ যা কলের মাধ্যমে স্ব-মূল্যায়ন এবং পরামর্শের ক্ষেত্রে সহায়তা করে।.আমাদের মিশনের কেন্দ্রবিন্দুতে রয়েছে চোখের যত্ন সকলের কাছে সহজলভ্য করার প্রতিশ্রুতি।.অ্যাপটি তাদের বয়স, প্রযুক্তিগত পটভূমি এবং সামাজিক বা অর্থনৈতিক পটভূমি নির্বিশেষে সর্বস্তরের ব্যবহারকারীদের দ্বারা অন্তর্ভুক্তিমূলক এবং অ্যাক্সেসযোগ্য হওয়ার জন্য ডিজাইন করা হয়েছে।.অ্যাপটি এবং এর বিষয়বস্তু ইংরেজি এবং অন্যান্য স্থানীয় ভাষায় উপলব্ধ করা হয়েছে।.এটি ব্যবহারকারীদের তাদের চোখের স্ব-মূল্যায়ন করতে এবং সময়োপযোগী চিকিৎসার পরামর্শ পেতে সহায়তা করে।.অ্যাপটি আমাদের ব্যবহারকারীদের ব্যক্তিগতকৃত চোখের যত্নের সমাধান প্রদান করতে সর্বশেষ প্রযুক্তি এবং সরঞ্জাম ব্যবহার করে।.এটি তাদের জীবনকে সহজতর করার জন্য বিভিন্ন বৈশিষ্ট্য নিয়ে আসে।';

  @override
  String get aboutUsFeaturesTitle => 'বৈশিষ্ট্যাবলী';

  @override
  String get aboutUsFeaturesDescription => 'ইন-অ্যাপ আই টেস্টিংঃ অ্যাপটি ব্যবহারকারীদের কয়েকটি প্রশ্নের উত্তর দিয়ে এবং পরবর্তী পদক্ষেপ এবং ডাক্তারের কাছে যাওয়ার বিষয়ে যথাযথ সুপারিশ পেয়ে তাদের চোখকে স্ব-মূল্যায়ন করার অনুমতি দেয়। এমনকি ব্যবহারকারীদের বন্ধুবান্ধব এবং পরিবারও উপকৃত হতে পারে।|অ্যাপয়েন্টমেন্ট বুকিংঃ ব্যবহারকারীরা তাদের চোখ নির্ণয়ের জন্য অনলাইনে টেলিকনসালটেশন এবং চিকিৎসকদের সঙ্গে ইন-ক্লিনিক ভিজিট বুক করতে পারেন।|আই. ভি. আর কল পরিষেবাগুলিঃ আমাদের আই. ভি. আর কল পরিষেবাগুলি ইংরেজি এবং স্থানীয় ভাষায় পাওয়া যায় এবং এটি মৌলিক ফিচার ফোন ব্যবহারকারীদের জন্যও সরবরাহ করে। ব্যবহারকারীরা জরুরি অবস্থার সময় বা চোখ সম্পর্কিত যে কোনও সমস্যার জন্য তাত্ক্ষণিক সহায়তা চাইতে আমাদের চক্ষু যত্ন পেশাদারদের ডায়াল করতে পারেন। তারা অ্যাপয়েন্টমেন্ট বুক করতে বা আরও কোনও ব্যাখ্যা চাইতে কল করতে পারেন।|নিকটবর্তী ক্লিনিকঃ ব্যবহারকারীরা তাদের কাছাকাছি চোখের যত্নের ক্লিনিকগুলি সনাক্ত করতে পারেন।|প্রেসক্রিপশন এবং রিপোর্টঃ ব্যবহারকারীদের সমস্ত প্রেসক্রিপশন এবং রিপোর্টগুলি খুব বেশি ঝামেলা ছাড়াই এক জায়গা থেকে অ্যাক্সেস করা যেতে পারে।|চক্ষু শিবিরঃ ব্যবহারকারীরা তাদের বন্ধু এবং পরিবারের চোখ বিনামূল্যে পরীক্ষা করার জন্য কাছাকাছি চক্ষু শিবির সম্পর্কে তথ্য পেতে পারেন।|অনুস্মারক এবং সতর্কতাঃ ব্যবহারকারীরা তাদের আসন্ন অ্যাপয়েন্টমেন্ট, ওষুধ, রিপোর্ট ইত্যাদি সম্পর্কিত সময়োপযোগী সতর্কতা এবং অনুস্মারক পেতে পারেন।|ভাগ করে নেওয়াঃ ব্যবহারকারীরা এই অ্যাপ এবং অ্যাপের মধ্যে প্রদত্ত অন্যান্য দরকারী তথ্য তাদের বন্ধু এবং পরিবারের সদস্যদের সাথে ভাগ করে নিতে পারেন।';

  @override
  String get aboutUsConclusion => 'অ্যাপটি আমাদের ব্যবহারকারী সম্প্রদায়কে আরও ভালভাবে সেবা দেওয়ার জন্য শীর্ষস্থানীয় চক্ষু যত্ন পেশাদারদের সহায়তায় তৈরি করা হয়েছে। একটি উজ্জ্বল, স্বাস্থ্যকর বিশ্ব তৈরি করার লক্ষ্যে আমাদের সাথে যোগ দিন। আজই সাইট কানেক্ট অ্যাপটি ডাউনলোড করুন এবং শেয়ার করুন!';

  @override
  String get privacyPolicyDescription => 'এলভি প্রসাদ আই ইনস্টিটিউট, এর সহায়ক সংস্থা, সহযোগী এবং অনুমোদিত সংস্থাগুলি (সম্মিলিতভাবে "এলভিপিইআই", "আমাদের", "আমরা" হিসাবে উল্লেখ করা হয়) আপনার এখতিয়ারের আইন অনুসারে আপনার ব্যক্তিগত তথ্য প্রক্রিয়া করতে প্রতিশ্রুতিবদ্ধ। আমরা এর মাধ্যমে আপনাকে ব্যক্তিগত তথ্য প্রক্রিয়াকরণ সম্পর্কে নিম্নলিখিত তথ্যগুলি অবহিত করি।';

  @override
  String get privacyPolicyPersonalDataTitle => 'সংগৃহীত/প্রক্রিয়াজাত ব্যক্তিগত তথ্য উপাদানঃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'আপনার এবং আপনার সংযোগের ব্যক্তিগত তথ্য যেমন (এই তথ্যগুলির কিছু ঐচ্ছিক হতে পারে) মোবাইল নম্বর, নাম, জন্ম তারিখ, লিঙ্গ (পুরুষ/মহিলা), ঠিকানা (পিন কোড), রোগী আইডি, সংযোগ, চোখের ট্রাইয়েজ প্রশ্নাবলীর উত্তর, চোখের ট্রাইয়েজ রিপোর্ট, চোখের ছবি, আপনার চোখের ছবির বিরুদ্ধে ট্যাগ করা লক্ষণ, ফটোগ্রাফ, ঠিকানা বিবরণ যেমন ঠিকানা, জেলা নাম (জেলা কোড সহ), রাজ্য নাম (রাজ্য কোড সহ), উপজেলা নাম, গ্রাম নাম, শহর নাম, ইমেইল ঠিকানা, শেষ নাম, মধ্য নাম, রক্তের গ্রুপ, উচ্চতা, ওজন, পেশা, আপনার দ্বারা প্রদত্ত ABHA বিবরণ, অ্যাপ্লিকেশন অ্যাক্সেসের জন্য ক্যামেরা, GPS অবস্থান, গ্যালারী অ্যাক্সেস, পূর্ণ নেটওয়ার্ক অ্যাক্সেস, নেটওয়ার্ক সংযোগ দেখা, ডিভাইস তথ্য।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'প্রক্রিয়াকরণের উদ্দেশ্যঃ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'আপনার এবং আপনার সংযোগগুলির (আপনার দ্বারা প্রদত্ত) জন্য চোখ সম্পর্কিত অনলাইন স্বাস্থ্য পরীক্ষার জন্য আমাদের অ্যাপ্লিকেশন এবং এর বৈশিষ্ট্যগুলি অ্যাক্সেস করতে আপনাকে সক্ষম করতে।|চোখ সম্পর্কিত কোনও অসুস্থতা/স্বাস্থ্য সমস্যার ক্ষেত্রে, প্রযোজ্য হিসাবে, এল. ভি. পি. ই. আই-এর অধীনে দৃষ্টি প্রযুক্তিবিদ, চক্ষু বিশেষজ্ঞদের সাথে যোগাযোগ করতে আপনাকে সক্ষম করতে।|আপনার স্বাস্থ্য পরামর্শ এবং রোগ নির্ণয়ের অংশ হিসাবে চোখের স্বাস্থ্য সম্পর্কিত যে কোনও তথ্য (রিপোর্ট ইত্যাদি সহ) সরবরাহ করার জন্য এবং স্বাস্থ্য সম্পর্কিত উদ্বেগের অংশ হিসাবে আপনার বা আপনার সংযোগের সাথে যোগাযোগ করার জন্য।|আরও ভাল রোগ নির্ণয়ের জন্য আমাদের অনুমোদিত এল. ভি. পি. ই. আই চক্ষু বিশেষজ্ঞ/চিকিৎসকদের সাথে আপনার চোখের স্বাস্থ্য সম্পর্কিত তথ্য ভাগ করে নেওয়ার জন্য এবং চোখের সমস্যার তীব্রতার উপর নির্ভর করে গ্রাম প্রধান/মেয়র ইত্যাদির সাথে ভাগ করে নেওয়ার জন্য (যেখানে প্রযোজ্য আপনার জি. পি. এস অবস্থানের উপর ভিত্তি করে) যদি আপনি চিকিত্সার জন্য এল. ভি. পি. ই. আই চিকিৎসকদের কাছে পৌঁছাতে/অবহিত করতে অক্ষম হন।|আপনার কাছাকাছি এল. ভি. পি. ই. আই-এর সঙ্গে যুক্ত চক্ষু ক্লিনিক/হাসপাতালের তালিকা প্রদান করুন, যাতে আপনি চোখ সম্পর্কিত কোনও সমস্যার ক্ষেত্রে যোগাযোগ করতে পারেন।|ভবিষ্যতের সঠিক রোগ নির্ণয়ের উদ্দেশ্যে আমাদের মেশিন লার্নিং বা কৃত্রিম বুদ্ধিমত্তার মডেলগুলিকে প্রশিক্ষণ দিতে সহায়তা করার জন্য চোখের চিত্র, চোখের চিত্র সম্পর্কিত লক্ষণ, বয়স, রক্তের গ্রুপ, কোনও সনাক্তকারী ছাড়াই অবস্থানের মতো তথ্য ব্যবহার করার জন্য।|চোখের স্বাস্থ্যের জন্য সচেতনতা তৈরি করতে অনুস্মারক, যোগাযোগ, প্রচারাভিযান মেলার পাঠানোর জন্য।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'তথ্য প্রাপক/অ্যাক্সেসযোগ্য';

  @override
  String get privacyPolicyDataRecipientsDescription => 'আপনার দ্বারা ভাগ করা ব্যক্তিগত তথ্য (সংবেদনশীল ব্যক্তিগত তথ্য সহ) অনুমোদিত এল. ভি. পি. ই. আই কর্মীদের যেমন ডাক্তার/চক্ষু বিশেষজ্ঞ, দৃষ্টি প্রযুক্তিবিদ, দৃষ্টি অভিভাবক, এল. ভি. পি. ই. আই-এর প্রতিনিধি, অভ্যন্তরীণ/বাহ্যিক নিরীক্ষক, যেখানে প্রযোজ্য সরকারী কর্তৃপক্ষ এবং আমাদের অনুমোদিত পরিষেবা প্রদানকারী ইনফোসিসের কাছে অ্যাক্সেসযোগ্য হবে।';

  @override
  String get privacyPolicyDataTransferTitle => 'তথ্য স্থানান্তর এবং সংরক্ষণঃ';

  @override
  String get privacyPolicyDataTransferDescription => 'আপনার শেয়ার করা ব্যক্তিগত তথ্য আমাদের অভ্যন্তরীণ সার্ভারে, ভারতে আমাদের অনুমোদিত পরিষেবা প্রদানকারীর সার্ভারে সংরক্ষণ করা হবে।';

  @override
  String get privacyPolicyDataSecurityTitle => 'তথ্য নিরাপত্তাঃ';

  @override
  String get privacyPolicyDataSecurityDescription => 'এলভিপিইআই আপনার ব্যক্তিগত তথ্য সুরক্ষার জন্য প্রশাসনিক, শারীরিক সুরক্ষা এবং প্রযুক্তিগত নিয়ন্ত্রণ সহ যুক্তিসঙ্গত এবং উপযুক্ত সুরক্ষা অনুশীলন এবং পদ্ধতি গ্রহণ করে।';

  @override
  String get privacyPolicyDataRetentionTitle => 'তথ্য সংরক্ষণঃ';

  @override
  String get privacyPolicyDataRetentionDescription => 'ব্যক্তিগত তথ্য যা আইনি এবং ব্যবসায়িক প্রয়োজনীয়তা অনুযায়ী আর ধরে রাখার প্রয়োজন নেই তা নিরাপদ পদ্ধতিতে নিষ্পত্তি করা হবে।';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'তথ্য বিষয় অধিকারঃ';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'আপনার যে কোনও সময়ে আপনার ব্যক্তিগত তথ্য অ্যাক্সেস এবং সংশোধন করার অধিকার রয়েছে। কোনও অনুরোধ, সমস্যা, উদ্বেগ বা প্রশ্নের ক্ষেত্রে আপনি ডিএসআর>-এর জন্য জেনেরিক মেল আইডি সরবরাহ করতে <এলভিপিইআই-তে একটি ইমেল পাঠিয়ে এলভি প্রসাদ অফিসে যোগাযোগ করতে পারেন।';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'প্রত্যাহারের অধিকারঃ';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'যেখানে আমরা আপনার সম্মতির ভিত্তিতে আপনার ব্যক্তিগত তথ্য প্রক্রিয়া করি, আপনি ভবিষ্যতের জন্য যে কোনও সময় প্রযোজ্য ডিপি আইন অনুসারে প্রক্রিয়াকরণের জন্য আপনার সম্মতি প্রত্যাহার করতে পারেন। এটি আপনার প্রত্যাহারের আগে কোনও প্রক্রিয়াকরণ ক্রিয়াকলাপের বৈধতা প্রভাবিত করবে না। আপনার সম্মতি প্রত্যাহার করতে, আপনি ডিএসআর> এর জন্য জেনেরিক মেল আইডি সরবরাহ করতে <এলভিপিইআই-তে একটি ইমেল পাঠাতে পারেন।';

  @override
  String get privacyPolicyAcknowledgement => 'নীচের বোতামে ক্লিক করে, আপনি এতদ্বারা স্বীকার করেন এবং বুঝতে পারেন যে সংবেদনশীল ব্যক্তিগত তথ্য সহ আপনার ব্যক্তিগত তথ্য উপরে উল্লিখিত পদ্ধতিতে সংগ্রহ এবং প্রক্রিয়া করা যেতে পারে এবং এর মাধ্যমে উপরে উল্লিখিত উদ্দেশ্যে একই সম্মতি দেয়।.আপনি এটাও স্বীকার করেন যে, আপনার দ্বারা শেয়ার করা সংবেদনশীল ব্যক্তিগত তথ্য (নিজের ব্যতীত) সহ যে কোনও ব্যক্তিগত তথ্য শুধুমাত্র তাদের কাছ থেকে যথাযথ সম্মতি নেওয়ার পরেই হয়।.আপনি স্বীকার করেন যে আপনি কোনও ব্যক্তিগত তথ্য (সংবেদনশীল ব্যক্তিগত তথ্য সহ) ভাগ করবেন না যা উপরে উল্লিখিত উদ্দেশ্যে প্রয়োজন হয় না।.আপনি এটাও স্বীকার করেন যে আপনি যখন নাবালকের ব্যক্তিগত তথ্য তাদের পিতামাতা/আইনী অভিভাবক হিসাবে ভাগ করে নিচ্ছেন তখন আপনি উপরে উল্লিখিত হিসাবে তাদের তথ্য সংগ্রহ এবং প্রক্রিয়াকরণে সম্মত হন।';

  @override
  String get privacyPolicyBottomAppBarLabel => 'গোপনীয়তা নীতি গৃহীত হয়েছে';

  @override
  String get helpAndSupportReachTitle => 'আমাদের সঙ্গে যোগাযোগ করুন।';

  @override
  String get assessmentAndTestsSubtitle => 'এখানে এখন পর্যন্ত করা মূল্যায়নের একটি দ্রুত দৃশ্য রয়েছে।';

  @override
  String get assessmentAndTestsReportsNotFound => 'কোন রিপোর্ট পাওয়া যায়নি';

  @override
  String get eyeAssessmentTitle => 'চোখের মূল্যায়ন';

  @override
  String get eyeAssessmentSubtitle => 'আপনার, আপনার বন্ধুবান্ধব এবং পরিবারের সদস্যদের চোখের সমস্যাগুলি কয়েকটি ধাপে মূল্যায়ন করুন। আপনার চোখের সমস্যা সম্পর্কিত লক্ষণগুলি বোঝার জন্য আপনাকে কয়েকটি প্রশ্ন জিজ্ঞাসা করা হবে যার পরে দৃষ্টি পরীক্ষা করা হবে।';

  @override
  String get eyeAssessmentGetMemberLabel => 'সদস্য পরিবর্তন করুন';

  @override
  String get eyeAssessmentProceedButton => 'এগিয়ে যান।';

  @override
  String get eyeAssessmentBrightnessLabel => 'উজ্জ্বলতা 80 শতাংশে সেট করা হয়েছে';

  @override
  String get eyeAssessmentBrightnessError => 'দয়া করে ম্যানুয়ালি উজ্জ্বলতা 80 শতাংশে সেট করুন';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'প্রশ্নটি এখনও সমর্থিত নয়';

  @override
  String get eyeAssessmentPopUpHeading => 'মূল্যায়ন';

  @override
  String get eyeAssessmentPopUpBody => 'আপনার কি দৃষ্টিশক্তির সমস্যা আছে?';

  @override
  String get eyeAssessmentPopUpYesButton => 'হ্যাঁ।';

  @override
  String get eyeAssessmentPopUpNoButton => 'না।';

  @override
  String get visualAcuityTestInstructionOne => 'ভালো আলোর জায়গায় আরামদায়কভাবে বসুন। আপনি হয়তো হঠাৎ উজ্জ্বলতার পরিবর্তন অনুভব করতে পারেন, চিন্তা করবেন না যে স্ক্রিনটি স্বয়ংক্রিয়-উজ্জ্বলতায় সেট করা হয়েছে যাতে সর্বোত্তম ফলাফল পাওয়া যায়।';

  @override
  String get visualAcuityTestInstructionTwo => 'খেয়াল রাখবেন যে, আপনি যন্ত্রটি চোখের স্তরে ধরে রেখেছেন। আপনি যদি চশমা বা কন্টাক্ট লেন্স পরেন, তা হলে সেগুলি লাগান।';

  @override
  String get visualAcuityTestInstructionThree => 'পর্দা থেকে নিজেকে 40 সেন্টিমিটার দূরে রাখুন। দূরত্ব পরীক্ষার পর্দায় প্রদর্শিত হবে।';

  @override
  String get visualAcuityTestInstructionFour => 'যদি আপনি চশমা দিয়ে পরীক্ষা করছেন, শুধুমাত্র একটি চোখ পরীক্ষা করার সময় চশমার উপর আপনার হাত দিয়ে একটি চোখ ঢেকে রাখুন।';

  @override
  String get skipAndProceedButton => 'স্কিপ করুন এবং স্ক্যানে এগিয়ে যান';

  @override
  String get proceedToScanButton => 'স্ক্যানে এগিয়ে যান';

  @override
  String get eyeAssessmentSteps => 'ধাপগুলো';

  @override
  String get eyeAssessmentStepOne => 'ধাপ 1-চক্ষু মূল্যায়নের প্রশ্ন';

  @override
  String get eyeAssessmentStepTwo => 'দ্বিতীয় ধাপ-চক্ষু মূল্যায়নের প্রশ্ন';

  @override
  String get eyeAssessmentStepThree => 'ধাপ 3-চক্ষু মূল্যায়নের প্রশ্ন';

  @override
  String get eyeAssessmentOngoing => 'চলছে।';

  @override
  String get eyeAssessmentCompleted => 'সম্পন্ন হয়েছে।';

  @override
  String get eyeAssessmentPending => 'মুলতুবি।';

  @override
  String get eyeAssessmentResults => 'মূল্যায়নের ফলাফল';

  @override
  String get eyeAssessmentCompleteSteps => 'ফলাফল দেখতে সমস্ত পদক্ষেপগুলি সম্পূর্ণ করুন';

  @override
  String get eyeAssessmentToolTip => 'দয়া করে নিশ্চিত করুন যে ফ্ল্যাশটি বন্ধ করা আছে এবং উজ্জ্বলতা 80 শতাংশে সেট করা আছে।';

  @override
  String get eyeScanInstructionOne => 'ফ্রেমে মুখটি সঠিকভাবে রেখে ক্যামেরাটি ধরে রাখুন।';

  @override
  String get eyeScanInstructionTwo => 'আপনার ফোনের পিছনের ক্যামেরা ব্যবহার করে চোখের একটি ছবি তুলুন।';

  @override
  String get eyeScanInstructionThree => 'ফ্ল্যাশ চালু রেখে ভালভাবে আলোকিত এলাকায় থাকা নিশ্চিত করুন।';

  @override
  String get eyeScanInstructionFour => 'আরও ভাল ক্যাপচার এবং স্বচ্ছতার জন্য, ছবিটি ক্লিক করার জন্য অন্য কাউকে রাখুন।';

  @override
  String get eyeScanInstructionFive => 'ছবি তোলার সময় একটি চোখ আপনার হাত দিয়ে ঢেকে রাখুন এবং অন্য চোখ দিয়ে সোজা সামনের দিকে তাকান।';

  @override
  String get eyeScanInstructionSix => 'ছবি শুরু করার আগে প্যানেলের ভিতরে চোখকে কেন্দ্র করুন।';

  @override
  String get eyeScanInstructionSeven => 'ঝলকানি বন্ধ না হওয়া পর্যন্ত চোখ খোলা রাখুন, যতক্ষণ না একটি \'বিপ\' শব্দ ছবির শেষের ইঙ্গিত দেয়।';

  @override
  String get eyeAssessmentNote => 'দ্রষ্টব্যঃ এখানে দেখানো ছবিগুলি শুধুমাত্র ইঙ্গিতের জন্য। বাস্তব জীবনে সেগুলি একই রকম নাও দেখা যেতে পারে।';

  @override
  String get agreeButton => 'আমি একমত।';

  @override
  String get consentPageCheckbox => 'আমি শর্তাবলীর সাথে একমত';

  @override
  String get confirmButton => 'নিশ্চিত করুন';

  @override
  String get discardButton => 'ফেলে দিন।';

  @override
  String get imageNotCapturedToastMessage => 'ছবিটি ধরা পড়েনি';

  @override
  String get eyeCaptureCompletionDialogHeading => 'পরীক্ষা শেষ।';

  @override
  String get eyeCaptureCompletionDialogBody => 'আপনি পরীক্ষা শেষ করেছেন। ফলাফল দেখতে দয়া করে নীচের বোতামে ক্লিক করুন।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ফলাফল দেখুন';

  @override
  String get eyeCaptureTriageSavedLocally => 'ট্রাইয়েজ স্থানীয়ভাবে সংরক্ষণ করা হয়েছে';

  @override
  String get visualAcuityTestResults => 'চাক্ষুষ তীক্ষ্ণতা পরীক্ষার ফলাফল';

  @override
  String get assessmentResultPageMoreDetailsText => 'আরও তথ্যের জন্য নিকটতম দৃষ্টি কেন্দ্রে যান। আমাদের দৃষ্টি প্রযুক্তিবিদদের সাথে কথা বলার জন্য টোল-ফ্রি নম্বরে কল করুন।';

  @override
  String get assessmentReportButton => 'চক্ষু মূল্যায়ন প্রতিবেদন';

  @override
  String get notificationsTitle => 'বিজ্ঞপ্তি';

  @override
  String get notificationsNotAvailable => 'কোনও বিজ্ঞপ্তি নেই';

  @override
  String get servicesPatientCare => 'রোগীর যত্ন';

  @override
  String get reportAssessmentId => 'মূল্যায়ন আইডি';

  @override
  String get reportDateAndTime => 'তারিখ ও সময়';

  @override
  String get reportSeverityAbnormal => 'জরুরি পরামর্শ';

  @override
  String get reportSeverityHigh => 'প্রাথমিক পরীক্ষা';

  @override
  String get reportSeverityLow => 'নিয়মিত চেকআপ';

  @override
  String get reportDataUnavailable => 'কোনও তথ্য উপলব্ধ নেই';

  @override
  String get reportTumblingTitle => 'তীক্ষ্ণতা পরীক্ষা-টাম্বলিং ই';

  @override
  String get rightCornea => 'ডানদিকের কর্নিয়া';

  @override
  String get leftCornea => 'বাঁ দিকের কর্নিয়া';

  @override
  String get myProfileGeneralInfo => 'সাধারণ তথ্য';

  @override
  String get myProfileAge => 'বয়স.';

  @override
  String get myProfileAddress => 'ঠিকানা।';

  @override
  String get myProfileLine => 'লাইন।';

  @override
  String get myProfileCity => 'শহর।';

  @override
  String get myProfileDistrict => 'জেলা';

  @override
  String get myProfileState => 'রাজ্য';

  @override
  String get myProfilePinCode => 'পিনকোড';

  @override
  String get submitButton => 'জমা দিন।';

  @override
  String get swipeGestureError => 'ভুল সোয়াইপ ! দয়া করে আবার চেষ্টা করুন।';

  @override
  String get swipeGestureCardText => 'প্রতীকের দিকে সোয়াইপ করুন';

  @override
  String get assessmentResultCardAssessmentQuestions => 'মূল্যায়নের প্রশ্ন';

  @override
  String get assessmentResultCardAcuityTest => 'তীক্ষ্ণতা পরীক্ষা';

  @override
  String get assessmentResultCardEyeScan => 'চোখের স্ক্যান';

  @override
  String get viewReportButton => 'প্রতিবেদন দেখুন';

  @override
  String get updateButton => 'হালনাগাদ করুন';

  @override
  String get assessmentCardUrgentConsult => 'জরুরি পরামর্শ';

  @override
  String get assessmentCardRoutineCheckUp => 'নিয়মিত চেকআপ';

  @override
  String get assessmentCardEarlyCheckUp => 'প্রাথমিক পরীক্ষা';

  @override
  String get testAgainButton => 'আবার পরীক্ষা করুন';

  @override
  String get homeButton => 'বাড়ি।';

  @override
  String get homeTriageCardTitle => 'চোখ আমাদের সবচেয়ে মূল্যবান সম্পদ।';

  @override
  String get homeTriageCardDescription => 'চোখের সমস্যা এড়াতে সময়মতো তাদের পরীক্ষা করান।';

  @override
  String get homeTriageCardTest => 'চক্ষু পরীক্ষা শুরু করুন';

  @override
  String get homeHelplineCardDescrition => 'হঠাৎ দৃষ্টিশক্তি হারালে, এই জরুরি হেল্পলাইনে কল করুন';

  @override
  String get inviteCardTitle => 'অন্যদের আমন্ত্রণ জানান';

  @override
  String get inviteCardDescription => '5 জন বন্ধু এবং পরিবারের সদস্যদের আমন্ত্রণ জানান যাতে তারা তাদের চোখের মূল্যায়ন করতে পারে এবং ভবিষ্যতে চোখের সমস্যা প্রতিরোধ করতে পারে।';

  @override
  String get inviteCardInvitation => 'এখনই আমন্ত্রণ জানান';

  @override
  String get partnerCardTitle => 'অংশীদার।';

  @override
  String get languageSelection => 'ভাষা নির্বাচন করুন';

  @override
  String get profileTitle => 'প্রোফাইল';

  @override
  String get eyeAssessmentEnterLabel => 'এখানে প্রবেশ করুন';

  @override
  String get profilePageAddressDetails => 'ঠিকানার বিস্তারিত বিবরণ';

  @override
  String get profilePaeCheckReports => 'আপনার প্রতিবেদনগুলি পরীক্ষা করুন';

  @override
  String get bottomNavItemEyeTest => 'চোখের পরীক্ষা';

  @override
  String get bottomNavItemAppointment => 'নিয়োগ';

  @override
  String get memberSelection => 'সদস্য নির্বাচন করুন';

  @override
  String get triageAlerDialogBoxTitle => 'পুনরায় করার পদক্ষেপগুলি নির্বাচন করুন';

  @override
  String get scannerTitle => 'স্ক্যানার';

  @override
  String get visualAcuityTestDistanceInstruction => 'ক্যামেরাটিকে চোখ থেকে 40 সেমি দূরে রাখুন।';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে ';

  @override
  String get triageUpdatedSuccessfully => 'ট্রায়াজ সফলভাবে আপডেট হয়েছে';

  @override
  String get noPreviewAvailable => 'কোনো পূর্বরূপ উপলব্ধ নেই';

  @override
  String get privacyPolicyTitle => 'গোপনীয়তা এবং ডেটা সুরক্ষা';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'আমরা নিম্নলিখিত উদ্দেশ্যে যেমন আপনার দ্বারা প্রদত্ত ব্যক্তিগত ডেটা প্রক্রিয়া করি:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'আপনি ক্যামেরার খুব কাছাকাছি, ক্যামেরাটিকে চোখের থেকে 40 সেমি দূরে রাখুন।';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'আপনি ক্যামেরা থেকে অনেক দূরে, ক্যামেরাটিকে চোখের থেকে 40 সেমি দূরে রাখুন।';

  @override
  String get myProfileABHAID => 'ABHA আইডি';

  @override
  String get myProfileEmail => 'ই-মেইল';

  @override
  String get viewHistoryButton => 'ইতিহাস দেখুন';

  @override
  String get profilePagePersonalDetails => 'ব্যক্তিগত বিবরণ';

  @override
  String get profilePageDateOfBirth => 'জন্ম তারিখ';

  @override
  String get profilePageGender => 'লিঙ্গ';

  @override
  String get profilePageMobile => 'মোবাইল';

  @override
  String get profilePageHealthCardTitle => 'স্বাস্থ্য কার্ড';

  @override
  String get appointmentTitle => 'অ্যাপয়েন্টমেন্ট';

  @override
  String get appointmentSubtitle => 'সমস্ত অ্যাপয়েন্টমেন্ট';

  @override
  String get eyeBoxText => 'চোখের চারপাশে সবুজ বাক্স না দেখা পর্যন্ত দয়া করে ছবিটি সামঞ্জস্য করুন এবং অবস্থান করুন। চোখকে কাছাকাছি নিয়ে আসুন এবং নিশ্চিত করুন যে বাক্সের 40 শতাংশ চোখ দিয়ে ঢেকে আছে।';

  @override
  String get bottomNavItemServices => 'পরিষেবাগুলি';

  @override
  String get smsContent => 'আরে! আমি আমার চোখের যত্ন নেওয়ার জন্য সাইট কানেক্ট অ্যাপ ব্যবহার করছি, এবং আপনারও করা উচিত! আপনার চোখের মূল্যায়ন করুন এবং সাইট কানেক্ট অ্যাপের মাধ্যমে সময়মতো চিকিৎসা করুন। এটি একটি অনন্য অ্যাপ যা আপনার হাতে প্রতিরোধমূলক চোখের যত্ন নিয়ে আসে। এখন এটি পানঃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'সাইট কানেক্ট অ্যাপের মাধ্যমে আপনার চোখের স্বাস্থ্যকে অগ্রাধিকার দিন!';

  @override
  String get recentServicesCataractEyeTest => 'ছানি চক্ষু পরীক্ষা';

  @override
  String get recentServicesRedEyeTest => 'লাল চোখের পরীক্ষা';

  @override
  String get chatBotDefaultQuerySuggestions => 'চোখের মূল্যায়ন শুরু করুন | সাধারণ চোখের সমস্যা | আরও ভাল দৃষ্টিশক্তির জন্য টিপস';

  @override
  String get chatBotWelcomeMessage => 'হাই, আজ আমি কিভাবে আপনাকে সাহায্য করতে পারি?';

  @override
  String get poweredByText => 'দ্বারা চালিত';

  @override
  String get digitalHealthCard => 'ডিজিটাল জনস্বাস্থ্য স্ট্যাক';

  @override
  String get inviteNowText => 'এখনই আমন্ত্রণ জানান';

  @override
  String get resend => 'পুনরায় পাঠান';

  @override
  String get mobileNumber => 'মোবাইল নম্বর';

  @override
  String get loginVerifyMobileNumber => 'আপনার মোবাইল নম্বর যাচাই করুন';

  @override
  String get loginEnterMobileNumber => 'দয়া করে মোবাইল নম্বর দিন';

  @override
  String get loginEnterValidMobileNumber => 'অনুগ্রহ করে বৈধ মোবাইল নম্বর দিন';

  @override
  String get loginUnableToSendOTP => 'এই নম্বরে ওটিপি পাঠাতে ব্যর্থ';

  @override
  String get loginGetOTP => 'ওটিপি পান';

  @override
  String get loginInvalidOTP => 'অকার্যকর ওটিপি';

  @override
  String get loginDidntReceiveOTP => 'ওটিপি পাননি?';

  @override
  String get loginOTPSent => 'সফলভাবে পাঠানো ওটিপি';

  @override
  String get areYouSure => 'আপনি কি নিশ্চিত?';

  @override
  String get triageExitConfirmation => 'আপনি কি টেস্ট থেকে বেরিয়ে আসতে চান?';

  @override
  String get triageReportEyeProblems => 'চোখের সমস্যা রিপোর্ট করুন';

  @override
  String get triageHowToReport => 'কিভাবে চোখের সমস্যা রিপোর্ট করবেন?';

  @override
  String get triageReportInstructions => 'আপনার যদি চোখ সংক্রান্ত সমস্যা থাকে, তা হলে আপনি এখানে আপনার সমস্যাগুলি স্ব-ঘোষণা করতে পারেন এবং উল্লেখ করতে পারেন যাতে আপনি যথাযথ দিকনির্দেশনা পেতে পারেন। আপনি এখানে আপনার বন্ধু বা পরিবারের সদস্যদের চোখের সমস্যাগুলিও উল্লেখ করতে পারেন এবং যথাযথ দিকনির্দেশনা পেতে পারেন। চোখের সমস্যার প্রকৃতি এবং তীব্রতা বোঝার জন্য আপনাকে নিম্নলিখিত বিভাগগুলিতে কয়েকটি প্রশ্ন জিজ্ঞাসা করা হবে। সমস্ত প্রশ্নের উত্তর দেওয়ার পরে আপনাকে কী পরীক্ষা করতে হবে এবং অনুসরণ করতে হবে সে সম্পর্কে আপনাকে পরামর্শ ও নির্দেশনা দেওয়া হবে।';

  @override
  String get assessment => 'মূল্যায়ন';

  @override
  String get triageOtherSymptomsQuestion => 'আপনার কি অন্য কোনও লক্ষণ রয়েছে?';

  @override
  String get triageEnterSymptoms => 'আপনার লক্ষণগুলি এখানে লিখুন।';

  @override
  String get triageEyeAssessmentResults => 'চক্ষু মূল্যায়নের ফলাফল';

  @override
  String get triageTestId => 'টেস্ট আইডি';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'চোখের স্ক্যান সফলভাবে হালনাগাদ করা হয়েছে';

  @override
  String get triageErrorEyeScanNotUpdated => 'চোখের স্ক্যান আপডেট করা হয়নি!';

  @override
  String get triageLeftEyeString => 'বাঁ চোখ।';

  @override
  String get triageRightEyeString => 'ডান চোখ।';

  @override
  String get vaEyeTest => 'চোখের পরীক্ষা';

  @override
  String get instructions => 'নির্দেশাবলী';

  @override
  String get vaSwipeUp => 'সোয়াইপ আপ করুন';

  @override
  String get vaSwipeDown => 'নিচে সোয়াইপ করুন';

  @override
  String get vaSwipeLeft => 'বাঁ দিকে সোয়াইপ করুন';

  @override
  String get vaSwipeRight => 'ডানদিকে সোয়াইপ করুন';

  @override
  String get vaSwipeGestureError => 'অবৈধ সোয়াইপ অঙ্গভঙ্গি। দয়া করে আবার চেষ্টা করুন।';

  @override
  String get permissionNotGranted => 'অনুমতি দেওয়া হয়নি।';

  @override
  String get serviceNotAvailable => 'পরিষেবা পাওয়া যাচ্ছে না।';

  @override
  String get vaDistanceToFace => 'মুখোমুখি দূরত্ব';

  @override
  String get vaBringFaceInsideBox => 'বাক্সের ভিতরে আপনার মুখ আনুন।';

  @override
  String get startAssessment => 'মূল্যায়ন শুরু করুন';

  @override
  String get optoAddPatientInfo => 'রোগীর তথ্য যোগ করুন';

  @override
  String get loggedOutMessage => 'আপনাকে লগ আউট করা হয়েছে';

  @override
  String get optoLogoutError => 'দুঃখিত, আমরা মোবাইল অ্যাপে একটি লগআউট ত্রুটির সম্মুখীন হয়েছি।';

  @override
  String get optoLoggingOut => 'লগ আউট করা হচ্ছে...';

  @override
  String get hello => 'আসসালামুয়ালাইকুম।';

  @override
  String get optoGetStarted => 'চলুন শুরু করা যাক';

  @override
  String get optoCompletedTests => 'পরীক্ষা-নিরীক্ষা শেষ';

  @override
  String get optoThisMonth => 'এই মাসে';

  @override
  String get today => 'আজ';

  @override
  String get services => 'পরিষেবাগুলি';

  @override
  String get optoAssessmentHistory => 'মূল্যায়নের ইতিহাস';

  @override
  String get optoEyeAssessments => 'চোখের মূল্যায়ন';

  @override
  String get feedback => 'ফিডব্যাক';

  @override
  String get optoImproveApp => 'আমরা চাই আপনার প্রতিক্রিয়া আমাদের অ্যাপ্লিকেশনের উন্নতি করুক।';

  @override
  String get assessments => 'মূল্যায়ন';

  @override
  String get optoPatientAssistance => 'রোগীর কি সাহায্যের প্রয়োজন ছিল?';

  @override
  String get optoVisualAcuity => 'চাক্ষুষ তীক্ষ্ণতা';

  @override
  String get optoPatientAided => 'রোগীকে সাহায্য করা হয়েছিল?';

  @override
  String get optoEyeScan => 'চোখের স্ক্যান';

  @override
  String get optoLeaveFeedback => 'দয়া করে নিচে আপনার মতামত দিন।';

  @override
  String get optoNoInternet => 'ইন্টারনেট সংযোগ নেই';

  @override
  String get optoCheckInternet => 'অনুগ্রহ করে আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন।';

  @override
  String get optoSearchPatientId => 'রোগীর আইডি অনুসন্ধান করুন';

  @override
  String get optoRecentAssessments => 'সাম্প্রতিক মূল্যায়ন';

  @override
  String get optoSelectDateRange => 'অনুগ্রহ করে একটি তারিখের পরিসীমা নির্বাচন করুন';

  @override
  String get optoDataNotFound => 'এই অনুসন্ধানের জন্য তথ্য পাওয়া যায়নি';

  @override
  String get optoAssessmentReport => 'মূল্যায়ন প্রতিবেদন';

  @override
  String get optoPID => 'পি. আই. ডি.';

  @override
  String get category => 'বিভাগ';

  @override
  String get patientAssessmentAndTest => 'রোগীর মূল্যায়ন ও পরীক্ষা';

  @override
  String get patientSelfTestReport => 'স্ব-পরীক্ষার রিপোর্ট';

  @override
  String get patientClinicalReport => 'ক্লিনিক্যাল রিপোর্ট';

  @override
  String get patientAppointmentTitle => 'নিয়োগ';

  @override
  String get patientBookAppointment => 'বুক অ্যাপয়েন্টমেন্ট';

  @override
  String get patientAppointmentSubtitle => 'আপনার নিয়োগ';

  @override
  String get patientTelephoneConsultation => 'টেলিফোনে পরামর্শ';

  @override
  String get patientAddress => 'ঠিকানা।';

  @override
  String get patientReschedule => 'পুনর্নির্ধারণ';

  @override
  String get patientCancel => 'বাতিল করুন';

  @override
  String get patientPID => 'পি. আই. ডি.';

  @override
  String get patientReportID => 'আইডি রিপোর্ট করুন';

  @override
  String get patientHideDetailedReport => 'বিস্তারিত প্রতিবেদন লুকান';

  @override
  String get patientShowDetailedReport => 'বিস্তারিত প্রতিবেদন দেখান';

  @override
  String get patientEID => 'ই. আই. ডি.';

  @override
  String get patientViewHistoryButton => 'ইতিহাস দেখুন';

  @override
  String get patientViewReportButton => 'প্রতিবেদন দেখুন';

  @override
  String get patientNoMoreData => 'আর কোনও তথ্য নেই।';

  @override
  String get patientErrorFetchingReport => 'প্রতিবেদন আনতে ত্রুটি';

  @override
  String get patientTimeline => 'টাইমলাইন';

  @override
  String get patientRoutineCheckup => 'নিয়মিত চেকআপ';

  @override
  String get patientAssessmentID => 'মূল্যায়ন আইডি';

  @override
  String get patientStartDate => 'শুরু হওয়ার তারিখ';

  @override
  String get patientIVRAssessment => 'আই. ভি. আর মূল্যায়ন';

  @override
  String get patientEarlyConsultationRecommended => 'প্রাথমিক পরামর্শের পরামর্শ দেওয়া হয়েছে';

  @override
  String get patientCataractEyeReport => 'ছানি চোখের রিপোর্ট';

  @override
  String get patientRedEyeReport => 'লাল চোখের রিপোর্ট';

  @override
  String get patientScanAgain => 'আবার স্ক্যান করুন';

  @override
  String get patientStepsToScan => 'রেটিনাল স্ক্যানিং করার পদক্ষেপ';

  @override
  String get patientProceedToScan => 'স্ক্যানে এগিয়ে যান';

  @override
  String get patientSkipAndProceedToScan => 'স্কিপ করুন এবং স্ক্যানে এগিয়ে যান';

  @override
  String get patientEyeScanner => 'চোখের স্ক্যানার';

  @override
  String get patientErrorSelectCamera => 'প্রথমে একটি ক্যামেরা বেছে নিন!';

  @override
  String get patientEyeBoxText => 'চোখের বাক্সের লেখা';

  @override
  String get patientLoggedOut => 'আপনাকে লগ আউট করা হয়েছে';

  @override
  String get patientLogoutError => 'দুঃখিত, আমরা মোবাইল অ্যাপে একটি লগআউট ত্রুটির সম্মুখীন হয়েছি।';

  @override
  String get patientUpdateProfile => 'প্রোফাইল হালনাগাদ করুন';

  @override
  String get patientEdit => 'সম্পাদনা করুন';

  @override
  String get patientProfileNotUpdated => 'প্রোফাইল হালনাগাদ করা হয়নি';

  @override
  String get patientProfileUpdated => 'প্রোফাইল হালনাগাদ করা হয়েছে';

  @override
  String get patientReportUnavailable => 'রিপোর্ট পাওয়া যাচ্ছে না।';

  @override
  String get patientClinicalReportNotFound => 'ক্লিনিকাল রিপোর্ট পাওয়া যায়নি';

  @override
  String get patientRID => 'আরআইডি';

  @override
  String get patientUpdateUnavailable => 'এই মুহূর্তে আপডেট পাওয়া যাচ্ছে না।';

  @override
  String get vgAddEvent => 'ইভেন্ট যোগ করুন';

  @override
  String get vgUploadingImageAddingEvent => 'ছবি আপলোড করা হচ্ছে এবং ইভেন্ট যোগ করা হচ্ছে';

  @override
  String get vgEventTitle => 'অনুষ্ঠানের শিরোনাম';

  @override
  String get vgPleaseEnterEndTime => 'অনুগ্রহ করে শেষ সময় লিখুন';

  @override
  String get vgShouldNotContainSpecialCharacter => 'কোনও বিশেষ অক্ষর থাকা উচিত নয়।';

  @override
  String get vgEventDescription => 'অনুষ্ঠানের বিবরণ';

  @override
  String get vgAddPatient => 'রোগী যোগ করুন';

  @override
  String get vgPatients => 'রোগীরা';

  @override
  String get vgDetails => 'বিস্তারিত';

  @override
  String get vgTeammates => 'সতীর্থরা।';

  @override
  String get vgEyeAssessment => 'চোখের মূল্যায়ন';

  @override
  String get vgStart => 'শুরু করুন।';

  @override
  String get vgEyeAssessmentDescription => 'আপনার, আপনার বন্ধুবান্ধব এবং পরিবারের সদস্যদের চোখের সমস্যাগুলি কয়েকটি ধাপে মূল্যায়ন করুন। আপনার চোখের সমস্যা সম্পর্কিত লক্ষণগুলি বোঝার জন্য আপনাকে কয়েকটি প্রশ্ন জিজ্ঞাসা করা হবে যার পরে দৃষ্টি পরীক্ষা করা হবে।';

  @override
  String get vgLogoutMessage => 'আপনাকে লগ আউট করা হয়েছে';

  @override
  String get vgLogoutErrorMessage => 'দুঃখিত, আমরা মোবাইল অ্যাপে একটি লগআউট ত্রুটির সম্মুখীন হয়েছি।';

  @override
  String get vgWelcome => 'স্বাগতম।';

  @override
  String get vgServices => 'পরিষেবাগুলি';

  @override
  String get vgEvents => 'ঘটনাবলী';

  @override
  String get vgViewAll => 'সবগুলি দেখুন';

  @override
  String get vtAssessmentReport => 'মূল্যায়ন প্রতিবেদন-ই. এ';

  @override
  String get vtRemarks => 'মন্তব্য';

  @override
  String get vtNoPatientFound => 'কোনও রোগী পাওয়া যায়নি।';

  @override
  String get vtClose => 'বন্ধ করুন।';

  @override
  String get vtBack => 'ফিরে আসা।';

  @override
  String get vtSubmit => 'জমা দিন।';

  @override
  String get vtSomethingWentWrong => 'কিছু একটা ভুল হয়ে গেছে।';

  @override
  String get vtAssessmentClosedSuccessfully => 'মূল্যায়ন সফলভাবে শেষ হয়েছে';

  @override
  String get vtEyeScan => 'চোখের স্ক্যান';

  @override
  String get vtDashboard => 'ড্যাশবোর্ড';

  @override
  String get vtRegisterPatient => 'রোগীকে নথিভুক্ত করুন';

  @override
  String get vtTriage => 'ত্রয়ী।';

  @override
  String get vtMarkMyAvailability => 'আমার প্রাপ্যতা চিহ্নিত করুন';

  @override
  String get vtIVRCallHistory => 'আইভিআর কলের ইতিহাস';

  @override
  String get vtMarked => 'চিহ্নিত করা হয়েছে।';

  @override
  String get vtPreliminaryAssessment => 'প্রাথমিক মূল্যায়ন';

  @override
  String get vtAge => 'বয়স.';

  @override
  String get vtGender => 'লিঙ্গ';

  @override
  String get vtAddress => 'ঠিকানা।';

  @override
  String get vtProfile => 'প্রোফাইল';

  @override
  String get vtLogoutMessage => 'আপনাকে লগ আউট করা হয়েছে';

  @override
  String get vtLogoutError => 'দুঃখিত, আমরা মোবাইল অ্যাপে একটি লগআউট ত্রুটির সম্মুখীন হয়েছি।';

  @override
  String get vtError => 'ত্রুটি';

  @override
  String get vtPatient => 'রোগী।';

  @override
  String get vtMobile => 'মোবাইল';

  @override
  String get vtAssessmentID => 'মূল্যায়ন আইডি';

  @override
  String get vtStatus => 'স্ট্যাটাস';

  @override
  String get vtTimeline => 'টাইমলাইন';

  @override
  String get vtCategory => 'বিভাগ';

  @override
  String get vtNoDataFound => 'কোনও তথ্য পাওয়া যায়নি';

  @override
  String get appCameraCapture => 'ধরা';

  @override
  String get appCameraRetake => 'পুনরায় গ্রহণ করুন।';

  @override
  String get appCameraUsePhoto => 'ছবি ব্যবহার করুন';

  @override
  String get appCameraCancel => 'বাতিল করুন';

  @override
  String get appCameraNotFound => 'ক্যামেরা পাওয়া যায়নি';

  @override
  String get appCameraException => 'ক্যামেরার ব্যতিক্রম';

  @override
  String get appCameraProgressMessage => 'লোড করা হচ্ছে...';

  @override
  String get internetLostNoConnection => 'ইন্টারনেট সংযোগ নেই';

  @override
  String get internetLostRetry => 'পুনরায় চেষ্টা করুন।';

  @override
  String get secureJailbreak => 'মনে হচ্ছে আপনার যন্ত্রটি জেলব্রোকন হয়েছে।';

  @override
  String get secureRestrictedAccess => 'নিরাপত্তার কারণে, এই অ্যাপ্লিকেশনটিতে প্রবেশাধিকার জেলব্রোকন ডিভাইসে সীমাবদ্ধ।';

  @override
  String get secureExitApp => 'অ্যাপ থেকে বেরিয়ে আসুন';

  @override
  String get sharedErrorPageIssues => 'আমরা কিছু সমস্যার সম্মুখীন হচ্ছি। দয়া করে পরে আবার চেষ্টা করুন।';

  @override
  String get appointmentBookingTitle => 'অ্যাপয়েন্টমেন্ট বুকিং';

  @override
  String get comingSoon => 'শীঘ্রই আসছে...';

  @override
  String get miniappService => 'পরিষেবা';

  @override
  String get miniappConsole => 'কনসোল';

  @override
  String get roleChooseYourRole => 'আপনার ভূমিকা বেছে নিন';

  @override
  String get roleNote => 'দ্রষ্টব্যঃ আপনি অ্যাপের ভিতরে আপনার ভূমিকা পরিবর্তন করতে পারবেন না।';

  @override
  String get roleConfirm => 'নিশ্চিত করুন';

  @override
  String get roleEyeCareProfessional => 'চোখের যত্ন পেশাদার';

  @override
  String get roleVisionTechnician => 'ভিশন টেকনোলজি';

  @override
  String get rolePatient => 'রোগী।';

  @override
  String get roleVisionGuardian => 'ভিশন গার্ডিয়ান';

  @override
  String get vtSearchText => 'রোগীর আইডি, মোবাইল নম্বর বা নাম দিয়ে অনুসন্ধান করুন।';

  @override
  String get emptyPatientsInfo => 'রোগীদের বিবরণ দেখার জন্য অনুসন্ধান শুরু করুন।';

  @override
  String get vtPersonalDetails => 'ব্যক্তিগত বিবরণ';

  @override
  String get vtHprId => 'এইচপিআর আইডি';

  @override
  String get vtEmailId => 'ইমেল আইডি';

  @override
  String get vtEducationalQualification => 'শিক্ষাগত যোগ্যতা';

  @override
  String get vtAddressAndDoorNumber => 'ঠিকানা ও দরজার নম্বর';

  @override
  String get vtCity => 'শহর।';

  @override
  String get vtState => 'রাজ্য';

  @override
  String get vtPincode => 'পিনকোড';

  @override
  String get vtOrganisationDetails => 'সংগঠনের বিবরণ';

  @override
  String get vtOrgId => 'অর্গ আইডি';

  @override
  String get vtFacilityType => 'সুবিধার ধরন';

  @override
  String get vtAssessments => 'মূল্যায়ন';

  @override
  String get vtNoAssessmentsFound => 'কোন মূল্যায়ন পাওয়া যায়নি';

  @override
  String get vtAnalytics => 'বিশ্লেষণ';

  @override
  String get vtTotalCases => 'মোট মামলা';

  @override
  String get vtIvrCalls => 'আইভিআর কল';

  @override
  String get vtClinicVisits => 'ক্লিনিক পরিদর্শন';

  @override
  String get vtCasesClosed => 'মামলাগুলি বন্ধ';

  @override
  String get vtCritical => 'সমালোচনামূলক।';

  @override
  String get vtRegular => 'নিয়মিত';

  @override
  String get vtAvgClosureTime => 'গড়. বন্ধের সময়';

  @override
  String get vtByAge => 'বয়স অনুযায়ী';

  @override
  String get vtByGender => 'লিঙ্গ অনুসারে';

  @override
  String get vtSymptoms => 'লক্ষণগুলি';

  @override
  String get vtSearchByMobileNo => 'মোবাইল নং দ্বারা অনুসন্ধান করুন।';

  @override
  String get vtInvalidMobileNo => 'অবৈধ মোবাইল নং।';

  @override
  String get vtCallLogEmpty => 'কল লগ খালি... এখনও কোনও কল করা হয়নি!!';

  @override
  String get vtNoDataAvailable => 'কোনও তথ্য উপলব্ধ নেই';

  @override
  String get vtToday => 'আজ';

  @override
  String get vtYesterday => 'গতকাল';

  @override
  String get vtIvrCallNotAvailable => 'আইভিআর কল পাওয়া যাচ্ছে না. আবার চেষ্টা করুন!!';

  @override
  String get vtMarkUnavailable => 'অনুপলব্ধ হিসাবে চিহ্নিত করুন';

  @override
  String get vtStartDate => 'শুরু হওয়ার তারিখ';

  @override
  String get vtEndDate => 'শেষ হওয়ার তারিখ';

  @override
  String get vtStartTime => 'শুরু করার সময়';

  @override
  String get vtEndTime => 'শেষ সময়';

  @override
  String get vtAddRemarksOptional => 'মন্তব্য যোগ করুন (ঐচ্ছিক)';

  @override
  String get vtSave => 'সংরক্ষণ করুন।';

  @override
  String get vtCancel => 'বাতিল করুন';

  @override
  String get vtPleaseEnterRemark => 'অনুগ্রহ করে মন্তব্য লিখুন';

  @override
  String get vtAssessment => 'মূল্যায়ন';

  @override
  String get vtIvrSelections => 'আই. ভি. আর নির্বাচন';

  @override
  String get vtLanguageSelection => 'ভাষা নির্বাচন';

  @override
  String get vtEnglish => 'ইংরেজি';

  @override
  String get vtPatientType => 'রোগীর ধরন';

  @override
  String get vtProblem => 'সমস্যা।';

  @override
  String get vtEyeSight => 'চোখের দৃষ্টি';

  @override
  String get vtVisionTechnician => 'দৃষ্টি প্রযুক্তিবিদ';

  @override
  String get vtRecommendedCenter => 'প্রস্তাবিত কেন্দ্র';

  @override
  String get vtAssessmentIDEA => 'মূল্যায়ন আইডিঃ ইএ';

  @override
  String get vtPid => 'পিআইডিঃ ওপি';

  @override
  String get vtAssessmentTimeline => 'মূল্যায়নের সময়সীমা';

  @override
  String get vtPleaseSelectEncounter => 'অনুগ্রহ করে একটি সাক্ষাৎ নির্বাচন করুন';

  @override
  String get vtTimelineEA => 'সময়সীমাঃ ই. এ';

  @override
  String get vtGeneralInformation => 'সাধারণ তথ্য';

  @override
  String get vtDateOfBirth => 'জন্ম তারিখ';

  @override
  String get vtAssessmentEA => 'মূল্যায়ন ই. এ';

  @override
  String get vtNotRegistered => 'আপনি সিস্টেমে নিবন্ধিত নন। দয়া করে একটি মিসড কল দিন';

  @override
  String get vtOkay => 'ঠিক আছে।';

  @override
  String get vtTakePicture => 'ছবি তুলুন।';

  @override
  String get vtEye => 'চোখ।';

  @override
  String get vtRetakePicture => 'ছবি পুনরুদ্ধার করুন';

  @override
  String get vtNext => 'এর পরের';

  @override
  String get vtMrCode => 'এম. আর কোড';

  @override
  String get vtEnterMrCode => 'এখানে এম. আর কোড লিখুন';

  @override
  String get vtPleaseEnterMrCode => 'অনুগ্রহ করে এম. আর কোড লিখুন';

  @override
  String get vtNote => 'নোট';

  @override
  String get vtEnterRecommendations => 'এখানে সুপারিশগুলি লিখুন';

  @override
  String get vtSolutions => 'সমাধান (গুলি)';

  @override
  String get vtLeftEye => 'বাঁ চোখ।';

  @override
  String get vtRightEye => 'ডান চোখ।';

  @override
  String get vtBothEyes => 'দুই চোখ।';

  @override
  String get vtFilterBy => 'দ্বারা ফিল্টার করুন';

  @override
  String get vtLocation => 'অবস্থান';

  @override
  String get vtEnterTime => 'অনুগ্রহ করে সময় লিখুন';

  @override
  String get vtEnterDate => 'অনুগ্রহ করে তারিখ লিখুন';

  @override
  String get vtRecommendation => 'সুপারিশ';

  @override
  String get vtVisitPrimaryCenter => 'প্রাথমিক কেন্দ্রে যান';

  @override
  String get vtVisitSecondaryCenter => 'মাধ্যমিক কেন্দ্রে যান';

  @override
  String get vtVisitTertiaryCenter => 'টারশিয়ারি সেন্টারে যান';

  @override
  String get vtVisitCenterOfExcellence => 'সেন্টার অফ এক্সিলেন্স পরিদর্শন করুন';

  @override
  String get vtIvrCallQuestion => 'আপনি কি আইভিআর কল করছেন?';

  @override
  String get vtYes => 'হ্যাঁ।';

  @override
  String get vtNo => 'না।';

  @override
  String get vtRetry => 'পুনরায় চেষ্টা করুন।';

  @override
  String get vtAssessmentQuestions => 'মূল্যায়নের প্রশ্ন';

  @override
  String get vtVisionCenter => 'দৃষ্টি কেন্দ্র';

  @override
  String get vtVisualAcuity => 'চাক্ষুষ তীক্ষ্ণতা';

  @override
  String get vtInvalidValue => 'অকার্যকর মান';

  @override
  String get vtSeverity => 'তীব্রতা।';

  @override
  String get vtNoVisionCentersFound => 'কোনও দৃষ্টি কেন্দ্র পাওয়া যায়নি';

  @override
  String get vtRequestLocationPermission => 'অবস্থান অনুমতির জন্য অনুরোধ করুন';

  @override
  String get vtAppSettings => 'অ্যাপ সেটিংস';

  @override
  String get vtEnterSomeText => 'অনুগ্রহ করে কিছু লেখা লিখুন';

  @override
  String get vtPrimary => 'প্রাথমিক';

  @override
  String get vtDependent => 'নির্ভরশীল।';

  @override
  String get vtAddMember => 'সদস্য যোগ করুন';

  @override
  String get vtCompleteProfile => 'সম্পূর্ণ প্রোফাইল';

  @override
  String get vtPatientNotRegistered => 'রোগী নিবন্ধিত নয়';

  @override
  String get vtPatientRegistered => 'রোগী নিবন্ধিত';

  @override
  String get vtDependentNotAdded => 'নির্ভরশীল যোগ করা হয়নি';

  @override
  String get vtDependentAdded => 'নির্ভরশীল যোগ করা হয়েছে';

  @override
  String get vtServiceNotAvailable => 'পরিষেবা উপলব্ধ নয়';

  @override
  String get vgEyeAssessments => 'চোখের মূল্যায়ন';

  @override
  String get vgTotal => 'মোট';

  @override
  String get vgCamps => 'ক্যাম্পগুলি';

  @override
  String get vgDoorToDoor => 'দরজার দিকে';

  @override
  String get vgByGender => 'লিঙ্গ অনুসারে';

  @override
  String get vgMale => 'পুরুষ।';

  @override
  String get vgFemale => 'মহিলা।';

  @override
  String get vgOthers => 'অন্যান্য';

  @override
  String get vgByAge => 'বয়স অনুযায়ী';

  @override
  String get vgSlideAge => 'বছর।';

  @override
  String get vgSymptoms => 'লক্ষণগুলি';

  @override
  String get vgRefractive => 'প্রতিসরণশীল।';

  @override
  String get vgCataract => 'ছানি।';

  @override
  String get vgGlaucoma => 'গ্লুকোমা';

  @override
  String get vgKeratitis => 'কেরাটাইটিস';

  @override
  String get vgBlepharitis => 'ব্লেফারাইটিস';

  @override
  String get vgConjunctivitis => 'কনজেক্টিভাইটিস';

  @override
  String get vgServicesCreateEvent => 'ইভেন্ট তৈরি করুন';

  @override
  String get vgServicesEyeAssessment => 'চোখের মূল্যায়ন';

  @override
  String get vgServicesRegisterPatient => 'নতুন রোগীকে নথিভুক্ত করুন';

  @override
  String get vgAddPatients => 'রোগী যোগ করুন';

  @override
  String get vgEvent => 'অনুষ্ঠান';

  @override
  String get vgAddEventPhoto => 'অনুষ্ঠানের ছবি যোগ করুন';

  @override
  String get vgUploadImage => 'ছবি আপলোড করুন';

  @override
  String get vgAddPhotoInstruction => 'ইভেন্টের একটি ছবি যোগ করুন যা থাম্বনেইল হিসাবে দেখানো হবে';

  @override
  String get vgAddressDetails => 'ঠিকানার বিস্তারিত বিবরণ';

  @override
  String get vgVenueName => 'স্থানের নাম';

  @override
  String get vgVenueNameError => 'অনুগ্রহ করে স্থানের নাম লিখুন';

  @override
  String get vgVenueNameSpecialCharError => 'কোনও বিশেষ অক্ষর থাকা উচিত নয়।';

  @override
  String get vgPincode => 'পিনকোড';

  @override
  String get vgPincodeError => 'শুধুমাত্র 6 অঙ্কের পিনকোড অনুমোদিত';

  @override
  String get vgCityTownVillage => 'শহর/শহর/গ্রাম';

  @override
  String get vgCityTownVillageError => 'অনুগ্রহ করে শহর/শহর/গ্রামের নাম লিখুন';

  @override
  String get vgCityTownVillageSpecialCharError => 'কোনও বিশেষ অক্ষর থাকা উচিত নয়।';

  @override
  String get vgCancel => 'বাতিল করুন';

  @override
  String get vgSave => 'সংরক্ষণ করুন।';

  @override
  String get vgAddEventImage => 'ইভেন্টের ছবি যোগ করুন';

  @override
  String get vgEventAdded => 'ইভেন্ট যোগ করা হয়েছে';

  @override
  String get vgEventNotAdded => 'ইভেন্ট যোগ করা হয়নি';

  @override
  String get vgDateTime => 'তারিখ ও সময়';

  @override
  String get vgStartDate => 'শুরু হওয়ার তারিখ';

  @override
  String get vgStartTime => 'শুরু করার সময়';

  @override
  String get vgLocation => 'অবস্থান';

  @override
  String get vgViewOnMap => 'মানচিত্রে দেখুন';

  @override
  String get vgAddressAndDoorNumber => 'ঠিকানা ও দরজার নম্বর';

  @override
  String get vgSubDistrictName => 'উপ-জেলার নাম';

  @override
  String get vgVillageName => 'গ্রামের নাম';

  @override
  String get vgDistrictName => 'জেলার নাম';

  @override
  String get vgAbout => 'সম্পর্কে';

  @override
  String get vgEditEvent => 'অনুষ্ঠান সম্পাদনা করুন';

  @override
  String get vgDeleteEvent => 'ইভেন্ট মুছে ফেলুন';

  @override
  String get vgErrorFetchingEventDetails => 'ইভেন্টের বিবরণ আনতে সমস্যা হয়েছে';

  @override
  String get vgNoPatientRegistered => 'নাম সহ কোনও রোগী নিবন্ধিত নয়। রেজিস্টার রোগীর উপর ক্লিক করুন।';

  @override
  String get vgRegisterPatient => 'রোগীকে নথিভুক্ত করুন';

  @override
  String get vgPrimary => 'প্রাথমিক';

  @override
  String get vgDependent => 'নির্ভরশীল।';

  @override
  String get vgAddMember => 'সদস্য যোগ করুন';

  @override
  String get vgCompleteProfile => 'সম্পূর্ণ প্রোফাইল';

  @override
  String get vgStartAssessment => 'মূল্যায়ন শুরু করুন';

  @override
  String get vgSearchPatientByPhoneNumber => 'ফোন নম্বর দিয়ে রোগীকে খুঁজুন';

  @override
  String get vgInvalidPhoneNumber => 'অনুগ্রহ করে একটি বৈধ ফোন নম্বর দিন';

  @override
  String get vgServerError => 'সার্ভারে ত্রুটি';

  @override
  String get vgPatient => 'রোগী।';

  @override
  String get vgReportId => 'আইডি রিপোর্ট করুন';

  @override
  String get vgNoEventFound => 'কোন ইভেন্ট পাওয়া যায়নি';

  @override
  String get vgTeamMateDeletedSuccessfully => 'টিমমেট সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String get vgSomethingWentWrong => 'কিছু একটা ভুল হয়ে গেছে।';

  @override
  String get vgName => 'নাম।';

  @override
  String get vgPhoneNumber => 'ফোন নম্বর';

  @override
  String get vgErrorFetchingTeammatesDetails => 'সতীর্থদের বিবরণ আনতে ত্রুটি';

  @override
  String get vgTeamMateAddedSuccessfully => 'টিমমেট সফলভাবে যোগ হয়েছে';

  @override
  String get vgAddTeammate => 'টিমমেট যোগ করুন';

  @override
  String get vgPleaseEnter => 'দয়া করে প্রবেশ করুন';

  @override
  String get vgPleaseEnterField => 'অনুগ্রহ করে ক্ষেত্র লিখুন';

  @override
  String get vgOr => 'অথবা';

  @override
  String get vgSearch => 'অনুসন্ধান করুন।';

  @override
  String get vgEventDeletedSuccessfully => 'ইভেন্ট সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String get vgEventDeletionFailed => 'ইভেন্ট মুছে ফেলা ব্যর্থ হয়েছে';

  @override
  String get vgEndTimeGreaterThanStartTime => 'শেষ সময় শুরুর সময়ের চেয়ে বেশি হওয়া উচিত।';

  @override
  String get vgNoPatientsPresent => 'বর্তমানে কোনও রোগী নেই। "রোগী যোগ করুন"-এ ট্যাপ করুন।';

  @override
  String get textSize => 'পাঠ্যের আকার';

  @override
  String get increase => 'বাড়ান';

  @override
  String get decrease => 'কমান';

  @override
  String get reset => 'রিসেট';

  @override
  String get minimumTextSizeReached => 'ন্যূনতম পাঠের আকার পৌঁছে গেছে';

  @override
  String get maximumTextSizeReached => 'সর্বাধিক পাঠের আকার পৌঁছে গেছে';

  @override
  String get chatClearChat => 'চ্যাট সাফ করুন';

  @override
  String get chatEyeAssessmentRecommended => 'আপনার জন্য চোখের মূল্যায়ন করার পরামর্শ দেওয়া হয়।';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'আপনি কি ট্রাইএজ চোখের মূল্যায়ন করতে চান?';

  @override
  String get chatChatbotNotAvailable => 'এই মুহূর্তে চ্যাটবট পাওয়া যাচ্ছে না। অনুগ্রহ করে পরে আবার চেষ্টা করুন।';

  @override
  String get chatTypeHere => 'এখানে টাইপ করুন...';

  @override
  String get switchProfile => 'প্রোফাইল পরিবর্তন করুন';

  @override
  String get switchRole => 'ভূমিকা পরিবর্তন করুন';

  @override
  String get switchTenant => 'ভাড়াটিয়া পরিবর্তন করুন';

  @override
  String get patientHeaderWelcomeText => 'সাইট কানেক্টে স্বাগতম! আপনার দৃষ্টিশক্তির যত্ন নেওয়া গুরুত্বপূর্ণ, এবং আমরা প্রতিটি পদক্ষেপে আপনার জন্য এখানে আছি।';

  @override
  String get triageTestCardHeader => 'আপনার চোখের পরীক্ষা বিনামূল্যে...';

  @override
  String get triageTestCardBody1 => 'আপনার চোখের লক্ষণগুলি দ্রুত বিশ্লেষণ করুন।';

  @override
  String get triageTestCardBody2 => 'আপনার চোখের সমস্যা হতে পারে কিনা তা শনাক্ত করুন।';

  @override
  String get triageTestCardBody3 => 'কখন আপনার ডাক্তারের কাছে যেতে হবে তা জানুন';

  @override
  String get triageTestCardButton => 'বিনামূল্যে চোখের পরীক্ষা শুরু করুন';

  @override
  String get myConnectionListAddMembersDescription => 'আপনার পরিবার এবং বন্ধুদের যোগ করতে সদস্য যোগ করুন বোতামে ক্লিক করুন।';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'আপনি কিভাবে এগিয়ে যেতে চান?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'আমার একটি সমস্যা আছে এবং আমি তা যাচাই করতে চাই।';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'আমি নিশ্চিত নই যে আমার কোনও সমস্যা আছে কিনা।';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'আমার চোখের কোনও সমস্যা নেই-শুধু পরীক্ষা করতে চাই।';

  @override
  String get appDrawerToastMessageText => 'দুঃখিত, আমরা মোবাইল অ্যাপে একটি লগআউট ত্রুটির সম্মুখীন হয়েছি।';

  @override
  String get myConnectionListAddMembers => 'সদস্য যোগ করুন';

  @override
  String get appDrawerReferral => 'রেফারেল';

  @override
  String get patientTenantDisplayPageHeader => 'ভাড়াটিয়া';

  @override
  String get patientTenantDisplayPageBody => 'তালিকা থেকে একটি ভিশন সেন্টার নির্বাচন করুন।';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'অবস্থান অনুমতির জন্য অনুরোধ করুন';

  @override
  String get referralGenerateSheetHeader => 'আপনার রেফারেল কোড';

  @override
  String get referralGenerateSheetTapHereButton => 'একটি কোড আছে? এখানে ট্যাপ করুন';

  @override
  String get referralGenerateSheetMyReferrals => 'আমার রেফারেল';

  @override
  String get referralGenerateSheetShareCode => 'সুবিধা পেতে আপনার বন্ধুবান্ধব এবং পরিবারের সঙ্গে আপনার রেফারেল কোড শেয়ার করুন।';

  @override
  String get referralGenerateSheetReferralGenerateError => 'দুঃখিত, আমরা এই মুহূর্তে একটি রেফারেল কোড তৈরি করতে পারছি না।';

  @override
  String get referralGenerateSheetShareButton => 'শেয়ার করুন।';

  @override
  String get referralGenerateSheetCopy => 'অনুলিপি';

  @override
  String get referralCollectSheetYourRefferalCode => 'আপনার রেফারেল কোড';

  @override
  String get referralCollectSheetReferralCodeMessage => 'সুবিধা পেতে আপনার বন্ধুবান্ধব এবং পরিবারের সঙ্গে আপনার রেফারেল কোড শেয়ার করুন।';

  @override
  String get referralCollectSheetHeader => 'রেফারেল সংগ্রহ করুন';

  @override
  String get referralCollectSheetBody => 'আপনার পুরস্কার সংগ্রহ করতে রেফারেল কোড লিখুন';

  @override
  String get referralCollectSheetTextFieldHeader => 'রেফারেল কোড';

  @override
  String get referralCollectSheetTextFieldBody => 'রেফারেল কোড লিখুন';

  @override
  String get referralCollectSheetSkipButton => 'এড়িয়ে যান।';

  @override
  String get referralCollectSheetCollectButton => 'সংগ্রহ করুন।';

  @override
  String get referralCollectSheetError => 'দুঃখিত, কিছু ভুল হয়েছে। দয়া করে আবার চেষ্টা করুন।';

  @override
  String get referralCollectSheetSuccessToast => 'রেফারেল কোড সফলভাবে জমা দেওয়া হয়েছে';

  @override
  String get referralCollectSheetErrorToast => 'আপনার দেওয়া রেফারেল কোডটি অবৈধ। দয়া করে আবার চেষ্টা করুন।';

  @override
  String get referralStatisticsPageHeader => 'আপনার রেফারেল পরিসংখ্যান';

  @override
  String get referralStatisticsPageTotalReferred => 'মোট উল্লেখ করা হয়েছে';

  @override
  String get referralStatisticsPageSucessfulReferred => 'সফল উল্লেখ করা হয়েছে';

  @override
  String get referralStatisticsPageTotalTriage => 'মোট ট্রায়াল';

  @override
  String get referralStatisticsPageReferFriendHeader => 'কিভাবে একজন বন্ধুকে রেফার করা যায়?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'আপনার বন্ধুর সঙ্গে আপনার রেফারেল কোড শেয়ার করুন।';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'আপনার বন্ধু আপনার রেফারেল কোড ব্যবহার করে নিবন্ধন করুন।';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'আপনার বন্ধু অন্তত একটি ট্রাইএজ পরীক্ষা সম্পন্ন করে।';

  @override
  String get referralStatisticsPageReferFriendButton => 'একজন বন্ধুকে রেফার করুন';

  @override
  String get referralStatisticsPageError => 'দুঃখিত, আমরা এই মুহূর্তে আপনার রেফারেল পরিসংখ্যান আনতে পারছি না।';

  @override
  String get referralStatisticsPageRetryButton => 'পুনরায় চেষ্টা করুন।';

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

  @override
  String get vaDemoPageInstruction => 'Tap on the E matching the image shown on top';

  @override
  String get vaShowInstructionBottomSheetRightEyeInstruction => 'Cover your right eye and tap on the E matching the image on top';

  @override
  String get vaShowInstructionBottomSheetLeftEyeInstruction => 'Cover your left eye and tap on the E matching the image on top';

  @override
  String get vaShowInstructionBottomSheetBothEyesInstruction => 'View with both eyes and tap on the E matching the image on top';

  @override
  String get vaShowInstructionBottomSheetProceedButton => 'Proceed';

  @override
  String get touchGestureCardRightEyeInstruction => 'Cover your right eye and tap on the E matching the image on top';

  @override
  String get touchGestureCardLeftEyeInstruction => 'Cover your left eye and tap on the E matching the image on top';

  @override
  String get touchGestureCardBothEyesInstruction => 'View with both eyes and tap on the E matching the image on top';

  @override
  String get touchGestureCardICantSeeOutlineButton => 'I Can’t see';

  @override
  String get distanceVaTopAppBarDistanceVisionTest => 'Distance Vision Test';

  @override
  String get fakeDataSourceGetCarouselDataDescription => 'Early detection can save your eyes';

  @override
  String get fakeDataSourceGetCarouselDataTitle => 'Doctor says';

  @override
  String get distanceNotifierProviderNoFaceDetectedError => 'No face detected. Please face the camera 40 cm from the screen ';
}
