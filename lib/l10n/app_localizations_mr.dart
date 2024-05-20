import 'app_localizations.dart';

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} बाहेर ${total}';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'कृपया पाठवलेला ओ. टी. पी. प्रविष्ट करा. ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'पुन्हा पाठवा ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} रुग्णाला भेटीची वेळ असते';
  }

  @override
  String vgEmptyResults(String type) {
    return 'सध्या कोणताही प्रकार नाही. जोडा ${type} वर टिचकी मारा';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} आयडी, नावाद्वारे शोधा';
  }

  @override
  String get questionnaireTitle => 'डोळ्यांच्या तपासणीचे प्रश्न';

  @override
  String get questionnaireExitDialog => 'या प्रश्नांची उत्तरं देण्याने तुमच्या डोळ्यांच्या समस्या ओळखण्यास मदत होईल. तुम्ही तरीही बाहेर पडू इच्छिता का?';

  @override
  String get visualAcuityTitle => 'दृष्टी अचूकता चाचणी';

  @override
  String get visualAcuityDescription => 'दृष्टी अचूकता चाचणीनंतर हे कळेल की तुम्हाला विशिष्ट अंतरावरून अक्षरं किंवा चिन्हं किती स्पष्ट दिसतात. आता ही चाचणी करा.';

  @override
  String get visualAcuityHowToPerform => 'दृष्टी अचूकता चाचणी कशी करावी?';

  @override
  String get visualAcuityViewStepsToPerform => 'दृष्टी अचूकता चाचणी करण्याच्या पायऱ्या पाहा.';

  @override
  String get visualAcuityCompletionDialog => 'झाले! दोन्ही डोळ्यांसाठी दृष्टी अचूकता चाचणी पूर्ण झाली आहे. तुम्हाला  आता तुमच्या डोळ्यांचे फोटो घ्यायचे आहेत.';

  @override
  String get visualAcuityExitDialog => 'तुमच्या डोळ्यांच्या समस्येविषयी समजून घेण्यासाठी दृष्टी अचूकता चाचणी महत्त्वाची आहे. तुम्ही तरीही बाहेर पडू इच्छिता का?';

  @override
  String get swipeGestureTab => 'स्वाइप करा';

  @override
  String get voiceAssistTab => 'आवाज सहाय्यक';

  @override
  String get distanceString => 'अंतर';

  @override
  String get leftEyeString => 'डावा डोळा';

  @override
  String get rightEyeString => 'उजवा डोळा';

  @override
  String get bothEyesString => 'दोन्ही डोळे';

  @override
  String get visualAcuityLeftEyeHeader => 'चाचणी 2 - डावा डोळा';

  @override
  String get visualAcuityLeftEyeInstructions => 'पापणीवर दाब न देता, उजव्या डोळ्यावर तुमचा हात ठेवा. जर चष्मा घातला असेल तर चष्म्यावर हात ठेवा.';

  @override
  String get visualAcuityRightEyeHeader => 'चाचणी 1 - उजवा डोळा';

  @override
  String get visualAcuityRightEyeInstructions => 'पापणीवर दाब न देता, डाव्या डोळ्यावर तुमचा हात ठेवा. जर चष्मा घातला असेल तर चष्म्यावर हात ठेवा.';

  @override
  String get visualAcuityBothEyeHeader => 'चाचणी 3 - दोन्ही डोळे';

  @override
  String get visualAcuityBothEyeInstructions => 'तुमच्या कोणत्याही डोळ्यावर हात ठेवू नका आणि दोन्ही डोळ्यांनी जे दिसेल ते पाहा.';

  @override
  String get overlayHeaderDirection => 'दिशा';

  @override
  String get overlayDescription => 'प्रत्येक प्रतीकासाठी दिशा कशी समजावी हे येथे दिले आहे.';

  @override
  String get overlaySymbolDirectionText => 'प्रतीक दिशा : ';

  @override
  String get directionDown => 'खाली';

  @override
  String get directionUp => 'वर';

  @override
  String get directionLeft => 'डावीकडे';

  @override
  String get directionRight => 'उजवीकडे';

  @override
  String get dontShowAgainString => 'पुन्हा दाखवू नका';

  @override
  String get visualAcuityCarouselTitle => 'दृष्टी अचूकता चाचणी करण्यासाठीच्या पायऱ्यांची माहिती';

  @override
  String get eyeScanTitle => 'डोळा स्कॅन';

  @override
  String get eyeScanDescription => 'चाचणी संपत आली आहे, फक्त आणखी एक चाचणी शिल्लक आहे. तुमच्या डोळ्यांचे फोटो घ्या';

  @override
  String get eyeScanHowToPerform => 'तुमच्या डोळ्यांची स्कॅनिंग कशी करावी?';

  @override
  String get eyeScanViewStepsToPerform => 'तुमच्या डोळ्यांची स्कॅनिंग कशी करावी हे जाणून घेण्यासाठी पायरी पाहा.';

  @override
  String get eyeScanExitDialog => 'डोळा स्कॅन तुमच्या डोळ्यांच्या समस्येबद्दल अधिक जाणून घेण्यास मदत करते. तुम्हाला तरीही बाहेर पडायचे आहे का?';

  @override
  String get captureRightEyeString => 'उजवा डोळा कॅप्चर करा';

  @override
  String get captureLeftEyeString => 'डावा डोळा कॅप्चर करा';

  @override
  String get skipButton => 'वगळा';

  @override
  String get startTestText => 'चाचणी सुरू करा';

  @override
  String get continueButton => 'सुरू ठेवा';

  @override
  String get startButton => 'सुरु करा';

  @override
  String get nextButton => 'पुढे';

  @override
  String get proceedButton => 'पुढे जा';

  @override
  String get yesButton => 'हो';

  @override
  String get noButton => 'नाही';

  @override
  String get exitButton => 'बाहेर पडा';

  @override
  String get okButton => 'ठीक आहे';

  @override
  String get knowMoreButton => 'अधिक जाणून घ्या';

  @override
  String get seeAllButton => 'सर्व पाहा';

  @override
  String get tryAgainButton => 'पुन्हा प्रयत्न करा';

  @override
  String get shareNowButton => 'आत्ता शेअर करा';

  @override
  String get retryButton => 'पुन्हा प्रयत्न करा';

  @override
  String get homeCarousal1Title => '४० वर्षे आणि त्यावरील प्रौढ वयोगटातील मोतीबिंदूचे प्रसार आणि त्याचे संबंधित घटक';

  @override
  String get homeCarousal1Description => 'मोतीबिंदूच्या प्रसार आणि संबंधित घटकांवरील नमुना प्रक्रियेचे योजनाबद्ध प्रस्तुतीकरण';

  @override
  String get homeCarousal2Title => 'दुर्लक्ष करू नये अशा डोळ्यांच्या ७ समस्या';

  @override
  String get homeCarousal2Description => '\r\n\r\nचाचणी घ्यायला हव्यात अशा डोळ्यांच्या ७ समस्या -\r\n\r\n \r\n\r\n• डोळे लाल होणे\r\n\r\n• डोळ्यांमध्ये पाणी येणे\r\n\r\n• डोळ्यांवरील पांढरे ठिपके';

  @override
  String get homeCarousal3Title => 'डोळ्यांच्या समस्या अनेक असतात ज्या तुम्हाला दिसत नाहीत';

  @override
  String get homeCarousal3Description => 'परंतु दृष्टी सेवा तज्ञ हे करू शकतात.\r\n\r\nवेळेवर डोळ्यांच्या समस्या ओळखा\r\n\r\nआणि नंतरच्या जटिलता टाळण्यासाठी\r\n\r\nवेळेवर उपचार करा';

  @override
  String get myConnectionsTitle => 'माझे सदस्य';

  @override
  String get myConnectionsAddMember => 'सदस्य जोडा';

  @override
  String get myConnectionsServiceNotAvailable => 'सेवा उपलब्ध नाही';

  @override
  String get myConnectionsAdd => 'जोडा';

  @override
  String get recentServicesTitle => 'माझ्या अलीकडील सेवा';

  @override
  String get recentServicesEyeAssessment => 'डोळ्यांची तपासणी';

  @override
  String get recentServicesVisualAcuityTest => 'डोळ्यांची अचूकता चाचणी';

  @override
  String get nearbyVisionCentersTitle => 'जवळील दृष्टी केंद्रे';

  @override
  String get nearbyVisionCentersNotFound => 'कोणतीही दृष्टी केंद्रे सापडली नाहीत';

  @override
  String get tollFreeNumber => 'टोल फ्री क्रमांक';

  @override
  String get appDrawerTitle => 'मेनू';

  @override
  String get appDrawerHome => 'मुख्यपृष्ठ';

  @override
  String get appDrawerLanguageSelection => 'भाषा निवड';

  @override
  String get appDrawerAccessibility => 'अॅक्सेसिबिलिटी सेटिंग्ज';

  @override
  String get appDrawerMyProfile => 'माझे प्रोफाइल';

  @override
  String get appDrawerAssessmentsAndTests => 'तपासण्या आणि चाचण्या';

  @override
  String get appDrawerScanner => 'QR कोड स्कॅनर';

  @override
  String get appDrawerAboutUs => 'आमच्याविषयी';

  @override
  String get appDrawerPrivacyPolicy => 'गोपनीयता आणि डेटा धोरण';

  @override
  String get appDrawerHelpAndSupport => 'मदत आणि सेवा';

  @override
  String get appDrawerSignOut => 'साइन आऊट';

  @override
  String get aboutUsDescription => 'Sightconnect हे एक वापरायला सोपे डोळ्यांच्या आरोग्याविषयीचे अ‍ॅप आहे जे स्वत:च स्वत:च्या डोळ्यांची तपासणी करण्यास आणि फोन कॉलवर तज्ज्ञांचा सल्ला घेण्यास मदत करते.\r\n\r\nडोळ्यांची काळजी घेणं सर्वांसाठी सुलभ असायला हवं, या बांधिलकीमुळेच आम्ही हे काम हाती घेतलं आहे. हे अ‍ॅप सर्वांसाठी आहे, वय, तांत्रिक पार्श्वभूमी आणि सामाजिक किंवा आर्थिक पार्श्वभूमीवर याचा वापर अवलंबून नाही. अ‍ॅप आणि त्यातील सर्व माहिती इंग्रजी आणि इतर स्थानिक भाषांमध्ये उपलब्ध आहे. हे अ‍ॅप वापरकर्त्यांना त्यांच्या डोळ्यांची स्वत: तपासणी करण्यास मदत करते आणि वेळेवर उपचारविषयक सल्ला मिळवून देते. अ‍ॅप नवीनतम तंत्रज्ञान आणि साधने वापरून आमच्या वापरकर्त्यांसाठी डोळ्याच्या विकारांवरचे योग्य ते उपाय सुचवते. त्यांचे आयुष्य सुखकर करण्यासाठी यात अनेक उत्तम सोयी आहेत.';

  @override
  String get aboutUsFeaturesTitle => 'वैशिष्ट्ये';

  @override
  String get aboutUsFeaturesDescription => 'अ‍ॅपमध्ये अंतर्भूत डोळा चाचणी : अॅपमध्ये असलेल्या काही प्रश्नांची उत्तरं वापरकर्त्यांनी दिली की त्यानुसार त्यांना पुढे काय करायचे, गरज असल्यास कोणत्या डॉक्टरला भेटायचे, याविषयी योग्य सूचना हे अॅप देते. वापरकर्त्यांचे मित्र आणि कुटुंबीयही याचा लाभ घेऊ शकतात. |अपॉइंटमेंट बुकिंग : वापरकर्ते डॉक्टरांकडे ऑनलाईन टेलिकन्सल्टेशन आणि क्लिनिकमध्ये भेटी बुक करू शकतात जिथे त्यांचे डोळे तपासण्यात येतील. |IVR कॉल सेवा : आमच्या IVR कॉल सेवा इंग्रजी आणि स्थानिक भाषांमध्ये उपलब्ध आहेत आणि साधा फीचर फोन असणाऱ्या वापरकर्त्यांनादेखील त्या सेवा वापरता येतात. वापरकर्ते आपत्कालीन परिस्थितीत किंवा डोळ्याशी संबंधित कोणत्याही समस्यांवर तात्काळ मदतीसाठी आमच्या नेत्रतज्ञ व प्रशिक्षित मदतनिसांना कॉल करू शकतात. ते अपॉइंटमेंट बुक करण्यासाठी किंवा अधिक स्पष्टीकरण मिळवण्यासाठीदेखील कॉल करू शकतात. |जवळील क्लिनिक : वापरकर्ते त्यांच्या जवळचे डोळ्यांचे क्लिनिक शोधू शकतात. |प्रिस्क्रिप्शन्स आणि अहवाल : वापरकर्त्यांचे सर्व प्रिस्क्रिप्शन्स आणि अहवाल एका जागी सहज उपलब्ध केले जाऊ शकतात. | नेत्रआरोग्य शिबिरे : वापरकर्ते त्यांच्या जवळच्या नेत्र शिबिरांबद्दल माहिती मिळवू शकतात जेणेकरून ते त्यांच्या मित्रमैत्रिणी आणि कुटुंबीयांचे डोळे मोफत तपासून घेऊ शकतात. |रिमाइंडर्स आणि अलर्ट : वापरकर्ते आपल्या आगामी अपॉइंटमेंट्स, औषध, अहवाल इत्यादींशी संबंधित अलर्ट आणि रिमाइंडर्स योग्य वेळी प्राप्त करू शकतात. |शेअरिंग : वापरकर्ते हे अ‍ॅप आणि अ‍ॅपमध्ये दिलेली इतर उपयुक्त माहिती त्यांच्या मित्र आणि कुटुंबीयांसोबत शेअर करू शकतात.';

  @override
  String get aboutUsConclusion => 'या अ‍ॅपची निर्मिती आमच्या वापरकर्ता समुदायाला अधिक चांगल्या प्रकारे सेवा देण्यासाठी अग्रगण्य नेत्रतज्ञांच्या मदतीने केली आहे. आमच्या या उज्ज्वल आरोग्यदायी जग निर्माण करण्याच्या मोहिमेत आमच्यासोबत सामील व्हा. SightConnect अ‍ॅप आजच डाउनलोड करा आणि शेअर करा!';

  @override
  String get privacyPolicyDescription => 'एलव्ही प्रसाद आय इन्स्टिट्यूट, त्यांच्या उपकंपन्या, सहयोगी आणि संलग्नित कंपन्या (सामूहिकरित्या “एलव्हीपीईआय”, “आम्ही”, “आम्हाला”) आपल्या न्यायक्षेत्राच्या कायद्यानुसार आपल्या वैयक्तिक डेटाची प्रक्रिया करण्यास प्रतिबद्ध आहेत. आम्ही आपल्याला खालील माहिती देऊन सूचित करीत आहोत वैयक्तिक डेटाच्या प्रक्रियेबद्दल.';

  @override
  String get privacyPolicyPersonalDataTitle => 'संकलित/प्रक्रिया केलेले वैयक्तिक डेटा घटक:';

  @override
  String get privacyPolicyPersonalDataDescription => 'तुम्ही आणि तुमच्या संबंधितांची वैयक्तिक माहिती जसे की (यापैकी काही माहिती पर्यायी असेल) मोबाइल क्रमांक, नाव, जन्मतारीख, लिंग (पुरुष/स्त्री), पत्ता (पिन कोड), रुग्ण ID, संबंध, डोळा चाचणीचा प्रतिसाद, डोळा चाचणी अहवाल, डोळ्यांची प्रतिमा, तुमच्या डोळ्यांच्या प्रतिमेवर टॅग केलेली लक्षणे, छायाचित्र, पत्त्याची तपशीलवार माहिती जसे की पत्ता, जिल्हा नाव (जिल्हा कोडासहित), राज्य नाव (राज्य कोडासहित), उपजिल्हा नाव, गाव नाव, शहर नाव, ईमेल पत्ता, आडनाव, मधले नाव, रक्तगट, उंची, वजन, व्यवसाय, आपण प्रदान केलेल्या ABHA तपशीलांनुसार; आपल्या अ‍ॅपमधल्या कॅमेरा परवानग्यांच्या आधारे GPS स्थान, गॅलरीतील छायाचित्रे पाहण्याची परवानगी, पूर्ण नेटवर्कची परवानगी, नेटवर्क कनेक्शन्स पाहणी, डिवाइस माहिती.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'प्रक्रियेचा उद्देश:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'अॅप वापरण्यासाठी आणि तुमच्या व तुम्ही दिलेल्या संबंधितांच्या डोळ्यांशी संबंधित आॅनलाइन नेत्रचिकित्सा वैशिष्ट्यांसाठी. | डोळ्यांच्या काही समस्या असल्यास एलव्हीपीईआयचे नेत्र तंत्रज्ञ, नेत्रतज्ञ यांच्याशी गरजेनुसार संपर्क साधण्यासाठी । डोळ्यांशी संबंधित माहिती, चाचणी अहवाल वगैरेंसह, आमच्या अधिकृत एलव्हीपीईआय नेत्ररोगतज्ज्ञांशी/डॉक्टरांशी सामायिक करण्यासाठी, योग्य निदानासाठी आणि गावाचे मुख्य/महापौर इत्यादींशी (तुमच्या जीपीएस स्थानावर आधारित जेथे जे लागू असेल) तो डेटा सामायिक करण्यासाठी, नेत्र समस्येच्या गांभीर्यानुसार, तुम्ही एलव्हीपीईआय डॉक्टरांशी संपर्क साधू शकत नसाल किंवा उपचारासाठी माहिती देण्यास समर्थ नसाल तर.|तुमच्या नजीक एलव्हीपीईआयशी संलग्न असलेल्या नेत्र चिकित्सालयांची/रुग्णालयांची यादी प्रदान करणे, जेणेकरून तुम्ही कोणत्याही नेत्र संबंधित समस्यांच्या बाबतीत त्यांना भेटू शकता.|योग्य निदान करण्यासाठी भविष्यात आमच्या मशीन लर्निंग किंवा कृत्रिम बुद्धिमत्ता मॉडेल्सचे प्रशिक्षण करण्यासाठी नेत्र प्रतिमा, नेत्र प्रतिमेशी संबंधित लक्षणे, वय, रक्तगट, स्थान इत्यादींचा, कोणत्याही ओळखण्यायोग्य तपशीलांशिवाय, वापर करण्यासाठी. |डोळ्यांच्या आरोग्यासाठी जागृती निर्माण करण्यासाठी, स्मरणपत्र, संपर्क, प्रचार साहित्य पाठविण्यासाठी.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'डेटा प्राप्तकर्ते/ वापरकर्ते';

  @override
  String get privacyPolicyDataRecipientsDescription => 'तुम्ही सामायिक केलेली वैयक्तिक माहिती (संवेदनशील वैयक्तिक माहितीसह) अधिकृत LVPEI कर्मचाऱ्यांना जसे की डॉक्टर/ नेत्ररोगतज्ञ, दृष्टी तंत्रज्ञ, दृष्टी मदतनीस, LVPEI चे प्रतिनिधी, आंतरिक/बाह्य लेखापरीक्षक, योग्य ठिकाणी सरकारी अधिकाऱ्यांना, आणि आमच्या अधिकृत सेवा प्रदाता Infosys यांना उपलब्ध होईल.';

  @override
  String get privacyPolicyDataTransferTitle => 'डेटा हस्तांतरण आणि संग्रहण:';

  @override
  String get privacyPolicyDataTransferDescription => 'तुम्ही सामायिक केलेल्या वैयक्तिक माहिती आमच्या अंतर्गत सर्व्हर्सवर, आमच्या अधिकृत सेवा प्रदात्याच्या भारतातील सर्व्हरवर संग्रहित केली जाईल.';

  @override
  String get privacyPolicyDataSecurityTitle => 'डेटा सुरक्षा:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI तुमच्या वैयक्तिक माहितीचे संरक्षण करण्यासाठी योग्य आणि योग्य सुरक्षा पद्धती आणि प्रक्रिया अंमलात आणते ज्यात प्रशासकीय, भौतिक सुरक्षा, आणि तांत्रिक नियंत्रणांचा समावेश आहे.';

  @override
  String get privacyPolicyDataRetentionTitle => 'डेटा संधारण:';

  @override
  String get privacyPolicyDataRetentionDescription => 'कायदेशीर आणि व्यवसायिक आवश्यकतांनुसार जतन करण्याची आवश्यकता नसलेल्या वैयक्तिक माहितीचा सुरक्षित पद्धतीने निपटारा केला जाईल';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'डेटा विषयक अधिकार:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'तुम्हाला कोणत्याही वेळी तुमची वैयक्तिक माहिती पाहण्याचा आणि ती सुधारित करण्याचा हक्क आहे. कोणत्याही विनंत्या, प्रश्नांना, चिंतांना किंवा प्रश्नांच्या बाबतीत तुम्ही <LVPEI द्वारे सामान्य मेल आयडी प्रदान करण्यासाठी> ईमेल पाठवून LV प्रसाद कार्यालयाशी संपर्क साधू शकता.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'मागे घेण्याचा हक्क:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'आम्ही तुमच्या वैयक्तिक डेटावर तुमच्या संमतीवर आधारित प्रक्रिया करत असल्यास, तुम्ही भविष्यात संमती केव्हाही मागे घेऊ शकता. हे तुमच्या संमती मागे घेण्यापूर्वीच्या कोणत्याही प्रक्रिया कार्याची वैधता बदलू शकणार नाही. तुमची संमती रद्द करण्यासाठी तुम्ही <LVPEI द्वारे सामान्य मेल आयडी प्रदान करण्यासाठी DSR> कडे ईमेल पाठवू शकता.';

  @override
  String get privacyPolicyAcknowledgement => 'खालील बटणावर क्लिक करून, तुम्ही येथे मान्यता देता की तुमचा वैयक्तिक डेटा तसेच संवेदनशील वैयक्तिक डेटा वरील प्रकारे संकलित आणि प्रक्रिया केला जाऊ शकतो आणि यासाठी तुमची संमती आहे. तुम्ही यासही मान्यता देता की तुम्ही तुमच्याकडून सामायिक केलेला कोणताही वैयक्तिक डेटा (संवेदनशील वैयक्तिक डेटासह) योग्य संमती घेऊनच सामायिक केलेला आहे. तुम्ही यासही मान्यता देता की तुम्ही वरील उद्देशांसाठी आवश्यक नसलेला कोणताही वैयक्तिक डेटा (संवेदनशील वैयक्तिक डेटा सह) सामायिक करणार नाही. तुम्ही यासही मान्यता देता की तुम्ही तुमच्या मुलांचा वैयक्तिक डेटा त्यांचे पालक/ कायदेशीर संरक्षक म्हणून सामायिक करत असताना त्यांच्या डेटा संकलन आणि प्रक्रिया करण्यास संमती देता.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'गोपनीयता धोरण स्वीकारले';

  @override
  String get helpAndSupportReachTitle => 'आमच्याशी संपर्क करा';

  @override
  String get assessmentAndTestsSubtitle => 'आतापर्यंत केलेल्या मूल्यमापनांचा त्वरित आढावा येथे आहे.';

  @override
  String get assessmentAndTestsReportsNotFound => 'अहवाल सापडले नाहीत';

  @override
  String get eyeAssessmentTitle => 'डोळा मूल्यमापन';

  @override
  String get eyeAssessmentSubtitle => 'तुमच्या, तुमच्या मित्रमंडळीच्या आणि कुटुंबातील सदस्यांच्या डोळ्यांच्या समस्यांचे मूल्यमापन केवळ काही प्रक्रियांमध्ये करा. तुमच्या डोळ्यांच्या समस्यांशी संबंधित लक्षणांचा अभ्यास करण्यासाठी तुम्हाला काही प्रश्न विचारले जातील, त्यानंतर दृष्टी चाचण्या केल्या जातील.';

  @override
  String get eyeAssessmentGetMemberLabel => 'सदस्य बदला';

  @override
  String get eyeAssessmentProceedButton => 'पुढे जा';

  @override
  String get eyeAssessmentBrightnessLabel => 'ब्राइटनेस 80% वर सेट केली';

  @override
  String get eyeAssessmentBrightnessError => 'कृपया ब्राइटनेस 80% वर स्वतः सेट करा';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'Question not supported yet - can this be translated as answer/feedback not available yet?';

  @override
  String get eyeAssessmentPopUpHeading => 'मूल्यमापन';

  @override
  String get eyeAssessmentPopUpBody => 'आपल्याला दृष्टीशी संबंधित कोणतीही समस्या आहे का?';

  @override
  String get eyeAssessmentPopUpYesButton => 'हो';

  @override
  String get eyeAssessmentPopUpNoButton => 'नाही';

  @override
  String get visualAcuityTestInstructionOne => 'आरामदायकपणे बसून, चांगल्या प्रकाशातील स्थानी बसा. तुम्हाला अचानक प्रकाशात बदल जाणवेल, चिंता करू नका. उत्तम परिणाम प्रदान करण्यासाठी स्क्रीन स्वयंचलित-प्रकाशमानावर सेट केली आहे ';

  @override
  String get visualAcuityTestInstructionTwo => 'मोबाइल डोळ्यांच्या पातळीवर धरण्याची खात्री करा. जर तुम्ही चष्मा किंवा कॉन्टॅक्ट लेन्स वापरत असाल तर ते काढू नका';

  @override
  String get visualAcuityTestInstructionThree => 'स्क्रीनपासून 40 सेंटीमीटर अंतरावर स्थिर बसा. अंतर चाचणी स्क्रीनमध्ये दर्शविले जाईल.';

  @override
  String get visualAcuityTestInstructionFour => 'जर तुम्ही चष्मा घालून चाचणी करीत असाल, तर एका डोळ्याची चाचणी घेताना चष्म्यावरून हाताने एक डोळा झाका.';

  @override
  String get skipAndProceedButton => 'वगळा आणि पुढे जा';

  @override
  String get proceedToScanButton => 'स्कॅनकडे जा';

  @override
  String get eyeAssessmentSteps => 'पायर्‍या';

  @override
  String get eyeAssessmentStepOne => 'पायरी 1 - डोळा मूल्यमापन प्रश्न';

  @override
  String get eyeAssessmentStepTwo => 'पायरी 2 - डोळा मूल्यमापन प्रश्न';

  @override
  String get eyeAssessmentStepThree => 'पायरी 3 - डोळा मूल्यमापन प्रश्न';

  @override
  String get eyeAssessmentOngoing => 'सुरू आहे';

  @override
  String get eyeAssessmentCompleted => 'पूर्ण झाले';

  @override
  String get eyeAssessmentPending => 'प्रलंबित';

  @override
  String get eyeAssessmentResults => 'मूल्यमापन परिणाम';

  @override
  String get eyeAssessmentCompleteSteps => 'परिणाम पाहण्यासाठी सर्व पायर्‍या पूर्ण करा';

  @override
  String get eyeAssessmentToolTip => 'कृपया फ्लॅश बंद असल्याची आणि चमक 80% वर सेट असल्याची खात्री करा';

  @override
  String get eyeScanInstructionOne => 'चेहरा फ्रेमवर योग्यरित्या ठेवून कॅमेरा धरा.';

  @override
  String get eyeScanInstructionTwo => 'फोनच्या मागील कॅमेराचा वापर करून डोळ्यांचे छायाचित्र घ्या.';

  @override
  String get eyeScanInstructionThree => 'फ्लॅशसह चांगल्या प्रकाशित क्षेत्रात असल्याची खात्री करा.';

  @override
  String get eyeScanInstructionFour => 'चांगल्या कॅप्चर आणि स्पष्टतेसाठी, दुसर्‍या व्यक्तीने छायाचित्र क्लिक करण्याची तयारी करा.';

  @override
  String get eyeScanInstructionFive => 'एक डोळा हाताने झाकून दुसर्‍या डोळ्याने थेट पुढे पाहताना छायाचित्र घ्या.';

  @override
  String get eyeScanInstructionSix => 'छायाचित्र सुरू करण्यापूर्वी डोळा पॅनलमध्ये केंद्रित करा.';

  @override
  String get eyeScanInstructionSeven => 'फ्लॅश बंद होईपर्यंत आणि ‘बीप’ आवाज छायाचित्र संपल्याचे संकेत देईपर्यंत डोळे मोठे ठेवा.';

  @override
  String get eyeAssessmentNote => 'टीप: येथे दर्शविलेल्या प्रतिमा केवळ संकेतासाठी आहेत. वास्तविक जीवनात त्या तशाच दिसणार नाहीत.';

  @override
  String get agreeButton => 'मी सहमत आहे';

  @override
  String get consentPageCheckbox => 'मी नियम आणि अटींशी सहमत आहे';

  @override
  String get confirmButton => 'निश्चित करा';

  @override
  String get discardButton => 'रद्द करा';

  @override
  String get imageNotCapturedToastMessage => 'प्रतिमा कॅप्चर केलेली नाही';

  @override
  String get eyeCaptureCompletionDialogHeading => 'चाचणी पूर्ण';

  @override
  String get eyeCaptureCompletionDialogBody => 'तुम्ही चाचणी पूर्ण केली आहे. कृपया परिणाम पाहण्यासाठी खालील बटणावर क्लिक करा.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'परिणाम पाहा';

  @override
  String get eyeCaptureTriageSavedLocally => 'प्राथमिक छाननीचे स्थानिक जतन';

  @override
  String get visualAcuityTestResults => 'दृष्टी अचूकता चाचणी परिणाम';

  @override
  String get assessmentResultPageMoreDetailsText => 'अधिक माहितीसाठी जवळच्या दृष्टी केंद्रास भेट द्या. आमच्या दृष्टी तंत्रज्ञांशी बोलण्यासाठी टोल-फ्री क्रमांकावर कॉल करा.';

  @override
  String get assessmentReportButton => 'डोळा मूल्यमापन अहवाल';

  @override
  String get notificationsTitle => 'सूचना';

  @override
  String get notificationsNotAvailable => 'कोणत्याही सूचना उपलब्ध नाहीत';

  @override
  String get servicesPatientCare => 'रुग्ण सेवा';

  @override
  String get reportAssessmentId => 'मूल्यमापन क्रमांक';

  @override
  String get reportDateAndTime => 'तारीख व वेळ';

  @override
  String get reportSeverityAbnormal => ' तातडीने सल्ला';

  @override
  String get reportSeverityHigh => 'प्राथमिक तपास';

  @override
  String get reportSeverityLow => 'नियमित तपास';

  @override
  String get reportDataUnavailable => 'डेटा उपलब्ध नाही';

  @override
  String get reportTumblingTitle => 'अचूकता चाचणी - टंबलिंग ई';

  @override
  String get rightCornea => 'उजव्या डोळ्याची बाहुली';

  @override
  String get leftCornea => 'डाव्या डोळ्याची बाहुली';

  @override
  String get myProfileGeneralInfo => 'सामान्य माहिती';

  @override
  String get myProfileAge => 'वय';

  @override
  String get myProfileAddress => 'पत्ता';

  @override
  String get myProfileLine => 'लाइन';

  @override
  String get myProfileCity => 'शहर';

  @override
  String get myProfileDistrict => 'जिल्हा';

  @override
  String get myProfileState => 'राज्य';

  @override
  String get myProfilePinCode => 'पिन कोड';

  @override
  String get submitButton => 'सबमिट करा';

  @override
  String get swipeGestureError => 'चुकीची स्वाईप! कृपया पुन्हा प्रयत्न करा.';

  @override
  String get swipeGestureCardText => ' चिन्हाच्या दिशेने स्वाईप करा';

  @override
  String get assessmentResultCardAssessmentQuestions => 'मूल्यांकन\r\n\r\nप्रश्न';

  @override
  String get assessmentResultCardAcuityTest => '\r\n\r\nअचूकता परीक्षण';

  @override
  String get assessmentResultCardEyeScan => 'डोळे\r\n\r\nस्कॅन';

  @override
  String get viewReportButton => 'अहवाल पाहा';

  @override
  String get updateButton => 'अद्ययावत करा';

  @override
  String get assessmentCardUrgentConsult => 'तत्काल सल्ला';

  @override
  String get assessmentCardRoutineCheckUp => 'नियमित तपासणी';

  @override
  String get assessmentCardEarlyCheckUp => 'पूर्व तपासणी';

  @override
  String get testAgainButton => 'पुन्हा परीक्षा करा';

  @override
  String get homeButton => 'होम';

  @override
  String get homeTriageCardTitle => 'आपले डोळे सर्वात मूल्यवान संपत्ती आहेत.';

  @override
  String get homeTriageCardDescription => 'डोळ्यांची समस्या टाळण्यासाठी त्यांची वेळेवर तपासणी करा.';

  @override
  String get homeTriageCardTest => 'डोळे चाचणी सुरू करा';

  @override
  String get homeHelplineCardDescrition => 'अचानक दृष्टी गेल्यास या आपातकालीन हेल्पलाईनवर कॉल करा';

  @override
  String get inviteCardTitle => 'इतरांना आमंत्रित करा';

  @override
  String get inviteCardDescription => '5 मित्रांना आणि कुटुंबातील सदस्यांना आमंत्रित करा, त्यांना त्यांची डोळे मूल्यांकन करण्यास सहाय्य करा आणि भविष्यातील डोळ्यांच्या समस्या टाळा.';

  @override
  String get inviteCardInvitation => 'आत्ताच आमंत्रित करा';

  @override
  String get partnerCardTitle => 'साथीदार';

  @override
  String get languageSelection => 'भाषा निवडा';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get eyeAssessmentEnterLabel => 'येथे प्रविष्ट करा';

  @override
  String get profilePageAddressDetails => 'पत्ता तपशील';

  @override
  String get profilePaeCheckReports => 'तुमचे अहवाल तपासा';

  @override
  String get bottomNavItemEyeTest => 'डोळा चाचणी';

  @override
  String get bottomNavItemAppointment => 'भेटी';

  @override
  String get memberSelection => 'सदस्य निवडा';

  @override
  String get triageAlerDialogBoxTitle => 'पुन्हा करण्यासाठी पायऱ्या निवडा';

  @override
  String get scannerTitle => 'स्कॅनर';

  @override
  String get visualAcuityTestDistanceInstruction => 'कॅमेरा डोळ्यांपासून ४० सेंटीमीटर दूर ठेवा';

  @override
  String get somethingWentWrong => 'काहीतरी गडबड झाली आहे';

  @override
  String get triageUpdatedSuccessfully => 'प्राथमिक छाननी अद्ययावत झाली आहे';

  @override
  String get noPreviewAvailable => 'पूर्वावलोकन उपलब्ध नाही';

  @override
  String get privacyPolicyTitle => 'गोपनीयता आणि डेटा सुरक्षा';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'तुम्ही दिलेले तुमचा खाजगी डेटा खालील कारणांसाठी वापरतो';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'तुम्ही कॅमेऱ्यापासून फार जवळ आहात, कॅमेरा डोळ्यांपासून ४० सेंटीमीटर दूर ठेवा';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'तुम्ही कॅमेऱ्यापासून फार लांब आहात, कॅमेरा डोळ्यांपासून ४० सेंटीमीटर दूर ठेवा';

  @override
  String get myProfileABHAID => 'आभा आयडी';

  @override
  String get myProfileEmail => 'ई-मेल';

  @override
  String get viewHistoryButton => 'इतिहास पहा';

  @override
  String get profilePagePersonalDetails => 'वैयक्तिक माहिती';

  @override
  String get profilePageDateOfBirth => 'जन्मतारीख';

  @override
  String get profilePageGender => 'लिंग';

  @override
  String get profilePageMobile => 'मोबाइल';

  @override
  String get profilePageHealthCardTitle => 'आरोग्य कार्ड';

  @override
  String get appointmentTitle => 'नियोजित भेटी ';

  @override
  String get appointmentSubtitle => 'सर्व नियोजित भेटी ';

  @override
  String get eyeBoxText => 'डोळ्यांभोवती हिरवी पेटी दिसू लागेपर्यंत कृपया प्रतिमा समायोजित करा आणि स्थानबद्ध करा. डोळा जवळ घ्या आणि पेटीचा 40 टक्के भाग डोळ्याने झाकलेला आहे याची खात्री करा.';

  @override
  String get bottomNavItemServices => 'सेवा';

  @override
  String get smsContent => 'अरे! मी माझ्या डोळ्यांची काळजी घेण्यासाठी साइटकनेक्ट अॅप वापरत आहे आणि तुम्हीही वापरायला हवे! तुमच्या डोळ्यांचे मूल्यांकन करा आणि साइटकनेक्ट अॅपद्वारे वेळेवर उपचार घ्या. हे एक अद्वितीय अॅप आहे जे तुमच्या हातात प्रतिबंधात्मक डोळ्यांची काळजी आणते. ते आता मिळवाः https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'साईटकनेक्ट अॅपद्वारे तुमच्या डोळ्यांच्या आरोग्याला प्राधान्य द्या!';

  @override
  String get recentServicesCataractEyeTest => 'मोतीबिंदूची डोळ्यांची चाचणी';

  @override
  String get recentServicesRedEyeTest => 'डोळ्यांची लाल चाचणी';

  @override
  String get chatBotDefaultQuerySuggestions => 'डोळ्यांचे मूल्यमापन सुरू करा । डोळ्यांच्या सामान्य समस्या । डोळ्यांच्या चांगल्या दृष्टीसाठी टिपा';

  @override
  String get chatBotWelcomeMessage => 'नमस्कार, मी आज तुम्हाला कशी मदत करू शकतो?';

  @override
  String get poweredByText => 'द्वारे चालवले जाते';

  @override
  String get digitalHealthCard => 'डिजिटल सार्वजनिक आरोग्य संच';

  @override
  String get inviteNowText => 'आता आमंत्रित करा';

  @override
  String get resend => 'पुन्हा पाठवा';

  @override
  String get mobileNumber => 'मोबाईल क्रमांक';

  @override
  String get loginVerifyMobileNumber => 'तुमचा मोबाईल क्रमांक तपासा';

  @override
  String get loginEnterMobileNumber => 'कृपया मोबाईल क्रमांक प्रविष्ट करा';

  @override
  String get loginEnterValidMobileNumber => 'कृपया वैध मोबाईल क्रमांक प्रविष्ट करा';

  @override
  String get loginUnableToSendOTP => 'या क्रमांकावर ओ. टी. पी. पाठवणे अशक्य';

  @override
  String get loginGetOTP => 'ओ. टी. पी. मिळवा';

  @override
  String get loginInvalidOTP => 'अवैध ओ. टी. पी.';

  @override
  String get loginDidntReceiveOTP => 'ओ. टी. पी. आला नाही का?';

  @override
  String get loginOTPSent => 'ओ. टी. पी. यशस्वीरित्या पाठवला गेला';

  @override
  String get areYouSure => 'तुम्हाला खात्री आहे का?';

  @override
  String get triageExitConfirmation => 'तुम्हाला चाचणीतून बाहेर पडायचे आहे का?';

  @override
  String get triageReportEyeProblems => 'डोळ्यांच्या समस्यांची तक्रार करा';

  @override
  String get triageHowToReport => 'डोळ्यांच्या समस्यांची तक्रार कशी करावी?';

  @override
  String get triageReportInstructions => 'जर तुम्हाला डोळ्यांशी संबंधित समस्या असेल तर योग्य मार्गदर्शन मिळवण्यासाठी तुम्ही स्वतःहून तुमच्या समस्यांची घोषणा करू शकता आणि तुमच्या समस्यांचा उल्लेख करू शकता. तुम्ही येथे तुमच्या मित्रांच्या किंवा कुटुंबातील सदस्यांच्या डोळ्यांच्या समस्यांचाही उल्लेख करू शकता आणि योग्य मार्गदर्शन मिळवू शकता. डोळ्याच्या समस्येचे स्वरूप आणि तीव्रता समजून घेण्यासाठी तुम्हाला खालील विभागांमध्ये प्रश्न विचारले जातील. तुम्हाला केल्या जाणाऱ्या चाचण्या आणि सर्व प्रश्नांची उत्तरे दिल्यानंतर अनुसरण करण्यासाठीच्या पायऱ्या सुचवल्या जातील आणि मार्गदर्शन केले जाईल.';

  @override
  String get assessment => 'मूल्यमापन';

  @override
  String get triageOtherSymptomsQuestion => 'तुम्हाला इतर काही लक्षणे आहेत का?';

  @override
  String get triageEnterSymptoms => 'तुमची लक्षणे येथे नोंदवा';

  @override
  String get triageEyeAssessmentResults => 'डोळ्यांचे मूल्यांकन परिणाम';

  @override
  String get triageTestId => 'चाचणी आयडी';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'डोळ्यांचे स्कॅन यशस्वीरित्या अद्ययावत केले';

  @override
  String get triageErrorEyeScanNotUpdated => 'डोळ्यांचे स्कॅन अद्ययावत केले गेले नाही!';

  @override
  String get triageLeftEyeString => 'डावा डोळा';

  @override
  String get triageRightEyeString => 'उजवा डोळा';

  @override
  String get vaEyeTest => 'डोळ्यांची चाचणी';

  @override
  String get instructions => 'सूचना';

  @override
  String get vaSwipeUp => 'वर स्वाइप करा';

  @override
  String get vaSwipeDown => 'खाली स्वाइप करा';

  @override
  String get vaSwipeLeft => 'डावीकडे स्वाइप करा';

  @override
  String get vaSwipeRight => 'उजवीकडे स्वाइप करा';

  @override
  String get vaSwipeGestureError => 'अवैध स्वाइप हावभाव. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get permissionNotGranted => 'परवानगी मिळाली नाही.';

  @override
  String get serviceNotAvailable => 'सेवा उपलब्ध नाही';

  @override
  String get vaDistanceToFace => 'समोरासमोरचे अंतर';

  @override
  String get vaDistanceToFaceInstruction => 'कृपया कॅमेरा तुमच्या चेहऱ्यापासून 40 सें. मी. दूर असल्याची खात्री करा.';

  @override
  String get vaBringFaceInsideBox => 'चौकटीच्या आत तुमचा चेहरा आणा.';

  @override
  String get startAssessment => 'मूल्यमापन सुरू करा';

  @override
  String get optoAddPatientInfo => 'रुग्णाची माहिती जोडा';

  @override
  String get loggedOutMessage => 'तुम्हाला लॉग आउट करण्यात आले आहे';

  @override
  String get optoLogoutError => 'माफ करा, आम्हाला मोबाईल अॅपमध्ये लॉगआउट त्रुटी आढळली.';

  @override
  String get optoLoggingOut => 'लॉग आउट करत आहे...';

  @override
  String get hello => 'नमस्कार.';

  @override
  String get optoGetStarted => 'चला सुरुवात करूया';

  @override
  String get optoCompletedTests => 'पूर्ण झालेल्या चाचण्या';

  @override
  String get optoThisMonth => 'या महिन्यात';

  @override
  String get today => 'आज';

  @override
  String get services => 'सेवा';

  @override
  String get optoAssessmentHistory => 'मूल्यांकनाचा इतिहास';

  @override
  String get optoEyeAssessments => 'डोळ्यांचे मूल्यमापन';

  @override
  String get feedback => 'फीडबॅक';

  @override
  String get optoImproveApp => 'तुमचा अभिप्राय आमच्या अनुप्रयोगात सुधारणा करेल अशी आमची इच्छा आहे.';

  @override
  String get assessments => 'मूल्यमापन';

  @override
  String get optoPatientAssistance => 'रुग्णाला मदतीची गरज होती का?';

  @override
  String get optoVisualAcuity => 'दृश्य तीक्ष्णता';

  @override
  String get optoPatientAided => 'रुग्णाला मदत झाली का?';

  @override
  String get optoEyeScan => 'डोळ्यांचे स्कॅन';

  @override
  String get optoLeaveFeedback => 'कृपया तुमचा अभिप्राय खाली द्या';

  @override
  String get optoNoInternet => 'इंटरनेट जोडणी नाही';

  @override
  String get optoCheckInternet => 'कृपया तुमची आंतरजाल जोडणी तपासा आणि पुन्हा प्रयत्न करा';

  @override
  String get optoSearchPatientId => 'रुग्णाचा आयडी शोधा';

  @override
  String get optoRecentAssessments => 'अलीकडील मूल्यमापन';

  @override
  String get optoSelectDateRange => 'कृपया तारखेची श्रेणी निवडा';

  @override
  String get optoDataNotFound => 'या शोधासाठी माहिती सापडलेली नाही';

  @override
  String get optoAssessmentReport => 'मूल्यांकन अहवाल';

  @override
  String get optoPID => 'पी. आय. डी.';

  @override
  String get category => 'वर्गवारी';

  @override
  String get patientAssessmentAndTest => 'रुग्णाचे मूल्यांकन आणि चाचणी';

  @override
  String get patientSelfTestReport => 'स्व-चाचणी अहवाल';

  @override
  String get patientClinicalReport => 'वैद्यकीय अहवाल';

  @override
  String get patientAppointmentTitle => 'नियुक्ती';

  @override
  String get patientBookAppointment => 'पुस्तकांची नियुक्ती';

  @override
  String get patientAppointmentSubtitle => 'तुमच्या नियुक्त्या';

  @override
  String get patientTelephoneConsultation => 'दूरध्वनी सल्लामसलत';

  @override
  String get patientAddress => 'पत्ता.';

  @override
  String get patientReschedule => 'पुन्हा वेळापत्रक करा';

  @override
  String get patientCancel => 'रद्द करा';

  @override
  String get patientPID => 'पी. आय. डी.';

  @override
  String get patientReportID => 'आयडी नोंदवा';

  @override
  String get patientHideDetailedReport => 'तपशीलवार अहवाल लपवा';

  @override
  String get patientShowDetailedReport => 'तपशीलवार अहवाल दाखवा';

  @override
  String get patientEID => 'ई. आय. डी.';

  @override
  String get patientViewHistoryButton => 'इतिहास पहा';

  @override
  String get patientViewReportButton => 'अहवाल पहा';

  @override
  String get patientNoMoreData => 'अधिक माहिती नाही';

  @override
  String get patientErrorFetchingReport => 'अहवाल आणण्यात त्रुटी';

  @override
  String get patientTimeline => 'कालमर्यादा';

  @override
  String get patientRoutineCheckup => 'नियमित तपासणी';

  @override
  String get patientAssessmentID => 'मूल्यांकन आयडी';

  @override
  String get patientStartDate => 'प्रारंभ तारीख';

  @override
  String get patientIVRAssessment => 'आय. व्ही. आर. मूल्यांकन';

  @override
  String get patientEarlyConsultationRecommended => 'लवकर सल्लामसलत करण्याची शिफारस';

  @override
  String get patientCataractEyeReport => 'मोतीबिंदूचा डोळ्यांचा अहवाल';

  @override
  String get patientRedEyeReport => 'लाल डोळा अहवाल';

  @override
  String get patientScanAgain => 'पुन्हा स्कॅन करा';

  @override
  String get patientStepsToScan => 'दृष्टिपटल स्कॅनिंग करण्यासाठीच्या पायऱ्या';

  @override
  String get patientProceedToScan => 'स्कॅन करण्यासाठी पुढे जा';

  @override
  String get patientSkipAndProceedToScan => 'स्किप करा आणि स्कॅनसाठी पुढे जा';

  @override
  String get patientEyeScanner => 'डोळा स्कॅनर';

  @override
  String get patientErrorSelectCamera => 'प्रथम कॅमेरा निवडा!';

  @override
  String get patientEyeBoxText => 'डोळ्यांच्या चौकटीतील मजकूर';

  @override
  String get patientLoggedOut => 'तुम्हाला लॉग आउट करण्यात आले आहे';

  @override
  String get patientLogoutError => 'माफ करा, आम्हाला मोबाईल अॅपमध्ये लॉगआउट त्रुटी आढळली.';

  @override
  String get patientUpdateProfile => 'प्रोफाइल अद्ययावत करा';

  @override
  String get patientEdit => 'संपादन करा';

  @override
  String get patientProfileNotUpdated => 'प्रोफाइल अद्ययावत केले नाही';

  @override
  String get patientProfileUpdated => 'प्रोफाईल अद्ययावत केले';

  @override
  String get patientReportUnavailable => 'अहवाल उपलब्ध नाही';

  @override
  String get patientClinicalReportNotFound => 'वैद्यकीय अहवाल सापडला नाही';

  @override
  String get patientRID => 'आर. आय. डी.';

  @override
  String get patientUpdateUnavailable => 'अद्ययावत सध्या उपलब्ध नाही';

  @override
  String get vgAddEvent => 'कार्यक्रम जोडा';

  @override
  String get vgUploadingImageAddingEvent => 'प्रतिमा अपलोड करत आहे आणि कार्यक्रम जोडत आहे';

  @override
  String get vgEventTitle => 'कार्यक्रमाचे शीर्षक';

  @override
  String get vgPleaseEnterEndTime => 'कृपया अंतिम वेळ प्रविष्ट करा';

  @override
  String get vgShouldNotContainSpecialCharacter => 'त्यात कोणतेही विशेष वर्ण नसावेत.';

  @override
  String get vgEventDescription => 'कार्यक्रमाचे वर्णन';

  @override
  String get vgAddPatient => 'रुग्णाला समाविष्ट करा';

  @override
  String get vgPatients => 'रुग्णांचे हाल';

  @override
  String get vgDetails => 'तपशील';

  @override
  String get vgTeammates => 'सहकाऱ्यांनी';

  @override
  String get vgEyeAssessment => 'डोळ्यांचे मूल्यांकन';

  @override
  String get vgStart => 'सुरुवात करा.';

  @override
  String get vgEyeAssessmentDescription => 'तुमच्या, तुमच्या मित्रांच्या आणि कुटुंबातील सदस्यांच्या डोळ्यांच्या समस्यांचे मोजमाप काही टप्प्यांत करा. तुमच्या डोळ्यांच्या समस्यांशी संबंधित लक्षणे समजून घेण्यासाठी तुम्हाला अनेक प्रश्न विचारले जातील आणि त्यानंतर दृश्य चाचण्या केल्या जातील.';

  @override
  String get vgLogoutMessage => 'तुम्हाला लॉग आउट करण्यात आले आहे';

  @override
  String get vgLogoutErrorMessage => 'माफ करा, आम्हाला मोबाईल अॅपमध्ये लॉगआउट त्रुटी आढळली.';

  @override
  String get vgWelcome => 'स्वागत आहे.';

  @override
  String get vgServices => 'सेवा';

  @override
  String get vgEvents => 'घडामोडी';

  @override
  String get vgViewAll => 'सर्व पहा';

  @override
  String get vtAssessmentReport => 'मूल्यांकन अहवाल-ई. ए.';

  @override
  String get vtRemarks => 'टिप्पण्या';

  @override
  String get vtNoPatientFound => 'एकही रुग्ण सापडला नाही.';

  @override
  String get vtClose => 'बंद करा.';

  @override
  String get vtBack => 'मागे.';

  @override
  String get vtSubmit => 'सादर करा';

  @override
  String get vtSomethingWentWrong => 'काहीतरी चूक झाली.';

  @override
  String get vtAssessmentClosedSuccessfully => 'मूल्यांकन यशस्वीरित्या पूर्ण झाले';

  @override
  String get vtEyeScan => 'डोळ्यांचे स्कॅन';

  @override
  String get vtDashboard => 'डॅशबोर्ड';

  @override
  String get vtRegisterPatient => 'रुग्णाची नोंदणी करा';

  @override
  String get vtTriage => 'त्रिकूट.';

  @override
  String get vtMarkMyAvailability => 'माझी उपलब्धता चिन्हांकित करा';

  @override
  String get vtIVRCallHistory => 'आय. व्ही. आर. कॉल इतिहास';

  @override
  String get vtMarked => 'चिन्हांकित केले.';

  @override
  String get vtPreliminaryAssessment => 'प्राथमिक मूल्यांकन';

  @override
  String get vtAge => 'वय.';

  @override
  String get vtGender => 'लिंगभेद';

  @override
  String get vtAddress => 'पत्ता.';

  @override
  String get vtProfile => 'प्रोफाईल';

  @override
  String get vtLogoutMessage => 'तुम्हाला लॉग आउट करण्यात आले आहे';

  @override
  String get vtLogoutError => 'माफ करा, आम्हाला मोबाईल अॅपमध्ये लॉगआउट त्रुटी आढळली.';

  @override
  String get vtError => 'त्रुटी';

  @override
  String get vtPatient => 'रुग्ण.';

  @override
  String get vtMobile => 'मोबाईल';

  @override
  String get vtAssessmentID => 'मूल्यांकन आयडी';

  @override
  String get vtStatus => 'स्थिती.';

  @override
  String get vtTimeline => 'कालमर्यादा';

  @override
  String get vtCategory => 'वर्गवारी';

  @override
  String get vtNoDataFound => 'कोणतीही माहिती आढळली नाही';

  @override
  String get appCameraCapture => 'पकडणे';

  @override
  String get appCameraRetake => 'परत घ्या.';

  @override
  String get appCameraUsePhoto => 'छायाचित्र वापरा';

  @override
  String get appCameraCancel => 'रद्द करा';

  @override
  String get appCameraNotFound => 'कॅमेरा सापडला नाही';

  @override
  String get appCameraException => 'कॅमेरा अपवाद';

  @override
  String get appCameraProgressMessage => 'लोड होत आहे...';

  @override
  String get internetLostNoConnection => 'इंटरनेट जोडणी नाही';

  @override
  String get internetLostRetry => 'पुन्हा प्रयत्न करा.';

  @override
  String get secureJailbreak => 'असे दिसते की तुमचे उपकरण बंदिस्त आहे';

  @override
  String get secureRestrictedAccess => 'सुरक्षेच्या कारणास्तव, जेलब्रोकन उपकरणांवर या अॅपमध्ये प्रवेश प्रतिबंधित आहे.';

  @override
  String get secureExitApp => 'अॅपमधून बाहेर पडा';

  @override
  String get sharedErrorPageIssues => 'आम्हाला काही समस्यांचा सामना करावा लागत आहे. कृपया नंतर पुन्हा प्रयत्न करा.';

  @override
  String get appointmentBookingTitle => 'नियुक्ती आरक्षण';

  @override
  String get comingSoon => 'लवकरच येत आहे...';

  @override
  String get miniappService => 'सेवा.';

  @override
  String get miniappConsole => 'कन्सोल';

  @override
  String get roleChooseYourRole => 'तुमची भूमिका निवडा';

  @override
  String get roleNote => 'टीपः तुम्ही एपमधील तुमची भूमिका बदलू शकत नाही.';

  @override
  String get roleConfirm => 'पुष्टी करा';

  @override
  String get roleEyeCareProfessional => 'डोळ्यांची काळजी व्यावसायिक';

  @override
  String get roleVisionTechnician => 'व्हिजन टेक्नॉलॉजी';

  @override
  String get rolePatient => 'रुग्ण';

  @override
  String get roleVisionGuardian => 'व्हिजन गार्डियन';

  @override
  String get vtSearchText => 'रुग्णाचा आयडी, मोबाईल क्रमांक किंवा नाव वापरून शोधा';

  @override
  String get emptyPatientsInfo => 'रुग्णांचे तपशील पाहण्यासाठी त्यांचा शोध सुरू करा..';

  @override
  String get vtPersonalDetails => 'वैयक्तिक तपशील';

  @override
  String get vtHprId => 'एच. पी. आर. आयडी';

  @override
  String get vtEmailId => 'ईमेल आयडी';

  @override
  String get vtEducationalQualification => 'शैक्षणिक पात्रता';

  @override
  String get vtAddressAndDoorNumber => 'पत्ता आणि दरवाजाचा क्रमांक';

  @override
  String get vtCity => 'शहर.';

  @override
  String get vtState => 'राज्य.';

  @override
  String get vtPincode => 'पिनकोड';

  @override
  String get vtOrganisationDetails => 'संस्थेचा तपशील';

  @override
  String get vtOrgId => 'ऑर्ग आयडी';

  @override
  String get vtFacilityType => 'सुविधेचा प्रकार';

  @override
  String get vtAssessments => 'मूल्यमापन';

  @override
  String get vtNoAssessmentsFound => 'मूल्यमापन आढळले नाही';

  @override
  String get vtAnalytics => 'विश्लेषण';

  @override
  String get vtTotalCases => 'एकूण प्रकरणे';

  @override
  String get vtIvrCalls => 'आय. व्ही. आर. कॉल';

  @override
  String get vtClinicVisits => 'चिकित्सालय भेटी';

  @override
  String get vtCasesClosed => 'बंद झालेली प्रकरणे';

  @override
  String get vtCritical => 'गंभीर';

  @override
  String get vtRegular => 'नियमित';

  @override
  String get vtAvgClosureTime => 'सरासरी. बंद करण्याची वेळ';

  @override
  String get vtByAge => 'वयानुसार';

  @override
  String get vtByGender => 'लिंगानुसार';

  @override
  String get vtSymptoms => 'लक्षणे';

  @override
  String get vtSearchByMobileNo => 'मोबाईल क्र. द्वारे शोधा.';

  @override
  String get vtInvalidMobileNo => 'अवैध मोबाईल क्र.';

  @override
  String get vtCallLogEmpty => 'कॉल लॉग रिकामा आहे.. अद्याप कोणतेही कॉल केलेले नाहीत!!';

  @override
  String get vtNoDataAvailable => 'कोणतीही माहिती उपलब्ध नाही';

  @override
  String get vtToday => 'आज';

  @override
  String get vtYesterday => 'कालचा दिवस';

  @override
  String get vtIvrCallNotAvailable => 'आय. व्ही. आर. कॉल उपलब्ध नाही. पुन्हा प्रयत्न करा!';

  @override
  String get vtMarkUnavailable => 'अनुपलब्ध म्हणून चिन्हांकित करा';

  @override
  String get vtStartDate => 'प्रारंभ तारीख';

  @override
  String get vtEndDate => 'समाप्ती तारीख';

  @override
  String get vtStartTime => 'प्रारंभ वेळ';

  @override
  String get vtEndTime => 'शेवटची वेळ';

  @override
  String get vtAddRemarksOptional => 'टिप्पण्या जोडा (ऐच्छिक)';

  @override
  String get vtSave => 'जतन करा.';

  @override
  String get vtCancel => 'रद्द करा';

  @override
  String get vtPleaseEnterRemark => 'कृपया टिप्पणी प्रविष्ट करा';

  @override
  String get vtAssessment => 'मूल्यमापन';

  @override
  String get vtIvrSelections => 'आय. व्ही. आर. निवड';

  @override
  String get vtLanguageSelection => 'भाषा निवड';

  @override
  String get vtEnglish => 'इंग्रजी';

  @override
  String get vtPatientType => 'रुग्णाचा प्रकार';

  @override
  String get vtProblem => 'समस्या';

  @override
  String get vtEyeSight => 'डोळ्यांची दृष्टी';

  @override
  String get vtVisionTechnician => 'दृष्टी तंत्रज्ञ';

  @override
  String get vtRecommendedCenter => 'शिफारस केलेले केंद्र';

  @override
  String get vtAssessmentIDEA => 'मूल्यांकन आयडीः ई. ए.';

  @override
  String get vtPid => 'पी. आय. डी.: ओ. पी.';

  @override
  String get vtAssessmentTimeline => 'मूल्यांकन कालमर्यादा';

  @override
  String get vtPleaseSelectEncounter => 'कृपया सामना निवडा';

  @override
  String get vtTimelineEA => 'कालमर्यादाः ई. ए.';

  @override
  String get vtGeneralInformation => 'सर्वसाधारण माहिती';

  @override
  String get vtDateOfBirth => 'जन्मतारीख';

  @override
  String get vtAssessmentEA => 'मूल्यांकन ई. ए.';

  @override
  String get vtNotRegistered => 'तुम्ही प्रणालीमध्ये नोंदणीकृत नाही. कृपया मिस्ड कॉल द्या';

  @override
  String get vtOkay => 'ठीक आहे.';

  @override
  String get vtTakePicture => 'फोटो काढा.';

  @override
  String get vtEye => 'डोळा.';

  @override
  String get vtRetakePicture => 'चित्र पुन्हा घ्या';

  @override
  String get vtNext => 'पुढील.';

  @override
  String get vtMrCode => 'एम. आर. कोड';

  @override
  String get vtEnterMrCode => 'येथे एम. आर. कोड प्रविष्ट करा';

  @override
  String get vtPleaseEnterMrCode => 'कृपया एम. आर. कोड प्रविष्ट करा';

  @override
  String get vtNote => 'टीप';

  @override
  String get vtEnterRecommendations => 'येथे शिफारसी नोंदवा';

  @override
  String get vtSolutions => 'उपाय (स)';

  @override
  String get vtLeftEye => 'डावा डोळा';

  @override
  String get vtRightEye => 'उजवा डोळा';

  @override
  String get vtBothEyes => 'दोन्ही डोळे';

  @override
  String get vtFilterBy => 'याद्वारे फिल्टर करा';

  @override
  String get vtLocation => 'ठिकाण';

  @override
  String get vtEnterTime => 'कृपया वेळ प्रविष्ट करा';

  @override
  String get vtEnterDate => 'कृपया तारीख प्रविष्ट करा';

  @override
  String get vtRecommendation => 'शिफारस';

  @override
  String get vtVisitPrimaryCenter => 'प्राथमिक केंद्राला भेट द्या';

  @override
  String get vtVisitSecondaryCenter => 'माध्यमिक केंद्राला भेट द्या';

  @override
  String get vtVisitTertiaryCenter => 'तृतीयक केंद्राला भेट द्या';

  @override
  String get vtVisitCenterOfExcellence => 'उत्कृष्टता केंद्राला भेट द्या';

  @override
  String get vtIvrCallQuestion => 'तुम्ही आय. व्ही. आर. कॉलवर आहात का?';

  @override
  String get vtYes => 'होय.';

  @override
  String get vtNo => 'नाही.';

  @override
  String get vtRetry => 'पुन्हा प्रयत्न करा.';

  @override
  String get vtAssessmentQuestions => 'मूल्यांकनाचे प्रश्न';

  @override
  String get vtVisionCenter => 'दृष्टी केंद्र';

  @override
  String get vtVisualAcuity => 'दृश्य तीक्ष्णता';

  @override
  String get vtInvalidValue => 'अवैध मूल्य';

  @override
  String get vtSeverity => 'तीव्रता.';

  @override
  String get vtNoVisionCentersFound => 'दृष्टी केंद्रे आढळली नाहीत';

  @override
  String get vtRequestLocationPermission => 'स्थान परवानगीची विनंती करा';

  @override
  String get vtAppSettings => 'एपची मांडणी';

  @override
  String get vtEnterSomeText => 'कृपया काही मजकूर प्रविष्ट करा';

  @override
  String get vtPrimary => 'प्राथमिक';

  @override
  String get vtDependent => 'अवलंबित';

  @override
  String get vtAddMember => 'सदस्य जोडा';

  @override
  String get vtCompleteProfile => 'पूर्ण प्रोफाइल';

  @override
  String get vtPatientNotRegistered => 'रुग्ण नोंदणीकृत नाही';

  @override
  String get vtPatientRegistered => 'रुग्ण नोंदणीकृत';

  @override
  String get vtDependentNotAdded => 'आश्रित जोडले गेले नाही';

  @override
  String get vtDependentAdded => 'आश्रित जोडले गेले';

  @override
  String get vtServiceNotAvailable => 'सेवा उपलब्ध नाही';

  @override
  String get vgEyeAssessments => 'डोळ्यांचे मूल्यमापन';

  @override
  String get vgTotal => 'एकूण';

  @override
  String get vgCamps => 'शिबिरे';

  @override
  String get vgDoorToDoor => 'दरवाजाचे दार';

  @override
  String get vgByGender => 'लिंगानुसार';

  @override
  String get vgMale => 'पुरुष.';

  @override
  String get vgFemale => 'महिला.';

  @override
  String get vgOthers => 'इतर.';

  @override
  String get vgByAge => 'वयानुसार';

  @override
  String get vgSlideAge => 'वर्षानुवर्षे';

  @override
  String get vgSymptoms => 'लक्षणे';

  @override
  String get vgRefractive => 'रिफ्रॅक्टिव्ह';

  @override
  String get vgCataract => 'मोतीबिंदू';

  @override
  String get vgGlaucoma => 'काचबिंदू';

  @override
  String get vgKeratitis => 'केराटायटिस';

  @override
  String get vgBlepharitis => 'ब्लेफेरायटिस';

  @override
  String get vgConjunctivitis => 'नेत्रश्लेष्मलाशोथ';

  @override
  String get vgServicesCreateEvent => 'कार्यक्रम तयार करा';

  @override
  String get vgServicesEyeAssessment => 'डोळ्यांचे मूल्यांकन';

  @override
  String get vgServicesRegisterPatient => 'नवीन रुग्णाची नोंदणी करा';

  @override
  String get vgAddPatients => 'रुग्णांना समाविष्ट करा';

  @override
  String get vgEvent => 'कार्यक्रम.';

  @override
  String get vgAddEventPhoto => 'कार्यक्रमाचे छायाचित्र जोडा';

  @override
  String get vgUploadImage => 'प्रतिमा अपलोड करा';

  @override
  String get vgAddPhotoInstruction => 'कार्यक्रमाचे छायाचित्र जोडा जे लघुप्रतिमा म्हणून दाखवले जाईल';

  @override
  String get vgAddressDetails => 'पत्त्याचा तपशील';

  @override
  String get vgVenueName => 'ठिकाणाचे नाव';

  @override
  String get vgVenueNameError => 'कृपया ठिकाणाचे नाव प्रविष्ट करा';

  @override
  String get vgVenueNameSpecialCharError => 'त्यात कोणतेही विशेष वर्ण नसावेत.';

  @override
  String get vgPincode => 'पिनकोड';

  @override
  String get vgPincodeError => 'केवळ 6 अंकी पिनकोडची परवानगी आहे.';

  @override
  String get vgCityTownVillage => 'शहर/शहर/गाव';

  @override
  String get vgCityTownVillageError => 'कृपया शहर/गाव/गावाचे नाव प्रविष्ट करा';

  @override
  String get vgCityTownVillageSpecialCharError => 'त्यात कोणतेही विशेष वर्ण नसावेत.';

  @override
  String get vgCancel => 'रद्द करा';

  @override
  String get vgSave => 'जतन करा.';

  @override
  String get vgAddEventImage => 'कार्यक्रमाची प्रतिमा जोडा';

  @override
  String get vgEventAdded => 'कार्यक्रम जोडला गेला';

  @override
  String get vgEventNotAdded => 'कार्यक्रम जोडला गेला नाही';

  @override
  String get vgDateTime => 'तारीख आणि वेळ';

  @override
  String get vgStartDate => 'प्रारंभ तारीख';

  @override
  String get vgStartTime => 'प्रारंभ वेळ';

  @override
  String get vgLocation => 'ठिकाण';

  @override
  String get vgViewOnMap => 'नकाशावरचे दृश्य';

  @override
  String get vgAddressAndDoorNumber => 'पत्ता आणि दरवाजाचा क्रमांक';

  @override
  String get vgSubDistrictName => 'उपजिल्हाचे नाव';

  @override
  String get vgVillageName => 'गावाचे नाव';

  @override
  String get vgDistrictName => 'जिल्ह्याचे नाव';

  @override
  String get vgAbout => 'बद्दल.';

  @override
  String get vgEditEvent => 'कार्यक्रम संपादित करा';

  @override
  String get vgDeleteEvent => 'कार्यक्रम काढून टाका';

  @override
  String get vgErrorFetchingEventDetails => 'कार्यक्रमाचे तपशील आणताना त्रुटी';

  @override
  String get vgNoPatientRegistered => 'नाव असलेला कोणताही रुग्ण नोंदणीकृत नाही. \'नोंदणीकृत रुग्ण\' वर टिचकी मारा.';

  @override
  String get vgRegisterPatient => 'रुग्णाची नोंदणी करा';

  @override
  String get vgPrimary => 'प्राथमिक';

  @override
  String get vgDependent => 'अवलंबित';

  @override
  String get vgAddMember => 'सदस्य जोडा';

  @override
  String get vgCompleteProfile => 'पूर्ण प्रोफाइल';

  @override
  String get vgStartAssessment => 'मूल्यमापन सुरू करा';

  @override
  String get vgSearchPatientByPhoneNumber => 'दूरध्वनी क्रमांकाद्वारे रुग्ण शोधा';

  @override
  String get vgInvalidPhoneNumber => 'कृपया वैध दूरध्वनी क्रमांक प्रविष्ट करा';

  @override
  String get vgServerError => 'सर्व्हर त्रुटी';

  @override
  String get vgPatient => 'रुग्ण.';

  @override
  String get vgReportId => 'आयडी नोंदवा';

  @override
  String get vgNoEventFound => 'कार्यक्रम आढळला नाही';

  @override
  String get vgTeamMateDeletedSuccessfully => 'टीममेट यशस्वीरित्या हटवले';

  @override
  String get vgSomethingWentWrong => 'काहीतरी चूक झाली.';

  @override
  String get vgName => 'नाव.';

  @override
  String get vgPhoneNumber => 'दूरध्वनी क्रमांक';

  @override
  String get vgErrorFetchingTeammatesDetails => 'सहकाऱ्यांचे तपशील आणताना त्रुटी';

  @override
  String get vgTeamMateAddedSuccessfully => 'टीममेटची यशस्वीपणे भर पडली';

  @override
  String get vgAddTeammate => 'टीममेट जोडा';

  @override
  String get vgPleaseEnter => 'कृपया प्रविष्ट करा';

  @override
  String get vgPleaseEnterField => 'कृपया क्षेत्र प्रविष्ट करा';

  @override
  String get vgOr => 'किंवा';

  @override
  String get vgSearch => 'शोधा.';

  @override
  String get vgEventDeletedSuccessfully => 'कार्यक्रम यशस्वीरित्या हटवला';

  @override
  String get vgEventDeletionFailed => 'कार्यक्रम काढून टाकण्यात अयशस्वी';

  @override
  String get vgEndTimeGreaterThanStartTime => 'शेवटची वेळ सुरुवातीच्या वेळेपेक्षा जास्त असावी';

  @override
  String get vgNoPatientsPresent => 'सध्या एकही रुग्ण नाही. \'रुग्ण जोडा\' वर टिचकी मारा.';

  @override
  String get textSize => 'मजकूराचा आकार';

  @override
  String get increase => 'वाढवा';

  @override
  String get decrease => 'कमी करा';

  @override
  String get reset => 'रीसेट करा';

  @override
  String get minimumTextSizeReached => 'किमान मजकूर आकार पोहोचलेले आहे';

  @override
  String get maximumTextSizeReached => 'कमाल मजकूर आकार पोहोचलेले आहे';

  @override
  String get chatClearChat => 'गप्पा साफ करा';

  @override
  String get chatEyeAssessmentRecommended => 'तुमच्यासाठी डोळ्यांचे मूल्यमापन करण्याची शिफारस केली जाते.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'तुम्हाला ट्रायएज डोळ्यांचे मूल्यांकन करायचे आहे का?';

  @override
  String get chatChatbotNotAvailable => 'चॅटबॉट सध्या उपलब्ध नाही. कृपया नंतर पुन्हा प्रयत्न करा.';

  @override
  String get chatTypeHere => 'येथे टाइप करा...';

  @override
  String get switchProfile => 'प्रोफाइल बदला';

  @override
  String get switchRole => 'भूमिका बदला';

  @override
  String get switchTenant => 'भाडेकरू बदला';

  @override
  String get patientHeaderWelcomeText => 'साईटकनेक्टमध्ये आपले स्वागत आहे! आपल्या दृष्टीची काळजी घेणे महत्वाचे आहे आणि आम्ही प्रत्येक टप्प्यावर तुमच्यासाठी येथे आहोत.';

  @override
  String get triageTestCardHeader => 'तुमची डोळ्यांची चाचणी विनामूल्य आहे...';

  @override
  String get triageTestCardBody1 => 'तुमच्या डोळ्यांच्या लक्षणांचे त्वरित विश्लेषण करा';

  @override
  String get triageTestCardBody2 => 'तुम्हाला डोळ्याची समस्या असू शकते का ते ओळखा';

  @override
  String get triageTestCardBody3 => 'तुमच्या डॉक्टरकडे केव्हा जायचे ते जाणून घ्या';

  @override
  String get triageTestCardButton => 'मोफत डोळ्यांची चाचणी सुरू करा';

  @override
  String get myConnectionListAddMembersDescription => 'तुमचे कुटुंब आणि मित्रांना जोडण्यासाठी सदस्य जोडा बटणावर टिचकी मारा.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'तुम्हाला कसे पुढे जायचे आहे?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'मला एक समस्या आहे आणि मला त्याची पडताळणी करायची आहे';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'मला काही समस्या आहे की नाही याची मला खात्री नाही';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'मला डोळ्यांची कोणतीही समस्या नाही-फक्त तपासायचे आहे';

  @override
  String get appDrawerToastMessageText => 'माफ करा, आम्हाला मोबाईल अॅपमध्ये लॉगआउट त्रुटी आढळली.';

  @override
  String get myConnectionListAddMembers => 'सदस्य जोडा';
}
