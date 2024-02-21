import 'app_localizations.dart';

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current / $total';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'దయచేసి $mobileNumberకి పంపిన OTPని నమోదు చేయండి';
  }

  @override
  String loginResendOTPIn(String time) {
    return '$timeలో మళ్లీ పంపండి';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '$patient has an appointment';
  }

  @override
  String get questionnaireTitle => 'కంటి మూల్యాంకన ప్రశ్నలు';

  @override
  String get questionnaireExitDialog => 'ఈ ప్రశ్నలకు సమాధానం ఇవ్వడం మీ కంటి సమస్యలను గుర్తించడంలో సహాయపడుతుంది. మీరు నిజంగా నిష్క్రమించాలనుకుంటున్నారా?';

  @override
  String get visualAcuityTitle => 'దృశ్య తీక్షణ పరీక్ష';

  @override
  String get visualAcuityDescription => 'దృశ్య తీక్షణ పరీక్ష అనేది ఒక నిర్దిష్ట దూరం నుండి ఒక అక్షరం లేదా చిహ్నం యొక్క వివరాలను మీరు ఎంత బాగా చూస్తున్నారో తనిఖీ చేసే కంటి పరీక్ష. ఈ శీఘ్ర పరీక్షను ఇప్పుడే చేయండి!';

  @override
  String get visualAcuityHowToPerform => 'దృశ్య తీక్షణత పరీక్షను ఎలా నిర్వహించాలి?';

  @override
  String get visualAcuityViewStepsToPerform => 'దృశ్య తీక్షణ పరీక్ష నిర్వహించడానికి దశలను చూడండి';

  @override
  String get visualAcuityCompletionDialog => 'పూర్తయింది! రెండు కళ్ళకు దృశ్య తీక్షణ పరీక్ష పూర్తయింది. తరువాత మీరు మీ కంటి ఫోటోలను తీయాలి.';

  @override
  String get visualAcuityExitDialog => 'మీ కంటి సమస్య గురించి అర్థం చేసుకోవడానికి దృశ్య తీక్షణత ఒక ముఖ్యమైన పరీక్ష. మీరు నిజంగా నిష్క్రమించాలనుకుంటున్నారా?';

  @override
  String get swipeGestureTab => 'స్వైప్ సంజ్ఞ';

  @override
  String get voiceAssistTab => 'వాయిస్ అసిస్ట్';

  @override
  String get distanceString => 'దూరం';

  @override
  String get leftEyeString => 'ఎడమ కన్ను';

  @override
  String get rightEyeString => 'కుడి కన్ను';

  @override
  String get bothEyesString => 'రెండు కళ్లు';

  @override
  String get visualAcuityLeftEyeHeader => 'పరీక్ష 2 - ఎడమ కన్ను';

  @override
  String get visualAcuityLeftEyeInstructions => 'కనురెప్పను నొక్కకుండా, మీ చేతిని కుడి కన్నుపై ఉంచండి. మీరు కళ్ళజోడు ధరించి ఉంటే, మీ చేతిని కళ్ళజోడు మీద ఉంచండి.';

  @override
  String get visualAcuityRightEyeHeader => 'పరీక్ష 1 - కుడి కన్ను';

  @override
  String get visualAcuityRightEyeInstructions => 'కనురెప్పను నొక్కకుండా, మీ చేతిని ఎడమ కన్నుపై ఉంచండి. మీరు కళ్ళజోడు ధరించి ఉంటే, మీ చేతిని కళ్ళజోడు మీద ఉంచండి.';

  @override
  String get visualAcuityBothEyeHeader => 'పరీక్ష 3 - రెండు కళ్లు';

  @override
  String get visualAcuityBothEyeInstructions => 'మీ కళ్ళను కప్పుకోకండి మరియు రెండు కళ్ళతో పక్కన కనిపించే చిహ్నాలను చూడండి.';

  @override
  String get overlayHeaderDirection => 'దిశ';

  @override
  String get overlayDescription => 'ప్రతి చిహ్నానికి సంబంధించిన దిశలను మీరు ఎలా అర్థం చేసుకోవాలో ఇక్కడ ఉంది.';

  @override
  String get overlaySymbolDirectionText => 'చిహ్న దిశ :';

  @override
  String get directionDown => 'కిందకి';

  @override
  String get directionUp => 'పైకి';

  @override
  String get directionLeft => 'ఎడమవైపు';

  @override
  String get directionRight => 'సరియైనది.';

  @override
  String get dontShowAgainString => 'మళ్ళీ చూపించవద్దు';

  @override
  String get visualAcuityCarouselTitle => 'దృశ్య తీక్షణ పరీక్ష నిర్వహించడానికి దశలు';

  @override
  String get eyeScanTitle => 'కంటి స్కాన్';

  @override
  String get eyeScanDescription => 'మీరు దగ్గరగా ఉన్నారు! ఇంకా ఒక పరీక్ష మిగిలి ఉంది. తరువాత మీ కళ్ళ ఫోటోలను తీయండి.';

  @override
  String get eyeScanHowToPerform => 'కళ్లను స్కాన్ చేయడం ఎలా?';

  @override
  String get eyeScanViewStepsToPerform => 'మీ కళ్ళను ఎలా స్కాన్ చేయాలో తెలుసుకోవడానికి దశలను చూడండి.';

  @override
  String get eyeScanExitDialog => 'కంటి స్కాన్ మీ కంటి సమస్య గురించి మరింత అర్థం చేసుకోవడానికి సహాయపడుతుంది. మీరు నిజంగా బయటకు వెళ్లాలనుకుంటున్నారా?';

  @override
  String get captureRightEyeString => 'కుడి కంటి చిహ్నం';

  @override
  String get captureLeftEyeString => 'ఎడమ కంటి చిహ్నం';

  @override
  String get skipButton => 'దాటవేయండి';

  @override
  String get startTestText => 'పరీక్ష ప్రారంభించండి';

  @override
  String get continueButton => 'కొనసాగించండి';

  @override
  String get startButton => 'ప్రారంభించండి';

  @override
  String get nextButton => 'తదుపరి';

  @override
  String get proceedButton => 'ముందుకు సాగండి.';

  @override
  String get yesButton => 'అవును';

  @override
  String get noButton => 'లేదు';

  @override
  String get exitButton => 'నిష్క్రమించండి.';

  @override
  String get okButton => 'సరే';

  @override
  String get knowMoreButton => 'మరింత తెలుసుకోండి';

  @override
  String get seeAllButton => 'అన్నీ చూడండి';

  @override
  String get tryAgainButton => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get shareNowButton => 'ఇప్పుడు పంపండి';

  @override
  String get retryButton => 'తిరిగి ప్రయత్నించండి.';

  @override
  String get homeCarousal1Title => '40 సంవత్సరాలు మరియు అంతకంటే ఎక్కువ వయస్సు ఉన్న పెద్దలలో కంటిశుక్లం వ్యాప్తి మరియు దాని అనుబంధ కారకాలు';

  @override
  String get homeCarousal1Description => 'కంటిశుక్లం మరియు సంబంధిత కారకాల ప్రాబల్యంపై నమూనా ప్రక్రియ యొక్క క్రమబద్ధమైన ప్రదర్శన';

  @override
  String get homeCarousal2Title => 'గమనించవలసిన 7 కంటి సమస్యలు!';

  @override
  String get homeCarousal2Description => 'పరీక్ష చేయించుకోవలసిన 7 కంటి సమస్యలుః \r\n \r\n• కన్ను ఎర్రబడటం, \r\n• కళ్ళలో నీరు రావడం, \r\n• కళ్ళపై తెల్లటి మచ్చలు';

  @override
  String get homeCarousal3Title => 'మీరు గమనించని కంటి సమస్యలు చాలా ఉన్నాయి';

  @override
  String get homeCarousal3Description => 'కానీ ఒక కంటి నిపుణుడు చేయగలడు. \r\n తరువాత సమస్యలను నివారించడానికి సకాలంలో కంటి సమస్యలను గుర్తించి చికిత్స పొందండి.';

  @override
  String get myConnectionsTitle => 'నా సభ్యులు';

  @override
  String get myConnectionsAddMember => 'సభ్యుడిని జోడించండి';

  @override
  String get myConnectionsServiceNotAvailable => 'సేవ అందుబాటులో లేదు';

  @override
  String get myConnectionsAdd => 'జోడించండి';

  @override
  String get recentServicesTitle => 'నా ఇటీవలి సేవలు';

  @override
  String get recentServicesEyeAssessment => 'కంటి మూల్యాంకనం';

  @override
  String get recentServicesVisualAcuityTest => 'దృశ్య తీక్షణ పరీక్ష';

  @override
  String get nearbyVisionCentersTitle => 'సమీపంలోని దృష్టి కేంద్రాలు';

  @override
  String get nearbyVisionCentersNotFound => 'దృష్టి కేంద్రాలు దొరకలేదు';

  @override
  String get tollFreeNumber => 'టోల్ ఫ్రీ నంబర్';

  @override
  String get appDrawerTitle => 'మెనూ';

  @override
  String get appDrawerHome => 'హోమ్';

  @override
  String get appDrawerLanguageSelection => 'భాష ఎంపిక';

  @override
  String get appDrawerAccessibility => 'ప్రాప్యత సెట్టింగ్‌లు';

  @override
  String get appDrawerMyProfile => 'నా ప్రొఫైల్';

  @override
  String get appDrawerAssessmentsAndTests => 'మూల్యాంకనాలు మరియు పరీక్షలు';

  @override
  String get appDrawerScanner => 'QR కోడ్ స్కానర్';

  @override
  String get appDrawerAboutUs => 'మా గురించి';

  @override
  String get appDrawerPrivacyPolicy => 'గోప్యత & డేటా విధానం';

  @override
  String get appDrawerHelpAndSupport => 'సహాయం మరియు మద్దతు';

  @override
  String get appDrawerSignOut => 'సైన్ అవుట్ చేయండి';

  @override
  String get aboutUsDescription => 'Sightconnect అనేది వినియోగదారు-స్నేహపూర్వక కంటి సంరక్షణ అనువర్తనం, ఇది కాల్ ద్వారా స్వీయ-మూల్యాంకనం మరియు సంప్రదింపులకు సహాయపడుతుంది. \r\n\r\n కంటి సంరక్షణను అందరికీ అందుబాటులో ఉంచడం మా లక్ష్యం. ఈ అనువర్తనం వారి వయస్సు, సాంకేతిక నేపథ్యం మరియు సామాజిక లేదా ఆర్థిక నేపథ్యంతో సంబంధం లేకుండా అన్ని వర్గాల వినియోగదారులను కలుపుకొని, అందుబాటులో ఉండేలా రూపొందించబడింది. అనువర్తనం మరియు దాని కంటెంట్ ఆంగ్లం మరియు ఇతర స్థానిక భాషలలో అందుబాటులో ఉంచబడ్డాయి. ఇది వినియోగదారులకు వారి కళ్ళను స్వీయ-మూల్యాంకనంా వేయడానికి మరియు సకాలంలో చికిత్స సలహాలను పొందడానికి సహాయపడుతుంది. మా వినియోగదారులకు వ్యక్తిగతీకరించిన కంటి సంరక్షణ పరిష్కారాలను అందించడానికి అనువర్తనం సరికొత్త సాంకేతిక పరిజ్ఞానాన్ని మరియు సాధనాలను ఉపయోగిస్తుంది. ఇది వారి జీవితాన్ని సులభతరం చేయడానికి వివిధ రకాల లక్షణాలతో వస్తుంది.';

  @override
  String get aboutUsFeaturesTitle => 'లక్షణాలు';

  @override
  String get aboutUsFeaturesDescription => 'అనువర్తనంలో కంటి పరీక్ష: కొన్ని ప్రశ్నలకు సమాధానం ఇవ్వడం ద్వారా మరియు తదుపరి దశలు మరియు సందర్శించాల్సిన వైద్యుడికి తగిన సిఫార్సులను పొందడం ద్వారా వారి కళ్ళను స్వీయ-మూల్యాంకనం వేయడానికి అనువర్తనం, దాని వినియోగదారులను అనుమతిస్తుంది. వినియోగదారుల స్నేహితులు మరియు కుటుంబ సభ్యులు కూడా ప్రయోజనం పొందవచ్చు. | అపాయింట్మెంట్ బుకింగ్: వినియోగదారులు తమ కళ్ల పరీక్ష కొరకు ఆన్లైన్ టెలికన్సల్టేషన్లు మరియు వైద్యులతో ఇన్-క్లినిక్ సందర్శనలను బుక్ చేసుకోవచ్చు. | ఐవిఆర్ కాల్ సేవలు: మా ఐవిఆర్ కాల్ సేవలు ఆంగ్లం మరియు స్థానిక భాషలలో అందుబాటులో ఉన్నాయి మరియు ఇది ప్రాథమిక ఫీచర్ ఫోన్లు ఉన్న వినియోగదారులకు కూడా సేవలు అందిస్తుంది. అత్యవసర సమయంలో లేదా ఏదైనా కంటి సంబంధిత సమస్యల కోసం తక్షణ సహాయం కోరడానికి వినియోగదారులు మా కంటి సంరక్షణ నిపుణులను సంప్రదించవచ్చు. అపాయింట్మెంట్లను బుక్ చేసుకోవడానికి లేదా మరిన్ని వివరణలు కోరడానికి కూడా వారు కాల్ చేయవచ్చు. | సమీపంలోని క్లినిక్లు: వినియోగదారులు తమకు సమీపంలో ఉన్న కంటి సంరక్షణ క్లినిక్లను గుర్తించవచ్చు. | ప్రిస్క్రిప్షన్లు మరియు నివేదికలు: వినియోగదారుల అన్ని ప్రిస్క్రిప్షన్లు మరియు నివేదికలను సులువుగా ఒకే ప్రదేశం నుండి పొందవచ్చు. | కంటి శిబిరాలు: వినియోగదారులు తమ స్నేహితులు మరియు కుటుంబ సభ్యుల కళ్ళను ఉచితంగా పరీక్షించడానికి సమీపంలోని కంటి శిబిరాల సమాచారాన్ని పొందవచ్చు. | రిమైండర్లు మరియు హెచ్చరికలు: వినియోగదారులు వారి రాబోయే అపాయింట్మెంట్లు, మందులు, నివేదికలు మొదలైన వాటికి సంబంధించిన సకాలంలో హెచ్చరికలు మరియు రిమైండర్లను పొందవచ్చు. | షేరింగ్: వినియోగదారులు ఈ అనువర్తనం మరియు అనువర్తనంలో అందించిన ఇతర ఉపయోగకరమైన సమాచారాన్ని వారి స్నేహితులు మరియు కుటుంబ సభ్యులకు పంపవచ్చు.';

  @override
  String get aboutUsConclusion => 'ఈ యాప్ ప్రముఖ కంటి సంరక్షణ నిపుణుల సహాయంతో మా వినియోగదారు సమాజానికి మెరుగైన సేవలు అందించడానికి అభివృద్ధి చేయబడింది. ప్రకాశవంతమైన, ఆరోగ్యకరమైన ప్రపంచాన్ని సృష్టించే మా లక్ష్యంలో మాతో చేరండి. సైట్ కనెక్ట్ యాప్ను డౌన్లోడ్ చేసి షేర్ చేయండి!';

  @override
  String get privacyPolicyDescription => 'ఎల్ వి ప్రసాద్ ఐ ఇన్స్టిట్యూట్, దాని అనుబంధ సంస్థలు, సహచరులు మరియు అనుబంధ కంపెనీలు (సమిష్టిగా "ఎల్ వి పి ఇ ఐ", "మాకు", "మేము" అని పిలుస్తారు) మీ అధికార పరిధిలోని చట్టాల ప్రకారం మీ వ్యక్తిగత డేటాను ప్రాసెస్ చేయడానికి కట్టుబడి ఉన్నాయి. వ్యక్తిగత డేటా ప్రాసెసింగ్ గురించి మేము మీకు ఈ క్రింది సమాచారాన్ని తెలియజేస్తాము.';

  @override
  String get privacyPolicyPersonalDataTitle => 'సేకరించిన/ప్రాసెస్ చేసిన వ్యక్తిగత డేటా అంశాలు:';

  @override
  String get privacyPolicyPersonalDataDescription => 'మీరు మరియు మీ సంబందితుల వ్యక్తిగత డేటా (వీటిలో కొన్ని డేటా ఐచ్ఛికంగా ఉంటుంది) మొబైల్ నంబర్, పేరు, పుట్టిన తేదీ, లింగం (పురుషుడు/మహిళ), చిరునామా (పిన్ కోడ్), రోగి ఐడి, కనెక్షన్, కంటి ట్రైజ్ ప్రశ్నావళి ప్రతిస్పందనలు, కంటి ట్రైజ్ రిపోర్ట్, కంటి చిత్రాలు, మీ కంటి చిత్రానికి వ్యతిరేకంగా ట్యాగ్ చేయబడిన లక్షణాలు, ఛాయాచిత్రం, చిరునామా, జిల్లా పేరు (జిల్లా కోడ్తో సహా), రాష్ట్ర పేరు (రాష్ట్ర కోడ్తో సహా), ఉప జిల్లా పేరు, గ్రామం పేరు, పట్టణం పేరు, ఇమెయిల్, చివరి పేరు, మధ్య పేరు, రక్త సమూహం, ఎత్తు, బరువు, వృత్తి, ABHA వివరాలు (మీరు అందించినవి). అనువర్తనాన్ని యాక్సెస్ చేయడానికి కెమెరా, జిపిఎస్ లొకేషన్ గ్యాలరీ, పూర్తి నెట్వర్క్ యాక్సెస్, వ్యూ నెట్వర్క్ కనెక్షన్లు, పరికర సమాచారం వంటి మీ అనువర్తన అనుమతుల ఆధారంగా.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'ప్రాసెసింగ్ యొక్క ఉద్దేశ్యం: ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'మీ కోసం మరియు మీ సంబందితుల  కోసం (మీరు అందించిన విధంగా) కంటి సంబంధిత ఆన్లైన్ ఆరోగ్య తనిఖీ కోసం, మా అప్లికేషన్ మరియు దాని లక్షణాలను యాక్సెస్ చేయడానికి మీకు వీలు కల్పించడానికి. | ఏదైనా కంటి సంబంధిత అనారోగ్యం/ఆరోగ్య సమస్యల విషయంలో, వర్తించే విధంగా, ఎల్ వి పి ఇ ఐ లోని దృష్టి సాంకేతిక నిపుణులు, నేత్ర వైద్యులను సంప్రదించడానికి మీకు వీలు కల్పిస్తుంది. | మీ ఆరోగ్య సంప్రదింపులు మరియు రోగనిర్ధారణలో భాగంగా, ఏదైనా కంటి ఆరోగ్య సంబంధిత డేటాను (నివేదికలతో సహా) అందించడానికి, మరియు ఆరోగ్య సంబంధిత సమస్యలలో భాగంగా మిమ్మల్ని లేదా మీ కనెక్షన్లను సంప్రదించడానికి. | మీరు చికిత్స కోసం ఎల్ వి పి ఇ ఐ వైద్యులను సంప్రదించలేకపోతే/తెలియజేయలేకపోతే, కంటి సమస్య యొక్క తీవ్రతను బట్టి మెరుగైన రోగనిర్ధారణ కోసం మా అధీకృత ఎల్ వి పి ఇ ఐ నేత్రవైద్యులు/వైద్యులతో మరియు (మీ జిపిఎస్ స్థానం ఆధారంగా వర్తించే చోట) గ్రామ చీఫ్/మేయర్ మొదలైన వారితో మీ కంటి ఆరోగ్య డేటాను షేర్ చేయడానికి. | మీకు సమీపంలోని ఎల్ వి పి ఇ ఐ అనుబంధంగా ఉన్న కంటి క్లినిక్లు/ఆసుపత్రుల జాబితాను అందించడానికి, మీరు ఏదైనా కంటి సంబంధిత సమస్యల విషయంలో సంప్రదించడానికి. | భవిష్యత్తులో సరైన రోగనిర్ధారణను అందించే ఉద్దేశ్యంతో మన యంత్ర అభ్యాసం లేదా కృత్రిమ మేధస్సు నమూనాలకు శిక్షణ ఇవ్వడంలో సహాయపడటానికి మీ యొక్క కంటి చిత్రం, కంటి చిత్రానికి సంబంధించిన లక్షణాలు, వయస్సు, బ్లడ్ గ్రూప్, ఎటువంటి ఐడెంటిఫైయర్లు లేని సమాచారాన్ని ఉపయోగించడానికి. | కంటి ఆరోగ్యం గురించి అవగాహన కల్పించడానికి రిమైండర్, కమ్యూనికేషన్, క్యాంపెయిన్ మెయిలర్లను పంపడానికి.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'డేటా గ్రహీతలు/అందుబాటులో ఉండేవారు:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'మీ యొక్క వ్యక్తిగత డేటా (సున్నితమైన వ్యక్తిగత డేటాతో సహా), వైద్యులు/నేత్ర వైద్య నిపుణులు, విజన్ టెక్నీషియన్లు, విజన్ గార్డియన్లు, ఎల్ వి పి ఇ ఐ ప్రతినిధులు, అంతర్గత/బాహ్య ఆడిటర్లు, వర్తించే చోట ప్రభుత్వ అధికారులు మరియు మా అధీకృత సర్వీస్ ప్రొవైడర్ ఇన్ఫోసిస్ మరియు అధీకృత ఎల్విపిఇఐ సిబ్బందికి అందుబాటులో ఉంటుంది.';

  @override
  String get privacyPolicyDataTransferTitle => 'డేటా బదిలీ & స్టోరేజ్:';

  @override
  String get privacyPolicyDataTransferDescription => 'మీరు అందించిన వ్యక్తిగత డేటా భారతదేశంలోని మా అధీకృత సర్వీస్ ప్రొవైడర్ సర్వర్ మరియు మా అంతర్గత సర్వర్లలో నిల్వ చేయబడుతుంది.';

  @override
  String get privacyPolicyDataSecurityTitle => 'డేటా భద్రత:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI మీ వ్యక్తిగత డేటాను రక్షించడానికి పరిపాలనా, భౌతిక భద్రత మరియు సాంకేతిక నియంత్రణలతో సహా సహేతుకమైన మరియు తగిన భద్రతా పద్ధతులు మరియు విధానాలను అవలంబిస్తుంది.';

  @override
  String get privacyPolicyDataRetentionTitle => 'డేటా నిలుపుదల:';

  @override
  String get privacyPolicyDataRetentionDescription => 'చట్టపరమైన మరియు వ్యాపార అవసరాల ప్రకారం ఇకపై ఉంచాల్సిన అవసరం లేని వ్యక్తిగత డేటా సురక్షితమైన పద్ధతిలో తీసివేయబడుతాయి.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'డేటా విషయ హక్కులు:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'మీ వ్యక్తిగత సమాచారాన్ని యాక్సెస్ చేయడానికి మరియు సరిదిద్దడానికి మీకు ఎప్పుడైనా హక్కు ఉంది. ఏదైనా అభ్యర్థనలు, సమస్యలు, ఆందోళనలు లేదా ప్రశ్నలు ఉంటే మీరు ఇమెయిల్ <> పంపడం ద్వారా ఎల్ వి ప్రసాద్ కార్యాలయాన్ని సంప్రదించవచ్చు.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'ఉపసంహరణ హక్కు:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'మీ సమ్మతి ఆధారంగా మేము మీ వ్యక్తిగత డేటాను ప్రాసెస్ చేసే చోట, వర్తించే డిపి ప్రకారం ప్రాసెసింగ్కు మీ సమ్మతిని మీరు భవిష్యత్తులో ఎప్పుడైనా ఉపసంహరించుకోవచ్చు. ఇది మీ ఉపసంహరణకు ముందు ఏ ప్రాసెసింగ్ ఆపరేషన్ యొక్క చట్టబద్ధతను ప్రభావితం చేయదు. మీ సమ్మతిని ఉపసంహరించుకోవడానికి, మీరు ఎల్ వి పి ఇ ఐ కి<> ఇమెయిల్ పంపవచ్చు.';

  @override
  String get privacyPolicyAcknowledgement => 'క్రింది బటన్ను క్లిక్ చేయడం ద్వారా, సున్నితమైన వ్యక్తిగత డేటాతో సహా మీ వ్యక్తిగత డేటాను పైన పేర్కొన్న పద్ధతిలో సేకరించి ప్రాసెస్ చేయవచ్చని, మీరు దీని ద్వారా అంగీకరిస్తున్నారు మరియు అర్థం చేసుకుంటున్నారు మరియు పైన పేర్కొన్న ప్రయోజనాల కోసం దీని ద్వారా అంగీకరిస్తున్నారు. మీరు పంచుకున్న సున్నితమైన వ్యక్తిగత డేటాతో సహా ఏదైనా వ్యక్తిగత డేటా (మీరు కాకుండా) వారి నుండి తగిన సమ్మతి తీసుకున్న తర్వాతే అని కూడా మీరు అంగీకరిస్తున్నారు. పైన పేర్కొన్న ప్రయోజనాల కోసం అవసరం లేని వ్యక్తిగత డేటాను (సున్నితమైన వ్యక్తిగత డేటాతో సహా) మీరు షేర్ చేయరు అని కూడా మీరు అంగీకరిస్తున్నారు. మీరు మైనర్ యొక్క వ్యక్తిగత డేటాను వారి తల్లిదండ్రులు/చట్టపరమైన సంరక్షకులుగా పంచుకుంటున్నప్పుడు పైన పేర్కొన్న విధంగా వారి డేటా సేకరణ మరియు ప్రాసెసింగ్కు మీరు సమ్మతిస్తున్నారని కూడా మీరు అంగీకరిస్తున్నారు.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'గోప్యతా విధానం ఆమోదించబడింది';

  @override
  String get helpAndSupportReachTitle => 'మమ్మల్ని సంప్రదించండి';

  @override
  String get assessmentAndTestsSubtitle => 'ఇప్పటివరకు చేసిన మదింపుల యొక్క శీఘ్ర వీక్షణ ఇక్కడ ఉంది.';

  @override
  String get assessmentAndTestsReportsNotFound => 'నివేదికలు దొరకలేదు';

  @override
  String get eyeAssessmentTitle => 'కంటి మూల్యాంకనం';

  @override
  String get eyeAssessmentSubtitle => 'మీ స్నేహితులు, కుటుంబ సభ్యులు మరియు మీ యొక్క కంటి సమస్యలను కొన్ని దశల్లో మూల్యాంకనం చేయండి. మీ కంటి సమస్యలకు సంబంధించిన లక్షణాలను అర్థం చేసుకోవడానికి మిమ్మల్ని కొన్ని ప్రశ్నలు అడగబడతాయి, తరువాత దృశ్య పరీక్షలు చేయబడతాయి.';

  @override
  String get eyeAssessmentGetMemberLabel => 'సభ్యుడిని మార్చండి';

  @override
  String get eyeAssessmentProceedButton => 'ముందుకు సాగండి';

  @override
  String get eyeAssessmentBrightnessLabel => 'ప్రకాశం 80 శాతానికి సరిచేయబడింది';

  @override
  String get eyeAssessmentBrightnessError => 'దయచేసి ప్రకాశాన్ని 80 శాతానికి అమర్చండి';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ప్రశ్నకు ఇంకా మద్దతు లేదు';

  @override
  String get eyeAssessmentPopUpHeading => 'మూల్యాంకనం';

  @override
  String get eyeAssessmentPopUpBody => 'మీకు కంటి సమస్య ఉందా?';

  @override
  String get eyeAssessmentPopUpYesButton => 'అవును';

  @override
  String get eyeAssessmentPopUpNoButton => 'లేదు';

  @override
  String get visualAcuityTestInstructionOne => 'బాగా తేలికపాటి ప్రదేశంలో సౌకర్యవంతంగా కూర్చోండి. మీరు ప్రకాశంలో అకస్మాత్తుగా మార్పును గమనించవచ్ఛు, ఆందోళన చెందకండి, సరైన ఫలితాన్ని అందించడానికి స్క్రీన్ స్వయంచాలక ప్రకాశానికి అమర్చబడి ఉంటుంది.';

  @override
  String get visualAcuityTestInstructionTwo => 'మీరు పరికరాన్ని కంటి స్థాయిలో పట్టుకున్నారని నిర్ధారించుకోండి. మీరు అద్దాలు లేదా కాంటాక్ట్ లెన్సులు ధరిస్తే, వాటిని ధరించండి.';

  @override
  String get visualAcuityTestInstructionThree => 'మొబైలు స్క్రీన్ నుండి మిమ్మల్ని మీరు 40 సెంటీమీటర్ల దూరంలో ఉంచుకోండి. పరీక్ష స్క్రీన్ పై దూరం చూపబడుతుంది.';

  @override
  String get visualAcuityTestInstructionFour => 'మీరు అద్దాలతో పరీక్షిస్తున్నట్లయితే, ఒక కంటిని మాత్రమే పరీక్షించినప్పుడు అద్దాలపై మీ చేతితో ఒక కన్ను మూయండి.';

  @override
  String get skipAndProceedButton => 'దాటవేయండి & స్కాన్కు వెళ్లండి';

  @override
  String get proceedToScanButton => 'స్కాన్కు వెళ్లండి';

  @override
  String get eyeAssessmentSteps => 'దశలు';

  @override
  String get eyeAssessmentStepOne => 'దశ 1 - కంటి మూల్యాంకన ప్రశ్నలు';

  @override
  String get eyeAssessmentStepTwo => 'దశ 2-కంటి మూల్యాంకన ప్రశ్నలు';

  @override
  String get eyeAssessmentStepThree => 'దశ 3-కంటి మూల్యాంకన ప్రశ్నలు';

  @override
  String get eyeAssessmentOngoing => 'కొనసాగుతున్నది';

  @override
  String get eyeAssessmentCompleted => 'పూర్తయింది';

  @override
  String get eyeAssessmentPending => 'పెండింగ్లో ఉంది';

  @override
  String get eyeAssessmentResults => 'మూల్యాంకన ఫలితాలు';

  @override
  String get eyeAssessmentCompleteSteps => 'ఫలితాలను చూడటానికి అన్ని దశలను పూర్తి చేయండి';

  @override
  String get eyeAssessmentToolTip => 'దయచేసి ఫ్లాష్ ఆపివేయబడిందని మరియు ప్రకాశం 80 శాతానికి సెట్ చేయబడిందని నిర్ధారించుకోండి';

  @override
  String get eyeScanInstructionOne => 'ఫ్రేమ్పై ముఖం సరిగ్గా ఉంచి కెమెరాను పట్టుకోండి.';

  @override
  String get eyeScanInstructionTwo => 'మీ ఫోన్ వెనుక కెమెరాను ఉపయోగించి కళ్ళ చిత్రాన్ని తీయండి.';

  @override
  String get eyeScanInstructionThree => 'ఫ్లాష్ ఆన్ చేసి బాగా వెలుతురు వున్న ప్రదేశంలో ఉండేలా చూసుకోండి.';

  @override
  String get eyeScanInstructionFour => 'మెరుగైన సంగ్రహణం మరియు స్పష్టత కోసం, చిత్రాన్ని క్లిక్ చేయడానికి మరొకరి సహాయం తీసుకోండి.';

  @override
  String get eyeScanInstructionFive => 'చిత్రాన్ని తీసేటప్పుడు ఒక కన్ను మీ చేతితో మూసి, మరొక కన్ను నేరుగా ముందుకు చూడండి.';

  @override
  String get eyeScanInstructionSix => 'చిత్రాన్ని ప్రారంభించే ముందు ప్యానెల్ లోపల కన్ను కేంద్రీకరించండి.';

  @override
  String get eyeScanInstructionSeven => 'ఫ్లాష్ ఆరిపోయే వరకు కళ్ళు తెరిచి ఉంచండి, \'బీప్\' ధ్వని ఫోటో ముగింపును సూచిస్తుంది.';

  @override
  String get eyeAssessmentNote => 'గమనిక: ఇక్కడ చూపిన చిత్రాలు సూచన కోసం మాత్రమే. నిజ జీవితంలో ఇదే విధంగా కనిపించకపోవచ్చు.';

  @override
  String get agreeButton => 'నేను అంగీకరిస్తున్నాను';

  @override
  String get consentPageCheckbox => 'నేను నిబంధనలు మరియు షరతులను అంగీకరిస్తున్నాను';

  @override
  String get confirmButton => 'ధృవీకరించండి';

  @override
  String get discardButton => 'తీసివేయండి';

  @override
  String get imageNotCapturedToastMessage => 'చిత్రం సంగ్రహించబడలేదు';

  @override
  String get eyeCaptureCompletionDialogHeading => 'పరీక్ష పూర్తయింది';

  @override
  String get eyeCaptureCompletionDialogBody => 'మీరు పరీక్షను పూర్తి చేసారు. ఫలితాన్ని చూడటానికి దయచేసి దిగువ బటన్పై క్లిక్ చేయండి.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ఫలితాన్ని చూడండి';

  @override
  String get eyeCaptureTriageSavedLocally => 'ట్రయాజ్ స్థానికంగా భద్రపరచబడింది';

  @override
  String get visualAcuityTestResults => 'దృశ్య తీక్షణ పరీక్ష ఫలితాలు';

  @override
  String get assessmentResultPageMoreDetailsText => 'మరిన్ని వివరాల కోసం సమీప దృష్టి కేంద్రాన్ని సందర్శించండి. మా దృష్టి సాంకేతిక నిపుణుడితో మాట్లాడటానికి టోల్ ఫ్రీ నంబర్కు కాల్ చేయండి.';

  @override
  String get assessmentReportButton => 'కంటి మూల్యాంకన నివేదిక';

  @override
  String get notificationsTitle => 'నోటిఫికేషన్లు';

  @override
  String get notificationsNotAvailable => 'నోటిఫికేషన్లు లేవు';

  @override
  String get servicesPatientCare => 'రోగి సంరక్షణ';

  @override
  String get reportAssessmentId => 'మూల్యాంకన ఐడి';

  @override
  String get reportDateAndTime => 'తేదీ మరియు సమయం';

  @override
  String get reportSeverityAbnormal => 'అత్యవసర సలహా';

  @override
  String get reportSeverityHigh => 'ముందస్తు పరిశీలన';

  @override
  String get reportSeverityLow => 'నియమిత పరిశీలన';

  @override
  String get reportDataUnavailable => 'డేటా లేదు';

  @override
  String get reportTumblingTitle => 'తీక్షణ పరీక్ష - టంబ్లింగ్ E';

  @override
  String get rightCornea => 'కుడి కర్ణం';

  @override
  String get leftCornea => 'ఎడమ కర్ణం';

  @override
  String get myProfileGeneralInfo => 'సాధారణ సమాచారం';

  @override
  String get myProfileAge => 'వయస్సు';

  @override
  String get myProfileAddress => 'చిరునామా';

  @override
  String get myProfileLine => 'వీధి';

  @override
  String get myProfileCity => 'నగరం';

  @override
  String get myProfileDistrict => 'జిల్లా';

  @override
  String get myProfileState => 'రాష్ట్రం';

  @override
  String get myProfilePinCode => 'పిన్ కోడ్';

  @override
  String get submitButton => 'సమర్పించు';

  @override
  String get swipeGestureError => 'తప్పు స్వైప్! దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get swipeGestureCardText => 'సంకేతం దిశగా స్వైప్ చేయండి';

  @override
  String get assessmentResultCardAssessmentQuestions => 'మూల్యాంకన ప్రశ్నలు';

  @override
  String get assessmentResultCardAcuityTest => 'తీక్షణ పరీక్ష';

  @override
  String get assessmentResultCardEyeScan => 'కంటి స్కాన్';

  @override
  String get viewReportButton => 'నివేదికను చూడండి';

  @override
  String get updateButton => 'నవీకరించండి';

  @override
  String get assessmentCardUrgentConsult => 'అత్యవసర సలహా';

  @override
  String get assessmentCardRoutineCheckUp => 'సాధారణ పరిశీలన';

  @override
  String get assessmentCardEarlyCheckUp => 'ముందస్తు పరిశీలన';

  @override
  String get testAgainButton => 'మళ్లీ పరీక్షించండి';

  @override
  String get homeButton => 'హోమ్';

  @override
  String get homeTriageCardTitle => 'మన కళ్ళు అమూల్య సంపదలు.';

  @override
  String get homeTriageCardDescription => 'కంటి సమస్యలను నివారించడానికి వాటిని సకాలంలో పరీక్షించండి.';

  @override
  String get homeTriageCardTest => 'కంటి పరీక్ష ప్రారంభించండి';

  @override
  String get homeHelplineCardDescrition => 'అకస్మాతీకరణ దృష్టి నష్టం కాలమోలకంగా, ఈ అత్యావసర హెల్ప్‌లైన్‌కు కాల్ చేయండి';

  @override
  String get inviteCardTitle => 'ఇతరులను ఆహ్వానించండి';

  @override
  String get inviteCardDescription => '5 స్నేహితులను మరియు కుటుంబ సభ్యులను ఆమంత్రించండి, భవిష్యత్తులో వారి కంటి సమస్యలను తడుముగా తగ్గించడానికి అవకాశం కల్పంచండి.';

  @override
  String get inviteCardInvitation => 'ఇప్పుడు ఆహ్వానించండి';

  @override
  String get partnerCardTitle => 'భాగస్వామి';

  @override
  String get languageSelection => 'భాషను ఎంచుకోండి';

  @override
  String get profileTitle => 'ప్రొఫైల్';

  @override
  String get eyeAssessmentEnterLabel => 'ఇక్కడ నమోదు చేయండి';

  @override
  String get profilePageAddressDetails => 'చిరునామా వివరాలు';

  @override
  String get profilePaeCheckReports => 'మీ నివేదికలను తనిఖీ చేయండి';

  @override
  String get bottomNavItemEyeTest => 'కంటి పరీక్ష';

  @override
  String get bottomNavItemAppointment => 'నియామకాలు';

  @override
  String get memberSelection => 'సభ్యుడిని ఎంచుకోండి';

  @override
  String get triageAlerDialogBoxTitle => 'పునరావృతం చేయడానికి దశలను ఎంచుకోండి';

  @override
  String get scannerTitle => 'స్కానర్';

  @override
  String get visualAcuityTestDistanceInstruction => 'కెమెరాను కంటికి 40 సెం.మీ దూరంలో ఉంచండి.';

  @override
  String get somethingWentWrong => 'ఎక్కడో తేడ జరిగింది.';

  @override
  String get triageUpdatedSuccessfully => 'ట్రయాజ్ విజయవంతంగా నవీకరించబడింది.';

  @override
  String get noPreviewAvailable => 'ప్రివ్యూ అందుబాటులో లేదు';

  @override
  String get privacyPolicyTitle => 'గోప్యత & డేటా రక్షణ';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'కింది ప్రయోజనాల కోసం మీరు అందించిన వ్యక్తిగత డేటాను మేము ప్రాసెస్ చేస్తాము:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'మీరు కెమెరాకు చాలా దగ్గరగా ఉన్నారు, కెమెరాను కంటికి 40 సెం.మీ దూరంలో ఉంచండి.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'మీరు కెమెరాకు చాలా దూరంగా ఉన్నారు, కెమెరాను కంటికి 40 సెం.మీ దూరంలో ఉంచండి.';

  @override
  String get myProfileABHAID => 'ABHA ఐడి';

  @override
  String get myProfileEmail => 'ఇమెయిల్';

  @override
  String get viewHistoryButton => 'చరిత్రను వీక్షించండి';

  @override
  String get profilePagePersonalDetails => 'వ్యక్తిగత వివరాలు';

  @override
  String get profilePageDateOfBirth => 'పుట్టిన తేది';

  @override
  String get profilePageGender => 'లింగం';

  @override
  String get profilePageMobile => 'మొబైల్';

  @override
  String get profilePageHealthCardTitle => 'హెల్త్ కార్డ్';

  @override
  String get appointmentTitle => 'నియామకాలు';

  @override
  String get appointmentSubtitle => 'అన్ని నియామకాలు';

  @override
  String get eyeBoxText => 'కళ్ళ చుట్టూ ఆకుపచ్చ పెట్టెలు కనిపించే వరకు దయచేసి చిత్రాన్ని సర్దుబాటు చేసి ఉంచండి. కంటికి దగ్గరగా వెళ్లి, పెట్టెలో 40 శాతం కంటితో కప్పబడి ఉండేలా చూసుకోండి.';

  @override
  String get bottomNavItemServices => 'సేవలు';

  @override
  String get smsContent => 'హేయ్! నేను నా కళ్ళను జాగ్రత్తగా చూసుకోవడానికి సైట్కనెక్ట్ యాప్ను ఉపయోగిస్తున్నాను, మీరు కూడా ఉపయోగించాలి! మీ కళ్ళను అంచనా వేసి, సైట్కనెక్ట్ యాప్ ద్వారా సకాలంలో చికిత్స పొందండి. ఇది మీ చేతికి నివారణ కంటి సంరక్షణను తీసుకువచ్చే ప్రత్యేకమైన అనువర్తనం. ఇప్పుడు దాన్ని పొందండిః https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'సైట్కనెక్ట్ యాప్ ద్వారా మీ కంటి ఆరోగ్యానికి ప్రాధాన్యత ఇవ్వండి!';

  @override
  String get recentServicesCataractEyeTest => 'కంటిశుక్లం పరీక్ష';

  @override
  String get recentServicesRedEyeTest => 'ఎర్ర కంటి పరీక్ష';

  @override
  String get poweredByText => 'సాధ్యం చేసింది';

  @override
  String get digitalHealthCard => 'డిజిటల్ పబ్లిక్ హెల్త్ స్టాక్';

  @override
  String get inviteNowText => 'ఇప్పుడు ఆహ్వానించండి';

  @override
  String get chatBotDefaultQuerySuggestions => 'కంటి అంచనా ప్రారంభించండి | సాధారణ కంటి సమస్యలు | మెరుగైన కంటి చూపు కోసం చిట్కాలు';

  @override
  String get chatBotWelcomeMessage => 'హాయ్, ఈ రోజు నేను మీకు ఎలా సహాయపడగలను?';

  @override
  String get resend => 'మళ్లీ పంపండి';

  @override
  String get mobileNumber => 'మొబైల్ నంబర్';

  @override
  String get loginVerifyMobileNumber => 'మీ మొబైల్ నంబర్‌ని ధృవీకరించండి';

  @override
  String get loginEnterMobileNumber => 'దయచేసి మీ మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get loginEnterValidMobileNumber => 'దయచేసి పనిచేసే మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get loginUnableToSendOTP => 'ఈ నంబర్‌కు OTP పంపడం సాధ్యం అవ్వటం లేదు';

  @override
  String get loginGetOTP => 'OTP పొందండి';

  @override
  String get loginInvalidOTP => 'ఈ OTP చెల్లదు ';

  @override
  String get loginDidntReceiveOTP => 'మీరు నమోదు చేసిన OTP సరైనది కాదు ';

  @override
  String get loginOTPSent => 'OTP విజయవంతంగా పంపబడింది';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get triageExitConfirmation => 'Do you want to exit the Test?';

  @override
  String get triageReportEyeProblems => 'Report Eye Problems';

  @override
  String get triageHowToReport => 'How to report eye problems?';

  @override
  String get triageReportInstructions => 'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\n\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.';

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
}
