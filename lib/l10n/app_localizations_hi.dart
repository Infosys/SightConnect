import 'app_localizations.dart';

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current में से $total';
  }

  @override
  String get questionnaireTitle => 'नेत्र मूल्यांकन प्रश्न';

  @override
  String get questionnaireExitDialog => 'इन प्रश्नों के उत्तर देने से आपकी आँखों की समस्याओं की पहचान में मदद मिलेगी। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get visualAcuityTitle => 'दृष्टि दर्पण परीक्षण';

  @override
  String get visualAcuityDescription => 'दृष्टि दर्पण परीक्षण एक आँख की जाँच है जो देखता है कि आप किस दूरी से किस अक्षर या प्रतीक के विवरण को कैसे देखते हैं। अब इस त्वरित परीक्षण को करें!';

  @override
  String get visualAcuityHowToPerform => 'दृष्टि दर्पण परीक्षण कैसे करें?';

  @override
  String get visualAcuityViewStepsToPerform => 'दृष्टि दर्पण परीक्षण करने के लिए कदम देखें';

  @override
  String get visualAcuityCompletionDialog => 'हो गया! दृष्टि दर्पण परीक्षण दोनों आँखों के लिए पूरा हो गया है। अगले में अपनी आँखों की फ़ोटो लेनी है।';

  @override
  String get visualAcuityExitDialog => 'दृष्टि दर्पण आपकी आँख की समस्या के बारे में समझने के लिए महत्वपूर्ण परीक्षण है। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get swipeGestureTab => 'स्वाइप इशारा';

  @override
  String get voiceAssistTab => 'आवाज सहायता';

  @override
  String get distanceString => 'दूरी';

  @override
  String get leftEyeString => 'बाएं आँख';

  @override
  String get rightEyeString => 'दाएं आँख';

  @override
  String get bothEyeString => 'दोनों आँखें';

  @override
  String get visualAcuityLeftEyeHeader => 'परीक्षण 2 - बाएं आँख';

  @override
  String get visualAcuityLeftEyeInstructions => 'बिना आँख के पलक पर दबाव डाले, अपने हाथ से दाएं आँख को ढ़क लें। यदि आप चश्मा पहन रहे हैं, तो चश्मा पर अपना हाथ रखें।';

  @override
  String get visualAcuityRightEyeHeader => 'परीक्षण 1 - दाएं आँख';

  @override
  String get visualAcuityRightEyeInstructions => 'बिना आँख के पलक पर दबाव डाले, अपने हाथ से बाएं आँख को ढ़क लें। यदि आप चश्मा पहन रहे हैं, तो चश्मा पर अपना हाथ रखें।';

  @override
  String get visualAcuityBothEyeHeader => 'परीक्षण 3 - दोनों आँखें';

  @override
  String get visualAcuityBothEyeInstructions => 'किसी भी आँख को ढ़कने का प्रयास न करें और अगले में दिखाए गए प्रतीकों को दोनों आँखों से देखें।';

  @override
  String get overlayHeaderDirection => 'दिशा';

  @override
  String get overlayDescription => 'यहां आपको प्रत्येक प्रतीक की दिशाओं को समझने का तरीका है।';

  @override
  String get overlaySymbolDirectionText => 'प्रतीक दिशा : ';

  @override
  String get directionDown => 'नीचे';

  @override
  String get directionUp => 'ऊपर';

  @override
  String get directionLeft => 'बाएं';

  @override
  String get directionRight => 'दाएं';

  @override
  String get dontShowAgainString => 'फिर से दिखाना नहीं';

  @override
  String get visualAcuityCarouselTitle => 'दृष्टि दर्पण परीक्षण करने के कदम';

  @override
  String get eyeScanTitle => 'नेत्र स्कैन';

  @override
  String get eyeScanDescription => 'आप बहुत करीब हैं! अगला परीक्षण बाकी है। अब अपनी आँखों की फ़ोटो लें।';

  @override
  String get eyeScanHowToPerform => 'आप अपनी आँखों को कैसे स्कैन करें?';

  @override
  String get eyeScanViewStepsToPerform => 'आँखों को स्कैन करने का तरीका जानने के लिए कदम देखें।';

  @override
  String get eyeScanExitDialog => 'नेत्र स्कैन आपकी आँख की समस्या के बारे में और जानने में मदद करता है। क्या आप वाकई बाहर निकलना चाहते हैं?';

  @override
  String get captureRightEyeString => 'दाएं आँख को कैप्चर करें';

  @override
  String get captureLeftEyeString => 'बाएं आँख को कैप्चर करें';

  @override
  String get skipButton => 'छोड़ें';

  @override
  String get startTestText => 'प्रारंभ करें';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get startButton => 'शुरू करें';

  @override
  String get nextButton => 'आगे बढ़ें';

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
  String get shareNowButton => 'अब साझा करें';

  @override
  String get retryButton => 'फिर कोशिश करें';

  @override
  String get homeCarousal1Title => 'मोतियाबिंद का प्रसार और इससे जुड़े कारकों के बारे में जानें';

  @override
  String get homeCarousal1Description => 'मोतियाबिंद के प्रसार के सैम्पलिंग प्रक्रिया का तात्कालिक प्रस्तुतिकरण और इससे जुड़े कारकों का विस्तारपूर्ण विवरण';

  @override
  String get homeCarousal2Title => '7 आँख समस्याएँ जिन्हें आप नहीं छोड़ सकते!';

  @override
  String get homeCarousal2Description => '\n7 आँख समस्याएँ जिनका परीक्षण करवाना आवश्यक है: \n \n• आँख का लाल होना\n• आँखों का पानी आना\n• आँखों पर सफेद दाग';

  @override
  String get homeCarousal3Title => 'आँखों की समस्याएँ। वे कई हैं जो आप नहीं देख सकते';

  @override
  String get homeCarousal3Description => 'लेकिन दृष्टि देखभाल विशेषज्ञ कर सकते हैं।\nआँखों की समस्याओं को पहचानें\nऔर बाद में समस्याओं को बचाने के लिए समय पर उपचार करें';

  @override
  String get myConnectionsTitle => 'मेरे सदस्य';

  @override
  String get myConnectionsAddMember => 'सदस्य जोड़ें';

  @override
  String get myConnectionsServiceNotAvailable => 'सेवा उपलब्ध नहीं है';

  @override
  String get myConnectionsAdd => 'जोड़ें';

  @override
  String get recentServicesTitle => 'मेरी हाल की सेवाएँ';

  @override
  String get recentServicesEyeAssessment => 'नेत्र मूल्यांकन';

  @override
  String get recentServicesVisualAcuityTest => 'दृष्टि दर्पण परीक्षण';

  @override
  String get nearbyVisionCentersTitle => 'आस-पास के दृष्टि केंद्र';

  @override
  String get nearbyVisionCentersNotFound => 'कोई दृष्टि केंद्र नहीं मिला';

  @override
  String get tollFreeNumber => 'टोल फ्री नंबर';

  @override
  String get appDrawerTitle => 'मेनू';

  @override
  String get appDrawerLanguageSelection => 'भाषा चयन';

  @override
  String get appDrawerAccessibility => 'अभिगम्यता सेटिंग्स';

  @override
  String get appDrawerHome => 'होम';

  @override
  String get appDrawerMyProfile => 'मेरी प्रोफ़ाइल';

  @override
  String get appDrawerAssessmentsAndTests => 'मूल्यांकन और परीक्षण';

  @override
  String get appDrawerScanner => 'क्यूआर कोड स्कैनर';

  @override
  String get appDrawerAboutUs => 'हमारे बारे में';

  @override
  String get appDrawerPrivacyPolicy => 'गोपनीयता एवं डेटा नीति';

  @override
  String get appDrawerHelpAndSupport => 'मदद और समर्थन';

  @override
  String get appDrawerSignOut => 'साइन आउट';

  @override
  String get aboutUsDescription => 'साइटकनेक्ट एक उपयोगकर्ता-मित्र नेत्र सेवा ऐप है जो स्व-मूल्यांकन और कॉल के माध्यम से परामर्श में मदद करता है।\n\nहमारे मिशन के ह्रदय में सभी के लिए दृष्टि देखभाल को पहुंचाने के प्रति एक प्रतिबद्धता है। ऐप को इस प्रकार डिज़ाइन किया गया है कि उम्र, तकनीकी पृष्ठभूमि और सामाजिक या आर्थिक पृष्ठभूमि के बावजूद सभी जीवन के लोगों द्वारा समावेशी और पहुंची जा सके। ऐप और उसकी सामग्री को अंग्रेजी और अन्य स्थानीय भाषाओं में उपलब्ध किया जाता है। यह उपयोगकर्ताओं को अपनी आँखों का स्व-मूल्यांकन करने में मदद करता है और समय पर उपचार सलाह प्राप्त करने में मदद करता है। ऐप अपने उपयोगकर्ताओं को व्यक्तिगत नेत्र देखभाल समाधान प्रदान करने के लिए नवीनतम तकनीक और उपकरणों का उपयोग करता है। यह उनके जीवन को आसान बनाने के लिए विभिन्न सुविधाओं के साथ आता है।';

  @override
  String get aboutUsFeaturesTitle => 'विशेषताएँ';

  @override
  String get aboutUsFeaturesDescription => 'ऐप आँखों का आत्म-मूल्यांकन करने की अनुमति देता है: ऐप अपने उपयोगकर्ताओं को कुछ सवालों के उत्तर देने के माध्यम से अपनी आँखों का स्व-मूल्यांकन करने की अनुमति देता है और आगे की कदमों और देखभाल डॉक्टर की सलाह प्राप्त करने के लिए उपयुक्त सिफारिशों का प्राप्त कर सकते हैं, जिन्हें देखे गए डॉक्टर को मिलनी चाहिए। उपयोगकर्ताओं के दोस्त और परिवार भी लाभ उठा सकते हैं। | अपॉइंटमेंट बुकिंग: उपयोगकर्ता डॉक्टर के साथ ऑनलाइन टेलीसलाहकारी और क्लिनिक में देखभाल के लिए अपॉइंटमेंट बुक कर सकते हैं। | IVR कॉल सेवाएँ: हमारी IVR कॉल सेवाएँ अंग्रेजी और स्थानीय भाषाओं में उपलब्ध हैं और यह सिफारिश करती हैं कि उपयोगकर्ताओं को बुनियादी सुविधा वाले फीचर फ़ोन वालों के साथ भी उपयोग कर सकते हैं। उपयोगकर्ता किसी भी आपातकाल में या किसी भी नेत्र संबंधित समस्या के दौरान तुरंत मदद के लिए हमारे नेत्र देखभाल पेशेवरों को डायल कर सकते हैं। वे यह भी कर सकते हैं कि अपॉइंटमेंट बुक करने के लिए या किसी भी आगे की स्पष्टता के लिए कॉल करें। | आस-पास के क्लिनिक: उपयोगकर्ता अपने पास के नेत्र देखभाल क्लिनिक की स्थान तलाश सकते हैं। | प्रिस्क्रिप्शन और रिपोर्ट: उपयोगकर्ताओं के सभी प्रिस्क्रिप्शन और रिपोर्ट्स को बिना किसी जटिलता के एक स्थान से एक्सेस कर सकते हैं। | आँख कैम्प: उपयोगकर्ता अपने दोस्तों और परिवार के लोगों की आँखों की जाँच करवाने के लिए निकट आँख कैम्प के बारे में जानकारी प्राप्त कर सकते हैं। | स्मरण और सूचनाएँ: उपयोगकर्ता आने वाली अपॉइंटमेंट्स, दवाओं, रिपोर्ट्स आदि के संबंध में समय समय पर सूचनाएँ और स्मरण प्राप्त कर सकते हैं। | साझा करना: उपयोगकर्ता इस ऐप को और ऐप के भीतर प्रदान की गई उपयोगी जानकारी को अपने दोस्तों और परिवार के सदस्यों के साथ साझा कर सकते हैं।';

  @override
  String get aboutUsConclusion => 'ऐप को उपयोगकर्ता समुदाय को बेहतर सेवा प्रदान करने के लिए महत्वपूर्ण नेत्र देखभाल पेशेवरों की मदद से विकसित किया गया है। हमारे साथ एक बेहतर, स्वस्थ दुनिया बनाने के हमारे मिशन में शामिल हों। साइटकनेक्ट ऐप को आज ही डाउनलोड करें और साझा करें!';

  @override
  String get privacyPolicyDescription => 'एलवी प्रसाद नेत्र संस्थान, इसकी सहायक कंपनियों, सहयोगी और संबद्ध कंपनियों (संकल्पित रूप से \'एलवीपीईआई\', \'हम\', \'हम\') आपके व्यक्तिगत डेटा को आपके क्षेत्र के कानूनों के अनुसार प्रसंस्कृत करने के प्रति प्रतिबद्ध हैं। हम यहां आपको व्यक्तिगत डेटा की प्रसंस्कृति के बारे में निम्नलिखित जानकारी देते हैं।';

  @override
  String get privacyPolicyPersonalDataTitle => 'व्यक्तिगत डेटा तत्व जुटाए जाने/प्रसंस्कृत किए जाने वाले:';

  @override
  String get privacyPolicyPersonalDataDescription => 'आप और आपके संबंधों के व्यक्तिगत डेटा जैसे (इनमें से कुछ डेटा वैकल्पिक हो सकते हैं) मोबाइल नंबर, नाम, जन्म तिथि, लिंग (पुरुष/महिला), पता (पिन कोड), रोगी आईडी, कनेक्शन, आँख का मूल्यांकन प्रश्नोत्तरी के उत्तर, आँख का मूल्यांकन रिपोर्ट, आँख की छवियाँ, आपकी आँख की छवि के खिलाफ चिन्हित लक्षण, फोटोग्राफ, पता विवरण जैसे पता, जिला नाम (जिला कोड सहित), राज्य नाम (राज्य कोड सहित), उप-जिला नाम, गाँव का नाम, शहर का नाम, ईमेल पता, उपनाम, मध्य नाम, रक्त समूह, ऊंचाई, वजन, पेशेवर, आब्हा विवरण (जैसा कि आप द्वारा प्रदान किया जाता है), आपकी ऐप की अनुमतियों के आधार पर कैमरा, जीपीएस स्थान, गैलरी तक पहुंच, पूरी नेटवर्क पहुंच, नेटवर्क कनेक्शन देखें, डिवाइस जानकारी के लिए।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'प्रसंस्कृति का उद्देश्य: हम आप द्वारा प्रदान किए गए व्यक्तिगत डेटा को निम्नलिखित उद्देश्यों के लिए प्रसंस्कृत करते हैं, जैसे:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'आपको अपने और आपके संबंधों के लिए ऑनलाइन नेत्र संबंधित स्वास्थ्य जांच के लिए हमारे ऐप्लिकेशन और इसकी विशेषताओं तक पहुंचने की सुविधा प्रदान करने के लिए (जैसा कि आप द्वारा प्रदान किया जाता है)| किसी भी आँख संबंधित बीमारी/स्वास्थ्य कठिनाइयों के मामले में लागू होने पर आपको एलवीपीईआई के तहत दृष्टि तकनीकियों, दृष्टि चिकित्सकों से संपर्क करने की सुविधा प्रदान करने के लिए।| आपके स्वास्थ्य परामर्श और निदान का हिस्सा के रूप में किसी भी आँख स्वास्थ्य से संबंधित डेटा (रिपोर्ट आदि सहित) प्रदान करने और आपको या आपके संबंधों से स्वास्थ्य से संबंधित चिंताओं के हिस्से के रूप में संपर्क करने के लिए।| आपके व्यक्तिगत डेटा को हमारे अधिकृत एलवीपीईआई दृष्टि चिकित्सकों/डॉक्टरों के साथ साझा करने के लिए, जो उपचार के लिए एलवीपीईआई डॉक्टरों से संपर्क करने में असमर्थ हैं या सुझाव देने के लिए गाँव के मुख्य/मेयर आदि के साथ (जहां आपके जीपीएस स्थान के आधार पर लागू हो सकता है) डॉक्टरों को सूचित करने के बारे में आँख समस्या की गंभीरता के आधार पर| आपके पास किसी भी आँख संबंधित समस्या के मामले में संपर्क करने के लिए आपके पास एलवीपीईआई के साथ संबद्ध आँख क्लिनिक/अस्पतालों की सूची प्रदान करने के लिए| बिना किसी पहचानकर्ता के सहित जानकारी जैसे आँख की छवि, आँख की छवि के संबंधित लक्षण, आयु, रक्त समूह, स्थान आदि का उपयोग करने के लिए हमारे मशीन लर्निंग या कृत्रिम बुद्धिमत्ता मॉडल्स को अच्छा निदान प्रदान करने के उद्देश्य से| आँख स्वास्थ्य के संबंध में जागरूकता बनाने के लिए, स्मरण, संचार, अभियांत्रिक मेलर भेजने के लिए, आँख स्वास्थ्य के लिए।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'डेटा प्राप्तकर्ता/ पहुंचने योग्य:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'आपके द्वारा साझा की गई व्यक्तिगत डेटा (सहित संवेदनशील व्यक्तिगत डेटा) को एलवीपीईआई के अधिकृत कर्मचारियों जैसे डॉक्टर/दृष्टि चिकित्सक, दृष्टि तकनीशियन, दृष्टि गार्जियन, एलवीपीईआई के प्रतिनिधियों, आंतरिक/बाहरी महसूसकर्ताओं, सरकारी अधिकारियों के साथ जहां लागू हो सकता है, और हमारे अधिकृत सेवा प्रदाता इंफोसिस के अनुसार पहुंचने योग्य होगा।';

  @override
  String get privacyPolicyDataTransferTitle => 'डेटा स्थानांतरण और संग्रहण:';

  @override
  String get privacyPolicyDataTransferDescription => 'आपके द्वारा साझा की गई व्यक्तिगत डेटा को हमारे आंतरिक सर्वरों पर, हमारे अधिकृत सेवा प्रदाता के सर्वर पर भारत में संग्रहित किया जाएगा।';

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
  String get privacyPolicyDataSubjectRightsDescription => 'आपको किसी भी समय अपनी व्यक्तिगत जानकारी को पहुंचने और सुधारने का अधिकार है। किसी भी अनुरोध, समस्या, चिंता या पूछताछ के मामले में आप एलवी प्रसाद कार्यालय से ईमेल भेजकर <LVPEI को डेटा गुप्तिदान के लिए जेनेरिक मेल आईडी प्रदान करने के लिए> संपर्क कर सकते हैं।';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'प्रतिष्ठान के अधिकार:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'जब हम आपके सहमति के आधार पर आपके व्यक्तिगत डेटा को प्रसंस्कृत करते हैं, तो आप भविष्य के लिए लागू सम्मति को अनुकूलित कर सकते हैं। आपके प्रतिष्ठान को वापस लेने के लिए आप <LVPEI को डेटा गुप्तिदान के लिए जेनेरिक मेल आईडी प्रदान करने के लिए> ईमेल भेज सकते हैं। यह आपके प्रतिष्ठान के बाद किसी भी प्रसंस्कृति कार्य की कानूनता को प्रभावित नहीं करेगा।';

  @override
  String get privacyPolicyAcknowledgement => 'नीचे दिए गए बटन पर क्लिक करके, आप यह स्वीकार करते हैं और समझते हैं कि आपके व्यक्तिगत डेटा, सहित संवेदनशील व्यक्तिगत डेटा उपरोक्त उल्लिखित तरीके से जुटाया और प्रसंस्कृत किया जा सकता है, और इसके लिए उपरोक्त उद्देश्यों के लिए सहमति देते हैं। आप समझते हैं कि आपके द्वारा साझा किए जाने वाले किसी भी व्यक्तिगत डेटा, सहित संवेदनशील व्यक्तिगत डेटा (आपके अलावा) को उनसे उपयुक्त सहमति प्राप्त करने के बाद ही किया जाता है। आप समझते हैं कि आप उन व्यक्तिगत डेटा (सहित संवेदनशील व्यक्तिगत डेटा) को साझा नहीं करेंगे जो उपरोक्त उद्देश्यों के लिए आवश्यक नहीं है। आप समझते हैं कि जब आप किसी मामूली के व्यक्तिगत डेटा को उनके माता/पिता या कानूनी पालक के रूप में साझा कर रहे हैं, तो आप उनके डेटा के जुटाया और प्रसंस्कृत किया जाने की सहमति देते हैं, जैसा कि उपरोक्त में उल्लिखित है।';

  @override
  String get privacyPolicyBottomAppBarLabel => 'गोपनीयता नीति स्वीकृत';

  @override
  String get helpAndSupportReachTitle => 'हमसे संपर्क करें';

  @override
  String get assessmentAndTestsSubtitle => 'अब तक किए गए मूल्यांकन का त्वरित दृश्यण।';

  @override
  String get assessmentAndTestsReportsNotFound => 'कोई रिपोर्ट नहीं मिली';

  @override
  String get eyeAssessmentTitle => 'नेत्र मूल्यांकन';

  @override
  String get eyeAssessmentSubtitle => 'कुछ कदमों में अपने, अपने दोस्तों और परिवार के सदस्यों के नेत्र संकटों का मूल्यांकन करें। आपसे आपके नेत्र संकटों से संबंधित लक्षणों को समझने के लिए कुछ सवाल पूछे जाएंगे और फिर दृष्टिकोणिक परीक्षणों के साथ आगे बढ़ने के लिए।';

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
  String get eyeAssessmentPopUpBody => 'क्या आपके कोई दृष्टिदोष संबंधित समस्या है?';

  @override
  String get eyeAssessmentPopUpYesButton => 'हाँ';

  @override
  String get eyeAssessmentPopUpNoButton => 'नहीं';

  @override
  String get visualAcuityTestInstructionOne => 'एक आरामदायक और अच्छी रौशनी वाले स्थान पर बैठें। आपको ब्राइटनेस में एक अचानक बदलाव महसूस हो सकता है, चिंता न करें, स्क्रीन को ऑटो-ब्राइटनेस पर सेट किया गया है ताकि आपको सर्वोत्तम परिणाम प्रदान किया जा सके';

  @override
  String get visualAcuityTestInstructionTwo => 'सुनिश्चित करें कि आप उन्हें नेत्र स्तर पर रख रहे हैं। यदि आप चश्मा या संपर्क लेंस पहनते हैं, तो उन्हें पहने रखें';

  @override
  String get visualAcuityTestInstructionThree => 'अपने आप को स्क्रीन से 40 सेमीटर की दूरी पर रखें। परीक्षण स्क्रीन में दूरी दिखाई देगी।';

  @override
  String get visualAcuityTestInstructionFour => 'यदि आप चश्मा पहनकर परीक्षण कर रहे हैं, तो एक नेत्र को आपके चश्मे के ऊपर अपने हाथ से ढ़क लें जब केवल एक नेत्र का परीक्षण होता है।';

  @override
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get skipAndProceedButton => 'छोड़ें और स्कैन करने के लिए आगे बढ़ें';

  @override
  String get proceedToScanButton => 'स्कैन करने के लिए आगे बढ़ें';

  @override
  String get eyeAssessmentSteps => 'कदम';

  @override
  String get eyeAssessmentStepOne => 'कदम 1 - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentStepTwo => 'कदम 2 - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentStepThree => 'कदम 3 - नेत्र मूल्यांकन सवाल';

  @override
  String get eyeAssessmentOngoing => 'जारी है';

  @override
  String get eyeAssessmentCompleted => 'पूरा हुआ';

  @override
  String get eyeAssessmentPending => 'बकाया है';

  @override
  String get eyeAssessmentResults => 'मूल्यांकन परिणाम';

  @override
  String get eyeAssessmentCompleteSteps => 'परिणाम देखने के लिए सभी कदम पूरे करें';

  @override
  String get eyeAssessmentToolTip => 'कृपया सुनिश्चित करें कि फ्लैश बंद है और ब्राइटनेस 80% पर सेट है';

  @override
  String get eyeScanInstructionOne => 'कैमरा को ठीक ढंग से फ्रेम पर रखें।';

  @override
  String get eyeScanInstructionTwo => 'फ़ोन के पीछे कैमरा का उपयोग करके आंखों की छवि बनाएं।';

  @override
  String get eyeScanInstructionThree => 'फ्लैश के साथ अच्छे से प्रकाशित क्षेत्र में होने का सुनिश्चित करें।';

  @override
  String get eyeScanInstructionFour => 'बेहतर फोटोग्राफ और स्पष्टता के लिए किसी और को छवि क्लिक करने के लिए कहें।';

  @override
  String get eyeScanInstructionFive => 'एक आंख को अपने हाथ से ढ़क लें और छवि लेते समय दूसरी आंख के साथ सीधे समुद्र की ओर देखें।';

  @override
  String get eyeScanInstructionSix => 'फोटो शुरू करने से पहले पैनल के अंदर आंख को केंद्रित करें।';

  @override
  String get eyeScanInstructionSeven => 'फ्लैश बंद होने तक और \'बीप\' ध्वनि से फ़ोटो समाप्त होने तक आंखें विस्तार से खोली रखें।';

  @override
  String get eyeAssessmentNote => 'ध्यान दें: यहां दिखाए गए चित्र केवल संकेत के लिए हैं। हो सकता है कि वे वास्तविक जीवन में वैसे ही न दिखें।';

  @override
  String get agreeButton => 'मैं सहमत हूँ';

  @override
  String get consentPageCheckbox => 'मैं नियम और शर्तों से सहमत हूँ';

  @override
  String get confirmButton => 'पुष्टि करें';

  @override
  String get discardButton => 'छोड़ना';

  @override
  String get imageNotCapturedToastMessage => 'छवि कैप्चर नहीं की गई';

  @override
  String get eyeCaptureCompletionDialogHeading => 'परीक्षण पूरा हुआ';

  @override
  String get eyeCaptureCompletionDialogBody => 'आपने परीक्षण पूरा किया है। कृपया नीचे दिए गए बटन पर क्लिक करके परिणाम देखने के लिए।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'परिणाम देखें';

  @override
  String get eyeCaptureTriageSavedLocally => 'त्राजिक स्थानीय रूप से सहेजा गया है';

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
  String get servicesPatientCare => 'रोगी देखभाल';

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
  String get submitButton => 'सबमिट करें';

  @override
  String get swipeGestureError => 'गलत स्वाइप! कृपया पुनः प्रयास करें।';

  @override
  String get swipeGestureCardText => 'प्रतीक की दिशा में स्वाइप करें';

  @override
  String get assessmentResultCardAssessmentQuestions => 'मूल्यांकन\nप्रश्न';

  @override
  String get assessmentResultCardAcuityTest => 'दृष्टिपथ\nपरीक्षण';

  @override
  String get assessmentResultCardEyeScan => 'नेत्र\nस्कैन';

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
  String get bottomNavItemAppointment => 'नियुक्ति';

  @override
  String get memberSelection => 'सदस्य का चयन करें';

  @override
  String get triageAlerDialogBoxTitle => 'पुनः करने के चरण चुनें';

  @override
  String get scannerTitle => 'चित्रान्वीक्षक';

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
