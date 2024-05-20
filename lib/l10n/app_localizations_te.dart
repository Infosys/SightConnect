import 'app_localizations.dart';

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} / ${total}';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'దయచేసి ${mobileNumber}కి పంపిన OTPని నమోదు చేయండి';
  }

  @override
  String loginResendOTPIn(String time) {
    return '${time}లో మళ్లీ పంపండి';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient}కి అపాయింట్‌మెంట్ ఉంది';
  }

  @override
  String vgEmptyResults(String type) {
    return 'ప్రస్తుతం ${type}లు లేవు. "Add ${type}" పై ట్యాప్ చేయండి';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ఐడి, పేరు ద్వారా శోధించండి';
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
  String get homeCarousal2Description => 'పరీక్ష చేయించుకోవలసిన 7 కంటి సమస్యలుః\r\n\r\n \r\n\r\n• కన్ను ఎర్రబడటం,\r\n\r\n• కళ్ళలో నీరు రావడం,\r\n\r\n• కళ్ళపై తెల్లటి మచ్చలు';

  @override
  String get homeCarousal3Title => 'మీరు గమనించని కంటి సమస్యలు చాలా ఉన్నాయి';

  @override
  String get homeCarousal3Description => 'కానీ ఒక కంటి నిపుణుడు చేయగలడు.\r\n\r\n తరువాత సమస్యలను నివారించడానికి సకాలంలో కంటి సమస్యలను గుర్తించి చికిత్స పొందండి.';

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
  String get aboutUsDescription => 'Sightconnect అనేది వినియోగదారు-స్నేహపూర్వక కంటి సంరక్షణ అనువర్తనం, ఇది కాల్ ద్వారా స్వీయ-మూల్యాంకనం మరియు సంప్రదింపులకు సహాయపడుతుంది.\r\n\r\n\r\n\r\n కంటి సంరక్షణను అందరికీ అందుబాటులో ఉంచడం మా లక్ష్యం. ఈ అనువర్తనం వారి వయస్సు, సాంకేతిక నేపథ్యం మరియు సామాజిక లేదా ఆర్థిక నేపథ్యంతో సంబంధం లేకుండా అన్ని వర్గాల వినియోగదారులను కలుపుకొని, అందుబాటులో ఉండేలా రూపొందించబడింది. అనువర్తనం మరియు దాని కంటెంట్ ఆంగ్లం మరియు ఇతర స్థానిక భాషలలో అందుబాటులో ఉంచబడ్డాయి. ఇది వినియోగదారులకు వారి కళ్ళను స్వీయ-మూల్యాంకనంా వేయడానికి మరియు సకాలంలో చికిత్స సలహాలను పొందడానికి సహాయపడుతుంది. మా వినియోగదారులకు వ్యక్తిగతీకరించిన కంటి సంరక్షణ పరిష్కారాలను అందించడానికి అనువర్తనం సరికొత్త సాంకేతిక పరిజ్ఞానాన్ని మరియు సాధనాలను ఉపయోగిస్తుంది. ఇది వారి జీవితాన్ని సులభతరం చేయడానికి వివిధ రకాల లక్షణాలతో వస్తుంది.';

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
  String get chatBotDefaultQuerySuggestions => 'కంటి అంచనా ప్రారంభించండి | సాధారణ కంటి సమస్యలు | మెరుగైన కంటి చూపు కోసం చిట్కాలు';

  @override
  String get chatBotWelcomeMessage => 'హాయ్, ఈ రోజు నేను మీకు ఎలా సహాయపడగలను?';

  @override
  String get poweredByText => 'సాధ్యం చేసింది';

  @override
  String get digitalHealthCard => 'డిజిటల్ పబ్లిక్ హెల్త్ స్టాక్';

  @override
  String get inviteNowText => 'ఇప్పుడు ఆహ్వానించండి';

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
  String get areYouSure => 'మీరు ఖచ్చితంగా ఉన్నారా?';

  @override
  String get triageExitConfirmation => 'మీరు పరీక్షను నిష్క్రమించాలనుకుంటున్నారా?';

  @override
  String get triageReportEyeProblems => 'కళ్ళ సమస్యలను నివేదించండి';

  @override
  String get triageHowToReport => 'కళ్ళ సమస్యలను ఎలా నివేదించాలి?';

  @override
  String get triageReportInstructions => 'మీరు కళ్ళ సంబంధిత సమస్యలు ఉన్న వ్యక్తిగా, మీ సమస్యలను స్వయం ప్రకటించి ఇక్కడ సముచిత మార్గదర్శనను పొందవచ్చు. మీ స్నేహితులు లేదా కుటుంబ సభ్యుల కళ్ళ సమస్యలను కూడా ఇక్కడ పేర్కొని సముచిత మార్గదర్శనను పొందవచ్చు.';

  @override
  String get assessment => 'మూల్యాంకనం';

  @override
  String get triageOtherSymptomsQuestion => 'మీకు ఇతర లక్షణాలు ఉన్నాయా?';

  @override
  String get triageEnterSymptoms => 'మీ లక్షణాలను ఇక్కడ నమోదు చేయండి';

  @override
  String get triageEyeAssessmentResults => 'కళ్ళ మూల్యాంకన ఫలితాలు';

  @override
  String get triageTestId => 'పరీక్షా ID';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'కళ్ళ స్కాన్ విజయవంతంగా అప్డేట్ చేయబడింది';

  @override
  String get triageErrorEyeScanNotUpdated => 'కళ్ళ స్కాన్ అప్డేట్ కాలేదు!';

  @override
  String get triageLeftEyeString => 'ఎడమ కన్ను';

  @override
  String get triageRightEyeString => 'కుడి కన్ను';

  @override
  String get vaEyeTest => 'కన్ను పరీక్ష';

  @override
  String get instructions => 'సూచనలు';

  @override
  String get vaSwipeUp => 'పైకి తిరగండి';

  @override
  String get vaSwipeDown => 'కిందకి తిరగండి';

  @override
  String get vaSwipeLeft => 'ఎడమకి తిరగండి';

  @override
  String get vaSwipeRight => 'కుడికి తిరగండి';

  @override
  String get vaSwipeGestureError => 'తప్పు తిరగడం చేస్తున్నారు. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get permissionNotGranted => 'అనుమతి ఇవ్వలేదు';

  @override
  String get serviceNotAvailable => 'సేవ అందుబాటులో లేదు';

  @override
  String get vaDistanceToFace => 'ముఖం దగ్గర దూరం';

  @override
  String get vaDistanceToFaceInstruction => 'కెమెరా మీ ముఖం నుండి 40cm దూరంగా ఉండాలని నిర్ధారించండి';

  @override
  String get vaBringFaceInsideBox => 'మీ ముఖాన్ని పెట్టె లోపల తీసుకురాండి';

  @override
  String get startAssessment => 'మూల్యాంకనను ప్రారంభించండి';

  @override
  String get optoAddPatientInfo => 'రోగి సమాచారాన్ని జోడించండి';

  @override
  String get loggedOutMessage => 'మీరు లాగౌట్ అయ్యారు';

  @override
  String get optoLogoutError => 'క్షమించండి, మొబైల్ అప్లికేషన్లో లాగౌట్ లోపం ఏర్పడింది.';

  @override
  String get optoLoggingOut => 'లాగౌట్ అవుతున్నాం...';

  @override
  String get hello => 'హలో';

  @override
  String get optoGetStarted => 'ప్రారంభించండి';

  @override
  String get optoCompletedTests => 'పూర్తి చేసిన పరీక్షలు';

  @override
  String get optoThisMonth => 'ఈ నెల';

  @override
  String get today => 'ఈ రోజు';

  @override
  String get services => 'సేవలు';

  @override
  String get optoAssessmentHistory => 'మూల్యాంకన చరిత్ర';

  @override
  String get optoEyeAssessments => 'కన్ను మూల్యాంకనలు';

  @override
  String get feedback => 'అభిప్రాయం';

  @override
  String get optoImproveApp => 'మా అప్లికేషన్ను మెరుగుపర్చడానికి మేము మీ అభిప్రాయాన్ని కోరుకుంటున్నాము';

  @override
  String get assessments => 'మూల్యాంకనలు';

  @override
  String get optoPatientAssistance => 'రోగికి సహాయం అవసరమా?';

  @override
  String get optoVisualAcuity => 'దృష్టి స్పష్టత';

  @override
  String get optoPatientAided => 'రోగిని సహాయం చేసారా?';

  @override
  String get optoEyeScan => 'కన్ను స్కాన్';

  @override
  String get optoLeaveFeedback => 'దయచేసి మీ అభిప్రాయాన్ని క్రింద వదిలండి';

  @override
  String get optoNoInternet => 'ఇంటర్నెట్ కనెక్షన్ లేదు';

  @override
  String get optoCheckInternet => 'దయచేసి మీ ఇంటర్నెట్ కనెక్షన్ను తనిఖీ చేసి మళ్ళీ ప్రయత్నించండి';

  @override
  String get optoSearchPatientId => 'రోగి ID ను శోధించండి';

  @override
  String get optoRecentAssessments => 'ఇటీవలి మూల్యాంకనలు';

  @override
  String get optoSelectDateRange => 'దయచేసి తేదీ శ్రేణిని ఎంచుకోండి';

  @override
  String get optoDataNotFound => 'ఈ శోధనకు డేటా కనపడలేదు';

  @override
  String get optoAssessmentReport => 'మూల్యాంకన నివేదిక';

  @override
  String get optoPID => 'PID';

  @override
  String get category => 'వర్గం';

  @override
  String get patientAssessmentAndTest => 'రోగి మూల్యాంకన మరియు పరీక్ష';

  @override
  String get patientSelfTestReport => 'స్వయం పరీక్ష నివేదిక';

  @override
  String get patientClinicalReport => 'వైద్యశాల నివేదిక';

  @override
  String get patientAppointmentTitle => 'నియామకం';

  @override
  String get patientBookAppointment => 'నియామకం బుక్ చేయండి';

  @override
  String get patientAppointmentSubtitle => 'మీ నియామకాలు';

  @override
  String get patientTelephoneConsultation => 'టెలిఫోన్ సంప్రదింపు';

  @override
  String get patientAddress => 'చిరునామా';

  @override
  String get patientReschedule => 'మళ్ళీ షెడ్యూల్ చేయండి';

  @override
  String get patientCancel => 'రద్దు చేయండి';

  @override
  String get patientPID => 'PID';

  @override
  String get patientReportID => 'నివేదిక ID';

  @override
  String get patientHideDetailedReport => 'వివరణాత్మక నివేదికను దాచండి';

  @override
  String get patientShowDetailedReport => 'వివరణాత్మక నివేదికను చూపించండి';

  @override
  String get patientEID => 'EID';

  @override
  String get patientViewHistoryButton => 'చరిత్రను చూడండి';

  @override
  String get patientViewReportButton => 'నివేదికను చూడండి';

  @override
  String get patientNoMoreData => 'మరింత డేటా లేదు';

  @override
  String get patientErrorFetchingReport => 'నివేదికను తీసుకురాగడంలో లోపం';

  @override
  String get patientTimeline => 'కాలక్రమం';

  @override
  String get patientRoutineCheckup => 'రూటీన్ పరీక్ష';

  @override
  String get patientAssessmentID => 'మూల్యాంకన ID';

  @override
  String get patientStartDate => 'ప్రారంభ తేదీ';

  @override
  String get patientIVRAssessment => 'IVR మూల్యాంకన';

  @override
  String get patientEarlyConsultationRecommended => 'త్వరిత సంప్రదింపు సిఫారసు చేయబడింది';

  @override
  String get patientCataractEyeReport => 'కటారాక్ట్ కన్ను నివేదిక';

  @override
  String get patientRedEyeReport => 'ఎర్ర కన్ను నివేదిక';

  @override
  String get patientScanAgain => 'మళ్ళీ స్కాన్ చేయండి';

  @override
  String get patientStepsToScan => 'రెటినాల్ స్కానింగ్ చేయడానికి దశలు';

  @override
  String get patientProceedToScan => 'స్కాన్ కు సాగండి';

  @override
  String get patientSkipAndProceedToScan => 'దాటి స్కాన్ కు సాగండి';

  @override
  String get patientEyeScanner => 'కన్ను స్కానర్';

  @override
  String get patientErrorSelectCamera => 'ముందుగా కెమెరాను ఎంచుకోండి!';

  @override
  String get patientEyeBoxText => 'కన్ను పెట్టె పాఠ్యం';

  @override
  String get patientLoggedOut => 'మీరు లాగౌట్ అయ్యారు';

  @override
  String get patientLogoutError => 'క్షమించండి, మొబైల్ అప్లికేషన్లో లాగౌట్ లోపం ఏర్పడింది.';

  @override
  String get patientUpdateProfile => 'ప్రొఫైల్ ను నవీకరించండి';

  @override
  String get patientEdit => 'సవరించండి';

  @override
  String get patientProfileNotUpdated => 'ప్రొఫైల్ నవీకరించబడలేదు';

  @override
  String get patientProfileUpdated => 'ప్రొఫైల్ నవీకరించబడింది';

  @override
  String get patientReportUnavailable => 'నివేదిక అందుబాటులో లేదు';

  @override
  String get patientClinicalReportNotFound => 'వైద్యశాస్త్ర నివేదిక కనబడలేదు';

  @override
  String get patientRID => 'ఆర్ఐడి';

  @override
  String get patientUpdateUnavailable => 'ఈ క్షణంలో నవీకరణ అందుబాటులో లేదు';

  @override
  String get vgAddEvent => 'ఈవెంట్ జోడించండి';

  @override
  String get vgUploadingImageAddingEvent => 'చిత్రాన్ని అప్లోడ్ చేసి ఈవెంట్ జోడించండి';

  @override
  String get vgEventTitle => 'ఈవెంట్ శీర్షిక';

  @override
  String get vgPleaseEnterEndTime => 'దయచేసి ముగింపు సమయాన్ని నమోదు చేయండి';

  @override
  String get vgShouldNotContainSpecialCharacter => 'ప్రత్యేక అక్షరాలు ఉండకూడదు';

  @override
  String get vgEventDescription => 'ఈవెంట్ వివరణ';

  @override
  String get vgAddPatient => 'రోగిని జోడించండి';

  @override
  String get vgPatients => 'రోగులు';

  @override
  String get vgDetails => 'వివరాలు';

  @override
  String get vgTeammates => 'జట్టు సభ్యులు';

  @override
  String get vgEyeAssessment => 'కన్ను మూల్యాంకన';

  @override
  String get vgStart => 'ప్రారంభించండి';

  @override
  String get vgEyeAssessmentDescription => 'మీరు, మీ స్నేహితులు, కుటుంబ సభ్యుల కన్ను సమస్యలను కొన్ని దశలలో మూల్యాంకన చేయండి. మీ కన్ను సమస్యలకు సంబంధించిన లక్షణాలను అర్థం చేసేందుకు మీకు కొన్ని ప్రశ్నలు అడిగబడతాయి, తరువాత దృశ్య పరీక్షలు జరుగుతాయి.';

  @override
  String get vgLogoutMessage => 'మీరు లాగౌట్ అయ్యారు';

  @override
  String get vgLogoutErrorMessage => 'క్షమించండి, మొబైల్ అప్లికేషన్లో లాగౌట్ లోపం ఏర్పడింది.';

  @override
  String get vgWelcome => 'స్వాగతం';

  @override
  String get vgServices => 'సేవలు';

  @override
  String get vgEvents => 'ఈవెంట్లు';

  @override
  String get vgViewAll => 'అన్నిటినీ చూడండి';

  @override
  String get vtAssessmentReport => 'మూల్యాంకన నివేదిక - EA';

  @override
  String get vtRemarks => 'వ్యాఖ్యలు';

  @override
  String get vtNoPatientFound => 'రోగి కనబడలేదు';

  @override
  String get vtClose => 'మూసివేయండి';

  @override
  String get vtBack => 'వెనకకి';

  @override
  String get vtSubmit => 'సమర్పించండి';

  @override
  String get vtSomethingWentWrong => 'ఏదో తప్పు జరిగింది';

  @override
  String get vtAssessmentClosedSuccessfully => 'మూల్యాంకనం విజయవంతంగా మూసివేయబడింది';

  @override
  String get vtEyeScan => 'కన్ను స్కాన్';

  @override
  String get vtDashboard => 'డాష్బోర్డ్';

  @override
  String get vtRegisterPatient => 'రోగిని నమోదు చేయండి';

  @override
  String get vtTriage => 'ట్రియాజ్';

  @override
  String get vtMarkMyAvailability => 'నా అందుబాటులో ఉన్నానని మార్క్ చేయండి';

  @override
  String get vtIVRCallHistory => 'IVR కాల్ చరిత్ర';

  @override
  String get vtMarked => 'మార్క్ చేయబడింది';

  @override
  String get vtPreliminaryAssessment => 'ముంగిటి మూల్యాంకన';

  @override
  String get vtAge => 'వయసు';

  @override
  String get vtGender => 'లింగం';

  @override
  String get vtAddress => 'చిరునామా';

  @override
  String get vtProfile => 'ప్రొఫైల్';

  @override
  String get vtLogoutMessage => 'మీరు లాగౌట్ అయ్యారు';

  @override
  String get vtLogoutError => 'క్షమించండి, మొబైల్ అప్లికేషన్లో లాగౌట్ లోపం ఏర్పడింది.';

  @override
  String get vtError => 'లోపం';

  @override
  String get vtPatient => 'రోగి';

  @override
  String get vtMobile => 'మొబైల్';

  @override
  String get vtAssessmentID => 'మూల్యాంకన ID';

  @override
  String get vtStatus => 'స్థితి';

  @override
  String get vtTimeline => 'కాలక్రమం';

  @override
  String get vtCategory => 'వర్గం';

  @override
  String get vtNoDataFound => 'డేటా కనబడలేదు';

  @override
  String get appCameraCapture => 'క్యాప్చర్';

  @override
  String get appCameraRetake => 'మళ్ళీ తీసుకోండి';

  @override
  String get appCameraUsePhoto => 'ఫోటోను ఉపయోగించండి';

  @override
  String get appCameraCancel => 'రద్దు చేయండి';

  @override
  String get appCameraNotFound => 'కెమెరా కనబడలేదు';

  @override
  String get appCameraException => 'కెమెరా లోపం';

  @override
  String get appCameraProgressMessage => 'లోడ్ అవుతోంది...';

  @override
  String get internetLostNoConnection => 'ఇంటర్నెట్ కనెక్షన్ లేదు';

  @override
  String get internetLostRetry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get secureJailbreak => 'మీ పరికరం జెయిల్బ్రేక్ అయిందని అనిపిస్తుంది';

  @override
  String get secureRestrictedAccess => 'భద్రతా కారణాల వల్ల, జెయిల్బ్రేక్ పరికరాల మీద ఈ అప్లికేషన్ యొక్క ప్రాప్యతను నియంత్రించాము.';

  @override
  String get secureExitApp => 'అప్లికేషన్ నుండి నిష్క్రమించండి';

  @override
  String get sharedErrorPageIssues => 'మేము కొన్ని సమస్యలను ఎదుర్కొంటున్నాము. దయచేసి తరువాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get appointmentBookingTitle => 'అపాయింట్‌మెంట్ బుకింగ్';

  @override
  String get comingSoon => 'త్వరలో రాబోతుంది...';

  @override
  String get miniappService => 'సేవ';

  @override
  String get miniappConsole => 'కన్సోల్';

  @override
  String get roleChooseYourRole => 'మీ పాత్రను ఎంచుకోండి';

  @override
  String get roleNote => 'గమనిక: అప్లికేషన్ లోపల మీ పాత్రను మార్చుకోలేరు.';

  @override
  String get roleConfirm => 'నిర్ధారించండి';

  @override
  String get roleEyeCareProfessional => 'కంటి సంరక్షణ నిపుణులు';

  @override
  String get roleVisionTechnician => 'దృష్టి సాంకేతిక నిపుణులు (VT)';

  @override
  String get rolePatient => 'రోగి';

  @override
  String get roleVisionGuardian => 'దృష్టి రక్షకుడు (VG)';

  @override
  String get vtSearchText => 'రోగి ID, మొబైల్ నంబర్ లేదా పేరు ద్వారా శోధించండి';

  @override
  String get emptyPatientsInfo => 'రోగుల వివరాలను వీక్షించడానికి వారి కోసం వెతకడం ప్రారంభించండి ..';

  @override
  String get vtPersonalDetails => 'వ్యక్తిగత వివరాలు';

  @override
  String get vtHprId => 'HPR ఐడి';

  @override
  String get vtEmailId => 'ఇమెయిల్ ఐడి';

  @override
  String get vtEducationalQualification => 'విద్యా అర్హత';

  @override
  String get vtAddressAndDoorNumber => 'చిరునామా మరియు ద్వార సంఖ్య';

  @override
  String get vtCity => 'నగరం';

  @override
  String get vtState => 'రాష్ట్రం';

  @override
  String get vtPincode => 'పిన్ కోడ్';

  @override
  String get vtOrganisationDetails => 'సంస్థ వివరాలు';

  @override
  String get vtOrgId => 'సంస్థ ఐడి';

  @override
  String get vtFacilityType => 'సౌకర్యం రకం';

  @override
  String get vtAssessments => 'అంచనాలు';

  @override
  String get vtNoAssessmentsFound => 'అంచనాలు ఏమీ కనిపించలేదు';

  @override
  String get vtAnalytics => 'విశ్లేషణ';

  @override
  String get vtTotalCases => 'మొత్తం కేసులు';

  @override
  String get vtIvrCalls => 'IVR కాల్లు';

  @override
  String get vtClinicVisits => 'క్లినిక్ సందర్శనలు';

  @override
  String get vtCasesClosed => 'కేసులు మూసివేయబడ్డాయి';

  @override
  String get vtCritical => 'క్రిటికల్';

  @override
  String get vtRegular => 'నియమిత';

  @override
  String get vtAvgClosureTime => 'సగటు మూసివేత సమయం';

  @override
  String get vtByAge => 'వయసు ద్వారా';

  @override
  String get vtByGender => 'లింగం ద్వారా';

  @override
  String get vtSymptoms => 'లక్షణాలు';

  @override
  String get vtSearchByMobileNo => 'మొబైల్ నంబర్ ద్వారా శోధించండి';

  @override
  String get vtInvalidMobileNo => 'చెల్లని మొబైల్ నంబర్';

  @override
  String get vtCallLogEmpty => 'కాల్ లాగ్ ఖాళీ.. ఇంకా కాల్లు చేయలేదు!!';

  @override
  String get vtNoDataAvailable => 'డేటా అందుబాటులో లేదు';

  @override
  String get vtToday => 'ఈ రోజు';

  @override
  String get vtYesterday => 'నిన్న';

  @override
  String get vtIvrCallNotAvailable => 'IVR కాల్ అందుబాటులో లేదు.. మళ్లీ ప్రయత్నించండి!!';

  @override
  String get vtMarkUnavailable => 'అందుబాటులో లేదు గా మార్క్ చేయండి';

  @override
  String get vtStartDate => 'ప్రారంభ తేది';

  @override
  String get vtEndDate => 'ముగింపు తేది';

  @override
  String get vtStartTime => 'ప్రారంభ సమయం';

  @override
  String get vtEndTime => 'ముగింపు సమయం';

  @override
  String get vtAddRemarksOptional => 'వ్యాఖ్యలు జోడించండి (ఐచ్ఛికం)';

  @override
  String get vtSave => 'సేవ్ చేయండి';

  @override
  String get vtCancel => 'రద్దు చేయండి';

  @override
  String get vtPleaseEnterRemark => 'దయచేసి వ్యాఖ్యను నమోదు చేయండి';

  @override
  String get vtAssessment => 'మూల్యాంకనం';

  @override
  String get vtIvrSelections => 'ఐవీఆర్ ఎంపికలు';

  @override
  String get vtLanguageSelection => 'భాషా ఎంపిక';

  @override
  String get vtEnglish => 'ఆంగ్లం';

  @override
  String get vtPatientType => 'రోగి రకం';

  @override
  String get vtProblem => 'సమస్య';

  @override
  String get vtEyeSight => 'కళ్లు చూసే శక్తి';

  @override
  String get vtVisionTechnician => 'దృష్టి సాంకేతిక';

  @override
  String get vtRecommendedCenter => 'సిఫార్సు చేసిన కేంద్రం';

  @override
  String get vtAssessmentIDEA => 'మూల్యాంకన ID: EA';

  @override
  String get vtPid => 'PID: OP';

  @override
  String get vtAssessmentTimeline => 'మూల్యాంకన కాలక్రమం';

  @override
  String get vtPleaseSelectEncounter => 'దయచేసి ఎన్కౌంటర్ ఎంచుకోండి';

  @override
  String get vtTimelineEA => 'కాలక్రమం: EA';

  @override
  String get vtGeneralInformation => 'సాధారణ సమాచారం';

  @override
  String get vtDateOfBirth => 'పుట్టిన తేదీ';

  @override
  String get vtAssessmentEA => 'మూల్యాంకన EA';

  @override
  String get vtNotRegistered => 'మీరు వ్యవస్థలో నమోదు చేయబడలేదు. దయచేసి ఒక మిస్డ్ కాల్ ఇవ్వండి';

  @override
  String get vtOkay => 'సరే';

  @override
  String get vtTakePicture => 'ఫోటో తీసుకోండి';

  @override
  String get vtEye => 'కన్ను';

  @override
  String get vtRetakePicture => 'ఫోటోను మళ్ళీ తీసుకోండి';

  @override
  String get vtNext => 'తదుపరి';

  @override
  String get vtMrCode => 'మిస్టర్ కోడ్';

  @override
  String get vtEnterMrCode => 'మిస్టర్ కోడ్ ఇక్కడ నమోదు చేయండి';

  @override
  String get vtPleaseEnterMrCode => 'దయచేసి మిస్టర్ కోడ్ నమోదు చేయండి';

  @override
  String get vtNote => 'గమనిక';

  @override
  String get vtEnterRecommendations => 'సిఫార్సులను ఇక్కడ నమోదు చేయండి';

  @override
  String get vtSolutions => 'పరిష్కారాలు';

  @override
  String get vtLeftEye => 'ఎడమ కన్ను';

  @override
  String get vtRightEye => 'కుడి కన్ను';

  @override
  String get vtBothEyes => 'రెండు కన్నులు';

  @override
  String get vtFilterBy => 'ద్వారా వడపోత';

  @override
  String get vtLocation => 'స్థలం';

  @override
  String get vtEnterTime => 'దయచేసి సమయాన్ని నమోదు చేయండి';

  @override
  String get vtEnterDate => 'దయచేసి తేదీని నమోదు చేయండి';

  @override
  String get vtRecommendation => 'సిఫార్సు';

  @override
  String get vtVisitPrimaryCenter => 'ప్రాథమిక కేంద్రాన్ని సందర్శించండి';

  @override
  String get vtVisitSecondaryCenter => 'ద్వితీయ కేంద్రాన్ని సందర్శించండి';

  @override
  String get vtVisitTertiaryCenter => 'తృతీయ కేంద్రాన్ని సందర్శించండి';

  @override
  String get vtVisitCenterOfExcellence => 'ఉత్కృష్టత కేంద్రాన్ని సందర్శించండి';

  @override
  String get vtIvrCallQuestion => 'మీరు IVR కాల్లో ఉన్నారా?';

  @override
  String get vtYes => 'అవును';

  @override
  String get vtNo => 'కాదు';

  @override
  String get vtRetry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get vtAssessmentQuestions => 'మూల్యాంకన ప్రశ్నలు';

  @override
  String get vtVisionCenter => 'దృష్టి కేంద్రం';

  @override
  String get vtVisualAcuity => 'విజువల్ ఆక్యూటి';

  @override
  String get vtInvalidValue => 'చెల్లని విలువ';

  @override
  String get vtSeverity => 'తీవ్రత';

  @override
  String get vtNoVisionCentersFound => 'దృష్టి కేంద్రాలు కనబడలేదు';

  @override
  String get vtRequestLocationPermission => 'స్థలం అనుమతి అభ్యర్థించండి';

  @override
  String get vtAppSettings => 'అనువర్తన అమరికలు';

  @override
  String get vtEnterSomeText => 'దయచేసి కొంత పాఠ్యాన్ని నమోదు చేయండి';

  @override
  String get vtPrimary => 'ప్రాథమిక';

  @override
  String get vtDependent => 'ఆధారిత';

  @override
  String get vtAddMember => 'సభ్యుని జోడించండి';

  @override
  String get vtCompleteProfile => 'ప్రొఫైల్ పూర్తి చేయండి';

  @override
  String get vtPatientNotRegistered => 'రోగి నమోదు కాలేదు';

  @override
  String get vtPatientRegistered => 'రోగి నమోదు చేసినారు';

  @override
  String get vtDependentNotAdded => 'ఆధారితం జోడించలేదు';

  @override
  String get vtDependentAdded => 'ఆధారితం జోడించారు';

  @override
  String get vtServiceNotAvailable => 'సేవ అందుబాటులో లేదు';

  @override
  String get vgEyeAssessments => 'కళ్ల పరీక్షలు';

  @override
  String get vgTotal => 'మొత్తం';

  @override
  String get vgCamps => 'శిబిరాలు';

  @override
  String get vgDoorToDoor => 'దరిమీద దరి';

  @override
  String get vgByGender => 'లింగం ద్వారా';

  @override
  String get vgMale => 'పురుషులు';

  @override
  String get vgFemale => 'స్త్రీలు';

  @override
  String get vgOthers => 'ఇతరులు';

  @override
  String get vgByAge => 'వయసు ద్వారా';

  @override
  String get vgSlideAge => 'వయసు';

  @override
  String get vgSymptoms => 'లక్షణాలు';

  @override
  String get vgRefractive => 'విఘటన';

  @override
  String get vgCataract => 'మొత్తం';

  @override
  String get vgGlaucoma => 'గ్లాకోమా';

  @override
  String get vgKeratitis => 'కెరాటైటిస్';

  @override
  String get vgBlepharitis => 'బ్లెఫరైటిస్';

  @override
  String get vgConjunctivitis => 'కంజంక్టైవైటిస్';

  @override
  String get vgServicesCreateEvent => 'ఈవెంట్\r\n\r\nసృష్టించండి';

  @override
  String get vgServicesEyeAssessment => 'కళ్లు\r\n\r\nమూల్యాంకన';

  @override
  String get vgServicesRegisterPatient => 'కొత్త రోగిని\r\n\r\nనమోదు చేయండి';

  @override
  String get vgAddPatients => 'రోగులను జోడించండి';

  @override
  String get vgEvent => 'ఈవెంట్';

  @override
  String get vgAddEventPhoto => 'ఈవెంట్ ఫోటోను జోడించండి';

  @override
  String get vgUploadImage => 'చిత్రాన్ని అప్లోడ్ చేయండి';

  @override
  String get vgAddPhotoInstruction => 'ఈవెంట్ యొక్క ఫోటోను జోడించండి ఇది థంబ్నేల్ గా చూపిస్తుంది';

  @override
  String get vgAddressDetails => 'చిరునామా వివరాలు';

  @override
  String get vgVenueName => 'వేదిక పేరు';

  @override
  String get vgVenueNameError => 'వేదిక పేరును నమోదు చేయండి';

  @override
  String get vgVenueNameSpecialCharError => 'ప్రత్యేక అక్షరాలు ఉండకూడదు';

  @override
  String get vgPincode => 'పిన్కోడ్';

  @override
  String get vgPincodeError => 'మాత్రమే 6 అంకెల పిన్కోడ్ అనుమతిస్తుంది';

  @override
  String get vgCityTownVillage => 'నగరం/పట్టణం/గ్రామం';

  @override
  String get vgCityTownVillageError => 'నగరం/పట్టణం/గ్రామం పేరును నమోదు చేయండి';

  @override
  String get vgCityTownVillageSpecialCharError => 'ప్రత్యేక అక్షరాలు ఉండకూడదు';

  @override
  String get vgCancel => 'రద్దు చేయండి';

  @override
  String get vgSave => 'సేవ్ చేయండి';

  @override
  String get vgAddEventImage => 'ఈవెంట్ చిత్రాన్ని జోడించండి';

  @override
  String get vgEventAdded => 'ఈవెంట్ జోడించబడింది';

  @override
  String get vgEventNotAdded => 'ఈవెంట్ జోడించలేదు';

  @override
  String get vgDateTime => 'తేదీ & సమయం';

  @override
  String get vgStartDate => 'ప్రారంభ తేదీ';

  @override
  String get vgStartTime => 'ప్రారంభ సమయం';

  @override
  String get vgLocation => 'స్థలం';

  @override
  String get vgViewOnMap => 'మ్యాప్ పై చూడండి';

  @override
  String get vgAddressAndDoorNumber => 'చిరునామా మరియు ద్వార సంఖ్య';

  @override
  String get vgSubDistrictName => 'ఉప జిల్లా పేరు';

  @override
  String get vgVillageName => 'గ్రామం పేరు';

  @override
  String get vgDistrictName => 'జిల్లా పేరు';

  @override
  String get vgAbout => 'గురించి';

  @override
  String get vgEditEvent => 'ఈవెంట్ సవరించండి';

  @override
  String get vgDeleteEvent => 'ఈవెంట్ తొలగించండి';

  @override
  String get vgErrorFetchingEventDetails => 'ఈవెంట్ వివరాలను పొందడంలో లోపం';

  @override
  String get vgNoPatientRegistered => 'పేరుతో రోగి నమోదు కాలేదు. రోగిని నమోదు చేయడానికి క్లిక్ చేయండి.';

  @override
  String get vgRegisterPatient => 'రోగిని నమోదు చేయండి';

  @override
  String get vgPrimary => 'ప్రాథమిక';

  @override
  String get vgDependent => 'ఆధారపడి';

  @override
  String get vgAddMember => 'సభ్యుని జోడించండి';

  @override
  String get vgCompleteProfile => 'ప్రొఫైల్ పూర్తి చేయండి';

  @override
  String get vgStartAssessment => 'అంచనాను ప్రారంభించండి';

  @override
  String get vgSearchPatientByPhoneNumber => 'ఫోన్ నంబర్ ద్వారా రోగిని శోధించండి';

  @override
  String get vgInvalidPhoneNumber => 'చెల్లని ఫోన్ నంబర్ నమోదు చేయండి';

  @override
  String get vgServerError => 'సర్వర్ లోపం';

  @override
  String get vgPatient => 'రోగి';

  @override
  String get vgReportId => 'నివేదిక ఐడి';

  @override
  String get vgNoEventFound => 'ఈవెంట్ కనబడలేదు';

  @override
  String get vgTeamMateDeletedSuccessfully => 'టీమ్ మేట్ విజయవంతంగా తొలగించబడింది';

  @override
  String get vgSomethingWentWrong => 'ఏదో తప్పు జరిగింది';

  @override
  String get vgName => 'పేరు';

  @override
  String get vgPhoneNumber => 'ఫోన్ నంబర్';

  @override
  String get vgErrorFetchingTeammatesDetails => 'టీమ్ మేట్స్ వివరాలను పొందడంలో లోపం ఉంది';

  @override
  String get vgTeamMateAddedSuccessfully => 'టీమ్ మేట్ విజయవంతంగా జోడించబడింది';

  @override
  String get vgAddTeammate => 'టీమ్ మేట్ జోడించండి';

  @override
  String get vgPleaseEnter => 'దయచేసి నమోదు చేయండి';

  @override
  String get vgPleaseEnterField => 'దయచేసి ఫీల్డ్ నమోదు చేయండి';

  @override
  String get vgOr => 'లేదా';

  @override
  String get vgSearch => 'శోధించండి';

  @override
  String get vgEventDeletedSuccessfully => 'ఈవెంట్ విజయవంతంగా తొలగించబడింది';

  @override
  String get vgEventDeletionFailed => 'ఈవెంట్ తొలగింపు విఫలమైంది';

  @override
  String get vgEndTimeGreaterThanStartTime => 'ముగింపు సమయం ప్రారంభ సమయం కంటే ఎక్కువ ఉండాలి';

  @override
  String get vgNoPatientsPresent => 'ప్రస్తుతం రోగులు లేరు. "రోగిని జోడించండి" పై నొక్కండి';

  @override
  String get textSize => 'పాఠ్య పరిమాణం';

  @override
  String get increase => 'పెంచు';

  @override
  String get decrease => 'తగ్గించు';

  @override
  String get reset => 'రీసెట్ చేయండి';

  @override
  String get minimumTextSizeReached => 'కనీసం పాఠ్య పరిమాణం చేరింది';

  @override
  String get maximumTextSizeReached => 'గరిష్ఠ పాఠ్య పరిమాణం చేరింది';

  @override
  String get chatClearChat => 'చాట్ క్లియర్ చేయండి';

  @override
  String get chatEyeAssessmentRecommended => 'కంటి అంచనా మీకు సిఫార్సు చేయబడింది.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'మీరు ట్రైఏజ్ కంటి అంచనా వేయాలనుకుంటున్నారా?';

  @override
  String get chatChatbotNotAvailable => 'చాట్బాట్ ప్రస్తుతానికి అందుబాటులో లేదు. దయచేసి తరువాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get chatTypeHere => 'ఇక్కడ టైప్ చేయండి...';

  @override
  String get switchProfile => 'ప్రొఫైల్ మార్చండి';

  @override
  String get switchRole => 'పాత్రను మార్చండి';

  @override
  String get switchTenant => 'అద్దెదారుని మార్చండి';

  @override
  String get patientHeaderWelcomeText => 'సైట్కనెక్ట్కు స్వాగతం! మీ దృష్టిని జాగ్రత్తగా చూసుకోవడం ముఖ్యం, మరియు మేము మీ కోసం ప్రతి దశలో ఇక్కడ ఉన్నాము.';

  @override
  String get triageTestCardHeader => 'మీ కంటి పరీక్ష ఉచితం...';

  @override
  String get triageTestCardBody1 => 'మీ కంటి లక్షణాలను త్వరగా విశ్లేషించండి.';

  @override
  String get triageTestCardBody2 => 'మీకు కంటి సమస్య ఉందా అని గుర్తించండి';

  @override
  String get triageTestCardBody3 => 'మీ వైద్యుడిని ఎప్పుడు సంప్రదించాలో తెలుసుకోండి';

  @override
  String get triageTestCardButton => 'ఉచిత కంటి పరీక్షను ప్రారంభించండి';

  @override
  String get myConnectionListAddMembersDescription => 'మీ కుటుంబం మరియు స్నేహితులను జోడించడానికి సభ్యులను జోడించు బటన్ను నొక్కండి.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'మీరు ఎలా ముందుకు వెళ్లాలనుకుంటున్నారు?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'నాకు ఒక సమస్య ఉంది మరియు ధృవీకరించాలనుకుంటున్నాను';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'నాకు ఏదైనా సమస్య ఉందో లేదో నాకు తెలియదు';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'నాకు కంటి సమస్యలు లేవు-కేవలం తనిఖీ చేయాలనుకుంటున్నాను';

  @override
  String get appDrawerToastMessageText => 'క్షమించండి, మేము మొబైల్ యాప్లో లాగ్అవుట్ లోపాన్ని ఎదుర్కొన్నాము.';

  @override
  String get myConnectionListAddMembers => 'సభ్యుడిని జోడించండి';
}
