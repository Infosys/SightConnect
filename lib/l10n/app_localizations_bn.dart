import 'app_localizations.dart';

/// The translations for Bengali (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} এর মধ্যে ${total}';
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
  String get chatBotDefaultQuerySuggestions => 'চোখের মূল্যায়ন শুরু করুন। সাধারণ চোখের সমস্যা। আরও ভাল দৃষ্টিশক্তির জন্য টিপস';

  @override
  String get chatBotWelcomeMessage => 'হাই, আজ আমি কিভাবে আপনাকে সাহায্য করতে পারি?';

  @override
  String get poweredByText => 'দ্বারা চালিত';

  @override
  String get digitalHealthCard => 'ডিজিটাল জনস্বাস্থ্য স্ট্যাক';

  @override
  String get inviteNowText => 'এখনই আমন্ত্রণ জানান';

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
}
