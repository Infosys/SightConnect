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
  String get questionnaireExitDialog => 'या प्रश्नांचे उत्तर देण्याने आपल्या डोळ्यांच्या समस्या ओळखण्यास मदत होईल. आपण खरोखर बाहेर पडू इच्छिता का?';

  @override
  String get visualAcuityTitle => 'दृष्टी तीक्ष्णता चाचणी';

  @override
  String get visualAcuityDescription => 'दृष्टी तीक्ष्णता चाचणी म्हणजे एक डोळा परीक्षा जी तुम्हाला निश्चित अंतरावरून अक्षर किंवा प्रतीकाचा तपशील कसा दिसतो हे तपासते. आता ही जलद चाचणी करा!';

  @override
  String get visualAcuityHowToPerform => 'दृष्टी तीक्ष्णता चाचणी कशी करावी?';

  @override
  String get visualAcuityViewStepsToPerform => 'दृष्टी तीक्ष्णता चाचणी करण्यासाठीची पावले पहा';

  @override
  String get visualAcuityCompletionDialog => 'झाले! दोन्ही डोळ्यांसाठी दृष्टी तीक्ष्णता चाचणी पूर्ण झाली आहे. आपल्याला पुढे आपल्या डोळ्यांचे फोटो कॅप्चर करायचे आहेत.';

  @override
  String get visualAcuityExitDialog => 'आपल्या डोळ्यांच्या समस्येविषयी समजून घेण्यासाठी दृष्टी तीक्ष्णता महत्त्वाची आहे. आपण खरोखर बाहेर पडू इच्छिता का?';

  @override
  String get swipeGestureTab => 'स्वाइप जेस्चर';

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
  String get visualAcuityLeftEyeInstructions => 'पापणीवर दाब न देता, उजव्या डोळ्यावर आपला हात ठेवा. जर आपण चष्मा घातला असेल तर चष्म्यावर हात ठेवा.';

  @override
  String get visualAcuityRightEyeHeader => 'चाचणी 1 - उजवा डोळा';

  @override
  String get visualAcuityRightEyeInstructions => 'पापणीवर दाब न देता, डाव्या डोळ्यावर आपला हात ठेवा. जर आपण चष्मा घातला असेल तर चष्म्यावर हात ठेवा.';

  @override
  String get visualAcuityBothEyeHeader => 'चाचणी 3 - दोन्ही डोळे';

  @override
  String get visualAcuityBothEyeInstructions => 'तुमच्या कोणत्याही डोळ्यावर हात ठेवू नका आणि दोन्ही डोळ्यांनी जे प्रतीक दिसतील ते पहा.';

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
  String get visualAcuityCarouselTitle => 'दृष्टी तीक्ष्णता चाचणी करण्यासाठीच्या पावलांची माहिती';

  @override
  String get eyeScanTitle => 'डोळा स्कॅन';

  @override
  String get eyeScanDescription => 'तुम्ही जवळ आहात! फक्त आणखी एक चाचणी शिल्लक आहे. तुमच्या डोळ्यांचे फोटो कॅप्चर करा.';

  @override
  String get eyeScanHowToPerform => 'तुमच्या डोळ्यांची स्कॅनिंग कशी करावी?';

  @override
  String get eyeScanViewStepsToPerform => 'तुमच्या डोळ्यांची स्कॅनिंग कशी करावी हे जाणून घेण्यासाठी पायरी पाहा.';

  @override
  String get eyeScanExitDialog => 'डोळा स्कॅन तुमच्या डोळ्यांच्या समस्येबद्दल अधिक जाणून घेण्यास मदत करते. तुम्हाला खरोखर बाहेर पडायचे आहे का?';

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
  String get startButton => 'सुरुवात';

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
  String get seeAllButton => 'सर्व पहा';

  @override
  String get tryAgainButton => 'पुन्हा प्रयत्न करा';

  @override
  String get shareNowButton => 'आत्ताच शेअर करा';

  @override
  String get retryButton => 'पुन्हा प्रयत्न करा';

  @override
  String get homeCarousal1Title => '४० वर्षे आणि त्यावरील प्रौढ वयोगटातील मोतीबिंदूचे प्रसार आणि त्याचे संबंधित घटक';

  @override
  String get homeCarousal1Description => 'मोतीबिंदूच्या प्रसार आणि संबंधित घटकांवरील नमुना प्रक्रियेचे योजनाबद्ध प्रस्तुतीकरण';

  @override
  String get homeCarousal2Title => 'दुर्लक्ष करू नये अशी ७ डोळ्यांची समस्या!';

  @override
  String get homeCarousal2Description => '\nचाचणी घ्यायला हव्यात अशी ७ डोळ्यांची समस्या: \n \n• डोळ्यांची लालसरपणा\n• डोळ्यांची पाणी येणे\n• डोळ्यांवरील पांढरे ठिपके';

  @override
  String get homeCarousal3Title => 'डोळ्यांच्या समस्या. अनेक असतात ज्या तुम्हाला दिसत नाहीत';

  @override
  String get homeCarousal3Description => 'परंतु दृष्टी सेवा तज्ञ हे करू शकतात.\nवेळेवर डोळ्यांच्या समस्या ओळखा\nआणि नंतरच्या जटिलता टाळण्यासाठी\nवेळेवर उपचार करा';

  @override
  String get myConnectionsTitle => 'माझे सदस्य';

  @override
  String get myConnectionsAddMember => 'सदस्य जोडा';

  @override
  String get myConnectionsServiceNotAvailable => 'सेवा उपलब्ध नाही';

  @override
  String get myConnectionsAdd => 'जोडा';

  @override
  String get recentServicesTitle => 'माझी अलीकडील सेवा';

  @override
  String get recentServicesEyeAssessment => 'डोळ्यांची तपासणी';

  @override
  String get recentServicesVisualAcuityTest => 'दृश्य तीक्ष्णता चाचणी';

  @override
  String get nearbyVisionCentersTitle => 'जवळील दृष्टी केंद्रे';

  @override
  String get nearbyVisionCentersNotFound => 'कोणतीही दृष्टी केंद्रे सापडली नाहीत';

  @override
  String get tollFreeNumber => 'टोल फ्री क्रमांक';

  @override
  String get appDrawerTitle => 'मेनू';

  @override
  String get appDrawerLanguageSelection => 'भाषा निवड';

  @override
  String get appDrawerAccessibility => 'प्रवेशयोग्यता सेटिंग्ज';

  @override
  String get appDrawerHome => 'मुख्यपृष्ठ';

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
  String get appDrawerHelpAndSupport => 'मदत आणि समर्थन';

  @override
  String get appDrawerSignOut => 'साइन आऊट';

  @override
  String get aboutUsDescription => 'Sightconnect हे एक वापरकर्ता-अनुकूल डोळा संबंधी देखभाल अ‍ॅप आहे जे स्वत: ची तपासणी करण्यास आणि कॉलवर परामर्श घेण्यास मदत करते.\n\nआमच्या मिशनच्या केंद्रस्थानी डोळ्यांची काळजी घेणे सर्वांसाठी सुलभ करण्याची प्रतिबद्धता आहे. हे अ‍ॅप सर्वांसाठी, त्यांच्या वय, तांत्रिक पार्श्वभूमी आणि सामाजिक किंवा आर्थिक पार्श्वभूमीच्या आधारे, समाविष्ट करण्यात आलेले आहे. अ‍ॅप आणि त्याचे अंतर्गत सामग्री इंग्रजी आणि इतर स्थानिक भाषांमध्ये उपलब्ध आहेत. हे वापरकर्त्यांना त्यांच्या डोळ्यांची स्वत: तपासणी करण्यास मदत करते आणि वेळेवर उपचार सल्ला मिळवते. अ‍ॅप नवीनतम तंत्रज्ञान आणि साधने वापरून आमच्या वापरकर्त्यांसाठी वैयक्तिकृत डोळ्यांची देखभाल समाधाने प्रदान करते. त्यांच्या जीवनात सोपी वाट निर्माण करण्यासाठी विविध प्रकारची वैशिष्ट्ये असतात.';

  @override
  String get aboutUsFeaturesTitle => 'वैशिष्ट्ये';

  @override
  String get aboutUsFeaturesDescription => 'अ‍ॅपमध्ये डोळा चाचणी: हे अ‍ॅप त्यांच्या वापरकर्त्यांना काही प्रश्नांची उत्तरे देऊन आणि पुढील पावलांसाठी आणि भेटायचे डॉक्टर यांच्याविषयी योग्य सूचना मिळवून स्वतःच्या डोळ्यांचे मूल्यांकन करण्यास अनुमती देते. वापरकर्त्यांचे मित्र आणि कुटुंबीयही याचा फायदा घेऊ शकतात. |अपॉइंटमेंट बुकिंग: वापरकर्ते डॉक्टरांकडे ऑनलाईन टेलिकॉन्सल्टेशन आणि क्लिनिकमध्ये भेटी बुक करू शकतात जेणेकरून त्यांचे डोळे तपासण्यात येतील. |IVR कॉल सेवा: आमच्या IVR कॉल सेवा इंग्रजी आणि स्थानिक भाषांमध्ये उपलब्ध आहेत आणि ते मूलभूत फीचर फोन असणाऱ्या वापरकर्त्यांना देखील पूर्ण करतात. वापरकर्ते आपत्कालीन परिस्थितीत किंवा कोणत्याही डोळ्याशी संबंधित समस्यांसाठी तात्काळ मदतीसाठी आमच्या डोळा देखभाल पेशेवरांना कॉल करू शकतात. ते अपॉइंटमेंट बुक करण्यासाठी किंवा अधिक स्पष्टीकरण मिळवण्यासाठी देखील कॉल करू शकतात. |जवळील क्लिनिक: वापरकर्ते त्यांच्या जवळील डोळा देखभाल क्लिनिक शोधू शकतात. |प्रिस्क्रिप्शन्स आणि अहवाल: वापरकर्त्यांचे सर्व प्रिस्क्रिप्शन्स आणि अहवाल एका जागेतून बिनधास्तपणे उपलब्ध केले जाऊ शकतात. |डोळा शिबिरे: वापरकर्ते त्यांच्या जवळच्या डोळा शिबिरांबद्दल माहिती मिळवू शकतात जेणेकरून ते त्यांच्या मित्र आणि कुटुंबीयांचे डोळे मोफत तपासून घेऊ शकतात. |रिमाइंडर्स आणि अलर्ट: वापरकर्ते आपल्या आगामी अपॉइंटमेंट्स, औषध, अहवाल इत्यादींशी संबंधित वेळेवर अलर्ट आणि रिमाइंडर्स प्राप्त करू शकतात. |शेअरिंग: वापरकर्ते हे अ‍ॅप आणि अ‍ॅपमध्ये दिलेली इतर उपयुक्त माहिती त्यांच्या मित्र आणि कुटुंबीयांसोबत शेअर करू शकतात. ';

  @override
  String get aboutUsConclusion => 'अ‍ॅपची निर्मिती आमच्या वापरकर्ता समुदायाला अधिक चांगल्या प्रकारे सेवा देण्यासाठी अग्रगण्य डोळा देखभाल पेशेवरांच्या मदतीने केली आहे. आमच्या मिशनमध्ये आमच्यासोबत सामील व्हा जे एक उज्ज्वल, आरोग्यदायी जग निर्माण करण्याचे आहे. Sightconnect अ‍ॅप आजच डाउनलोड करा आणि शेअर करा!';

  @override
  String get privacyPolicyDescription => 'एलव्ही प्रसाद आय इन्स्टिट्यूट, त्यांच्या उपकंपन्या, सहयोगी आणि संलग्नित कंपन्या (सामूहिकरित्या “एलव्हीपीईआय”, “आम्ही”, “आम्हाला”) आपल्या न्यायक्षेत्राच्या कायद्यानुसार आपल्या वैयक्तिक डेटाची प्रक्रिया करण्यास प्रतिबद्ध आहेत. आम्ही आपल्याला खालील माहिती देऊन सूचित करीत आहोत वैयक्तिक डेटाच्या प्रक्रियेबद्दल.';

  @override
  String get privacyPolicyPersonalDataTitle => 'संकलित/प्रक्रिया केलेल्या वैयक्तिक डेटा घटक:';

  @override
  String get privacyPolicyPersonalDataDescription => 'आपण आणि आपल्या संबंधांची वैयक्तिक माहिती जसे की (यापैकी काही माहिती पर्यायी असेल) मोबाइल क्रमांक, नाव, जन्मतारीख, लिंग (पुरुष/स्त्री), पत्ता (पिन कोड), रुग्ण ID, संबंध, डोळा तपासणी प्रश्नावलीची प्रतिसाद, डोळा तपासणी अहवाल, डोळ्यांची प्रतिमा, आपल्या डोळ्यांच्या प्रतिमेविरुद्ध टॅग केलेली लक्षणे, छायाचित्र, पत्त्याची तपशीलवार माहिती जसे की पत्ता, जिल्हा नाव (जिल्हा कोडासहित), राज्य नाव (राज्य कोडासहित), उपजिल्हा नाव, गाव नाव, शहर नाव, ईमेल पत्ता, आडनाव, मधले नाव, रक्तगट, उंची, वजन, व्यवसाय, आपण प्रदान केलेल्या ABHA तपशीलांनुसार, आपल्या अनुप्रयोग परवानग्यांच्या आधारे कॅमेरा, GPS स्थान, गॅलरी प्रवेशासाठी अनुप्रयोगाचा प्रवेश, पूर्ण नेटवर्क प्रवेश, नेटवर्क कनेक्शन्स पहा, डिवाइस माहिती.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'प्रक्रियेचा उद्देश: आपण प्रदान केलेल्या वैयक्तिक डेटाची आम्ही खालील उद्देशांसाठी प्रक्रिया करतो जसे की:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'आपल्याला आमच्या अ‍ॅप्लिकेशन आणि त्याच्या वैशिष्ट्यांचा उपयोग करण्यासाठी सक्षम करणे आणि आपल्या आणि आपल्या संपर्कांसाठी (जसे आपण पुरवले आहे) नेत्र संबंधित ऑनलाइन आरोग्य तपासणीसाठी.|आपल्याला एलव्हीपीईआय अंतर्गत विजन तंत्रज्ञांशी, नेत्ररोगतज्ञांशी संपर्क साधण्यास सक्षम करणे, कोणत्याही नेत्र संबंधित आजार/आरोग्य समस्यांच्या बाबतीत.|आपल्या आरोग्य सल्लागाराचा भाग म्हणून कोणत्याही नेत्र आरोग्य-संबंधित डेटा (अहवालांसह इत्यादी) प्रदान करणे आणि आरोग्य-संबंधित चिंतांच्या भागास म्हणून आपल्याशी किंवा आपल्या संपर्कांशी संपर्क साधण्यासाठी.|आपल्या नेत्र आरोग्य डेटाचे आमच्या अधिकृत एलव्हीपीईआय नेत्ररोगतज्ज्ञांना/डॉक्टरांना सामायिक करणे योग्य निदानासाठी आणि गावाचे मुख्य/महापौर इत्यादींशी (आपल्या जीपीएस स्थानावर आधारित जेथे लागू असेल) त्याच डेटाचे सामायिक करणे, जर आपण एलव्हीपीईआय डॉक्टरांशी संपर्क साधू शकत नसाल किंवा उपचारासाठी माहिती देण्यास समर्थ नसाल तर नेत्र समस्येच्या गंभीरतेनुसार.|आपल्या जवळ एलव्हीपीईआयशी संलग्न असलेल्या नेत्र चिकित्सालयांची/रुग्णालयांची यादी प्रदान करणे, जेणेकरून आपण कोणत्याही नेत्र संबंधित समस्यांच्या बाबतीत त्यांना भेटू शकता.|योग्य निदान प्रदान करण्यासाठी भविष्यात आमच्या मशीन लर्निंग किंवा कृत्रिम बुद्धिमत्ता मॉडेल्सचे प्रशिक्षण करण्यासाठी नेत्र प्रतिमा, नेत्र प्रतिमेशी संबंधित लक्षणे, वय, रक्तगट, स्थान इत्यादींचा वापर करणे, कोणत्याही ओळखण्यायोग्य तपशीलांशिवाय.|डोळ्यांच्या आरोग्यासाठी जागृती निर्माण करण्यासाठी, स्मरणपत्र, संपर्क, प्रचार मेलर्स पाठविणे.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'डेटा प्राप्तकर्ते/ प्रवेश योग्य:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'आपण सामायिक केलेल्या वैयक्तिक माहिती (संवेदनशील वैयक्तिक माहितीसह) अधिकृत LVPEI कर्मचाऱ्यांना जसे की डॉक्टर/ नेत्ररोगतज्ञ, दृष्टी तंत्रज्ञ, दृष्टी पालक, LVPEI चे प्रतिनिधी, आंतरिक/बाह्य लेखापरीक्षक, योग्य ठिकाणी सरकारी अधिकाऱ्यांना, आणि आमच्या अधिकृत सेवा प्रदाता Infosys यांना उपलब्ध होईल.';

  @override
  String get privacyPolicyDataTransferTitle => 'डेटा हस्तांतरण आणि संग्रहण:';

  @override
  String get privacyPolicyDataTransferDescription => 'आपण सामायिक केलेल्या वैयक्तिक माहिती आमच्या अंतर्गत सर्व्हर्सवर, आमच्या अधिकृत सेवा प्रदात्याच्या भारतातील सर्व्हरवर संग्रहित केली जाईल.';

  @override
  String get privacyPolicyDataSecurityTitle => 'डेटा सुरक्षा:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI आपल्या वैयक्तिक माहितीचे संरक्षण करण्यासाठी योग्य आणि योग्य सुरक्षा पद्धती आणि प्रक्रिया अंमलात आणते ज्यात प्रशासकीय, भौतिक सुरक्षा, आणि तांत्रिक नियंत्रणांचा समावेश आहे.';

  @override
  String get privacyPolicyDataRetentionTitle => 'डेटा संधारण:';

  @override
  String get privacyPolicyDataRetentionDescription => 'कायदेशीर आणि व्यवसायिक आवश्यकतांनुसार जतन करण्याची आवश्यकता नसलेल्या वैयक्तिक माहितीचे सुरक्षित पद्धतीने निपटारा केले जाईल.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'डेटा विषयक अधिकार:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'आपण कोणत्याही वेळी आपली वैयक्तिक माहिती प्रविष्ट करण्याचा आणि सुधारित करण्याचा हक्क आहात. कोणत्याही विनंत्या, प्रश्नांना, चिंतांना किंवा प्रश्नांच्या बाबतीत आपण <LVPEI द्वारे सामान्य मेल आयडी प्रदान करण्यासाठी> ईमेल पाठवून LV प्रसाद कार्यालयाशी संपर्क साधू शकता.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'मागे घेण्याचा हक्क:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'आम्ही आपला वैयक्तिक डेटा आपल्या संमतीवर आधारित करून प्रक्रिया करत असल्यास, आपण भविष्यासाठी आपल्या संमतीची प्रक्रिया कधीही रद्द करू शकता. हे आपल्या रद्द करण्यापूर्वीच्या कोणत्याही प्रक्रिया कार्याची कायदेशीरता प्रभावित करणार नाही. आपली संमती रद्द करण्यासाठी, आपण <LVPEI द्वारे सामान्य मेल आयडी प्रदान करण्यासाठी DSR> कडे ईमेल पाठवू शकता.';

  @override
  String get privacyPolicyAcknowledgement => 'खालील बटणावर क्लिक करून, आपण येथे मान्यता देता की आपला वैयक्तिक डेटा तसेच संवेदनशील वैयक्तिक डेटा वरील प्रकारे संकलित आणि प्रक्रिया केला जाऊ शकतो आणि यासाठी आपण यास संमती देता. आपण याही मान्यता देता की आपण आपल्याकडून सामायिक केलेला कोणताही वैयक्तिक डेटा (संवेदनशील वैयक्तिक डेटा सह) त्यांची योग्य संमती घेऊनच सामायिक केलेला आहे. आपण याही मान्यता देता की आपण वरील उद्देशांसाठी आवश्यक नसलेला कोणताही वैयक्तिक डेटा (संवेदनशील वैयक्तिक डेटा सह) सामायिक करणार नाही. आपण याही मान्यता देता की आपण आपल्या मुलाचा वैयक्तिक डेटा त्यांचे पालक/ कायदेशीर संरक्षक म्हणून सामायिक करत असताना त्यांच्या डेटा संकलन आणि प्रक्रिया करण्यास संमती देता.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'गोपनीयता धोरण स्वीकारले';

  @override
  String get helpAndSupportReachTitle => 'आम्हाला संपर्क करा';

  @override
  String get assessmentAndTestsSubtitle => 'आतापर्यंत केलेल्या मूल्यमापनांचा त्वरित आढावा येथे आहे.';

  @override
  String get assessmentAndTestsReportsNotFound => 'अहवाल सापडले नाहीत';

  @override
  String get eyeAssessmentTitle => 'डोळा मूल्यमापन';

  @override
  String get eyeAssessmentSubtitle => 'आपण, आपल्या मित्रांनी आणि कुटुंबातील सदस्यांच्या डोळ्यांच्या समस्यांचे मूल्यमापन काही पावलांत करा. आपल्या डोळ्यांच्या समस्यांशी संबंधित लक्षणांचा अभ्यास करण्यासाठी आपल्याला काही प्रश्न विचारले जातील त्यानंतर दृष्टी परीक्षणे केली जातील.';

  @override
  String get eyeAssessmentGetMemberLabel => 'सदस्य बदला';

  @override
  String get eyeAssessmentProceedButton => 'पुढे जा';

  @override
  String get eyeAssessmentBrightnessLabel => 'ब्राइटनेस 80% वर सेट केली';

  @override
  String get eyeAssessmentBrightnessError => 'कृपया ब्राइटनेस 80% वर स्वतः सेट करा';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'प्रश्न अद्याप समर्थित नाही';

  @override
  String get eyeAssessmentPopUpHeading => 'मूल्यमापन';

  @override
  String get eyeAssessmentPopUpBody => 'आपल्याला दृष्टीशी संबंधित कोणतीही समस्या आहे का?';

  @override
  String get eyeAssessmentPopUpYesButton => 'हो';

  @override
  String get eyeAssessmentPopUpNoButton => 'नाही';

  @override
  String get visualAcuityTestInstructionOne => 'आरामदायकपणे बसून, चांगल्या प्रकाशातील स्थानी बसा. तुम्हाला अचानक प्रकाशात बदल जाणवेल, चिंता करू नका स्क्रीन स्वयंचलित-प्रकाशमानावर सेट केली आहे उत्तम परिणाम प्रदान करण्यासाठी';

  @override
  String get visualAcuityTestInstructionTwo => 'डिव्हाइसला डोळ्यांच्या पातळीवर धरण्याची खात्री करा. जर तुम्ही चष्मा किंवा कॉन्टॅक्ट लेन्स वापरत असाल तर ते ठेवा';

  @override
  String get visualAcuityTestInstructionThree => 'स्क्रीनपासून 40 सेंटीमीटर अंतरावर स्वत:ला स्थित करा. अंतर चाचणी स्क्रीनमध्ये दर्शविले जाईल.';

  @override
  String get visualAcuityTestInstructionFour => 'जर तुम्ही चष्मा घालून चाचणी करीत असाल, तर एका डोळ्याची चाचणी घेताना चष्म्यावरून हाताने एक डोळा झाका.';

  @override
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get skipAndProceedButton => 'छोडून पुढे जा';

  @override
  String get proceedToScanButton => 'स्कॅनकडे प्रगती करा';

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
  String get eyeScanInstructionOne => 'कॅमेरा चेहरा फ्रेमवर योग्यरित्या ठेवून धरा.';

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
  String get eyeAssessmentNote => 'टीप: येथे दर्शविलेल्या प्रतिमा केवळ संकेतासाठी आहेत. वास्तविक जीवनात ते तशाच दिसणार नाहीत.';

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
  String get eyeCaptureCompletionDialogViewResult => 'परिणाम पहा';

  @override
  String get eyeCaptureTriageSavedLocally => 'ट्रायज स्थानिकपणे जतन केले';

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
  String get reportSeverityAbnormal => 'असामान्य तपास';

  @override
  String get reportSeverityHigh => 'प्राथमिक तपास';

  @override
  String get reportSeverityLow => 'नियमित तपास';

  @override
  String get reportDataUnavailable => 'डेटा उपलब्ध नाह';

  @override
  String get reportTumblingTitle => 'एक्यूट चाचणी - टंबलिंग ई';

  @override
  String get rightCornea => 'उजवी का';

  @override
  String get leftCornea => 'डावी का';

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
  String get swipeGestureCardText => 'प्रतिक्षा दिशेने स्वाईप करा';

  @override
  String get assessmentResultCardAssessmentQuestions => 'मूल्यांकन\nप्रश्न';

  @override
  String get assessmentResultCardAcuityTest => 'नेत्रीय\nपरीक्षण';

  @override
  String get assessmentResultCardEyeScan => 'नखा\nस्कॅन';

  @override
  String get viewReportButton => 'अहवाल पहा';

  @override
  String get updateButton => 'अद्यतनित करा';

  @override
  String get assessmentCardUrgentConsult => 'तत्काल परामर्श';

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
  String get homeTriageCardDescription => 'डोळे समस्या टाळण्यासाठी त्यांची वेळेवर तपासा करा.';

  @override
  String get homeTriageCardTest => 'डोळे चाचणी सुरू करा';

  @override
  String get homeHelplineCardDescrition => 'अचानक दृष्टी हानीच्या प्रकरणात, आपल्याला या आपातकालीन हेल्पलाईनवर कॉल करा';

  @override
  String get inviteCardTitle => 'इतरांना आमंत्रित करा';

  @override
  String get inviteCardDescription => '5 मित्रांना आणि कुटुंबातील सदस्यांना आमंत्रित करा, त्यांना त्यांची डोळे मूल्यांकन करण्यास सहाय्य करा आणि भविष्यातील डोळ्यांच्या समस्यांना टाळा.';

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
