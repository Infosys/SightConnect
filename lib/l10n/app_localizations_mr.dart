import 'app_localizations.dart';

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current बाहेर $total';
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
  String get bothEyeString => 'दोन्ही डोळे';

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
  String get homeCarousal2Description => '\r\nचाचणी घ्यायला हव्यात अशा डोळ्यांच्या ७ समस्या -\r\n \r\n• डोळे लाल होणे\r\n• डोळ्यांमध्ये पाणी येणे\r\n• डोळ्यांवरील पांढरे ठिपके';

  @override
  String get homeCarousal3Title => 'डोळ्यांच्या समस्या अनेक असतात ज्या तुम्हाला दिसत नाहीत';

  @override
  String get homeCarousal3Description => 'परंतु दृष्टी सेवा तज्ञ हे करू शकतात.\r\nवेळेवर डोळ्यांच्या समस्या ओळखा\r\nआणि नंतरच्या जटिलता टाळण्यासाठी\r\nवेळेवर उपचार करा';

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
  String get aboutUsDescription => 'Sightconnect हे एक वापरायला सोपे डोळ्यांच्या आरोग्याविषयीचे अ‍ॅप आहे जे स्वत:च स्वत:च्या डोळ्यांची तपासणी करण्यास आणि फोन कॉलवर तज्ज्ञांचा सल्ला घेण्यास मदत करते.\r\nडोळ्यांची काळजी घेणं सर्वांसाठी सुलभ असायला हवं, या बांधिलकीमुळेच आम्ही हे काम हाती घेतलं आहे. हे अ‍ॅप सर्वांसाठी आहे, वय, तांत्रिक पार्श्वभूमी आणि सामाजिक किंवा आर्थिक पार्श्वभूमीवर याचा वापर अवलंबून नाही. अ‍ॅप आणि त्यातील सर्व माहिती इंग्रजी आणि इतर स्थानिक भाषांमध्ये उपलब्ध आहे. हे अ‍ॅप वापरकर्त्यांना त्यांच्या डोळ्यांची स्वत: तपासणी करण्यास मदत करते आणि वेळेवर उपचारविषयक सल्ला मिळवून देते. अ‍ॅप नवीनतम तंत्रज्ञान आणि साधने वापरून आमच्या वापरकर्त्यांसाठी डोळ्याच्या विकारांवरचे योग्य ते उपाय सुचवते. त्यांचे आयुष्य सुखकर करण्यासाठी यात अनेक उत्तम सोयी आहेत.';

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
  String get assessmentResultCardAssessmentQuestions => 'मूल्यांकन\r\nप्रश्न';

  @override
  String get assessmentResultCardAcuityTest => '\r\nअचूकता परीक्षण';

  @override
  String get assessmentResultCardEyeScan => 'डोळे\r\nस्कॅन';

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
  String get poweredByText => 'द्वारे चालवले जाते';

  @override
  String get digitalHealthCard => 'डिजिटल सार्वजनिक आरोग्य संच';

  @override
  String get inviteNowText => 'आता आमंत्रित करा';

  @override
  String get chatBotDefaultQuerySuggestions => 'डोळ्यांचे मूल्यमापन सुरू करा। डोळ्यांच्या सामान्य समस्या। डोळ्यांच्या चांगल्या दृष्टीसाठी टिपा';

  @override
  String get chatBotWelcomeMessage => 'नमस्कार, मी आज तुम्हाला कशी मदत करू शकतो?';
}
