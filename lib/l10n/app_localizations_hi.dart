import 'app_localizations.dart';

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} में से ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'अरे! मैं अपनी आँखों की देखभाल करने के लिए साइटकनेक्ट ऐप का उपयोग कर रहा हूँ, और आपको भी करना चाहिए! अपनी आँखों का मूल्यांकन करें और साइटकनेक्ट ऐप से समय पर उपचार प्राप्त करें। यह एक अनूठा ऐप है जो आपके हाथों में निवारक आईकेयर लाता है। जब आप साइन अप करते हैं तो मेरे रेफरल कोड का उपयोग करें। इसे अभी प्राप्त करेंः https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'कृपया जिस पर भेजा गया ओ. टी. पी. दर्ज करें ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'फिर से भेजें ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} रोगी के पास एक नियुक्ति है';
  }

  @override
  String vgEmptyResults(String type) {
    return 'वर्तमान में कोई प्रकार नहीं है। जोड़ें ${type} पर टैप करें';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} आई. डी., नाम से खोजें';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'आपातकालीन स्थिति में, कृपया ${tollFreeNumber} पर कॉल करें।';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'आपको ${referredBy} द्वारा संदर्भित किया गया है';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'कृपया सुनिश्चित करें कि कैमरा आपके चेहरे से ${distance} सेमी दूर है।';
  }

  @override
  String get questionnaireTitle => 'नेत्र आकलन प्रश्नावली';

  @override
  String get questionnaireExitDialog => 'इन प्रश्नों के उत्तर देने से आपकी आँखों की समस्याओं की पहचान में मदद मिलेगी। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get visualAcuityTitle => 'दृश्य तीक्ष्णता परीक्षण';

  @override
  String get visualAcuityDescription => 'दृश्य तीक्ष्णता परीक्षण एक नेत्र परीक्षण है जो यह जाँचता है कि आप एक विशिष्ट दूरी से किसी अक्षर या प्रतीक का विवरण कितनी अच्छी तरह देखते हैं। यह त्वरित परीक्षण अभी करें!';

  @override
  String get visualAcuityHowToPerform => 'दृश्य तीक्ष्णता परीक्षण कैसे करें?';

  @override
  String get visualAcuityViewStepsToPerform => 'दृश्य तीक्ष्णता परीक्षण करने की प्रक्रिया देखें';

  @override
  String get visualAcuityCompletionDialog => 'दृश्य तीक्ष्णता परीक्षण दोनों आँखों के लिए पूरा हो गया है। आगे आपको अपनी आंखों की तस्वीरें खींचनी होंगी।';

  @override
  String get visualAcuityExitDialog => 'दृश्य तीक्ष्णता परीक्षण आपकी आँख की समस्या के बारे में समझने के लिए एक महत्वपूर्ण परीक्षण है। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get swipeGestureTab => 'स्वाइप जेस्चर';

  @override
  String get voiceAssistTab => 'आवाज सहायक';

  @override
  String get distanceString => 'दूरी';

  @override
  String get leftEyeString => 'बाईं आँख';

  @override
  String get rightEyeString => 'दाहिनी आँख';

  @override
  String get bothEyesString => 'दोनों आँखें';

  @override
  String get visualAcuityLeftEyeHeader => 'परीक्षण 2 - बाईं आँख';

  @override
  String get visualAcuityLeftEyeInstructions => 'बिना पलक पर दबाव डाले, अपने हाथ से दाहिनी आँख को ढ़क लें। यदि आप चश्मा पहने हैं, तो चश्मे पर अपना हाथ रखें।';

  @override
  String get visualAcuityRightEyeHeader => 'परीक्षण 1 - दाहिनी आँख';

  @override
  String get visualAcuityRightEyeInstructions => 'बिना पलक पर दबाव डाले, अपने हाथ से बाईं आँख को ढ़क लें। यदि आप चश्मा पहने हैं, तो चश्मे पर अपना हाथ रखें।';

  @override
  String get visualAcuityBothEyeHeader => 'परीक्षण 3 - दोनों आँखें';

  @override
  String get visualAcuityBothEyeInstructions => 'किसी भी आँख को ढ़कने का प्रयास न करें और आगे दिखाए गए प्रतीकों को दोनों आँखों से देखें।';

  @override
  String get overlayHeaderDirection => 'दिशा';

  @override
  String get overlayDescription => 'प्रत्येक चिन्ह की दिशा को इस प्रकार समझा जा सकता है।';

  @override
  String get overlaySymbolDirectionText => 'चिन्ह की दिशा : ';

  @override
  String get directionDown => 'नीचे';

  @override
  String get directionUp => 'ऊपर';

  @override
  String get directionLeft => 'बाएं';

  @override
  String get directionRight => 'दाएं';

  @override
  String get dontShowAgainString => 'दोबारा मत दिखाना';

  @override
  String get visualAcuityCarouselTitle => 'दृश्य तीक्ष्णता परीक्षण करने की प्रक्रिया देखें';

  @override
  String get eyeScanTitle => 'नेत्र स्कैन';

  @override
  String get eyeScanDescription => 'आप बहुत करीब हैं! सिर्फ एक परीक्षण बाकी है। अब अपनी आँखों की फ़ोटो लें।';

  @override
  String get eyeScanHowToPerform => 'अपनी आँखों को कैसे स्कैन करें?';

  @override
  String get eyeScanViewStepsToPerform => 'आँखों को स्कैन करने की प्रक्रिया देखें';

  @override
  String get eyeScanExitDialog => 'नेत्र स्कैन आपकी आँख की समस्या के बारे में और जानने में मदद करता है। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get captureRightEyeString => 'दाहिनी आँख को कैप्चर करें';

  @override
  String get captureLeftEyeString => 'बाईं आँख को कैप्चर करें';

  @override
  String get skipButton => 'छोड़ें';

  @override
  String get startTestText => 'परीक्षण शुरू करें';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get startButton => 'शुरू करें';

  @override
  String get nextButton => 'अगला';

  @override
  String get proceedButton => 'आगे बढ़ें';

  @override
  String get yesButton => 'हाँ';

  @override
  String get noButton => 'नहीं';

  @override
  String get exitButton => 'बाहर निकलें';

  @override
  String get okButton => 'ठीक है';

  @override
  String get knowMoreButton => 'और जानें';

  @override
  String get seeAllButton => 'सभी देखें';

  @override
  String get tryAgainButton => 'फिर कोशिश करें';

  @override
  String get shareNowButton => 'साझा करें';

  @override
  String get retryButton => 'फिर कोशिश करें';

  @override
  String get homeCarousal1Title => '40 वर्ष और उससे अधिक आयु के वयस्कों में मोतियाबिंद के प्रसार और उससे जुड़े कारक के बारे में जानें';

  @override
  String get homeCarousal1Description => 'मोतियाबिंद के प्रसार के सैम्पलिंग प्रक्रिया का तात्कालिक प्रस्तुतिकरण और इससे जुड़े कारकों का विस्तारपूर्ण विवरण';

  @override
  String get homeCarousal2Title => '7 आँख समस्याएँ जिन्हें आप नजरअंदाज नहीं कर सकते!';

  @override
  String get homeCarousal2Description => '\r\n\r\n7 आँख समस्याएँ जिनका परीक्षण करवाना आवश्यक है:\r\n\r\n \r\n\r\n• आँख का लाल होना\r\n\r\n• आँखों में पानी आना\r\n\r\n• आँखों पर सफेद दाग';

  @override
  String get homeCarousal3Title => 'आँखों की समस्याएँ। ऐसी कई हैं जो आप नहीं देख सकते';

  @override
  String get homeCarousal3Description => 'लेकिन दृष्टि विशेषज्ञ देख सकते हैं।\r\n\r\nआँखों की समस्याओं को पहचानें\r\n\r\nऔर बाद में समस्याओं से बचने के लिए समय पर उपचार करें';

  @override
  String get myConnectionsTitle => 'मेरे सदस्य';

  @override
  String get myConnectionsAddMember => 'सदस्य जोड़ें';

  @override
  String get myConnectionsServiceNotAvailable => 'सेवा उपलब्ध नहीं है';

  @override
  String get myConnectionsAdd => 'जोड़ें';

  @override
  String get recentServicesTitle => 'मेरी हालिया सेवाएँ';

  @override
  String get recentServicesEyeAssessment => 'नेत्र आँकलन ';

  @override
  String get recentServicesVisualAcuityTest => 'दृश्य तीक्ष्णता परीक्षण';

  @override
  String get nearbyVisionCentersTitle => 'नजदीकी दृष्टि केंद्र';

  @override
  String get nearbyVisionCentersNotFound => 'कोई दृष्टि केंद्र नहीं मिला';

  @override
  String get tollFreeNumber => 'टोल फ्री नंबर';

  @override
  String get appDrawerTitle => 'मेनू';

  @override
  String get appDrawerHome => 'होम';

  @override
  String get appDrawerLanguageSelection => 'भाषा चयन';

  @override
  String get appDrawerAccessibility => 'उपलब्धता सेटिंग्स';

  @override
  String get appDrawerMyProfile => 'मेरी प्रोफ़ाइल';

  @override
  String get appDrawerAssessmentsAndTests => 'आँकलन और परीक्षण';

  @override
  String get appDrawerScanner => 'क्यूआर कोड स्कैनर';

  @override
  String get appDrawerAboutUs => 'हमारे बारे में';

  @override
  String get appDrawerPrivacyPolicy => 'गोपनीयता एवं डेटा नीति';

  @override
  String get appDrawerHelpAndSupport => 'मदद और सहायता ';

  @override
  String get appDrawerSignOut => 'साइन आउट';

  @override
  String get aboutUsDescription => 'साइटकनेक्ट एक उपयोग में सरल नेत्र सेवा ऐप है जो स्व-आँकलन और कॉल के माध्यम से परामर्श में मदद करता है।\r\n\r\n\r\n\r\nहमारे मिशन के केंद्र में सभी के लिए नेत्र देखभाल को सुलभ बनाने की प्रतिबद्धता है। ऐप को इस प्रकार डिज़ाइन किया गया है कि उम्र, तकनीकी पृष्ठभूमि और सामाजिक या आर्थिक पृष्ठभूमि के बावजूद सभी वर्ग के लोगों को पहुंची जा सके। ऐप को अंग्रेजी और अन्य स्थानीय भाषाओं में उपलब्ध किया गया है। यह उपयोगकर्ताओं को अपनी आँखों का स्व-आँकलन करने में मदद करता है और समय पर उपचार सलाह प्राप्त करने में मदद करता है। ऐप अपने उपयोगकर्ताओं को व्यक्तिगत नेत्र देखभाल के समाधान प्रदान करने के लिए नवीनतम तकनीक और उपकरणों का उपयोग करता है। यह उनके जीवन को आसान बनाने के लिए विभिन्न सुविधाओं से परिपूर्ण  है।';

  @override
  String get aboutUsFeaturesTitle => 'विशेषताएँ';

  @override
  String get aboutUsFeaturesDescription => 'इन-ऐप आँखों की जाँच: यह ऐप यूजर्स को कुछ सवालों के जवाब देकर अपनी आँखों का आकलन करने और अगले चरणों तथा उपयुक्त डॉक्टर के बारे में सलाह लेने की सुविधा देता है। इससे यूजर्स के दोस्त और परिवार भी लाभान्वित हो सकते हैं।\r\n\r\n\r\n\r\nअपॉइंटमेंट बुकिंग: यूजर्स डॉक्टरों के साथ ऑनलाइन टेलीकंसल्टेशन और इन-क्लिनिक विज़िट बुक कर सकते हैं ताकि उनकी आँखों का निदान किया जा सके।\r\n\r\n\r\n\r\nआईवीआर कॉल सेवाएँ: हमारी आईवीआर कॉल सेवाएँ अंग्रेज़ी और स्थानीय भाषाओं में उपलब्ध हैं और बेसिक फ़ीचर वाले फ़ोन का उपयोग करने वाले यूजर्स को भी पूरा करती हैं। यूजर्स किसी आपात स्थिति में या किसी भी आँख से संबंधित समस्या के लिए तत्काल सहायता लेने के लिए हमारे नेत्र देखभाल पेशेवरों को कॉल कर सकते हैं। वे अपॉइंटमेंट बुक करने या कोई और स्पष्टीकरण लेने के लिए भी कॉल कर सकते हैं।\r\n\r\n\r\n\r\nनिकटवर्ती क्लीनिक: यूजर्स अपने आस-पास की नेत्र देखभाल क्लीनिकों का पता लगा सकते हैं।\r\n\r\n\r\n\r\nप्रेस्क्रिप्शन और रिपोर्ट्स: यूजर्स किसी भी परेशानी के बिना एक ही जगह से अपने सभी प्रिस्क्रिप्शन और रिपोर्ट्स देख सकते हैं।\r\n\r\n\r\n\r\nआँखों के कैंप: यूजर्स अपने दोस्तों और परिवार के सदस्यों की आँखों की जाँच मुफ्त में करवाने के लिए नज़दीकी आँखों के कैंपों के बारे में जानकारी प्राप्त कर सकते हैं।\r\n\r\n\r\n\r\nरिमाइंडर और अलर्ट: यूजर्स को आगामी अपॉइंटमेंट, दवाइयाँ, रिपोर्ट आदि से संबंधित समय पर अलर्ट और रिमाइंडर मिल सकते हैं।\r\n\r\n\r\n\r\nशेयरिंग: यूजर्स इस ऐप और ऐप के भीतर दी गई अन्य उपयोगी जानकारी को अपने दोस्तों और परिवार के सदस्यों के साथ शेयर कर सकते हैं।';

  @override
  String get aboutUsConclusion => 'ऐप को उपयोगकर्ता समुदाय को बेहतर सेवा प्रदान करने के लिए महत्वपूर्ण नेत्र देखभाल पेशेवरों की मदद से विकसित किया गया है। हमारे साथ एक बेहतर, स्वस्थ दुनिया बनाने के हमारे मिशन में शामिल हों। साइटकनेक्ट ऐप को आज ही डाउनलोड करें और साझा करें!';

  @override
  String get privacyPolicyDescription => 'एलवी प्रसाद नेत्र संस्थान, इसकी सहायक कंपनियों, सहयोगी और संबद्ध कंपनियों (संकल्पित रूप से \'एलवीपीईआई\', \'हम\') आपके व्यक्तिगत डेटा को आपके क्षेत्र के कानूनों के अनुसार प्रसंस्कृत करने के प्रति प्रतिबद्ध हैं। हम यहां आपको व्यक्तिगत डेटा की प्रसंस्कृति के बारे में निम्नलिखित जानकारी देते हैं।';

  @override
  String get privacyPolicyPersonalDataTitle => 'व्यक्तिगत डेटा तत्व जुटाए जाने/प्रसंस्कृत किए जाने वाले:';

  @override
  String get privacyPolicyPersonalDataDescription => 'आप और आपके संबंधों के व्यक्तिगत डेटा जैसे (इनमें से कुछ डेटा वैकल्पिक हो सकते हैं) मोबाइल नंबर, नाम, जन्म तिथि, लिंग (पुरुष/महिला), पता (पिन कोड), पेशेंट आईडी, कनेक्शन, आँख का मूल्यांकन प्रश्नोत्तरी के उत्तर, आँख का मूल्यांकन रिपोर्ट, आँख की छवियाँ, आपकी आँख की छवि के खिलाफ चिन्हित लक्षण, फोटोग्राफ, पता विवरण जैसे पता, जिला नाम (जिला कोड सहित), राज्य नाम (राज्य कोड सहित), उप-जिला नाम, गाँव का नाम, शहर का नाम, ईमेल पता, उपनाम, मध्य नाम, रक्त समूह, ऊंचाई, वजन, पेशेवर, आभा विवरण (जैसा कि आपके द्वारा प्रदान किया जाता है), आपकी ऐप की अनुमतियों के आधार पर कैमरा, जीपीएस स्थान, गैलरी के उपयोग की इजाज़त, पूरी नेटवर्क पहुंच, नेटवर्क कनेक्शन देखने की इजाज़त, डिवाइस की  जानकारी।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'प्रसंस्कृति का उद्देश्य:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'आपको अपने और आपके संबंधों के लिए ऑनलाइन नेत्र संबंधित स्वास्थ्य जांच के लिए हमारे ऐप्लिकेशन और इसकी विशेषताओं तक पहुंचने की सुविधा प्रदान करने के लिए (जैसा कि आप द्वारा प्रदान किया जाता है)| किसी भी आँख संबंधित बीमारी/स्वास्थ्य कठिनाइयों के मामले में लागू होने पर आपको एलवीपीईआई के तहत दृष्टि तकनीकियों, दृष्टि चिकित्सकों से संपर्क करने की सुविधा प्रदान करने के लिए।| आपके स्वास्थ्य परामर्श और निदान के हिस्से के रूप में किसी भी आँख स्वास्थ्य से संबंधित डेटा (रिपोर्ट आदि सहित) प्रदान करने और आपको या आपके संबंधों के स्वास्थ्य से संबंधित चिंताओं के हिस्से के रूप में संपर्क करने के लिए।| आपके व्यक्तिगत डेटा को हमारे अधिकृत एलवीपीईआई दृष्टि चिकित्सकों/डॉक्टरों के साथ साझा करने के लिए, जो उपचार के लिए एलवीपीईआई डॉक्टरों से संपर्क करने में असमर्थ हैं या सुझाव देने के लिए गाँव के मुख्य/मेयर आदि के साथ (जहां आपके जीपीएस स्थान के आधार पर लागू हो सकता है) डॉक्टरों को सूचित करने के बारे में, आँख समस्या की गंभीरता के आधार पर| आपके पास किसी भी आँख संबंधित समस्या के मामले में संपर्क करने के लिए| आपके पास एलवीपीईआई के साथ संबंधित आँख क्लिनिक/अस्पतालों की सूची प्रदान करने के लिए| बिना किसी पहचानकर्ता के सहित जानकारी जैसे आँख की छवि, आँख की छवि के संबंधित लक्षण, आयु, रक्त समूह, स्थान आदि का उपयोग करने के लिए हमारे मशीन लर्निंग या कृत्रिम बुद्धिमत्ता (आर्टिफिशियल इंटेलिजेंस) मॉडल्स को अच्छा निदान प्रदान करने के उद्देश्य से| आँख स्वास्थ्य के संबंध में जागरूकता बनाने के लिए, स्मरण, संचार, अभियांत्रिक मेलर भेजने के लिए, आँख स्वास्थ्य के लिए।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'डेटा प्राप्तकर्ता/ उपयोग करने योग्य:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'आपके द्वारा साझा की गई व्यक्तिगत डेटा (संवेदनशील व्यक्तिगत डेटा सहित ) को एलवीपीईआई के अधिकृत कर्मचारियों जैसे डॉक्टर/दृष्टि चिकित्सक, दृष्टि तकनीशियन, दृष्टि गार्जियन, एलवीपीईआई के प्रतिनिधियों, आंतरिक/बाहरी लेखा परीक्षको को , सरकारी अधिकारियों के साथ जहां लागू हो सकता है, और हमारे अधिकृत सेवा प्रदाता इंफोसिस के अनुसार उपयोग करने योग्य होगा।';

  @override
  String get privacyPolicyDataTransferTitle => 'डेटा स्थानांतरण और संग्रहण:';

  @override
  String get privacyPolicyDataTransferDescription => 'आपके द्वारा साझा किये गए व्यक्तिगत डेटा को हमारे आंतरिक सर्वरों पर, हमारे अधिकृत सेवा प्रदाता के सर्वर पर भारत में संग्रहित किया जाएगा।';

  @override
  String get privacyPolicyDataSecurityTitle => 'डेटा सुरक्षा:';

  @override
  String get privacyPolicyDataSecurityDescription => 'एलवीपीईआई आपके व्यक्तिगत डेटा को सुरक्षित रखने के उचित और उपयुक्त सुरक्षा अभ्यास और प्रक्रियाओं का पालन करता है, जिसमें प्रशासनिक, भौतिक सुरक्षा, और तकनीकी नियंत्रण शामिल है।';

  @override
  String get privacyPolicyDataRetentionTitle => 'डेटा संचिति:';

  @override
  String get privacyPolicyDataRetentionDescription => 'व्यक्तिगत डेटा जो कानूनी और व्यवसायिक आवश्यकताओं के रूप में रखने की आवश्यकता नहीं होती है, वह एक सुरक्षित तरीके से निष्क्रिय कर दिया जाएगा।';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'डेटा प्रकरण के अधिकार:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'आपको किसी भी समय अपनी व्यक्तिगत जानकारी को हासिल करने और सुधारने का अधिकार है। किसी भी अनुरोध, समस्या, चिंता या पूछताछ के मामले में आप एलवी प्रसाद कार्यालय से ईमेल भेजकर <LVPEI को डेटा गुप्तिदान के लिए जेनेरिक मेल आईडी प्रदान करने के लिए> संपर्क कर सकते हैं।';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'प्रतिष्ठान के अधिकार:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'जब हम आपके सहमति के आधार पर आपके व्यक्तिगत डेटा को प्रसंस्कृत करते हैं, तो आप भविष्य मैं लागू सहमति को अनुकूलित कर सकते हैं। आपके सहमति को वापस लेने के लिए आप <LVPEI को डेटा गुप्तिदान के लिए जेनेरिक मेल आईडी प्रदान करने के लिए> ईमेल भेज सकते हैं। यह आपके सहमति के बाद किसी भी प्रसंस्कृति कार्य की कानूनता को प्रभावित नहीं करेगा।';

  @override
  String get privacyPolicyAcknowledgement => 'नीचे दिए गए बटन पर क्लिक करके, आप यह स्वीकार करते हैं और समझते हैं कि आपके व्यक्तिगत डेटा, संवेदनशील व्यक्तिगत डेटा सहित उपरोक्त उल्लिखित तरीके से जुटाया और प्रसंस्कृत किया जा सकता है, और इसके लिए उपरोक्त उद्देश्यों के लिए सहमति देते हैं। आप समझते हैं कि आपके द्वारा साझा किए जाने वाले किसी भी व्यक्तिगत डेटा, संवेदनशील व्यक्तिगत डेटा सहित  (आपके अलावा) को उनसे उपयुक्त सहमति प्राप्त करने के बाद ही किया जाता है। आप समझते हैं कि आप उन व्यक्तिगत डेटा (संवेदनशील व्यक्तिगत डेटा सहित ) को साझा नहीं करेंगे जो उपरोक्त उद्देश्यों के लिए आवश्यक नहीं है। आप समझते हैं कि जब आप किसी नाबालिग के व्यक्तिगत डेटा को उनके माता/पिता या कानूनी पालक के रूप में साझा कर रहे हैं, तो आप उनके डेटा के जुटाया और प्रसंस्कृत किया जाने की सहमति देते हैं, जैसा कि उपरोक्त में उल्लिखित है।';

  @override
  String get privacyPolicyBottomAppBarLabel => 'गोपनीयता नीति स्वीकृत';

  @override
  String get helpAndSupportReachTitle => 'हमसे संपर्क करें';

  @override
  String get assessmentAndTestsSubtitle => 'अब तक किए गए मूल्यांकन का त्वरित दृश्यण।';

  @override
  String get assessmentAndTestsReportsNotFound => 'कोई रिपोर्ट उपलब्ध नहीं है';

  @override
  String get eyeAssessmentTitle => 'नेत्र मूल्यांकन';

  @override
  String get eyeAssessmentSubtitle => 'कुछ चरणों में अपने, अपने दोस्तों और परिवार के सदस्यों के नेत्र संकटों का मूल्यांकन करें। आपसे आपके नेत्र संकटों से संबंधित लक्षणों को समझने के लिए कुछ सवाल पूछे जाएंगे और फिर कुछ दृष्टि परीक्षण होंगे।';

  @override
  String get eyeAssessmentGetMemberLabel => 'सदस्य बदलें';

  @override
  String get eyeAssessmentProceedButton => 'आगे बढ़ें';

  @override
  String get eyeAssessmentBrightnessLabel => 'ब्राइटनेस 80% पर सेट किया गया है';

  @override
  String get eyeAssessmentBrightnessError => 'कृपया ब्राइटनेस को मैन्युअल रूप से 80% पर सेट करें';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'सवाल अब तक समर्थित नहीं है';

  @override
  String get eyeAssessmentPopUpHeading => 'मूल्यांकन';

  @override
  String get eyeAssessmentPopUpBody => 'क्या आपके कोई दृष्टि संबंधित समस्या है?';

  @override
  String get eyeAssessmentPopUpYesButton => 'हाँ';

  @override
  String get eyeAssessmentPopUpNoButton => 'नहीं';

  @override
  String get visualAcuityTestInstructionOne => 'एक आरामदायक और अच्छी रौशनी वाले स्थान पर बैठें। आपको ब्राइटनेस में एक अचानक बदलाव महसूस हो सकता है, चिंता न करें, स्क्रीन को ऑटो-ब्राइटनेस पर सेट किया गया है ताकि आपको सर्वोत्तम परिणाम प्रदान किया जा सके';

  @override
  String get visualAcuityTestInstructionTwo => 'सुनिश्चित करें कि आप डिवाइस को आंख के स्तर पर पकड़ रहे हैं। यदि आप चश्मा या कॉन्टैक्ट लेंस पहनते हैं, तो उन्हें लगाए रखें';

  @override
  String get visualAcuityTestInstructionThree => 'अपने आप को स्क्रीन से 40 सेमी की दूरी पर रखें। दूरी परीक्षण स्क्रीन में दिखाई जाएगी.';

  @override
  String get visualAcuityTestInstructionFour => 'यदि आप चश्मा पहनकर परीक्षण कर रहे हैं, तो एक नेत्र को आपके चश्मे के ऊपर अपने हाथ से ढ़क लें जब केवल एक नेत्र का परीक्षण होता है।';

  @override
  String get skipAndProceedButton => 'छोड़ें और स्कैन करने के लिए आगे बढ़ें';

  @override
  String get proceedToScanButton => 'स्कैन करने के लिए आगे बढ़ें';

  @override
  String get eyeAssessmentSteps => 'चरण';

  @override
  String get eyeAssessmentStepOne => 'पहला चरण - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentStepTwo => 'दूसरा चरण - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentStepThree => 'तीसरा चरण - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentOngoing => 'जारी है';

  @override
  String get eyeAssessmentCompleted => 'पूरा हुआ';

  @override
  String get eyeAssessmentPending => 'बकाया है';

  @override
  String get eyeAssessmentResults => 'मूल्यांकन परिणाम';

  @override
  String get eyeAssessmentCompleteSteps => 'परिणाम देखने के लिए सभी चरण पूरे करें';

  @override
  String get eyeAssessmentToolTip => 'कृपया सुनिश्चित करें कि फ्लैश बंद है और ब्राइटनेस 80% पर सेट है';

  @override
  String get eyeScanInstructionOne => 'चेहरे को फ्रेम पर ठीक से रखकर कैमरा पकड़ें।';

  @override
  String get eyeScanInstructionTwo => 'अपने फ़ोन के पिछले कैमरे का उपयोग करके आँखों की तस्वीर लें।';

  @override
  String get eyeScanInstructionThree => 'सुनिश्चित करें कि आप फ़्लैश चालू रखते हुए अच्छी रोशनी वाले क्षेत्र में हों।';

  @override
  String get eyeScanInstructionFour => 'बेहतर कैप्चर और स्पष्टता के लिए, किसी और को तस्वीर क्लिक करने के लिए कहें।';

  @override
  String get eyeScanInstructionFive => 'एक आंख को अपने हाथ से ढ़क लें और तस्वीर लेते समय दूसरी आंख के साथ ठीक सीधे देखें।';

  @override
  String get eyeScanInstructionSix => 'तस्वीर लेने से पहले पैनल के अंदर आंख को बीचों बीच करें।';

  @override
  String get eyeScanInstructionSeven => 'फ्लैश बंद होने तक और \'बीप\' ध्वनि से फ़ोटो समाप्त होने तक आंखें खुली रखें।';

  @override
  String get eyeAssessmentNote => 'ध्यान दें: यहां दिखाए गए चित्र केवल संकेत के लिए हैं। हो सकता है कि वे वास्तविक जीवन में वैसे ही न दिखें।';

  @override
  String get agreeButton => 'मैं सहमत हूँ';

  @override
  String get consentPageCheckbox => 'मैं नियम और शर्तों से सहमत हूँ';

  @override
  String get confirmButton => 'पुष्टि करें';

  @override
  String get discardButton => 'खारिज करना';

  @override
  String get imageNotCapturedToastMessage => 'छवि कैप्चर नहीं की गई';

  @override
  String get eyeCaptureCompletionDialogHeading => 'परीक्षण पूरा हुआ';

  @override
  String get eyeCaptureCompletionDialogBody => 'आपने परीक्षण पूरा किया है। कृपया नीचे दिए गए बटन पर क्लिक करके परिणाम देखने के लिए।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'परिणाम देखें';

  @override
  String get eyeCaptureTriageSavedLocally => 'ट्राइएज स्थानीय रूप से सहेजा गया है';

  @override
  String get visualAcuityTestResults => 'दृष्टिकोण परीक्षण परिणाम';

  @override
  String get assessmentResultPageMoreDetailsText => 'अधिक जानकारी के लिए निकटतम दृष्टि केंद्र पर जाएं। हमारे दृष्टि प्राविधिक से बात करने के लिए टोल-फ्री नंबर पर कॉल करें।';

  @override
  String get assessmentReportButton => 'नेत्र मूल्यांकन रिपोर्ट';

  @override
  String get notificationsTitle => 'सूचनाएँ';

  @override
  String get notificationsNotAvailable => 'कोई सूचनाएँ नहीं';

  @override
  String get servicesPatientCare => 'मरीज़ देखभाल';

  @override
  String get reportAssessmentId => 'मूल्यांकन पहचान';

  @override
  String get reportDateAndTime => 'तारीख और समय';

  @override
  String get reportSeverityAbnormal => 'तत्पर जांच';

  @override
  String get reportSeverityHigh => 'जल्दी जांच';

  @override
  String get reportSeverityLow => 'नियमित जांच';

  @override
  String get reportDataUnavailable => 'डेटा उपलब्ध नहीं है';

  @override
  String get reportTumblingTitle => 'एक्यूटी टेस्ट - टम्बलिंग ई';

  @override
  String get rightCornea => 'दाहिनी कॉर्निया';

  @override
  String get leftCornea => 'बाएं कॉर्निया';

  @override
  String get myProfileGeneralInfo => 'सामान्य जानकारी';

  @override
  String get myProfileAge => 'आयु';

  @override
  String get myProfileAddress => 'पता';

  @override
  String get myProfileLine => 'लाइन';

  @override
  String get myProfileCity => 'शहर';

  @override
  String get myProfileDistrict => 'जिला';

  @override
  String get myProfileState => 'राज्य';

  @override
  String get myProfilePinCode => 'पिन कोड';

  @override
  String get submitButton => 'जमा करें';

  @override
  String get swipeGestureError => 'गलत स्वाइप! कृपया पुनः प्रयास करें।';

  @override
  String get swipeGestureCardText => 'चिन्ह की दिशा में स्वाइप करें';

  @override
  String get assessmentResultCardAssessmentQuestions => 'मूल्यांकन\r\n\r\nप्रश्न';

  @override
  String get assessmentResultCardAcuityTest => 'दृष्टिपथ\r\n\r\nपरीक्षण';

  @override
  String get assessmentResultCardEyeScan => 'नेत्र\r\n\r\nस्कैन';

  @override
  String get viewReportButton => 'रिपोर्ट देखें';

  @override
  String get updateButton => 'अपडेट करें';

  @override
  String get assessmentCardUrgentConsult => 'तत्पर परामर्श';

  @override
  String get assessmentCardRoutineCheckUp => 'नियमित जांच';

  @override
  String get assessmentCardEarlyCheckUp => 'पहले से जांच';

  @override
  String get testAgainButton => 'फिर से परीक्षण करें';

  @override
  String get homeButton => 'होम';

  @override
  String get homeTriageCardTitle => 'हमारी आंखें सबसे मूल्यवान संपत्ति हैं।';

  @override
  String get homeTriageCardDescription => 'आंखों की समस्याओं को रोकने के लिए समय पर जांच करवाएं।';

  @override
  String get homeTriageCardTest => 'आंख परीक्षा शुरू करें';

  @override
  String get homeHelplineCardDescrition => 'अचानक दृष्टि के हानि के मामले में, इस आपातकालीन हेल्पलाइन पर कॉल करें';

  @override
  String get inviteCardTitle => 'दूसरों को आमंत्रित करें';

  @override
  String get inviteCardDescription => '5 दोस्तों और परिवार के सदस्यों को आमंत्रित करें ताकि उनकी आंखों की मूल्यांकन किया जा सके और भविष्य में आंख संबंधी समस्याओं को रोक सकें।';

  @override
  String get inviteCardInvitation => 'अभी आमंत्रित करें';

  @override
  String get partnerCardTitle => 'साझेदार';

  @override
  String get languageSelection => 'भाषा चुने';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get eyeAssessmentEnterLabel => 'यहाँ से प्रवेश करें';

  @override
  String get profilePageAddressDetails => 'पते का विवरण';

  @override
  String get profilePaeCheckReports => 'अपनी रिपोर्ट जांचें';

  @override
  String get bottomNavItemEyeTest => 'नेत्र परीक्षण';

  @override
  String get bottomNavItemAppointment => 'परामर्श';

  @override
  String get memberSelection => 'सदस्य का चयन करें';

  @override
  String get triageAlerDialogBoxTitle => 'पुनः करने के चरण चुनें';

  @override
  String get scannerTitle => 'चित्रान्वीक्षक';

  @override
  String get visualAcuityTestDistanceInstruction => 'कैमरे को आंख से 40 सेमी दूर रखें।';

  @override
  String get somethingWentWrong => 'कुछ गलत हो गया।';

  @override
  String get triageUpdatedSuccessfully => 'ट्राइएज सफलतापूर्वक अपडेट किया गया.';

  @override
  String get noPreviewAvailable => 'कोई पूर्वावलोकन उपलब्ध नहीं';

  @override
  String get privacyPolicyTitle => 'गोपनीयता एवं डेटा सुरक्षा';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'हम आपके द्वारा प्रदान किए गए व्यक्तिगत डेटा को निम्नलिखित उद्देश्यों के लिए संसाधित करते हैं:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'आप कैमरे के बहुत करीब हैं, कैमरे को आंख से 40 सेमी दूर रखें।';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'आप कैमरे से बहुत दूर हैं, कैमरे को आंख से 40 सेमी दूर रखें।';

  @override
  String get myProfileABHAID => 'आभा आईडी';

  @override
  String get myProfileEmail => 'ईमेल';

  @override
  String get viewHistoryButton => 'इतिहास देखें';

  @override
  String get profilePagePersonalDetails => 'व्यक्तिगत विवरण';

  @override
  String get profilePageDateOfBirth => 'जन्म तिथि';

  @override
  String get profilePageGender => 'लिंग';

  @override
  String get profilePageMobile => 'मोबाइल';

  @override
  String get profilePageHealthCardTitle => 'स्वास्थ्य पत्र';

  @override
  String get appointmentTitle => 'अपॉइंटमेंट';

  @override
  String get appointmentSubtitle => 'सभी अपॉइंटमेंट';

  @override
  String get eyeBoxText => 'कृपया छवि को तब तक समायोजित और स्थिति में रखें जब तक आंखों के चारों ओर हरे रंग के बक्से दिखाई न दें। आंख को पास ले जाएं और सुनिश्चित करें कि बॉक्स का 40% हिस्सा आंख से ढका हो।';

  @override
  String get bottomNavItemServices => 'सेवाएँ';

  @override
  String get smsContent => 'अरे! मैं अपनी आँखों की देखभाल करने के लिए साइटकनेक्ट ऐप का उपयोग कर रहा हूँ, और आपको भी करना चाहिए! अपनी आँखों का मूल्यांकन करें और साइटकनेक्ट ऐप के साथ समय पर उपचार प्राप्त करें। यह एक अनोखा ऐप है जो आपके हाथ में निवारक आईकेयर लाता है। इसे अभी प्राप्त करेंः https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'साइटकनेक्ट ऐप के साथ अपनी आँखों के स्वास्थ्य को प्राथमिकता दें!';

  @override
  String get recentServicesCataractEyeTest => 'मोतियाबिंद नेत्र परीक्षण';

  @override
  String get recentServicesRedEyeTest => 'लाल नेत्र परीक्षण';

  @override
  String get chatBotDefaultQuerySuggestions => 'शुरू करें नेत्र मूल्यांकन | आम नेत्र समस्याएं | बेहतर दृष्टि के लिए सुझाव';

  @override
  String get chatBotWelcomeMessage => 'नमस्ते, आज मैं आपकी कैसे मदद कर सकता हूँ?';

  @override
  String get poweredByText => 'द्वारा संचालित';

  @override
  String get digitalHealthCard => 'डिजिटल सार्वजनिक स्वास्थ्य स्टैक';

  @override
  String get inviteNowText => 'अभी आमंत्रित करें';

  @override
  String get resend => 'फिर से भेजें';

  @override
  String get mobileNumber => 'मोबाइल नंबर';

  @override
  String get loginVerifyMobileNumber => 'अपने मोबाइल नंबर की पुष्टि करें';

  @override
  String get loginEnterMobileNumber => 'कृपया मोबाइल नंबर दर्ज करें';

  @override
  String get loginEnterValidMobileNumber => 'कृपया वैध मोबाइल नंबर दर्ज करें';

  @override
  String get loginUnableToSendOTP => 'इस नंबर पर ओ. टी. पी. भेजने में असमर्थ';

  @override
  String get loginGetOTP => 'ओ. टी. पी. प्राप्त करें';

  @override
  String get loginInvalidOTP => 'अमान्य ओ. टी. पी.';

  @override
  String get loginDidntReceiveOTP => 'ओ. टी. पी. नहीं आया?';

  @override
  String get loginOTPSent => 'सफलतापूर्वक भेजा गया ओ. टी. पी.';

  @override
  String get areYouSure => 'क्या आपको यकीन है?';

  @override
  String get triageExitConfirmation => 'क्या आप परीक्षा से बाहर होना चाहते हैं?';

  @override
  String get triageReportEyeProblems => 'आँखों की समस्याओं की रिपोर्ट करें';

  @override
  String get triageHowToReport => 'आँखों की समस्याओं की रिपोर्ट कैसे करें?';

  @override
  String get triageReportInstructions => 'यदि आपको आँखों से संबंधित समस्याएँ हैं, तो आप उचित मार्गदर्शन प्राप्त करने के लिए यहाँ अपनी समस्याओं का स्वयं घोषणा और उल्लेख कर सकते हैं। आप यहाँ अपने दोस्तों या परिवार के सदस्यों की आँखों की समस्याओं का भी उल्लेख कर सकते हैं और उचित मार्गदर्शन प्राप्त कर सकते हैं। आपको आँखों की समस्या की प्रकृति और गंभीरता को समझने के लिए निम्नलिखित अनुभागों में प्रश्नों का एक समूह पूछा जाएगा। आपको किए जाने वाले परीक्षणों और सभी प्रश्नों के उत्तर देने के बाद अनुसरण करने के लिए कदमों के साथ अनुशंसा और मार्गदर्शन किया जाएगा।';

  @override
  String get assessment => 'मूल्यांकन';

  @override
  String get triageOtherSymptomsQuestion => 'क्या आपके पास कोई अन्य लक्षण हैं?';

  @override
  String get triageEnterSymptoms => 'अपने लक्षण यहाँ दर्ज करें';

  @override
  String get triageEyeAssessmentResults => 'नेत्र मूल्यांकन परिणाम';

  @override
  String get triageTestId => 'टेस्ट आई. डी.';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'नेत्र स्कैन सफलतापूर्वक अद्यतन किया गया';

  @override
  String get triageErrorEyeScanNotUpdated => 'नेत्र स्कैन अद्यतन नहीं किया गया है!';

  @override
  String get triageLeftEyeString => 'बायीं आंख';

  @override
  String get triageRightEyeString => 'दाहिनी आँख';

  @override
  String get vaEyeTest => 'नेत्र परीक्षण';

  @override
  String get instructions => 'निर्देश';

  @override
  String get vaSwipeUp => 'ऊपर स्वाइप करें';

  @override
  String get vaSwipeDown => 'नीचे स्वाइप करें';

  @override
  String get vaSwipeLeft => 'बाएँ स्वाइप करें';

  @override
  String get vaSwipeRight => 'दाहिनी ओर स्वाइप करें';

  @override
  String get vaSwipeGestureError => 'अमान्य स्वाइप इशारा। कृपया फिर से प्रयास करें।';

  @override
  String get permissionNotGranted => 'अनुमति नहीं दी गई।';

  @override
  String get serviceNotAvailable => 'सेवा उपलब्ध नहीं है।';

  @override
  String get vaDistanceToFace => 'आमने-सामने की दूरी';

  @override
  String get vaBringFaceInsideBox => 'बॉक्स के अंदर अपना चेहरा लाएं।';

  @override
  String get startAssessment => 'मूल्यांकन शुरू करें';

  @override
  String get optoAddPatientInfo => 'रोगी जानकारी जोड़ें';

  @override
  String get loggedOutMessage => 'आपको लॉग आउट कर दिया गया है';

  @override
  String get optoLogoutError => 'क्षमा करें, हमें मोबाइल ऐप में लॉगआउट त्रुटि का सामना करना पड़ा।';

  @override
  String get optoLoggingOut => 'लॉग आउट कर रहे हैं...';

  @override
  String get hello => 'नमस्ते।';

  @override
  String get optoGetStarted => 'आइये शुरू करते हैं।';

  @override
  String get optoCompletedTests => 'परीक्षणों को पूरा किया';

  @override
  String get optoThisMonth => 'इस महीने';

  @override
  String get today => 'आज';

  @override
  String get services => 'सेवाएँ';

  @override
  String get optoAssessmentHistory => 'मूल्यांकन इतिहास';

  @override
  String get optoEyeAssessments => 'नेत्र मूल्यांकन';

  @override
  String get feedback => 'फीडबैक';

  @override
  String get optoImproveApp => 'हम चाहेंगे कि आपकी प्रतिक्रिया से हमारे आवेदन में सुधार हो।';

  @override
  String get assessments => 'मूल्यांकन';

  @override
  String get optoPatientAssistance => 'क्या रोगी को सहायता की आवश्यकता थी?';

  @override
  String get optoVisualAcuity => 'दृश्य तीक्ष्णता';

  @override
  String get optoPatientAided => 'क्या रोगी की सहायता की गई थी?';

  @override
  String get optoEyeScan => 'नेत्र स्कैन';

  @override
  String get optoLeaveFeedback => 'कृपया अपनी प्रतिक्रिया नीचे दें';

  @override
  String get optoNoInternet => 'कोई इंटरनेट कनेक्शन नहीं';

  @override
  String get optoCheckInternet => 'कृपया अपने इंटरनेट कनेक्शन की जाँच करें और फिर से प्रयास करें';

  @override
  String get optoSearchPatientId => 'रोगी आईडी खोजें';

  @override
  String get optoRecentAssessments => 'हाल के आकलन';

  @override
  String get optoSelectDateRange => 'कृपया तिथि सीमा चुनें';

  @override
  String get optoDataNotFound => 'इस खोज के लिए डेटा नहीं मिला';

  @override
  String get optoAssessmentReport => 'मूल्यांकन रिपोर्ट';

  @override
  String get optoPID => 'पी. आई. डी.';

  @override
  String get category => 'श्रेणी';

  @override
  String get patientAssessmentAndTest => 'रोगी मूल्यांकन और परीक्षण';

  @override
  String get patientSelfTestReport => 'स्व-परीक्षण रिपोर्ट';

  @override
  String get patientClinicalReport => 'नैदानिक रिपोर्ट';

  @override
  String get patientAppointmentTitle => 'नियुक्ति';

  @override
  String get patientBookAppointment => 'बुक नियुक्ति';

  @override
  String get patientAppointmentSubtitle => 'आपकी नियुक्तियाँ';

  @override
  String get patientTelephoneConsultation => 'टेलीफोन परामर्श';

  @override
  String get patientAddress => 'पता';

  @override
  String get patientReschedule => 'पुनर्निर्धारित करें';

  @override
  String get patientCancel => 'रद्द करें';

  @override
  String get patientPID => 'पी. आई. डी.';

  @override
  String get patientReportID => 'आई. डी. दर्ज करें';

  @override
  String get patientHideDetailedReport => 'विस्तृत रिपोर्ट छुपाएँ';

  @override
  String get patientShowDetailedReport => 'विस्तृत रिपोर्ट दिखाएँ';

  @override
  String get patientEID => 'ई. आई. डी.';

  @override
  String get patientViewHistoryButton => 'इतिहास देखें';

  @override
  String get patientViewReportButton => 'रिपोर्ट देखें';

  @override
  String get patientNoMoreData => 'कोई और डेटा नहीं';

  @override
  String get patientErrorFetchingReport => 'रिपोर्ट लाने में त्रुटि';

  @override
  String get patientTimeline => 'समयरेखा';

  @override
  String get patientRoutineCheckup => 'नियमित जाँच';

  @override
  String get patientAssessmentID => 'मूल्यांकन आई. डी.';

  @override
  String get patientStartDate => 'प्रारंभ तिथि';

  @override
  String get patientIVRAssessment => 'आई. वी. आर. मूल्यांकन';

  @override
  String get patientEarlyConsultationRecommended => 'प्रारंभिक परामर्श की सिफारिश की गई';

  @override
  String get patientCataractEyeReport => 'मोतियाबिंद नेत्र रिपोर्ट';

  @override
  String get patientRedEyeReport => 'रेड आई रिपोर्ट';

  @override
  String get patientScanAgain => 'फिर से स्कैन करें';

  @override
  String get patientStepsToScan => 'रेटिना स्कैनिंग करने के लिए कदम';

  @override
  String get patientProceedToScan => 'स्कैन के लिए आगे बढ़ें';

  @override
  String get patientSkipAndProceedToScan => 'स्किप करें और स्कैन के लिए आगे बढ़ें';

  @override
  String get patientEyeScanner => 'नेत्र स्कैनर';

  @override
  String get patientErrorSelectCamera => 'पहले एक कैमरा चुनें!';

  @override
  String get patientEyeBoxText => 'आई बॉक्स पाठ';

  @override
  String get patientLoggedOut => 'आपको लॉग आउट कर दिया गया है';

  @override
  String get patientLogoutError => 'क्षमा करें, हमें मोबाइल ऐप में लॉगआउट त्रुटि का सामना करना पड़ा।';

  @override
  String get patientUpdateProfile => 'प्रोफाइल अद्यतन करें';

  @override
  String get patientEdit => 'संपादित करें';

  @override
  String get patientProfileNotUpdated => 'प्रोफ़ाइल अद्यतन नहीं की गई है';

  @override
  String get patientProfileUpdated => 'प्रोफ़ाइल अद्यतन की गई';

  @override
  String get patientReportUnavailable => 'रिपोर्ट उपलब्ध नहीं है।';

  @override
  String get patientClinicalReportNotFound => 'नैदानिक रिपोर्ट नहीं मिली';

  @override
  String get patientRID => 'आर. आई. डी.';

  @override
  String get patientUpdateUnavailable => 'अद्यतन इस समय उपलब्ध नहीं है';

  @override
  String get vgAddEvent => 'कार्यक्रम जोड़ें';

  @override
  String get vgUploadingImageAddingEvent => 'छवि अपलोड करना और घटना जोड़ना';

  @override
  String get vgEventTitle => 'कार्यक्रम का शीर्षक';

  @override
  String get vgPleaseEnterEndTime => 'कृपया अंतिम समय दर्ज करें';

  @override
  String get vgShouldNotContainSpecialCharacter => 'इसमें कोई विशेष वर्ण नहीं होना चाहिए।';

  @override
  String get vgEventDescription => 'घटना का विवरण';

  @override
  String get vgAddPatient => 'रोगी जोड़ें';

  @override
  String get vgPatients => 'मरीज।';

  @override
  String get vgDetails => 'विवरण';

  @override
  String get vgTeammates => 'टीम के साथी';

  @override
  String get vgEyeAssessment => 'नेत्र मूल्यांकन';

  @override
  String get vgStart => 'आरंभ करें।';

  @override
  String get vgEyeAssessmentDescription => 'कुछ चरणों में अपनी, अपने दोस्तों और परिवार के सदस्यों की आँखों की समस्याओं का मूल्यांकन करवाएँ। आपको अपनी आँखों की समस्याओं से संबंधित लक्षणों को समझने के लिए प्रश्नों का एक समूह पूछा जाएगा और उसके बाद दृश्य परीक्षण किए जाएंगे।';

  @override
  String get vgLogoutMessage => 'आपको लॉग आउट कर दिया गया है';

  @override
  String get vgLogoutErrorMessage => 'क्षमा करें, हमें मोबाइल ऐप में लॉगआउट त्रुटि का सामना करना पड़ा।';

  @override
  String get vgWelcome => 'स्वागत है।';

  @override
  String get vgServices => 'सेवाएँ';

  @override
  String get vgEvents => 'घटनाएँ';

  @override
  String get vgViewAll => 'सभी देखें';

  @override
  String get vtAssessmentReport => 'मूल्यांकन रिपोर्ट-ई. ए.';

  @override
  String get vtRemarks => 'टिप्पणियां';

  @override
  String get vtNoPatientFound => 'कोई मरीज नहीं मिला';

  @override
  String get vtClose => 'बंद करें';

  @override
  String get vtBack => 'पीछे हटें।';

  @override
  String get vtSubmit => 'जमा करें';

  @override
  String get vtSomethingWentWrong => 'कुछ गड़बड़ हो गई।';

  @override
  String get vtAssessmentClosedSuccessfully => 'मूल्यांकन सफलतापूर्वक बंद हुआ';

  @override
  String get vtEyeScan => 'नेत्र स्कैन';

  @override
  String get vtDashboard => 'डैशबोर्ड';

  @override
  String get vtRegisterPatient => 'रोगी को पंजीकृत करें';

  @override
  String get vtTriage => 'त्रिगुट।';

  @override
  String get vtMarkMyAvailability => 'मेरी उपलब्धता चिह्नित करें';

  @override
  String get vtIVRCallHistory => 'आई. वी. आर. कॉल इतिहास';

  @override
  String get vtMarked => 'चिह्नित किया गया';

  @override
  String get vtPreliminaryAssessment => 'प्रारंभिक मूल्यांकन';

  @override
  String get vtAge => 'आयु.';

  @override
  String get vtGender => 'लिंग';

  @override
  String get vtAddress => 'पता';

  @override
  String get vtProfile => 'प्रोफाइल';

  @override
  String get vtLogoutMessage => 'आपको लॉग आउट कर दिया गया है';

  @override
  String get vtLogoutError => 'क्षमा करें, हमें मोबाइल ऐप में लॉगआउट त्रुटि का सामना करना पड़ा।';

  @override
  String get vtError => 'त्रुटि';

  @override
  String get vtPatient => 'रोगी।';

  @override
  String get vtMobile => 'मोबाइल';

  @override
  String get vtAssessmentID => 'मूल्यांकन आई. डी.';

  @override
  String get vtStatus => 'स्थिति';

  @override
  String get vtTimeline => 'समयरेखा';

  @override
  String get vtCategory => 'श्रेणी';

  @override
  String get vtNoDataFound => 'कोई डेटा नहीं मिला';

  @override
  String get appCameraCapture => 'पकड़ना';

  @override
  String get appCameraRetake => 'री-टेक करें।';

  @override
  String get appCameraUsePhoto => 'तस्वीर का उपयोग करें';

  @override
  String get appCameraCancel => 'रद्द करें';

  @override
  String get appCameraNotFound => 'कैमरा नहीं मिला';

  @override
  String get appCameraException => 'कैमरा अपवाद';

  @override
  String get appCameraProgressMessage => 'लोड किया जा रहा है...';

  @override
  String get internetLostNoConnection => 'कोई इंटरनेट कनेक्शन नहीं';

  @override
  String get internetLostRetry => 'पुनः प्रयास करें।';

  @override
  String get secureJailbreak => 'ऐसा लगता है कि आपका उपकरण जेलब्रोकन है।';

  @override
  String get secureRestrictedAccess => 'सुरक्षा कारणों से, इस ऐप तक पहुंच जेलब्रोकन उपकरणों पर प्रतिबंधित है।';

  @override
  String get secureExitApp => 'ऐप से बाहर निकलें';

  @override
  String get sharedErrorPageIssues => 'हम कुछ समस्याओं का सामना कर रहे हैं। कृपया बाद में फिर से प्रयास करें।';

  @override
  String get appointmentBookingTitle => 'नियुक्ति आरक्षण';

  @override
  String get comingSoon => 'जल्द ही...';

  @override
  String get miniappService => 'सेवा';

  @override
  String get miniappConsole => 'कंसोल';

  @override
  String get roleChooseYourRole => 'अपनी भूमिका चुनें';

  @override
  String get roleNote => 'नोटः आप ऐप के अंदर अपनी भूमिका नहीं बदल सकते।';

  @override
  String get roleConfirm => 'पुष्टि करें';

  @override
  String get roleEyeCareProfessional => 'आई केयर प्रोफेशनल';

  @override
  String get roleVisionTechnician => 'दृष्टि प्रौद्योगिकी';

  @override
  String get rolePatient => 'रोगी';

  @override
  String get roleVisionGuardian => 'विजन गार्डियन';

  @override
  String get vtSearchText => 'रोगी आईडी, मोबाइल नंबर या नाम से खोजें';

  @override
  String get emptyPatientsInfo => 'रोगियों को उनका विवरण देखने के लिए खोजना शुरू करें।';

  @override
  String get vtPersonalDetails => 'व्यक्तिगत विवरण';

  @override
  String get vtHprId => 'एच. पी. आर. आई. डी.';

  @override
  String get vtEmailId => 'ईमेल आईडी';

  @override
  String get vtEducationalQualification => 'शैक्षिक योग्यता';

  @override
  String get vtAddressAndDoorNumber => 'पता और डोर नंबर';

  @override
  String get vtCity => 'शहर';

  @override
  String get vtState => 'राज्य';

  @override
  String get vtPincode => 'पिनकोड';

  @override
  String get vtOrganisationDetails => 'संगठन का विवरण';

  @override
  String get vtOrgId => 'ओ. आर. जी. आई. डी.';

  @override
  String get vtFacilityType => 'सुविधा का प्रकार';

  @override
  String get vtAssessments => 'मूल्यांकन';

  @override
  String get vtNoAssessmentsFound => 'कोई मूल्यांकन नहीं मिला';

  @override
  String get vtAnalytics => 'विश्लेषण';

  @override
  String get vtTotalCases => 'कुल मामले';

  @override
  String get vtIvrCalls => 'आई. वी. आर. कॉल';

  @override
  String get vtClinicVisits => 'चिकित्सालय का दौरा';

  @override
  String get vtCasesClosed => 'बंद हुए मामले';

  @override
  String get vtCritical => 'आलोचनात्मक';

  @override
  String get vtRegular => 'नियमित';

  @override
  String get vtAvgClosureTime => 'औसत. बंद होने का समय';

  @override
  String get vtByAge => 'उम्र के हिसाब से';

  @override
  String get vtByGender => 'लिंग के आधार पर';

  @override
  String get vtSymptoms => 'लक्षण';

  @override
  String get vtSearchByMobileNo => 'मोबाइल नंबर से खोजें।';

  @override
  String get vtInvalidMobileNo => 'अमान्य मोबाइल सं।';

  @override
  String get vtCallLogEmpty => 'कॉल लॉग खाली है.. अभी तक कोई कॉल नहीं किया गया है!!';

  @override
  String get vtNoDataAvailable => 'कोई डेटा उपलब्ध नहीं है';

  @override
  String get vtToday => 'आज';

  @override
  String get vtYesterday => 'पिछले दिन';

  @override
  String get vtIvrCallNotAvailable => 'आई. वी. आर. कॉल उपलब्ध नहीं है. फिर से कोशिश करें!!';

  @override
  String get vtMarkUnavailable => 'अनुपलब्ध के रूप में चिह्नित करें';

  @override
  String get vtStartDate => 'प्रारंभ तिथि';

  @override
  String get vtEndDate => 'समाप्ति तिथि';

  @override
  String get vtStartTime => 'शुरू करने का समय';

  @override
  String get vtEndTime => 'समाप्ति समय';

  @override
  String get vtAddRemarksOptional => 'टिप्पणी जोड़ें (वैकल्पिक)';

  @override
  String get vtSave => 'सहेजें';

  @override
  String get vtCancel => 'रद्द करें';

  @override
  String get vtPleaseEnterRemark => 'कृपया टिप्पणी दर्ज करें';

  @override
  String get vtAssessment => 'मूल्यांकन';

  @override
  String get vtIvrSelections => 'आई. वी. आर. चयन';

  @override
  String get vtLanguageSelection => 'भाषा चयन';

  @override
  String get vtEnglish => 'अँग्रेजी';

  @override
  String get vtPatientType => 'रोगी का प्रकार';

  @override
  String get vtProblem => 'समस्या';

  @override
  String get vtEyeSight => 'आँखों की नज़र';

  @override
  String get vtVisionTechnician => 'दृष्टि तकनीशियन';

  @override
  String get vtRecommendedCenter => 'अनुशंसित केंद्र';

  @override
  String get vtAssessmentIDEA => 'मूल्यांकन आई. डी.: ई. ए.';

  @override
  String get vtPid => 'पी. आई. डी.: ओ. पी.';

  @override
  String get vtAssessmentTimeline => 'मूल्यांकन समयरेखा';

  @override
  String get vtPleaseSelectEncounter => 'कृपया एक मुठभेड़ चुनें';

  @override
  String get vtTimelineEA => 'समयरेखाः ई. ए.';

  @override
  String get vtGeneralInformation => 'सामान्य जानकारी';

  @override
  String get vtDateOfBirth => 'जन्म तिथि';

  @override
  String get vtAssessmentEA => 'मूल्यांकन ई. ए.';

  @override
  String get vtNotRegistered => 'आप सिस्टम में पंजीकृत नहीं हैं। कृपया एक मिस्ड कॉल दें';

  @override
  String get vtOkay => 'ठीक है।';

  @override
  String get vtTakePicture => 'तस्वीर लीजिए।';

  @override
  String get vtEye => 'आँख';

  @override
  String get vtRetakePicture => 'तस्वीर को फिर से लें';

  @override
  String get vtNext => 'अगला';

  @override
  String get vtMrCode => 'एम. आर. कोड';

  @override
  String get vtEnterMrCode => 'यहाँ एम. आर. कोड दर्ज करें';

  @override
  String get vtPleaseEnterMrCode => 'कृपया एम. आर. कोड दर्ज करें';

  @override
  String get vtNote => 'नोट';

  @override
  String get vtEnterRecommendations => 'सिफारिशें यहाँ दर्ज करें';

  @override
  String get vtSolutions => 'समाधान (ओं)';

  @override
  String get vtLeftEye => 'बायीं आंख';

  @override
  String get vtRightEye => 'दाहिनी आँख';

  @override
  String get vtBothEyes => 'दोनों आँखों से';

  @override
  String get vtFilterBy => 'के द्वारा फ़िल्टर करें';

  @override
  String get vtLocation => 'स्थान';

  @override
  String get vtEnterTime => 'कृपया समय दर्ज करें';

  @override
  String get vtEnterDate => 'कृपया तिथि दर्ज करें';

  @override
  String get vtRecommendation => 'सिफारिशें';

  @override
  String get vtVisitPrimaryCenter => 'प्राथमिक केंद्र पर जाएँ';

  @override
  String get vtVisitSecondaryCenter => 'माध्यमिक केंद्र पर जाएँ';

  @override
  String get vtVisitTertiaryCenter => 'तृतीयक केंद्र पर जाएँ';

  @override
  String get vtVisitCenterOfExcellence => 'उत्कृष्टता केंद्र पर जाएँ';

  @override
  String get vtIvrCallQuestion => 'क्या आप आई. वी. आर. कॉल पर हैं?';

  @override
  String get vtYes => 'हां।';

  @override
  String get vtNo => 'नहीं।';

  @override
  String get vtRetry => 'पुनः प्रयास करें।';

  @override
  String get vtAssessmentQuestions => 'मूल्यांकन प्रश्न';

  @override
  String get vtVisionCenter => 'दृष्टि केंद्र';

  @override
  String get vtVisualAcuity => 'दृश्य तीक्ष्णता';

  @override
  String get vtInvalidValue => 'अमान्य मान';

  @override
  String get vtSeverity => 'गंभीरता';

  @override
  String get vtNoVisionCentersFound => 'कोई दृष्टि केंद्र नहीं मिला';

  @override
  String get vtRequestLocationPermission => 'स्थान अनुमति का अनुरोध करें';

  @override
  String get vtAppSettings => 'ऐप सेटिंग';

  @override
  String get vtEnterSomeText => 'कृपया कुछ पाठ दर्ज करें';

  @override
  String get vtPrimary => 'प्राथमिक';

  @override
  String get vtDependent => 'आश्रित';

  @override
  String get vtAddMember => 'सदस्य जोड़ें';

  @override
  String get vtCompleteProfile => 'पूर्ण प्रोफ़ाइल';

  @override
  String get vtPatientNotRegistered => 'रोगी पंजीकृत नहीं है।';

  @override
  String get vtPatientRegistered => 'रोगी पंजीकृत है।';

  @override
  String get vtDependentNotAdded => 'आश्रित नहीं जोड़ा गया';

  @override
  String get vtDependentAdded => 'आश्रित जोड़ा गया';

  @override
  String get vtServiceNotAvailable => 'सेवा उपलब्ध नहीं है';

  @override
  String get vgEyeAssessments => 'नेत्र मूल्यांकन';

  @override
  String get vgTotal => 'कुल';

  @override
  String get vgCamps => 'शिविरों';

  @override
  String get vgDoorToDoor => 'दरवाजे तक';

  @override
  String get vgByGender => 'लिंग के आधार पर';

  @override
  String get vgMale => 'पुरुष।';

  @override
  String get vgFemale => 'महिला';

  @override
  String get vgOthers => 'अन्य';

  @override
  String get vgByAge => 'उम्र के हिसाब से';

  @override
  String get vgSlideAge => 'बरसों';

  @override
  String get vgSymptoms => 'लक्षण';

  @override
  String get vgRefractive => 'अपवर्तक';

  @override
  String get vgCataract => 'मोतियाबिंद';

  @override
  String get vgGlaucoma => 'ग्लूकोमा';

  @override
  String get vgKeratitis => 'केराटाइटिस';

  @override
  String get vgBlepharitis => 'ब्लेफेराइटिस';

  @override
  String get vgConjunctivitis => 'नेत्रश्लेष्मलाशोथ';

  @override
  String get vgServicesCreateEvent => 'कार्यक्रम बनाएँ';

  @override
  String get vgServicesEyeAssessment => 'नेत्र मूल्यांकन';

  @override
  String get vgServicesRegisterPatient => 'नए रोगी को पंजीकृत करें';

  @override
  String get vgAddPatients => 'रोगियों को जोड़ें';

  @override
  String get vgEvent => 'आयोजन';

  @override
  String get vgAddEventPhoto => 'इवेंट फोटो जोड़ें';

  @override
  String get vgUploadImage => 'छवि अपलोड करें';

  @override
  String get vgAddPhotoInstruction => 'कार्यक्रम की एक तस्वीर जोड़ें जिसे लघुचित्र के रूप में दिखाया जाएगा';

  @override
  String get vgAddressDetails => 'पता विवरण';

  @override
  String get vgVenueName => 'स्थल का नाम';

  @override
  String get vgVenueNameError => 'कृपया स्थान का नाम दर्ज करें';

  @override
  String get vgVenueNameSpecialCharError => 'इसमें कोई विशेष वर्ण नहीं होना चाहिए।';

  @override
  String get vgPincode => 'पिनकोड';

  @override
  String get vgPincodeError => 'केवल 6 अंकों के पिनकोड की अनुमति है।';

  @override
  String get vgCityTownVillage => 'शहर/कस्बा/गाँव';

  @override
  String get vgCityTownVillageError => 'कृपया शहर/कस्बा/गाँव का नाम दर्ज करें';

  @override
  String get vgCityTownVillageSpecialCharError => 'इसमें कोई विशेष वर्ण नहीं होना चाहिए।';

  @override
  String get vgCancel => 'रद्द करें';

  @override
  String get vgSave => 'सहेजें';

  @override
  String get vgAddEventImage => 'घटना छवि जोड़ें';

  @override
  String get vgEventAdded => 'घटना जोड़ी गई';

  @override
  String get vgEventNotAdded => 'घटना नहीं जोड़ी गई';

  @override
  String get vgDateTime => 'तिथि और समय';

  @override
  String get vgStartDate => 'प्रारंभ तिथि';

  @override
  String get vgStartTime => 'शुरू करने का समय';

  @override
  String get vgLocation => 'स्थान';

  @override
  String get vgViewOnMap => 'नक्शे पर देखें';

  @override
  String get vgAddressAndDoorNumber => 'पता और डोर नंबर';

  @override
  String get vgSubDistrictName => 'उप-जिले का नाम';

  @override
  String get vgVillageName => 'गाँव का नाम';

  @override
  String get vgDistrictName => 'ज़िले का नाम';

  @override
  String get vgAbout => 'के बारे में';

  @override
  String get vgEditEvent => 'कार्यक्रम संपादित करें';

  @override
  String get vgDeleteEvent => 'कार्यक्रम हटाएँ';

  @override
  String get vgErrorFetchingEventDetails => 'घटना विवरण प्राप्त करने में त्रुटि';

  @override
  String get vgNoPatientRegistered => 'नाम के साथ कोई रोगी पंजीकृत नहीं है। पंजीकृत रोगी पर क्लिक करें।';

  @override
  String get vgRegisterPatient => 'रोगी को पंजीकृत करें';

  @override
  String get vgPrimary => 'प्राथमिक';

  @override
  String get vgDependent => 'आश्रित';

  @override
  String get vgAddMember => 'सदस्य जोड़ें';

  @override
  String get vgCompleteProfile => 'पूर्ण प्रोफ़ाइल';

  @override
  String get vgStartAssessment => 'मूल्यांकन शुरू करें';

  @override
  String get vgSearchPatientByPhoneNumber => 'फोन नंबर से रोगी को खोजें';

  @override
  String get vgInvalidPhoneNumber => 'कृपया एक वैध फोन नंबर दर्ज करें';

  @override
  String get vgServerError => 'सर्वर त्रुटि';

  @override
  String get vgPatient => 'रोगी।';

  @override
  String get vgReportId => 'आई. डी. दर्ज करें';

  @override
  String get vgNoEventFound => 'कोई घटना नहीं मिली';

  @override
  String get vgTeamMateDeletedSuccessfully => 'टीममेट सफलतापूर्वक हटा दिया गया';

  @override
  String get vgSomethingWentWrong => 'कुछ गड़बड़ हो गई।';

  @override
  String get vgName => 'नाम';

  @override
  String get vgPhoneNumber => 'फोन नंबर';

  @override
  String get vgErrorFetchingTeammatesDetails => 'टीम के साथियों का विवरण लाने में त्रुटि';

  @override
  String get vgTeamMateAddedSuccessfully => 'टीममेट सफलतापूर्वक जोड़ा गया';

  @override
  String get vgAddTeammate => 'टीममेट जोड़ें';

  @override
  String get vgPleaseEnter => 'कृपया प्रविष्ट करें';

  @override
  String get vgPleaseEnterField => 'कृपया क्षेत्र दर्ज करें';

  @override
  String get vgOr => 'या';

  @override
  String get vgSearch => 'खोजें।';

  @override
  String get vgEventDeletedSuccessfully => 'कार्यक्रम सफलतापूर्वक हटा दिया गया';

  @override
  String get vgEventDeletionFailed => 'घटना मिटाने में विफल';

  @override
  String get vgEndTimeGreaterThanStartTime => 'समाप्ति समय प्रारंभ समय से अधिक होना चाहिए।';

  @override
  String get vgNoPatientsPresent => 'वर्तमान में कोई मरीज नहीं है। "रोगी जोड़ें" पर टैप करें।';

  @override
  String get textSize => 'पाठ का आकार';

  @override
  String get increase => 'बढ़ाएं';

  @override
  String get decrease => 'घटाएं';

  @override
  String get reset => 'रीसेट';

  @override
  String get minimumTextSizeReached => 'न्यूनतम पाठ आकार पहुंच गया';

  @override
  String get maximumTextSizeReached => 'अधिकतम पाठ आकार पहुंच गया';

  @override
  String get chatClearChat => 'चैट साफ़ करें';

  @override
  String get chatEyeAssessmentRecommended => 'आपके लिए नेत्र मूल्यांकन की सिफारिश की जाती है।';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'क्या आप ट्राइएज आई असेसमेंट लेना चाहते हैं?';

  @override
  String get chatChatbotNotAvailable => 'चैटबॉट इस समय उपलब्ध नहीं है। कृपया बाद में फिर से प्रयास करें।';

  @override
  String get chatTypeHere => 'यहाँ टाइप करें...';

  @override
  String get switchProfile => 'प्रोफाइल बदलें';

  @override
  String get switchRole => 'भूमिका बदलें';

  @override
  String get switchTenant => 'किरायेदार को बदलें';

  @override
  String get patientHeaderWelcomeText => 'साइटकनेक्ट में आपका स्वागत है! अपनी दृष्टि का ध्यान रखना महत्वपूर्ण है, और हम हर कदम पर आपके लिए यहां हैं।';

  @override
  String get triageTestCardHeader => 'आपकी आँखों की जाँच मुफ़्त है।';

  @override
  String get triageTestCardBody1 => 'जल्दी से अपनी आँखों के लक्षणों का विश्लेषण करें।';

  @override
  String get triageTestCardBody2 => 'पता लगाएँ कि क्या आपको आँखों की समस्या हो सकती है';

  @override
  String get triageTestCardBody3 => 'पता करें कि अपने डॉक्टर के पास कब जाना है';

  @override
  String get triageTestCardButton => 'मुक्त नेत्र परीक्षण शुरू करें';

  @override
  String get myConnectionListAddMembersDescription => 'अपने परिवार और दोस्तों को जोड़ने के लिए सदस्य जोड़ें बटन पर क्लिक करें।';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'आप कैसे आगे बढ़ना चाहते हैं?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'मुझे एक समस्या है और मैं इसे मान्य करना चाहता हूँ';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'मुझे यकीन नहीं है कि मुझे कोई समस्या है या नहीं।';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'मुझे आँखों की कोई समस्या नहीं है-बस जाँच करना चाहता हूँ';

  @override
  String get appDrawerToastMessageText => 'क्षमा करें, हमें मोबाइल ऐप में लॉगआउट त्रुटि का सामना करना पड़ा।';

  @override
  String get myConnectionListAddMembers => 'सदस्य जोड़ें';

  @override
  String get appDrawerReferral => 'रेफरल';

  @override
  String get patientTenantDisplayPageHeader => 'किरायेदार';

  @override
  String get patientTenantDisplayPageBody => 'सूची में से एक दृष्टि केंद्र का चयन करें';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'स्थान अनुमति का अनुरोध करें';

  @override
  String get referralGenerateSheetHeader => 'आपका रेफरल कोड';

  @override
  String get referralGenerateSheetTapHereButton => 'एक कोड है? यहाँ दबाएँ';

  @override
  String get referralGenerateSheetMyReferrals => 'मेरे रेफरल';

  @override
  String get referralGenerateSheetShareCode => 'लाभ प्राप्त करने के लिए अपने मित्रों और परिवार के साथ अपना रेफरल कोड साझा करें।';

  @override
  String get referralGenerateSheetReferralGenerateError => 'क्षमा करें, हम इस समय एक रेफरल कोड उत्पन्न करने में असमर्थ हैं।';

  @override
  String get referralGenerateSheetShareButton => 'शेयर करें।';

  @override
  String get referralGenerateSheetCopy => 'प्रतिलिपि';

  @override
  String get referralCollectSheetYourRefferalCode => 'आपका रेफरल कोड';

  @override
  String get referralCollectSheetReferralCodeMessage => 'लाभ प्राप्त करने के लिए अपने मित्रों और परिवार के साथ अपना रेफरल कोड साझा करें।';

  @override
  String get referralCollectSheetHeader => 'रेफरल एकत्र करें';

  @override
  String get referralCollectSheetBody => 'अपना इनाम इकट्ठा करने के लिए रेफरल कोड दर्ज करें';

  @override
  String get referralCollectSheetTextFieldHeader => 'रेफरल कोड';

  @override
  String get referralCollectSheetTextFieldBody => 'रेफरल कोड दर्ज करें';

  @override
  String get referralCollectSheetSkipButton => 'छोड़ दें।';

  @override
  String get referralCollectSheetCollectButton => 'इकट्ठा करें।';

  @override
  String get referralCollectSheetError => 'क्षमा करें, कुछ गड़बड़ हुई है। कृपया फिर से प्रयास करें।';

  @override
  String get referralCollectSheetSuccessToast => 'रेफरल कोड सफलतापूर्वक प्रस्तुत किया गया';

  @override
  String get referralCollectSheetErrorToast => 'आपके द्वारा दर्ज किया गया रेफरल कोड अमान्य है। कृपया फिर से प्रयास करें।';

  @override
  String get referralStatisticsPageHeader => 'आपके संदर्भित आंकड़े';

  @override
  String get referralStatisticsPageTotalReferred => 'कुल संदर्भित';

  @override
  String get referralStatisticsPageSucessfulReferred => 'सफल संदर्भित';

  @override
  String get referralStatisticsPageTotalTriage => 'टोटल ट्राइएज';

  @override
  String get referralStatisticsPageReferFriendHeader => 'किसी मित्र को कैसे संदर्भित करें?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'अपना रेफरल कोड अपने मित्र के साथ साझा करें।';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'आपका मित्र आपके रेफरल कोड का उपयोग करके पंजीकरण करता है।';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'आपका मित्र कम से कम एक ट्राइएज परीक्षण पूरा करता है।';

  @override
  String get referralStatisticsPageReferFriendButton => 'एक दोस्त को संदर्भित करें';

  @override
  String get referralStatisticsPageError => 'क्षमा करें, हम इस समय आपके रेफरल आँकड़े प्राप्त करने में असमर्थ हैं।';

  @override
  String get referralStatisticsPageRetryButton => 'पुनः प्रयास करें।';

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
