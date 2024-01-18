import 'app_localizations.dart';

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current এর মধ্যে $total';
  }

  @override
  String get questionnaireTitle => 'চোখ মূল্যায়ন প্রশ্নাবলী';

  @override
  String get questionnaireExitDialog => 'এই প্রশ্নগুলির উত্তর দেওয়া আপনার চোখের সমস্যা চিহ্নিত করতে সাহায্য করবে। আপনি কি সত্যিই প্রস্থান করতে চান?';

  @override
  String get visualAcuityTitle => 'দৃষ্টি তীক্ষ্ণতা পরীক্ষা';

  @override
  String get visualAcuityDescription => 'একটি দৃষ্টি তীক্ষ্ণতা পরীক্ষা হল একটি চোখের পরীক্ষা যা আপনি একটি নির্দিষ্ট দূরত্ব থেকে একটি অক্ষর বা প্রতীকের বিস্তারিত কত ভালোভাবে দেখতে পারেন তা যাচাই করে। এই দ্রুত পরীক্ষাটি এখনই করুন!';

  @override
  String get visualAcuityHowToPerform => 'দৃষ্টি তীক্ষ্ণতা পরীক্ষা কীভাবে সম্পাদন করবেন?';

  @override
  String get visualAcuityViewStepsToPerform => 'দৃষ্টি তীক্ষ্ণতা পরীক্ষা সম্পাদনের পদক্ষেপগুলি দেখুন';

  @override
  String get visualAcuityCompletionDialog => 'সম্পন্ন! উভয় চোখের জন্য দৃষ্টি তীক্ষ্ণতা পরীক্ষা সম্পন্ন হয়েছে। পরবর্তীতে আপনাকে আপনার চোখের ছবি তুলতে হবে।';

  @override
  String get visualAcuityExitDialog => 'দৃষ্টি তীক্ষ্ণতা আপনার চোখের সমস্যা সম্পর্কে জানার জন্য একটি গুরুত্বপূর্ণ পরীক্ষা। আপনি কি সত্যিই প্রস্থান করতে চান?';

  @override
  String get swipeGestureTab => 'সোয়াইপ জেস্চার';

  @override
  String get voiceAssistTab => 'ভয়েস সহায়তা';

  @override
  String get distanceString => 'দূরত্ব';

  @override
  String get leftEyeString => 'বাম চোখ';

  @override
  String get rightEyeString => 'ডান চোখ';

  @override
  String get bothEyeString => 'উভয় চোখ';

  @override
  String get visualAcuityLeftEyeHeader => 'পরীক্ষা ২ - বাম চোখ';

  @override
  String get visualAcuityLeftEyeInstructions => 'চোখের পাতায় চাপ না দিয়ে, ডান চোখের উপর আপনার হাত দিয়ে ঢেকে রাখুন। যদি আপনি চশমা পরেন, তাহলে চশমার উপরে আপনার হাত রাখুন।';

  @override
  String get visualAcuityRightEyeHeader => 'পরীক্ষা ১ - ডান চোখ';

  @override
  String get visualAcuityRightEyeInstructions => 'চোখের পাতায় চাপ না দিয়ে, বাম চোখের উপর আপনার হাত দিয়ে ঢেকে রাখুন। যদি আপনি চশমা পরেন, তাহলে চশমার উপরে আপনার হাত রাখুন।';

  @override
  String get visualAcuityBothEyeHeader => 'পরীক্ষা ৩ - উভয় চোখ';

  @override
  String get visualAcuityBothEyeInstructions => 'আপনার কোনও চোখ ঢাকবেন না এবং পরবর্তীতে যে প্রতীকগুলি প্রদর্শিত হবে সেগুলি উভয় চোখ দিয়ে দেখুন।';

  @override
  String get overlayHeaderDirection => 'দিকনির্দেশ';

  @override
  String get overlayDescription => 'এখানে আপনি প্রতিটি প্রতীকের জন্য দিকনির্দেশ কীভাবে বুঝবেন তা দেখানো হয়েছে।';

  @override
  String get overlaySymbolDirectionText => 'প্রতীক দিকনির্দেশ : ';

  @override
  String get directionDown => 'নিচে';

  @override
  String get directionUp => 'উপরে';

  @override
  String get directionLeft => 'বামে';

  @override
  String get directionRight => 'ডানে';

  @override
  String get dontShowAgainString => 'আবার দেখাবেন না';

  @override
  String get visualAcuityCarouselTitle => 'দৃষ্টি তীক্ষ্ণতা পরীক্ষা সম্পাদনের পদক্ষেপগুলি';

  @override
  String get eyeScanTitle => 'আই স্ক্যান';

  @override
  String get eyeScanDescription => 'আপনি প্রায় পৌঁছে গেছেন! আর মাত্র একটি পরীক্ষা বাকি। এবার আপনার চোখের ছবি তুলুন।';

  @override
  String get eyeScanHowToPerform => 'আপনার চোখ স্ক্যান করবেন কীভাবে?';

  @override
  String get eyeScanViewStepsToPerform => 'আপনার চোখ স্ক্যান করার পদ্ধতি জানতে পদক্ষেপগুলি দেখুন।';

  @override
  String get eyeScanExitDialog => 'আই স্ক্যান আপনার চোখের সমস্যা বুঝতে সাহায্য করে। আপনি কি সত্যিই বেরিয়ে যেতে চান?';

  @override
  String get captureRightEyeString => 'ডান চোখ তুলুন';

  @override
  String get captureLeftEyeString => 'বাম চোখ তুলুন';

  @override
  String get skipButton => 'এড়িয়ে যান';

  @override
  String get startTestText => 'পরীক্ষা শুরু করুন';

  @override
  String get continueButton => 'চালিয়ে যান';

  @override
  String get startButton => 'শুরু করুন';

  @override
  String get nextButton => 'পরবর্তী';

  @override
  String get proceedButton => 'এগিয়ে যান';

  @override
  String get yesButton => 'হ্যাঁ';

  @override
  String get noButton => 'না';

  @override
  String get exitButton => 'প্রস্থান';

  @override
  String get okButton => 'ঠিক আছে';

  @override
  String get knowMoreButton => 'আরও জানুন';

  @override
  String get seeAllButton => 'সব দেখুন';

  @override
  String get tryAgainButton => 'আবার চেষ্টা করুন';

  @override
  String get shareNowButton => 'এখনই ভাগ করুন';

  @override
  String get retryButton => 'পুনরায় চেষ্টা করুন';

  @override
  String get homeCarousal1Title => 'প্রাপ্ত বয়স্কদের মধ্যে মোতিয়াবিন্দুর প্রকোপ এবং এর সঙ্গে যুক্ত কারণসমূহ';

  @override
  String get homeCarousal1Description => 'মোতিয়াবিন্দুর প্রকোপ এবং সঙ্গে যুক্ত কারণসমূহের নমুনা প্রদর্শনী';

  @override
  String get homeCarousal2Title => '৭টি চোখের সমস্যা যা আপনি অবশ্যই উপেক্ষা করবেন না!';

  @override
  String get homeCarousal2Description => '\nপরীক্ষা করার জন্য ৭টি চোখের সমস্যা: \n \n• চোখের লালভাব\n• চোখের পানি\n• চোখের উপর সাদা দাগ';

  @override
  String get homeCarousal3Title => 'চোখের সমস্যা। অনেক কিছু আপনি দেখতে পাবেন না';

  @override
  String get homeCarousal3Description => 'কিন্তু একজন দৃষ্টি যত্ন বিশেষজ্ঞ পারেন।\nচোখের সমস্যা চিহ্নিত করুন\nএবং সময় মতো চিকিৎসা করুন পরবর্তী\nজটিলতা এড়ানোর জন্য';

  @override
  String get myConnectionsTitle => 'আমার সদস্যরা';

  @override
  String get myConnectionsAddMember => 'সদস্য যোগ করুন';

  @override
  String get myConnectionsServiceNotAvailable => 'পরিষেবা উপলব্ধ নয়';

  @override
  String get myConnectionsAdd => 'যোগ করুন';

  @override
  String get recentServicesTitle => 'আমার সাম্প্রতিক পরিষেবাসমূহ';

  @override
  String get recentServicesEyeAssessment => 'চোখের মূল্যায়ন';

  @override
  String get recentServicesVisualAcuityTest => 'দৃষ্টি তীক্ষ্ণতা পরীক্ষা';

  @override
  String get nearbyVisionCentersTitle => 'নিকটবর্তী দৃষ্টি কেন্দ্রসমূহ';

  @override
  String get nearbyVisionCentersNotFound => 'কোনো দৃষ্টি কেন্দ্র পাওয়া যায়নি';

  @override
  String get tollFreeNumber => 'টোল ফ্রি নম্বর';

  @override
  String get appDrawerTitle => 'মেনু';

  @override
  String get appDrawerLanguageSelection => 'ভাষা নির্বাচন';

  @override
  String get appDrawerAccessibility => 'প্রাপ্তির সেটিংস';

  @override
  String get appDrawerHome => 'হোম';

  @override
  String get appDrawerMyProfile => 'আমার প্রোফাইল';

  @override
  String get appDrawerAssessmentsAndTests => 'মূল্যায়ন এবং পরীক্ষাসমূহ';

  @override
  String get appDrawerScanner => 'স্কিউআর কোড স্ক্যানার';

  @override
  String get appDrawerAboutUs => 'আমাদের সম্পর্কে';

  @override
  String get appDrawerPrivacyPolicy => 'গোপনীয়তা ও ডেটা নীতি';

  @override
  String get appDrawerHelpAndSupport => 'সাহায্য এবং সমর্থন';

  @override
  String get appDrawerSignOut => 'সাইন আউট';

  @override
  String get aboutUsDescription => 'Sightconnect একটি ব্যবহারকারী-বন্ধুত্বপূর্ণ চোখ যোগ্যতা অ্যাপ্লিকেশন, যা কলে স্ব-মূল্যায়ন এবং পরামর্শে সাহায্য করে।\n\nআমাদের উদ্দেশ্যের মূলধারায় আমরা সমস্তে চোখচ্ছবি সহজবোধ্য করতে প্রতিশ্রুতি দিচ্ছি। এই অ্যাপ্লিকেশনটি প্রাপ্তিপ্রাপ্ত এবং অ্যাক্সেস করতে ব্যবহারকারীদের বিশেষভাবে যোগ্য করা হয়, তাদের বয়স, তথ্যপ্রযুক্তি পেশার প্রতিবেশী এবং সামাজিক বা আর্থিক প্রস্তাবনা সবকিছুর সাথে নির্বিঘ্নভাবে ব্যবহারকারীদের দিকে অভিন্যচ্ছে। এই অ্যাপ্লিকেশনটি ইংরেজি এবং অন্যান্য স্থানীয় ভাষায় উপলব্ধ করা হয়। এটি ব্যবহারকারীদের তাদের চোখ স্ব-মূল্যায়ন করতে সাহায্য করে এবং সময়ের সাথে চিকিত্সা সালাহ প্রাপ্ত করতে সাহায্য করে। এই অ্যাপ্লিকেশনটি আমাদের ব্যবহারকারীদের জন্য ব্যক্তিগত চোখ যোগ্যতা সমাধান সরবরাহ করতে সহায়ক নতুন প্রযুক্তি এবং টুলস ব্যবহার করে। এটি তাদের জীবনকে সহজ করার জন্য বিভিন্ন ফিচারের সাথে আসে।';

  @override
  String get aboutUsFeaturesTitle => 'বৈশিষ্ট্য';

  @override
  String get aboutUsFeaturesDescription => 'ইন-অ্যাপ চোখের পরীক্ষা: এই অ্যাপটি তার ব্যবহারকারীদের চোখ স্ব-মূল্যায়ন করতে দেয়, কিছু প্রশ্নের উত্তর দিয়ে এবং আগামী পদক্ষেপ এবং যে ডাক্তারকে দেখতে হবে তা সম্পর্কিত পরামর্শ প্রাপ্ত করতে। ব্যবহারকারীরা উপকার পাওয়ার জন্য ব্যবহারকারীদের বন্ধু এবং পরিবারও প্রাপ্ত করতে পারে। | অ্যাপয়েন্টমেন্ট বুকিং: ব্যবহারকারীরা ডাক্তারের সাথে তাদের চোখ নিরীক্ষণ করতে অনলাইন টেলিকনসাল্টেশন এবং ইন-ক্লিনিক ভিজিট বুক করতে পারে। | IVR কল সেবা: আমাদের IVR কল সেবা ইংরেজি এবং স্থানীয় ভাষায় উপলব্ধ এবং এটি বেসিক ফিচার ফোনসহ ব্যবহারকারীদের সেবা প্রদান করে, আপাতকালীন সাহায্য বা কোনও চোখের সম্পর্কিত সমস্যা সম্পর্কে ত্ত্বিক সাহায্যের জন্য ব্যবহারকারীদের বিশেষ কল করতে পারে। তারা আপজন্ম বুক করতে বা আরও স্পষ্টীকরণ চাওয়ার জন্য ওয়াপসে কল করতে পারে। | নিকটবর্তী ক্লিনিক: ব্যবহারকারীরা তাদের নিকটবর্তী চোখ যত্ন ক্লিনিক খুঁজে পেতে পারে। | প্রেসক্রিপশন এবং রিপোর্ট: ব্যবহারকারীদের সমস্থ প্রেসক্রিপশন এবং রিপোর্টগুলি বেশি সমস্থ প্রকারে একটি জায়গা থেকে অ্যাক্সেস করা যায়। | চোখের শিবির: ব্যবহারকারীরা তাদের বন্ধু এবং পরিবারের চোখগুলি বিনামূল্যে পরীক্ষা করার জন্য নিকটবর্তী চোখের শিবিরের তথ্য পেতে পারে। | অনুস্মারক এবং সতর্কতা: ব্যবহারকারীরা তাদের আগামী অ্যাপয়েন্টমেন্ট, ঔষধ, রিপোর্ট ইত্যাদি সম্পর্কিত সময়োপযোগী সতর্কতা এবং স্মরণ পেতে পারেন। | ভাগ: ব্যবহারকারীরা এই অ্যাপটি এবং অ্যাপটির ভিতরে সর্বজনীন তথ্যগুলি তাদের বন্ধু এবং পরিবারের সদস্যদের সাথে ভাগ করতে পারেন।';

  @override
  String get aboutUsConclusion => 'এই অ্যাপটি আমাদের ব্যবহারকারী সম্প্রদায়কে আরও ভাল সেবা দেওয়ার জন্য প্রধান চোখ যত্ন পেশাদারদের সাহায্যে তৈরি হয়েছে। আমাদের উদ্দেশ্য একটি আলোকমান এবং স্বাস্থ্যকর বিশ্ব তৈরি করতে আমাদের মিশনে আপনিও যোগদান করুন। আজই Sightconnect অ্যাপটি ডাউনলোড এবং শেয়ার করুন!';

  @override
  String get privacyPolicyDescription => 'LV প্রাসাদ চোখ ইনস্টিটিউট, এর সাবসিডিয়ারিজ, এসোসিয়েট এবং সংশ্রিত কোম্পানিগুলি (সম্মিলিতভাবে “LVPEI”, “আমাদের”, “আমরা”) আপনার ব্যক্তিগত তথ্য আপনার যুরিসডিকশনের আইনগুলি অনুসরণ করতে প্রতিশ্রুতিবদ্ধ আছে। আমরা আপনাকে নিম্নলিখিত ব্যক্তিগত তথ্য প্রস্তুত করার সম্পর্কে নোটিশ করছি।';

  @override
  String get privacyPolicyPersonalDataTitle => 'সংগ্রহিত/প্রস্তুত ব্যক্তিগত তথ্যের উপাদান:';

  @override
  String get privacyPolicyPersonalDataDescription => 'আপনার এবং আপনার সংযোগের ব্যক্তিগত তথ্য যেমন (এই তথ্যগুলির কিছু ঐচ্ছিক হতে পারে) মোবাইল নম্বর, নাম, জন্ম তারিখ, লিঙ্গ (পুরুষ/মহিলা), ঠিকানা (পিন কোড), রোগী আইডি, সংযোগ, চোখের ট্রাইয়েজ প্রশ্নাবলীর উত্তর, চোখের ট্রাইয়েজ রিপোর্ট, চোখের ছবি, আপনার চোখের ছবির বিরুদ্ধে ট্যাগ করা লক্ষণ, ফটোগ্রাফ, ঠিকানা বিবরণ যেমন ঠিকানা, জেলা নাম (জেলা কোড সহ), রাজ্য নাম (রাজ্য কোড সহ), উপজেলা নাম, গ্রাম নাম, শহর নাম, ইমেইল ঠিকানা, শেষ নাম, মধ্য নাম, রক্তের গ্রুপ, উচ্চতা, ওজন, পেশা, আপনার দ্বারা প্রদত্ত ABHA বিবরণ, অ্যাপ্লিকেশন অ্যাক্সেসের জন্য ক্যামেরা, GPS অবস্থান, গ্যালারী অ্যাক্সেস, পূর্ণ নেটওয়ার্ক অ্যাক্সেস, নেটওয়ার্ক সংযোগ দেখা, ডিভাইস তথ্য।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'প্রক্রিয়াকরণের উদ্দেশ্য: আমরা নিম্নলিখিত উদ্দেশ্যগুলির জন্য আপনার দ্বারা প্রদত্ত ব্যক্তিগত তথ্য প্রক্রিয়া করি যেমন:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'আপনার এবং আপনার সংযোগের (আপনার দ্বারা প্রদত্ত) জন্য আমাদের অ্যাপ্লিকেশন এবং এর বৈশিষ্ট্যগুলি অ্যাক্সেস করতে সক্ষম করা|চোখ সম্পর্কিত কোনো রোগ/স্বাস্থ্য সমস্যার ক্ষেত্রে LVPEI-র অধীনে ভিশন টেকনিশিয়ান, চক্ষু বিশেষজ্ঞদের সাথে যোগাযোগ করতে সক্ষম করা|স্বাস্থ্য পরামর্শ এবং নির্ণয়ের অংশ হিসেবে কোনো চোখের স্বাস্থ্য সম্পর্কিত তথ্য (রিপোর্ট ইত্যাদি সহ) প্রদান করা এবং স্বাস্থ্য-সম্পর্কিত উদ্বেগের অংশ হিসেবে আপনাকে বা আপনার সংযোগকে যোগাযোগ করা|আমাদের অনুমোদিত LVPEI চক্ষু বিশেষজ্ঞ/চিকিৎসকদের সাথে আপনার চোখের স্বাস্থ্য তথ্য ভাগ করা যাতে তারা ভালো নির্ণয় করতে পারে এবং তা আপনার GPS অবস্থানের ভিত্তিতে (যখন প্রযোজ্য) গ্রামের প্রধান/ মেয়র ইত্যাদির সাথে ভাগ করা চোখের সমস্যার গুরুত্বের উপর নির্ভর করে যদি আপনি LVPEI ডাক্তারদের কাছে পৌঁছাতে বা অবহিত করতে অক্ষম হন|আপনার কাছাকাছি LVPEI-এর সাথে যুক্ত চোখের ক্লিনিক/হাসপাতালের তালিকা প্রদান করা যাতে আপনি কোনো চোখের সমস্যার ক্ষেত্রে সেখানে পৌঁছাতে পারেন| আপনার কাছাকাছি এলভিপিইআই-এর সাথে যুক্ত চোখের ক্লিনিক/ হাসপাতালের তালিকা প্রদান করার জন্য, যাতে কোনো চোখের সমস্যা হলে আপনি সেখানে যোগাযোগ করতে পারেন।|চোখের ছবি, চোখের ছবি সম্পর্কিত উপসর্গ, বয়স, রক্তের গ্রুপ, অবস্থান ইত্যাদি তথ্য ব্যবহার করে কোনো পরিচয় উল্লেখ ছাড়াই আমাদের মেশিন শেখার বা কৃত্রিম বুদ্ধিমত্তা মডেলগুলি প্রশিক্ষণের উদ্দেশ্যে সাহায্য করার জন্য।|চোখের স্বাস্থ্যের জন্য সচেতনতা তৈরির জন্য অনুস্মারক, যোগাযোগ, প্রচারাভিযানের মেইলার পাঠানোর জন্য।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'তথ্য প্রাপক/ অ্যাক্সেস যোগ্য:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'আপনার দ্বারা ভাগ করা ব্যক্তিগত তথ্য (সংবেদনশীল ব্যক্তিগত তথ্যসহ) LVPEI-এর অনুমোদিত কর্মীদের যেমন ডাক্তার/ চক্ষু বিশেষজ্ঞ, দৃষ্টি প্রযুক্তিবিদ, দৃষ্টি রক্ষী, LVPEI-এর প্রতিনিধি, অভ্যন্তরীণ/বাহ্যিক অডিটর, প্রযোজ্য ক্ষেত্রে সরকারী কর্তৃপক্ষ, এবং আমাদের অনুমোদিত পরিষেবা প্রদানকারী Infosys এই সকলের কাছে প্রাপ্তিসাধ্য হবে।';

  @override
  String get privacyPolicyDataTransferTitle => 'তথ্য স্থানান্তর এবং সংরক্ষণ:';

  @override
  String get privacyPolicyDataTransferDescription => 'আপনার দ্বারা ভাগ করা ব্যক্তিগত তথ্য আমাদের অভ্যন্তরীণ সার্ভারগুলিতে, এবং আমাদের অনুমোদিত পরিষেবা প্রদানকারীর ভারতের সার্ভারে সংরক্ষিত হবে।';

  @override
  String get privacyPolicyDataSecurityTitle => 'তথ্য নিরাপত্তা:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI যুক্তিসঙ্গত এবং উপযুক্ত নিরাপত্তা অনুশীলন এবং পদ্ধতি অবলম্বন করে, যার মধ্যে প্রশাসনিক, শারীরিক নিরাপত্তা এবং প্রযুক্তিগত নিয়ন্ত্রণ অন্তর্ভুক্ত আপনার ব্যক্তিগত তথ্য সুরক্ষা করতে।';

  @override
  String get privacyPolicyDataRetentionTitle => 'তথ্য ধরে রাখা:';

  @override
  String get privacyPolicyDataRetentionDescription => 'যে সমস্ত ব্যক্তিগত ডেটা আইনি এবং ব্যবসায়িক প্রয়োজনে ধরে রাখা প্রয়োজন নয় তা নিরাপদ উপায়ে নিষ্পত্তি করা হবে।';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ডেটা বিষয়ক অধিকারসমূহ:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'আপনি সর্বদা আপনার ব্যক্তিগত তথ্য অ্যাক্সেস এবং সংশোধন করার অধিকারী। কোনো অনুরোধ, সমস্যা, উদ্বেগ বা প্রশ্নের ক্ষেত্রে আপনি <LVPEI জেনেরিক মেইল আইডি প্রদান করতে বলা হবে> এ ইমেইল পাঠিয়ে LV Prasad Office এ যোগাযোগ করতে পারেন।';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'প্রত্যাহারের অধিকার:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'আপনার ব্যক্তিগত ডেটা আমরা আপনার সম্মতি অনুযায়ী প্রক্রিয়া করি, আপনি যে কোনো সময় ভবিষ্যতের জন্য আপনার সম্মতি প্রত্যাহার করতে পারেন যথাযথ ডেটা প্রোটেকশন আইন অনুসারে। এটি আপনার প্রত্যাহারের আগে কোনো প্রক্রিয়াজাত কার্যক্রমের বৈধতায় প্রভাব ফেলবে না। আপনার সম্মতি প্রত্যাহার করতে, আপনি <LVPEI একটি সাধারণ মেইল আইডি ডেটা সাবজেক্ট রিকোয়েস্টের জন্য প্রদান করতে পারেন> একটি ইমেইল পাঠাতে পারেন।';

  @override
  String get privacyPolicyAcknowledgement => 'নিচের বোতাম ক্লিক করে, আপনি এখানে উল্লেখিত পদ্ধতিতে আপনার ব্যক্তিগত ডেটা সহ সংবেদনশীল ব্যক্তিগত ডেটা সংগ্রহ ও প্রক্রিয়া করা হতে পারে এবং এইভাবে এই উদ্দেশ্যে সম্মতি প্রদান করেন বলে এখানে স্বীকার করেন এবং বোঝেন। আপনি আরও স্বীকার করেন যে, আপনি কর্তৃক ভাগ করা যে কোনো ব্যক্তিগত ডেটা সহ সংবেদনশীল ব্যক্তিগত ডেটা (আপনার নিজের বাইরে) তারা প্রাসঙ্গিক সম্মতি নিয়েই ভাগ করা হয়েছে। আপনি আরও স্বীকার করেন যে আপনি এইভাবে উল্লেখিত উদ্দেশ্যের জন্য অপ্রয়োজনীয় কোনো ব্যক্তিগত ডেটা (সহ সংবেদনশীল ব্যক্তিগত ডেটা) ভাগ করবেন না। আপনি এও স্বীকার করেন যে, যখন আপনি একজন অভিভাবক/বৈধ অভিভাবক হিসেবে একটি নাবালকের ব্যক্তিগত ডেটা ভাগ করেন, তখন আপনি উপরে উল্লেখিত তাদের ডেটা সংগ্রহ ও প্রক্রিয়ার জন্য সম্মতি প্রদান করেন।';

  @override
  String get privacyPolicyBottomAppBarLabel => 'গোপনীয়তা নীতি গৃহীত';

  @override
  String get helpAndSupportReachTitle => 'আমাদের পৌঁছান';

  @override
  String get assessmentAndTestsSubtitle => 'এখানে এ পর্যন্ত করা মূল্যায়নের একটি দ্রুত দৃষ্টিভঙ্গি রয়েছে।';

  @override
  String get assessmentAndTestsReportsNotFound => 'কোনো রিপোর্ট পাওয়া যায়নি';

  @override
  String get eyeAssessmentTitle => 'চোখের মূল্যায়ন';

  @override
  String get eyeAssessmentSubtitle => 'আপনি, আপনার বন্ধু এবং পরিবারের সদস্যদের চোখের সমস্যা কয়েক ধাপে মূল্যায়ন করুন। আপনার চোখের সমস্যা সম্পর্কিত উপসর্গ বুঝতে এক সেট প্রশ্ন করা হবে, তারপর দৃষ্টি পরীক্ষা করা হবে।';

  @override
  String get eyeAssessmentGetMemberLabel => 'সদস্য পরিবর্তন করুন';

  @override
  String get eyeAssessmentProceedButton => 'এগিয়ে যান';

  @override
  String get eyeAssessmentBrightnessLabel => 'উজ্জ্বলতা ৮০% নির্ধারিত';

  @override
  String get eyeAssessmentBrightnessError => 'দয়া করে উজ্জ্বলতা ম্যানুয়ালি ৮০% এ সেট করুন';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'প্রশ্ন এখনো সমর্থিত নয়';

  @override
  String get eyeAssessmentPopUpHeading => 'মূল্যায়ন';

  @override
  String get eyeAssessmentPopUpBody => 'আপনার কি দৃষ্টিসংক্রান্ত কোনো সমস্যা আছে?';

  @override
  String get eyeAssessmentPopUpYesButton => 'হ্যাঁ';

  @override
  String get eyeAssessmentPopUpNoButton => 'না';

  @override
  String get visualAcuityTestInstructionOne => 'আরামদায়কভাবে একটি ভালো আলোকিত স্থানে বসুন। হঠাৎ উজ্জ্বলতায় পরিবর্তন হলে চিন্তা করবেন না, স্ক্রিন আপনা-আপনি উজ্জ্বলতা নির্ধারণ করে আদর্শ ফলাফল প্রদান করতে সেট করা হয়েছে';

  @override
  String get visualAcuityTestInstructionTwo => 'নিশ্চিত করুন যে আপনি ডিভাইসটি চোখের স্তরে ধরে আছেন। যদি আপনি চশমা বা কন্টাক্ট লেন্স পরে থাকেন, তাহলে সেগুলো পরে রাখুন';

  @override
  String get visualAcuityTestInstructionThree => 'পর্দার থেকে ৪০ সেমি দূরে নিজেকে অবস্থান করুন। দূরত্ব পরীক্ষার পর্দায় দেখানো হবে।';

  @override
  String get visualAcuityTestInstructionFour => 'যদি আপনি চশমা পরে পরীক্ষা করেন, তবে এক চোখে পরীক্ষা করার সময় চশমার উপরে হাত দিয়ে অন্য চোখটি ঢেকে রাখুন।';

  @override
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get skipAndProceedButton => 'অগ্রাহ্য করুন ও স্ক্যানে এগিয়ে যান';

  @override
  String get proceedToScanButton => 'স্ক্যানে এগিয়ে যান';

  @override
  String get eyeAssessmentSteps => 'ধাপসমূহ';

  @override
  String get eyeAssessmentStepOne => 'ধাপ ১ - চোখের মূল্যায়ন প্রশ্নাবলী';

  @override
  String get eyeAssessmentStepTwo => 'ধাপ ২ - চোখের মূল্যায়ন প্রশ্নাবলী';

  @override
  String get eyeAssessmentStepThree => 'ধাপ ৩ - চোখের মূল্যায়ন প্রশ্নাবলী';

  @override
  String get eyeAssessmentOngoing => 'চলমান';

  @override
  String get eyeAssessmentCompleted => 'সম্পন্ন';

  @override
  String get eyeAssessmentPending => 'মুলতুবি';

  @override
  String get eyeAssessmentResults => 'মূল্যায়নের ফলাফল';

  @override
  String get eyeAssessmentCompleteSteps => 'ফলাফল দেখার জন্য সমস্ত ধাপ সম্পন্ন করুন';

  @override
  String get eyeAssessmentToolTip => 'দয়া করে নিশ্চিত করুন যে ফ্ল্যাশ বন্ধ এবং উজ্জ্বলতা 80% নির্ধারিত আছে';

  @override
  String get eyeScanInstructionOne => 'ক্যামেরা ধরুন এবং মুখকে ফ্রেমে সঠিকভাবে রাখুন।';

  @override
  String get eyeScanInstructionTwo => 'আপনার ফোনের পিছনের ক্যামেরা ব্যবহার করে চোখের ছবি তুলুন।';

  @override
  String get eyeScanInstructionThree => 'নিশ্চিত করুন যে আপনি একটি ভালো আলোকিত এলাকায় আছেন এবং ফ্ল্যাশ চালু আছে।';

  @override
  String get eyeScanInstructionFour => 'ভালো ধারণা এবং স্পষ্টতার জন্য, অন্য কেউ ছবি তুলতে সাহায্য করুক।';

  @override
  String get eyeScanInstructionFive => 'ছবি তোলার সময় এক চোখ দিয়ে হাত দিয়ে ঢেকে রাখুন এবং অন্য চোখ দিয়ে সোজা তাকিয়ে থাকুন।';

  @override
  String get eyeScanInstructionSix => 'ছবি তোলার আগে চোখটি প্যানেলের মধ্যে কেন্দ্র করুন।';

  @override
  String get eyeScanInstructionSeven => 'ফ্ল্যাশ বন্ধ হওয়া পর্যন্ত এবং \'বিপ\' শব্দ শোনা যাওয়া পর্যন্ত চোখ প্রশস্ত রাখুন।';

  @override
  String get eyeAssessmentNote => 'নোট: এখানে প্রদর্শিত চিত্রগুলি শুধুমাত্র সূচনা জন্য। প্রাকৃতিতে তাঁদের এমনভাবে দেখা যাবে না।';

  @override
  String get agreeButton => 'আমি রাজি';

  @override
  String get consentPageCheckbox => 'আমি শর্তাবলীতে রাজি আছি';

  @override
  String get confirmButton => 'নিশ্চিত করুন';

  @override
  String get discardButton => 'বাতিল করুন';

  @override
  String get imageNotCapturedToastMessage => 'ছবি ক্যাপচার করা হয়নি';

  @override
  String get eyeCaptureCompletionDialogHeading => 'পরীক্ষা সম্পূর্ণ';

  @override
  String get eyeCaptureCompletionDialogBody => 'আপনি পরীক্ষা সম্পন্ন করেছেন। ফলাফল দেখার জন্য নিচের বোতামে ক্লিক করুন।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ফলাফল দেখুন';

  @override
  String get eyeCaptureTriageSavedLocally => 'ট্রায়াজ স্থানীয়ভাবে সংরক্ষিত';

  @override
  String get visualAcuityTestResults => 'দৃষ্টি স্পষ্টতা পরীক্ষার ফলাফল';

  @override
  String get assessmentResultPageMoreDetailsText => 'আরও বিস্তারিত জানতে নিকটস্থ দৃষ্টি কেন্দ্রে যান। আমাদের দৃষ্টি প্রযুক্তিবিদের সাথে কথা বলতে টোল-ফ্রি নম্বরে কল করুন।';

  @override
  String get assessmentReportButton => 'চোখের মূল্যায়ন প্রতিবেদন';

  @override
  String get notificationsTitle => 'বিজ্ঞপ্তি';

  @override
  String get notificationsNotAvailable => 'কোনো বিজ্ঞপ্তি নেই';

  @override
  String get servicesPatientCare => 'রোগী যত্ন';

  @override
  String get reportAssessmentId => 'ମୂଲ୍ୟାଙ୍କନ ଆଇଡି';

  @override
  String get reportDateAndTime => 'ତାରିଖ ଓ ସମୟ';

  @override
  String get reportSeverityAbnormal => 'ଅସାଧାରଣ ପରୀକ୍ଷା';

  @override
  String get reportSeverityHigh => 'ପ୍ରଥମ ପରୀକ୍ଷା';

  @override
  String get reportSeverityLow => 'ନିୟମିତ ପରୀକ୍ଷା';

  @override
  String get reportDataUnavailable => 'ଡାଟା ଅନୁପଲବ୍ଧ';

  @override
  String get reportTumblingTitle => 'ଏକ୍ୟୁଟ ଟେଷ୍ଟ - ଟମ୍ବଲିଂ ଈ';

  @override
  String get rightCornea => 'ଡାହାଣ ଚକ୍ଷୁ ବିକଲ୍ପ';

  @override
  String get leftCornea => 'ବାମ ଚକ୍ଷୁ ବିକଲ୍ପ';

  @override
  String get myProfileGeneralInfo => 'ସାଧାରଣ ସୂଚନା';

  @override
  String get myProfileAge => 'ବୟସ';

  @override
  String get myProfileAddress => 'ଠିକଣା';

  @override
  String get myProfileLine => 'ଲାଇନ୍';

  @override
  String get myProfileCity => 'ଶହର';

  @override
  String get myProfileDistrict => 'ଜିଲ୍ଲା';

  @override
  String get myProfileState => 'ରାଜ୍ୟ';

  @override
  String get myProfilePinCode => 'ପିନ୍ କୋଡ୍';

  @override
  String get submitButton => 'জমা দিন';

  @override
  String get swipeGestureError => 'ভুল স্বাইপ! অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get swipeGestureCardText => 'প্রতীকের দিকে স্বাইপ করুন';

  @override
  String get assessmentResultCardAssessmentQuestions => 'মূল্যায়ন\nপ্রশ্ন';

  @override
  String get assessmentResultCardAcuityTest => 'দৃষ্টি\nপরীক্ষা';

  @override
  String get assessmentResultCardEyeScan => 'নেত্র\nস্ক্যান';

  @override
  String get viewReportButton => 'রিপোর্ট দেখুন';

  @override
  String get updateButton => 'আপডেট করুন';

  @override
  String get assessmentCardUrgentConsult => 'জরুরি পরামর্শ';

  @override
  String get assessmentCardRoutineCheckUp => 'নিয়মিত পরিদর্শন';

  @override
  String get assessmentCardEarlyCheckUp => 'অগ্রিম পরিদর্শন';

  @override
  String get testAgainButton => 'আবার পরীক্ষা করুন';

  @override
  String get homeButton => 'হোম';

  @override
  String get homeTriageCardTitle => 'আমাদের চোখ সবচেয়ে মূল্যবান সম্পদি।';

  @override
  String get homeTriageCardDescription => 'চোখের সমস্যাগুলি প্রতিরোধ করতে সময়ের মধ্যেই পরীক্ষা করুন।';

  @override
  String get homeTriageCardTest => 'চোখ পরীক্ষা শুরু করুন';

  @override
  String get homeHelplineCardDescrition => 'অপ্রত্যাশিত দৃষ্টি হারালে এই জরুরী হেল্পলাইনটি কল করুন';

  @override
  String get inviteCardTitle => 'অন্যদেরকে আমন্ত্রণ জানান';

  @override
  String get inviteCardDescription => '5 জন বন্ধু এবং পরিবারের সদস্যদের আমন্ত্রণ জানান যাতে তারা তাদের চোখ মূল্যায়ন করতে পারে এবং ভবিষ্যতে চোখ সমস্যাগুলি প্রতিরোধ করতে পারে।';

  @override
  String get inviteCardInvitation => 'এখনই আমন্ত্রণ জানান';

  @override
  String get partnerCardTitle => 'সহযোগী';

  @override
  String get languageSelection => 'ভাষা নির্বাচন করুন';

  @override
  String get profileTitle => 'প্রোফাইল';

  @override
  String get eyeAssessmentEnterLabel => 'এখানে লিখুন';

  @override
  String get profilePageAddressDetails => 'ঠিকানা বিবরণ';

  @override
  String get profilePaeCheckReports => 'আপনার রিপোর্টগুলি পরীক্ষা করুন';

  @override
  String get bottomNavItemEyeTest => 'চোখের পরীক্ষা';

  @override
  String get bottomNavItemAppointment => 'অ্যাপয়েন্টমেন্ট';

  @override
  String get memberSelection => 'সদস্য নির্বাচন করুন';

  @override
  String get triageAlerDialogBoxTitle => 'পুনরায় করার জন্য ধাপগুলি নির্বাচন করুন';

  @override
  String get scannerTitle => 'স্ক্যানার';

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
