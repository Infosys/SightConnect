import 'app_localizations.dart';

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} இன் ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'ஏய்! நான் என் கண்களைக் கவனித்துக் கொள்ள சைட் கனெக்ட் பயன்பாட்டைப் பயன்படுத்துகிறேன், நீங்களும் பயன்படுத்த வேண்டும்! உங்கள் கண்களை மதிப்பீடு செய்து, சைட் கனெக்ட் பயன்பாட்டின் மூலம் சரியான நேரத்தில் சிகிச்சையைப் பெறுங்கள். இது உங்கள் கைகளில் தடுப்பு கண் பராமரிப்பைக் கொண்டுவரும் ஒரு தனித்துவமான பயன்பாடாகும். நீங்கள் பதிவுபெறும்போது எனது பரிந்துரை குறியீட்டைப் பயன்படுத்தவும். இப்போது அதைப் பெறுங்கள்ஃ https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'அனுப்பப்பட்ட ஓ. டி. பி. யை உள்ளிடவும் ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'மீண்டும் அனுப்பவும் ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} நோயாளிக்கு ஒரு சந்திப்பு உள்ளது';
  }

  @override
  String vgEmptyResults(String type) {
    return 'தற்போது எந்த வகையும் இல்லை. சேர் ${type} என்பதைத் தட்டவும்.';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ஐடி, பெயர் மூலம் தேடுங்கள்';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'அவசரநிலை ஏற்பட்டால், தயவுசெய்து ${tollFreeNumber} ஐ அழைக்கவும்.';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'நீங்கள் ${referredBy} ஆல் குறிப்பிடப்பட்டிருக்கிறீர்கள்';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'கேமரா உங்கள் முகத்திலிருந்து ${distance} சென்டிமீட்டர் தொலைவில் இருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';
  }

  @override
  String get questionnaireTitle => 'கண் பரிசோதனை கேள்விகள்';

  @override
  String get questionnaireExitDialog => 'இந்த கேள்விகளுக்கு பதில் அளிப்பது உங்கள் கண் பிரச்சினைகளை கண்டறிய உதவும். நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

  @override
  String get visualAcuityTitle => 'பார்வைக் கூர்மை சோதனை';

  @override
  String get visualAcuityDescription => 'பார்வை கூர்மை சோதனை என்பது ஒரு குறிப்பிட்ட தூரத்திலிருந்து எழுத்து அல்லது சின்னத்தின் விவரங்களை நீங்கள் எவ்வாறு பார்க்கிறீர்கள் என்பதை சோதிக்கும் ஒரு கண் பரிசோதனையாகும். இந்த விரைவான சோதனையை இப்போது செய்யுங்கள்!';

  @override
  String get visualAcuityHowToPerform => 'பார்வை கூர்மை சோதனையை எவ்வாறு செய்வது?';

  @override
  String get visualAcuityViewStepsToPerform => 'பார்வை கூர்மை சோதனையை செய்வதற்கான படிகளை காண்க';

  @override
  String get visualAcuityCompletionDialog => 'முடிந்தது! இரு கண்களுக்குமான பார்வை தெளிவுச் சோதனை முடிந்துவிட்டது. அடுத்து உங்கள் கண் புகைப்படங்களை எடுக்க வேண்டும்.';

  @override
  String get visualAcuityExitDialog => 'உங்கள் கண் பிரச்சினையை புரிந்துகொள்ள பார்வை தெளிவுச் சோதனை முக்கியமானது. நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

  @override
  String get swipeGestureTab => 'ஸ்வைப் செயல்பாடு';

  @override
  String get voiceAssistTab => 'வாய்ஸ் அசிஸ்ட்';

  @override
  String get distanceString => 'தூரம்';

  @override
  String get leftEyeString => 'இடது கண்';

  @override
  String get rightEyeString => 'வலது கண்';

  @override
  String get bothEyesString => 'இரு கண்களும்';

  @override
  String get visualAcuityLeftEyeHeader => 'சோதனை 2 - இடது கண்';

  @override
  String get visualAcuityLeftEyeInstructions => 'கண்ணிமையை அழுத்தாமல், உங்கள் கையை வலது கண் மீது வைக்கவும். நீங்கள் கண்ணாடிகளை அணிந்திருந்தால், கையை கண்ணாடிகள் மீது வைக்கவும்.';

  @override
  String get visualAcuityRightEyeHeader => 'சோதனை 1 - வலது கண்';

  @override
  String get visualAcuityRightEyeInstructions => 'கண்ணிமையை அழுத்தாமல், உங்கள் கையை இடது கண் மீது வைக்கவும். நீங்கள் கண்ணாடிகளை அணிந்திருந்தால், கையை கண்ணாடிகள் மீது வைக்கவும்.';

  @override
  String get visualAcuityBothEyeHeader => 'சோதனை 3 - இரு கண்களும்';

  @override
  String get visualAcuityBothEyeInstructions => 'உங்கள் கண்களில் எந்தவொரு கண்ணையும் மூடாமல், அடுத்து தோன்றும் சின்னங்களை இரு கண்களும் பார்க்கவும்.';

  @override
  String get overlayHeaderDirection => 'திசை';

  @override
  String get overlayDescription => 'ஒவ்வொரு சின்னத்தின் திசைகளை நீங்கள் எவ்வாறு புரிந்துகொள்வது என்பதை இங்கே காண்க.';

  @override
  String get overlaySymbolDirectionText => 'சின்னம் திசை : ';

  @override
  String get directionDown => 'கீழே';

  @override
  String get directionUp => 'மேலே';

  @override
  String get directionLeft => 'இடது';

  @override
  String get directionRight => 'வலது';

  @override
  String get dontShowAgainString => 'மீண்டும் காட்டாதே';

  @override
  String get visualAcuityCarouselTitle => 'பார்வை துல்நோக்கு சோதனை செய்ய வேண்டிய படிகள்';

  @override
  String get eyeScanTitle => 'கண் ஸ்கேன்';

  @override
  String get eyeScanDescription => 'நீங்கள் மிக அருகில் உள்ளீர்கள்! இன்னும் ஒரு சோதனை மட்டுமே போகிறது. உங்கள் கண்களின் படங்களை அடுத்து பிடிக்கவும்.';

  @override
  String get eyeScanHowToPerform => 'உங்கள் கண்களை எப்படி ஸ்கேன் செய்வது?';

  @override
  String get eyeScanViewStepsToPerform => 'உங்கள் கண்களை ஸ்கேன் செய்வது எப்படி என்பதை அறிய படிகளை காண்க.';

  @override
  String get eyeScanExitDialog => 'கண் ஸ்கேன் உங்கள் கண் பிரச்சினை பற்றி மேலும் புரிந்துகொள்ள உதவுகிறது. நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

  @override
  String get captureRightEyeString => 'வலது கண் பிடிக்கவும்';

  @override
  String get captureLeftEyeString => 'இடது கண் பிடிக்கவும்';

  @override
  String get skipButton => 'தவிர்';

  @override
  String get startTestText => 'சோதனையை தொடங்கு';

  @override
  String get continueButton => 'தொடரவும்';

  @override
  String get startButton => 'தொடங்கு';

  @override
  String get nextButton => 'அடுத்தது';

  @override
  String get proceedButton => 'முன்னேறு';

  @override
  String get yesButton => 'ஆம்';

  @override
  String get noButton => 'இல்லை';

  @override
  String get exitButton => 'வெளியேறு';

  @override
  String get okButton => 'சரி';

  @override
  String get knowMoreButton => 'மேலும் அறிய';

  @override
  String get seeAllButton => 'அனைத்தும் காண';

  @override
  String get tryAgainButton => 'மீண்டும் முயல்';

  @override
  String get shareNowButton => 'இப்போது பகிர்';

  @override
  String get retryButton => 'மீண்டும் முயல்';

  @override
  String get homeCarousal1Title => '40 வயதுக்கும் மேற்பட்ட முதியோரில் பார்வைக் கட்டியின் பரவல் மற்றும் அதன் தொடர்புடைய அம்சங்கள்';

  @override
  String get homeCarousal1Description => 'பார்வைக் கட்டி மற்றும் அதனுடன் தொடர்புடைய அம்சங்களின் பரவல் குறித்த மாதிரி முறையை விளக்கும் வரைபடம்';

  @override
  String get homeCarousal2Title => 'கவனிக்க வேண்டிய 7 கண் பிரச்சனைகள்!';

  @override
  String get homeCarousal2Description => '\r\n\r\nசோதிக்க வேண்டிய 7 கண் பிரச்சனைகள்:\r\n\r\n \r\n\r\n• கண்களின் சிவப்பு\r\n\r\n• கண்களில் நீர் கசிவு\r\n\r\n• கண்களில் வெள்ளை புள்ளிகள்';

  @override
  String get homeCarousal3Title => 'கண் பிரச்சனைகள். நீங்கள் பார்க்க முடியாத பலவுண்டு';

  @override
  String get homeCarousal3Description => 'ஆனால் ஒரு பார்வை பராமரிப்பு நிபுணர் முடியும்.\r\n\r\nகண் பிரச்சனைகள் அடையாளம் காணப்பட்டு\r\n\r\nபின்னாளில் சிக்கல்களை தவிர்க்க\r\n\r\nசரியான நேரத்தில் சிகிச்சை பெறுங்கள்';

  @override
  String get myConnectionsTitle => 'என் உறுப்பினர்கள்';

  @override
  String get myConnectionsAddMember => 'உறுப்பினர் சேர்க்கவும்';

  @override
  String get myConnectionsServiceNotAvailable => 'சேவை கிடைக்கவில்லை';

  @override
  String get myConnectionsAdd => 'சேர்க்கவும்';

  @override
  String get recentServicesTitle => 'எனது சமீபத்திய சேவைகள்';

  @override
  String get recentServicesEyeAssessment => 'கண் மதிப்பீடு';

  @override
  String get recentServicesVisualAcuityTest => 'பார்வைத் தெளிவு சோதனை';

  @override
  String get nearbyVisionCentersTitle => 'அருகிலுள்ள பார்வை மையங்கள்';

  @override
  String get nearbyVisionCentersNotFound => 'பார்வை மையங்கள் கிடைக்கவில்லை';

  @override
  String get tollFreeNumber => 'கட்டணமில்லா எண்';

  @override
  String get appDrawerTitle => 'மெனு';

  @override
  String get appDrawerHome => 'முகப்பு';

  @override
  String get appDrawerLanguageSelection => 'மொழி தேர்வு';

  @override
  String get appDrawerAccessibility => 'அணுகல்தன்மை அமைப்புகள்';

  @override
  String get appDrawerMyProfile => 'எனது சுயவிவரம்';

  @override
  String get appDrawerAssessmentsAndTests => 'மதிப்பீடுகள் மற்றும் சோதனைகள்';

  @override
  String get appDrawerScanner => 'QR குறியீடு ஸ்கேனர்';

  @override
  String get appDrawerAboutUs => 'எங்களை பற்றி';

  @override
  String get appDrawerPrivacyPolicy => 'தனியுரிமை & தரவுக் கொள்கை';

  @override
  String get appDrawerHelpAndSupport => 'உதவி மற்றும் ஆதரவு';

  @override
  String get appDrawerSignOut => 'வெளியேறு';

  @override
  String get aboutUsDescription => 'சைட்கனெக்ட் என்பது ஒரு பயனர்-நட்பு கண் பராமரிப்பு செயலி ஆகும், இது சுய-மதிப்பீடு மற்றும் அழைப்பு மூலம் ஆலோசனை பெறுவதில் உதவுகிறது.\r\n\r\n\r\n\r\nஎங்கள் பணியின் மையத்தில் உள்ளது கண் பராமரிப்பை அனைவருக்கும் அணுகக்கூடியதாக மாற்றுவதற்கான உறுதிப்பாடு. இந்த செயலி வயது, தொழில்நுட்ப பின்னணி, மற்றும் சமூக அல்லது பொருளாதார பின்னணியைப் பொருத்தமட்டும் இல்லாமல், வாழ்க்கையின் அனைத்து நடைபாதைகளிலிருந்தும் பயனர்களால் அணுகக்கூடியதாக வடிவமைக்கப்பட்டுள்ளது. இந்த செயலி மற்றும் அதன் உள்ளடக்கம் ஆங்கிலம் மற்றும் பிற உள்ளூர் மொழிகளில் கிடைக்கின்றன. இது பயனர்களுக்கு அவர்களது கண்களை சுய-மதிப்பிட மற்றும் சமயோசிதமான சிகிச்சை ஆலோசனை பெற உதவுகிறது. இந்த செயலி புதிய தொழில்நுட்பங்கள் மற்றும் கருவிகளை பயன்படுத்தி எங்கள் பயனர்களுக்கு தனிப்பயன் கண் பராமரிப்பு தீர்வுகளை வழங்குகிறது. அவர்களது வாழ்க்கையை எளிதாக்குவதற்கு பல்வேறு அம்சங்களுடன் கூடியது.';

  @override
  String get aboutUsFeaturesTitle => 'அம்சங்கள்';

  @override
  String get aboutUsFeaturesDescription => 'உள்ளாப்பில் கண் சோதனை: இந்த ஆப் அதன் பயனர்களுக்கு சில கேள்விகளுக்கு பதிலளித்து தங்கள் கண்களை சுய-மதிப்பிட அனுமதிக்கிறது மற்றும் அடுத்த படிகள் மற்றும் நோக்கம் படுத்தப்படும் மருத்துவரை பரிந்துரைக்கிறது. பயனர்களின் நண்பர்களும் குடும்பத்தினரும் இதிலிருந்து பயன் பெறலாம். |நியமனம் முன்பதிவு: பயனர்கள் ஆன்லைனில் தொலைத்தொடர்பு மற்றும் மருத்துவமனையில் விஜிட்டுகளுக்கு மருத்துவர்களுடன் முன்பதிவு செய்ய முடியும், தங்கள் கண்களை சோதிக்க. |IVR அழைப்பு சேவைகள்: எங்கள் IVR அழைப்பு சேவைகள் ஆங்கிலத்திலும் உள்ளூர் மொழிகளிலும் கிடைக்கின்றன, இது அடிப்படை அம்ச கைபேசிகளுடன் பயனர்களுக்கு சேவை செய்கிறது. பயனர்கள் அவசரநிலையில் உடனடி உதவிக்காக அல்லது எந்தவொரு கண் சம்பந்தப்பட்ட சிக்கல்களுக்கும் எங்கள் கண் பராமரிப்பு நிபுணர்களை அழைக்க முடியும். அவர்கள் நியமனங்களை முன்பதிவு செய்ய அல்லது மேலும் விளக்கங்களைக் கேட்க அழைக்கலாம். |அருகிலுள்ள கிளினிக்குகள்: பயனர்கள் தங்களுக்கு அருகிலுள்ள கண் பராமரிப்பு கிளினிக்குகளை கண்டறியலாம். |மருந்துகள் மற்றும் அறிக்கைகள்: பயனர்களின் அனைத்து மருந்துகள் மற்றும் அறிக்கைகளை எளிதாக ஒரு இடத்திலிருந்து அணுகலாம். |கண் முகாம்கள்: பயனர்கள் தங்கள் நண்பர்கள் மற்றும் குடும்பத்தினரின் கண்களை இலவசமாக பரிசோதிக்க அருகிலுள்ள கண் முகாம்கள் பற்றிய தகவல்களை பெறலாம். |நினைவூட்டல்கள் மற்றும் எச்சரிக்கைகள்: பயனர்கள் தங்களுடைய வருகின்ற நியமனங்கள், மருந்துகள், அறிக்கைகள் முதலியவற்றிற்கான காலத்துக்கு ஏற்ற எச்சரிக்கைகளையும் நினைவூட்டல்களையும் பெறலாம். |பகிர்வு: பயனர்கள் இந்த செயலியையும், செயலியின் உள்ளே வழங்கப்பட்டுள்ள பயனுள்ள தகவல்களையும் தங்கள் நண்பர்கள் மற்றும் குடும்பத்தினருடன் பகிரலாம்.';

  @override
  String get aboutUsConclusion => 'இந்த செயலி முன்னணி கண் பராமரிப்பு நிபுணர்களின் உதவியுடன் உருவாக்கப்பட்டுள்ளது, எங்கள் பயனர் சமூகத்திற்கு சிறப்பாக சேவை செய்ய நாங்கள் அர்ப்பணிக்கப்பட்டுள்ளோம். ஒளிமயமான, ஆரோக்கியமான உலகை உருவாக்கும் எங்கள் பணியில் எங்களுடன் சேர்ந்து கொள்ளுங்கள். இன்றே Sightconnect செயலியை பதிவிறக்கி, பகிர்ந்து கொள்ளுங்கள்!';

  @override
  String get privacyPolicyDescription => 'எல்வி பிரசாத் கண் நிறுவனம், அதன் மூலதனம், இணைந்த மற்றும் சம்பந்தப்பட்ட நிறுவனங்கள் (ஒன்றாக \'LVPEI\', \'நாங்கள்\', \'எங்கள்\' என குறிப்பிடப்படுகிறது) உங்கள் தனிப்பட்ட தரவை உங்கள் கோட்பாடுகளின் படி செயலாக்குவதில் அர்ப்பணிப்புடன் உள்ளது. தனிப்பட்ட தரவுகளின் செயலாக்கத்தின் பற்றிய தகவலை இங்கே அறிவிக்கிறோம்.';

  @override
  String get privacyPolicyPersonalDataTitle => 'சேகரிக்கப்பட்ட / செயலாக்கப்பட்ட தனிப்பட்ட தரவு உறுப்புகள்:';

  @override
  String get privacyPolicyPersonalDataDescription => 'நீங்களும் உங்கள் தொடர்புகளும் வழங்கும் சொந்த தகவல்கள் என்பது போன்றவை (இவற்றில் சில தரவுகள் விருப்பத்தேர்வு ஆகும்) மொபைல் எண், பெயர், பிறந்த தேதி, பாலினம் (ஆண்/பெண்), முகவரி (பின் குறியீடு), நோயாளி ஐடி, தொடர்பு, கண் அவசர கேள்விக்குறிப்பு பதில்கள், கண் அவசர அறிக்கை, கண் படங்கள், உங்கள் கண் படத்துடன் குறிக்கப்பட்ட அறிகுறிகள், புகைப்படம், முகவரி விவரங்கள் என்பது முகவரி, மாவட்டப் பெயர் (மாவட்ட குறியீடு உட்பட), மாநிலப் பெயர் (மாநிலக் குறியீடு உட்பட), துணை மாவட்ட பெயர், கிராமப் பெயர், நகரப் பெயர், மின்னஞ்சல் முகவரி, குடும்பப் பெயர், மத்திய பெயர், இரத்த வகை, உயரம், எடை, தொழில், ஏபிஹேச் விவரங்கள் (உங்களால் வழங்கப்பட்டுள்ளன), உங்கள் செயலி அனுமதிகளை அடிப்படையில் கேமரா, ஜிபிஎஸ் இருப்பிடம், கேலரி அணுகும் வசதி, முழுமையான நெட்வொர்க் அணுகல், நெட்வொர்க் இணைப்புகளை காண்பது, சாதன தகவல்.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'செயலாக்க நோக்கம்: ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'உங்கள் மற்றும் உங்கள் தொடர்புகளுக்கான (உங்களால் வழங்கப்பட்ட) கண் சம்பந்தப்பட்ட ஆன்லைன் சுகாதார சோதனைக்கு எங்கள் பயன்பாட்டை மற்றும் அதன் அம்சங்களை அணுக உதவுவதற்காக.|ஏதேனும் கண் சம்பந்தப்பட்ட நோய்/ஆரோக்கிய சிக்கல்கள் இருந்தால், LVPEI க்கு உட்பட்ட கண் நிபுணர்கள், கண் மருத்துவர்களுடன் தொடர்பு கொள்ள உதவுவதற்காக.|உங்கள் சுகாதார ஆலோசனை மற்றும் நியாயமானது போன்ற எந்தவொரு கண் சுகாதார தரவுகளையும் (அறிக்கைகள் உள்ளிட்ட) வழங்குவதற்கும், சுகாதார சம்பந்தப்பட்ட கவலைகளுக்காக உங்களை அல்லது உங்கள் தொடர்புகளை தொடர்பு கொள்ளவும்.|உங்கள் கண் சுகாதார தரவுகளை எங்கள் அங்கீகாரப்பட்ட LVPEI கண் மருத்துவர்கள் / மருத்துவர்களுடன் பகிர்ந்து, மேலும் அதேவை கிராம தலைவர் / மேயர் போன்றவர்களுடன் பகிர்ந்து (உங்கள் GPS இடத்தின் அடிப்படையில் பொருத்தமானது) சிகிச்சைக்காக LVPEI மருத்துவர்களை அடைய அல்லது தகவல் கொடுக்க முடியாத போது கண் பிரச்சினையின் தீவிரத்தைப் பொருத்து.|LVPEI உடன் இணைந்த கண் மருத்துவமனைகள் / கிளினிக்குகள் பட்டியலை வழங்குவதற்கும், ஏதேனும் கண் சம்பந்தப்பட்ட பிரச்சினைகள் இருந்தால் அணுக உங்களுக்கு உதவுவதற்கும்.|சரியான நியாயமானதை வழங்குவதற்கு எங்கள் இயந்திர கற்றல் அல்லது செயற்கை நுண்ணறிவு மாதிரிகளை பயிற்சி செய்ய உதவுவதற்காக கண் படம், கண் படம் சம்பந்தப்பட்ட அறிகுறிகள், வயது, இரத்த வகை, இடம் போன்ற தகவல்களை எந்தவொரு அடையாளங்களும் இல்லாமல் பயன்படுத்துவதற்கும்.|கண் ஆரோக்கியத்துக்கான விழிப்புணர்வு உருவாக்க, நினைவூட்டல், தொடர்பு, பிரச்சார மெயிலர்களை அனுப்புவதற்கும்.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'தரவு பெறுநர்கள் / அணுகல் கிடைக்கும்:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'உங்களால் பகிரப்படும் தனிப்பட்ட தரவு (உள்ளிட்ட நுண்ணறிவு சார்ந்த தனிப்பட்ட தரவுகள்) LVPEI பெர்சனல் போன்ற மருத்துவர்கள்/கண் மருத்துவர்கள், காண்போர் தொழில்நுட்பக்காரர்கள், காண்போர் காவலர்கள், LVPEI இன் பிரதிநிதிகள், உள்/வெளி தணிக்கையாளர்கள், தேவைப்படும் போது அரசு அதிகாரிகள், மற்றும் நமது அங்கீகாரம் பெற்ற சேவை வழங்குநர் Infosys அணுக முடியும்.';

  @override
  String get privacyPolicyDataTransferTitle => 'தரவு பரிமாற்றம் மற்றும் சேமிப்பு:';

  @override
  String get privacyPolicyDataTransferDescription => 'உங்களால் பகிரப்படும் தனிப்பட்ட தரவு நமது உள் சேவையகங்களில், நமது அங்கீகாரம் பெற்ற சேவை வழங்குநரின் சேவையகத்தில் இந்தியாவில் சேமிக்கப்படும்.';

  @override
  String get privacyPolicyDataSecurityTitle => 'தரவு பாதுகாப்பு:';

  @override
  String get privacyPolicyDataSecurityDescription => 'உங்கள் தனிப்பட்ட தரவைப் பாதுகாக்க ஏற்ற மற்றும் உரிய பாதுகாப்பு நடைமுறைகள் மற்றும் செயல்முறைகள் உட்பட நிர்வாக, உடல் பாதுகாப்பு, மற்றும் தொழில்நுட்ப கட்டுப்பாடுகளை LVPEI அறிமுகப்படுத்துகிறது.';

  @override
  String get privacyPolicyDataRetentionTitle => 'தரவு சேமிப்பு:';

  @override
  String get privacyPolicyDataRetentionDescription => 'சட்ட மற்றும் வணிக வேண்டுகோள்களின்படி இனி தேவைப்படாத தனிப்பட்ட தரவு பாதுகாப்பான முறையில் அகற்றப்படும்.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'தரவு சார்ந்த உரிமைகள்:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'எப்போதும் உங்கள் தனிப்பட்ட தகவல்களை அணுகி, திருத்த உரிமை உள்ளது. எந்தவொரு விண்ணப்பங்கள், விசாரணைகள், கவலைகள் அல்லது கேள்விகள் இருந்தால், LV Prasad Office க்கு <LVPEI பொது மின்னஞ்சல் ஐடி வழங்க வேண்டும்> முகவரிக்கு மின்னஞ்சல் அனுப்புவதன் மூலம் அணுகலாம்.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'பின்வாங்குதல் உரிமை:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'உங்கள் சொந்த தரவுகளை உங்கள் சம்மதத்தின் அடிப்படையில் நாங்கள் செயலாக்கும் போது, எந்த நேரத்திலும் எதிர்காலத்திற்கான உங்கள் சம்மதத்தை உரிய டிபி சட்டங்களின் படி திரும்ப பெறலாம். இது உங்கள் திரும்பப் பெறுதலுக்கு முன் நடைபெற்ற எந்த செயலாக்க செயல்பாட்டின் சட்டப்பூர்வமானதை பாதிக்காது. உங்கள் சம்மதத்தை திரும்பப் பெற, நீங்கள் <LVPEI பொது மின்னஞ்சல் ID வழங்குவதற்கு> ஒரு மின்னஞ்சல் அனுப்பலாம்.';

  @override
  String get privacyPolicyAcknowledgement => 'கீழே உள்ள பொத்தானை அழுத்தும்போது, உங்கள் சொந்த தரவுகள் உள்ளிட்ட உணர்வுத்திறன் சார்ந்த சொந்த தரவுகள் மேற்கூறிய விதத்தில் சேகரிக்கப்பட்டு செயலாக்கப்படலாம் என்பதை நீங்கள் இங்கே உறுதியளிக்கிறீர்கள் மற்றும் மேற்கூறிய நோக்கங்களுக்காக அதற்கு சம்மதிக்கிறீர்கள். உங்களால் பகிரப்படும் எந்த சொந்த தரவுகளும் (உணர்வுத்திறன் சார்ந்த தரவுகள் உட்பட) அவை உங்கள் அல்லாத பிறரிடமிருந்து உரிய சம்மதத்தை பெற்று பகிரப்படுவதாகும் என்றும் நீங்கள் உறுதியளிக்கிறீர்கள். மேலும், மேற்கூறிய நோக்கங்களுக்கு அவசியமில்லாத எந்த சொந்த தரவையும் (உணர்வுத்திறன் சார்ந்த தரவு உட்பட) பகிர மாட்டீர்கள் என்றும் நீங்கள் உறுதியளிக்கிறீர்கள். சிறுவர்களின் சொந்த தரவை அவர்களின் பெற்றோர் / சட்டபூர்வ பாதுகாவலராக நீங்கள் பகிரும்போது, மேலே குறிப்பிடப்பட்டபடி அவர்களின் தரவு சேகரிப்பு மற்றும் செயலாக்கத்திற்கு நீங்கள் சம்மதிக்கிறீர்கள்.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'தனியுரிமைக் கொள்கை ஏற்கப்பட்டது';

  @override
  String get helpAndSupportReachTitle => 'எங்களை அடையுங்கள்';

  @override
  String get assessmentAndTestsSubtitle => 'இதுவரை செய்யப்பட்ட மதிப்பீடுகளின் ஒரு விரைவான பார்வை இதோ.';

  @override
  String get assessmentAndTestsReportsNotFound => 'அறிக்கைகள் கிடைக்கவில்லை';

  @override
  String get eyeAssessmentTitle => 'கண் மதிப்பீடு';

  @override
  String get eyeAssessmentSubtitle => 'உங்கள், உங்கள் நண்பர்கள் மற்றும் குடும்ப உறுப்பினர்களின் கண் பிரச்சினைகளை சில படிகளில் மதிப்பீடு செய்யுங்கள். உங்கள் கண் பிரச்சினைகள் தொடர்பான அறிகுறிகளைப் புரிந்துகொள்ள ஒரு சில கேள்விகள் கேட்கப்படும், அதைத் தொடர்ந்து காட்சி சோதனைகள் செய்யப்படும்.';

  @override
  String get eyeAssessmentGetMemberLabel => 'உறுப்பினரை மாற்றவும்';

  @override
  String get eyeAssessmentProceedButton => 'தொடரவும்';

  @override
  String get eyeAssessmentBrightnessLabel => 'பிரகாசம் 80% க்கு அமைக்கப்பட்டுள்ளது';

  @override
  String get eyeAssessmentBrightnessError => 'தயவுசெய்து பிரகாசம் கைமுறையாக 80% க்கு அமைக்கவும்';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'கேள்வி இன்னும் ஆதரிக்கப்படவில்லை';

  @override
  String get eyeAssessmentPopUpHeading => 'மதிப்பீடு';

  @override
  String get eyeAssessmentPopUpBody => 'உங்களுக்கு உங்கள் கண்களுக்கு பிரச்சனை உள்ளதுவா?';

  @override
  String get eyeAssessmentPopUpYesButton => 'ஆம்';

  @override
  String get eyeAssessmentPopUpNoButton => 'இல்லை';

  @override
  String get visualAcuityTestInstructionOne => 'நல்ல வெளிச்சமான இடத்தில் வசதியாக உட்காரவும். பிரகாசத்தில் திடீர் மாற்றத்தை நீங்கள் உணரலாம், உகந்த முடிவை வழங்க திரை தானாகவே பிரகாசமாக அமைக்கப்பட்டுள்ளது என்று கவலைப்பட வேண்டாம்';

  @override
  String get visualAcuityTestInstructionTwo => 'நீங்கள் சாதனத்தை கண் மட்டத்தில் வைத்திருக்கிறீர்கள் என்பதை உறுதிப்படுத்திக் கொள்ளுங்கள். நீங்கள் கண்ணாடிகள் அல்லது காண்டாக்ட் லென்ஸ்களை அணிந்தால், அவற்றை அணிந்து கொள்ளுங்கள்.';

  @override
  String get visualAcuityTestInstructionThree => 'திரையில் இருந்து 40 சென்டிமீட்டர் தொலைவில் இருங்கள். சோதனைத் திரையில் தூரம் காட்டப்படும்.';

  @override
  String get visualAcuityTestInstructionFour => 'நீங்கள் கண்ணாடியுடன் சோதனை செய்கிறீர்கள் என்றால், ஒரு கண் மட்டுமே சோதிக்கப்படும்போது கண்ணாடியின் மீது உங்கள் கையால் ஒரு கண்ணை மூடுங்கள்.';

  @override
  String get skipAndProceedButton => 'தவிர்க்கவும் & ஸ்கேன் செய்ய தொடருங்கள்';

  @override
  String get proceedToScanButton => 'ஸ்கேன் செய்க';

  @override
  String get eyeAssessmentSteps => 'படிகள்';

  @override
  String get eyeAssessmentStepOne => 'படி 1 - கண் மதிப்பீடு கேள்கைகள்';

  @override
  String get eyeAssessmentStepTwo => 'படி 2 - கண் மதிப்பீடு கேள்கைகள்';

  @override
  String get eyeAssessmentStepThree => 'படி 3 - கண் மதிப்பீடு கேள்கைகள்';

  @override
  String get eyeAssessmentOngoing => 'தொடர்ந்து நடந்து வருகிறது.';

  @override
  String get eyeAssessmentCompleted => 'முடிந்தது';

  @override
  String get eyeAssessmentPending => 'நிலுவையில்';

  @override
  String get eyeAssessmentResults => 'மதிப்பீட்டு முடிவுகள்';

  @override
  String get eyeAssessmentCompleteSteps => 'முடிவுகளைக் காண அனைத்து படிகளையும் முடிக்கவும்';

  @override
  String get eyeAssessmentToolTip => 'ஃபிளாஷ் அணைக்கப்பட்டு, பிரகாசம் 80 சதவீதமாக அமைக்கப்பட்டுள்ளது என்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionOne => 'முகத்தை சட்டகத்தின் மீது சரியாக வைத்து கேமராவைப் பிடித்துக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionTwo => 'உங்கள் தொலைபேசியின் பின்புற கேமராவைப் பயன்படுத்தி கண்களைப் படமெடுங்கள்.';

  @override
  String get eyeScanInstructionThree => 'ஃபிளாஷ் இயக்கத்தில் நன்கு ஒளிரும் பகுதியில் இருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionFour => 'சிறந்த பிடிப்பு மற்றும் தெளிவுக்காக, படத்தை கிளிக் செய்ய வேறு யாரையாவது அழைக்கவும்.';

  @override
  String get eyeScanInstructionFive => 'படம் எடுக்கும் போது ஒரு கண்ணை உங்கள் கையால் மூடி, மற்ற கண்ணால் நேராகப் பாருங்கள்.';

  @override
  String get eyeScanInstructionSix => 'படத்தை தொடங்குவதற்கு முன்பு பலகையின் உள்ளே கண்ணை மையப்படுத்துங்கள்.';

  @override
  String get eyeScanInstructionSeven => 'ஃபிளாஷ் அணைக்கப்படும் வரை கண்களைத் திறந்து வைத்திருங்கள், ஒரு \'பீப்\' ஒலி புகைப்படத்தின் முடிவைக் குறிக்கும் வரை.';

  @override
  String get eyeAssessmentNote => 'குறிப்பு: இங்கே காட்டப்பட்டுள்ள படங்கள் குறிப்பிற்காக மட்டுமே. நிஜ வாழ்க்கையில் அவர்கள் ஒரே மாதிரியாக தோன்றாமல் இருக்கலாம்.';

  @override
  String get agreeButton => 'நான் ஒப்புக் கொள்கிறேன்.';

  @override
  String get consentPageCheckbox => 'விதிமுறைகளையும் நிபந்தனைகளையும் நான் ஏற்றுக்கொள்கிறேன்.';

  @override
  String get confirmButton => 'உறுதிப்படுத்தல்';

  @override
  String get discardButton => 'தூக்கி எறியுங்கள்.';

  @override
  String get imageNotCapturedToastMessage => 'படம் பிடிக்கப்படவில்லை';

  @override
  String get eyeCaptureCompletionDialogHeading => 'சோதனை முடிந்தது';

  @override
  String get eyeCaptureCompletionDialogBody => 'நீங்கள் சோதனையை முடித்துவிட்டீர்கள். முடிவைக் காண கீழே உள்ள பொத்தானைக் கிளிக் செய்க.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'முடிவுகளைக் காண்க';

  @override
  String get eyeCaptureTriageSavedLocally => 'டிரையஜ் உள்ளூர் அளவில் சேமிக்கப்பட்டது';

  @override
  String get visualAcuityTestResults => 'விஷுவல் அக்விட்டி சோதனை முடிவுகள்';

  @override
  String get assessmentResultPageMoreDetailsText => 'மேலும் விவரங்களுக்கு அருகிலுள்ள பார்வை மையத்தைப் பார்வையிடவும். எங்கள் பார்வை தொழில்நுட்ப வல்லுநரிடம் பேச கட்டணமில்லா எண்ணை அழைக்கவும்.';

  @override
  String get assessmentReportButton => 'கண் மதிப்பீட்டு அறிக்கை';

  @override
  String get notificationsTitle => 'அறிவிப்புகள்';

  @override
  String get notificationsNotAvailable => 'அறிவிப்புகள் இல்லை';

  @override
  String get servicesPatientCare => 'நோயாளி பராமரிப்பு';

  @override
  String get reportAssessmentId => 'மதிப்பீட்டு மதிப்பீட்டு ஐடி';

  @override
  String get reportDateAndTime => 'தேதி மற்றும் நேரம்';

  @override
  String get reportSeverityAbnormal => 'தீவிர ஆய்வு';

  @override
  String get reportSeverityHigh => 'முதன்முதல் ஆய்வு';

  @override
  String get reportSeverityLow => 'வழக்கமான ஆய்வு';

  @override
  String get reportDataUnavailable => 'தரவு கிடைக்கவில்லை';

  @override
  String get reportTumblingTitle => 'சரிசெய்வல் சோதனை - வலிமையான ஈ';

  @override
  String get rightCornea => 'வலபுலம்பை';

  @override
  String get leftCornea => 'இடபுலம்பை';

  @override
  String get myProfileGeneralInfo => 'பொது தகவல்';

  @override
  String get myProfileAge => 'வயது';

  @override
  String get myProfileAddress => 'முகவரி';

  @override
  String get myProfileLine => 'வரி';

  @override
  String get myProfileCity => 'நகரம்';

  @override
  String get myProfileDistrict => 'மாவட்டம்';

  @override
  String get myProfileState => 'மாநிலம்';

  @override
  String get myProfilePinCode => 'பின் குறியீடு';

  @override
  String get submitButton => 'சமர்ப்பிக்கவும்';

  @override
  String get swipeGestureError => 'தவறான ஸ்வைப்! மீண்டும் முயற்சிக்கவும்.';

  @override
  String get swipeGestureCardText => 'சின்னத்தின் திசையில் ஸ்வைப் செய்யவும்';

  @override
  String get assessmentResultCardAssessmentQuestions => 'மதிப்பாய்வு\r\n\r\nகேள்விகள்';

  @override
  String get assessmentResultCardAcuityTest => 'கண்\r\n\r\nசரிபார்க்கப்பட்டுள்ளது';

  @override
  String get assessmentResultCardEyeScan => 'கண்\r\n\r\nஸ்கேன்';

  @override
  String get viewReportButton => 'அறிக்கையைப் பார்க்கவும்';

  @override
  String get updateButton => 'புதுப்பிக்கவும்';

  @override
  String get assessmentCardUrgentConsult => 'தேவையான ஆலோசனை';

  @override
  String get assessmentCardRoutineCheckUp => 'வழக்கமான சேர்க்கை';

  @override
  String get assessmentCardEarlyCheckUp => 'முன்னோக்கி சேர்க்கை';

  @override
  String get testAgainButton => 'மீண்டும் சோதிக்கவும்';

  @override
  String get homeButton => 'முகப்பு';

  @override
  String get homeTriageCardTitle => 'எங்கள் கண்கள் மிகவும் மதிப்பிடப்படுகின்றன.';

  @override
  String get homeTriageCardDescription => 'கண்களை விடுத்துத் தீர்வுகளை முன்னேற்றியும் கைகொள்ளுங்கள்.';

  @override
  String get homeTriageCardTest => 'கண் சோதனையைத் தொடங்குங்கள்';

  @override
  String get homeHelplineCardDescrition => 'எப்போதும் விழிப்புணர்வு இல்லாத நேரத்தில், இது அவசர ஹெல்ப்லைனை அழைக்கவும்';

  @override
  String get inviteCardTitle => 'மற்றவர்களை அழைக்கவும்';

  @override
  String get inviteCardDescription => '5 நண்பர்களையும் குடும்ப உறவினர்களையும் அழைக்கவும், அவர்கள் தங்களது கண்களை மதிப்பிட மற்றும் விடுத்துக் கொள்ள முடியும்.';

  @override
  String get inviteCardInvitation => 'இப்போது அழைக்கவும்';

  @override
  String get partnerCardTitle => 'கூட்டாளி';

  @override
  String get languageSelection => 'மொழியை தேர்ந்தெடுங்கள்';

  @override
  String get profileTitle => 'சுயவிவரம்';

  @override
  String get eyeAssessmentEnterLabel => 'இங்கே உள்ளிடவும்';

  @override
  String get profilePageAddressDetails => 'முகவரி விவரங்கள்';

  @override
  String get profilePaeCheckReports => 'உங்கள் அறிக்கைகளை சரிபார்க்கவும்';

  @override
  String get bottomNavItemEyeTest => 'கண் பரிசோதனை';

  @override
  String get bottomNavItemAppointment => 'நியமனங்கள்';

  @override
  String get memberSelection => 'உறுப்பினரைத் தேர்ந்தெடுக்கவும்';

  @override
  String get triageAlerDialogBoxTitle => 'மீண்டும் செய்ய படிகளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get scannerTitle => 'ஸ்கேனர்';

  @override
  String get visualAcuityTestDistanceInstruction => 'கேமிரடோ சக்கரம் 40 ஆண்டுகளுக்கு முன்பு. நான். தூர ராக்.';

  @override
  String get somethingWentWrong => 'ஏதோ தவறு நடந்துவிட்டது.';

  @override
  String get triageUpdatedSuccessfully => 'ட்ரைஜ் வெற்றிகரமாக புதுப்பிக்கப்பட்டது';

  @override
  String get noPreviewAvailable => 'முன்னோட்டம் இல்லை';

  @override
  String get privacyPolicyTitle => 'தனியுரிமை மற்றும் தரவு பாதுகாப்பு';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'பின்வரும் நோக்கங்களுக்காக நீங்கள் வழங்கிய தனிப்பட்ட தரவை நாங்கள் செயலாக்குகிறோம்ஃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'நீங்கள் கேமராவுக்கு மிக அருகில் இருக்கிறீர்கள், கேமராவை கண்ணிலிருந்து 40 சென்டிமீட்டர் தொலைவில் வைக்கவும்.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'நீங்கள் கேமராவிலிருந்து வெகு தொலைவில் இருக்கிறீர்கள், கேமராவை கண்ணிலிருந்து 40 செமீ தொலைவில் வைக்கவும்.';

  @override
  String get myProfileABHAID => 'ஏபிஹெச்ஏ ஐடி';

  @override
  String get myProfileEmail => 'மின்னஞ்சல்';

  @override
  String get viewHistoryButton => 'வரலாற்றைக் காண்க';

  @override
  String get profilePagePersonalDetails => 'தனிப்பட்ட விவரங்கள்';

  @override
  String get profilePageDateOfBirth => 'பிறந்த தேதி';

  @override
  String get profilePageGender => 'பாலினம்';

  @override
  String get profilePageMobile => 'மொபைல்';

  @override
  String get profilePageHealthCardTitle => 'சுகாதார அட்டை';

  @override
  String get appointmentTitle => 'நியமனங்கள்';

  @override
  String get appointmentSubtitle => 'அனைத்து நியமனங்களும்';

  @override
  String get eyeBoxText => 'கண்களைச் சுற்றி பச்சை நிறப் பெட்டிகள் தோன்றும் வரை தயவுசெய்து படத்தை சரிசெய்து வைக்கவும். கண்ணை நெருக்கமாக நகர்த்தி, பெட்டியின் 40 சதவீதம் கண்ணால் மூடப்பட்டிருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get bottomNavItemServices => 'சேவைகள்';

  @override
  String get smsContent => 'ஏய்! என் கண்களைக் கவனித்துக் கொள்ள நான் சைட் கனெக்ட் பயன்பாட்டைப் பயன்படுத்துகிறேன், நீங்களும் பயன்படுத்த வேண்டும்! உங்கள் கண்களை மதிப்பீடு செய்து, சைட் கனெக்ட் செயலி மூலம் சரியான நேரத்தில் சிகிச்சையைப் பெறுங்கள். இது ஒரு தனித்துவமான பயன்பாடாகும், இது உங்கள் கையில் தடுப்பு கண் பராமரிப்பைக் கொண்டுவருகிறது. இப்போது அதைப் பெறுங்கள்ஃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'சைட் கனெக்ட் செயலியின் மூலம் உங்கள் கண் ஆரோக்கியத்திற்கு முன்னுரிமை கொடுங்கள்!';

  @override
  String get recentServicesCataractEyeTest => 'கண்புரை கண் பரிசோதனை';

  @override
  String get recentServicesRedEyeTest => 'சிவப்பு கண் பரிசோதனை';

  @override
  String get chatBotDefaultQuerySuggestions => 'கண் மதிப்பீட்டைத் தொடங்குங்கள் | பொதுவான கண் பிரச்சினைகள் | சிறந்த கண் பார்வைக்கு உதவிக்குறிப்புகள்';

  @override
  String get chatBotWelcomeMessage => 'வணக்கம், இன்று நான் உங்களுக்கு எப்படி உதவ முடியும்?';

  @override
  String get poweredByText => 'இதன் மூலம் இயக்கப்படுகிறது';

  @override
  String get digitalHealthCard => 'டிஜிட்டல் பொது சுகாதார அடுக்கு';

  @override
  String get inviteNowText => 'இப்போது அழைக்கவும்';

  @override
  String get resend => 'மீண்டும் அனுப்பவும்';

  @override
  String get mobileNumber => 'மொபைல் எண்';

  @override
  String get loginVerifyMobileNumber => 'உங்கள் மொபைல் எண்ணை சரிபார்க்கவும்';

  @override
  String get loginEnterMobileNumber => 'தயவுசெய்து மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get loginEnterValidMobileNumber => 'செல்லுபடியாகும் மொபைல் எண்ணை உள்ளிடவும்';

  @override
  String get loginUnableToSendOTP => 'இந்த எண்ணுக்கு ஓடிபி அனுப்ப முடியவில்லை';

  @override
  String get loginGetOTP => 'ஓ. டி. பி. யைப் பெறுங்கள்';

  @override
  String get loginInvalidOTP => 'செல்லுபடியாகாத ஓடிபி';

  @override
  String get loginDidntReceiveOTP => 'ஓடிபி கிடைக்கவில்லையா?';

  @override
  String get loginOTPSent => 'ஓடிபி வெற்றிகரமாக அனுப்பப்பட்டது';

  @override
  String get areYouSure => 'நீங்கள் உறுதியாக இருக்கிறீர்களா?';

  @override
  String get triageExitConfirmation => 'நீங்கள் சோதனையிலிருந்து வெளியேற விரும்புகிறீர்களா?';

  @override
  String get triageReportEyeProblems => 'கண் பிரச்சினைகளைப் புகாரளிக்கவும்';

  @override
  String get triageHowToReport => 'கண் பிரச்சனைகளை எப்படிப் புகாரளிப்பது?';

  @override
  String get triageReportInstructions => 'நீங்கள் கண் தொடர்பான பிரச்சினைகளைக் கொண்ட ஒரு தனிநபராக இருந்தால், பொருத்தமான வழிகாட்டுதலைப் பெற நீங்கள் இங்கே சுயமாக அறிவிக்கலாம் மற்றும் உங்கள் பிரச்சினைகளைக் குறிப்பிடலாம். உங்கள் நண்பர்கள் அல்லது குடும்ப உறுப்பினர்களின் கண் பிரச்சினைகளை இங்கே குறிப்பிடலாம் மற்றும் பொருத்தமான வழிகாட்டுதல்களைப் பெறலாம். கண் பிரச்சினையின் தன்மை மற்றும் தீவிரத்தைப் புரிந்துகொள்ள பின்வரும் பிரிவுகளில் ஒரு சில கேள்விகள் கேட்கப்படும். அனைத்து கேள்விகளுக்கும் பதிலளித்த பிறகு செய்ய வேண்டிய சோதனைகள் மற்றும் பின்பற்ற வேண்டிய படிகளுடன் நீங்கள் பரிந்துரைக்கப்படுவீர்கள் மற்றும் வழிநடத்தப்படுவீர்கள்.';

  @override
  String get assessment => 'மதிப்பீடு';

  @override
  String get triageOtherSymptomsQuestion => 'உங்களுக்கு வேறு ஏதேனும் அறிகுறிகள் உள்ளதா?';

  @override
  String get triageEnterSymptoms => 'உங்கள் அறிகுறிகளை இங்கே உள்ளிடவும்';

  @override
  String get triageEyeAssessmentResults => 'கண் மதிப்பீடு முடிவுகள்';

  @override
  String get triageTestId => 'சோதனை ஐடி';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'கண் ஸ்கேன் வெற்றிகரமாக புதுப்பிக்கப்பட்டது';

  @override
  String get triageErrorEyeScanNotUpdated => 'கண் ஸ்கேன் புதுப்பிக்கப்படவில்லை!';

  @override
  String get triageLeftEyeString => 'இடது கண்';

  @override
  String get triageRightEyeString => 'வலது கண்';

  @override
  String get vaEyeTest => 'கண் பரிசோதனை';

  @override
  String get instructions => 'அறிவுறுத்தல்கள்';

  @override
  String get vaSwipeUp => 'மேலே ஸ்வைப் செய்யுங்கள்';

  @override
  String get vaSwipeDown => 'கீழே ஸ்வைப் செய்யுங்கள்';

  @override
  String get vaSwipeLeft => 'இடதுபுறம் சுழற்றுங்கள்';

  @override
  String get vaSwipeRight => 'வலதுபுறம் ஸ்வைப் செய்யுங்கள்';

  @override
  String get vaSwipeGestureError => 'செல்லுபடியாகாத ஸ்வைப் சைகை. தயவுசெய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get permissionNotGranted => 'அனுமதி வழங்கப்படவில்லை.';

  @override
  String get serviceNotAvailable => 'சேவை இல்லை';

  @override
  String get vaDistanceToFace => 'எதிர்கொள்ளும் தூரம்';

  @override
  String get vaBringFaceInsideBox => 'உங்கள் முகத்தை பெட்டிக்குள் கொண்டு வாருங்கள்.';

  @override
  String get startAssessment => 'மதிப்பீட்டைத் தொடங்குங்கள்';

  @override
  String get optoAddPatientInfo => 'நோயாளி தகவலைச் சேர்க்கவும்';

  @override
  String get loggedOutMessage => 'நீங்கள் வெளியேற்றப்பட்டுவிட்டீர்கள்';

  @override
  String get optoLogoutError => 'மன்னிக்கவும், மொபைல் பயன்பாட்டில் உள்நுழைவு பிழையை நாங்கள் சந்தித்தோம்.';

  @override
  String get optoLoggingOut => 'வெளியேறுகிறது...';

  @override
  String get hello => 'வணக்கம்.';

  @override
  String get optoGetStarted => 'தொடங்குவோம்.';

  @override
  String get optoCompletedTests => 'சோதனைகள் நிறைவடைந்தன';

  @override
  String get optoThisMonth => 'இந்த மாதம்';

  @override
  String get today => 'இன்று';

  @override
  String get services => 'சேவைகள்';

  @override
  String get optoAssessmentHistory => 'மதிப்பீட்டு வரலாறு';

  @override
  String get optoEyeAssessments => 'கண் மதிப்பீடுகள்';

  @override
  String get feedback => 'ஃபீட் பேக்';

  @override
  String get optoImproveApp => 'உங்கள் பின்னூட்டம் எங்கள் பயன்பாட்டை மேம்படுத்த வேண்டும் என்று நாங்கள் விரும்புகிறோம்.';

  @override
  String get assessments => 'மதிப்பீடுகள்';

  @override
  String get optoPatientAssistance => 'நோயாளிக்கு உதவி தேவையா?';

  @override
  String get optoVisualAcuity => 'பார்வைக் கூர்மை';

  @override
  String get optoPatientAided => 'நோயாளிக்கு உதவி செய்யப்பட்டதா?';

  @override
  String get optoEyeScan => 'கண் ஸ்கேன்';

  @override
  String get optoLeaveFeedback => 'தயவுசெய்து உங்கள் கருத்தை கீழே பதிவிடுங்கள்';

  @override
  String get optoNoInternet => 'இணைய இணைப்பு இல்லை';

  @override
  String get optoCheckInternet => 'தயவுசெய்து உங்கள் இணைய இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்';

  @override
  String get optoSearchPatientId => 'நோயாளி அடையாள அட்டையைத் தேடுங்கள்';

  @override
  String get optoRecentAssessments => 'சமீபத்திய மதிப்பீடுகள்';

  @override
  String get optoSelectDateRange => 'தயவுசெய்து ஒரு தேதி வரம்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get optoDataNotFound => 'இந்தத் தேடலுக்குத் தரவு கிடைக்கவில்லை.';

  @override
  String get optoAssessmentReport => 'மதிப்பீட்டு அறிக்கை';

  @override
  String get optoPID => 'பிஐடி';

  @override
  String get category => 'வகை';

  @override
  String get patientAssessmentAndTest => 'நோயாளி மதிப்பீடு மற்றும் சோதனை';

  @override
  String get patientSelfTestReport => 'சுய பரிசோதனை அறிக்கை';

  @override
  String get patientClinicalReport => 'மருத்துவ அறிக்கை';

  @override
  String get patientAppointmentTitle => 'நியமனம்';

  @override
  String get patientBookAppointment => 'புத்தக நியமனம்';

  @override
  String get patientAppointmentSubtitle => 'உங்கள் நியமனங்கள்';

  @override
  String get patientTelephoneConsultation => 'தொலைபேசி ஆலோசனை';

  @override
  String get patientAddress => 'முகவரி';

  @override
  String get patientReschedule => 'மறுபரிசீலனை செய்யுங்கள்';

  @override
  String get patientCancel => 'ரத்து செய்யுங்கள்';

  @override
  String get patientPID => 'பிஐடி';

  @override
  String get patientReportID => 'அடையாள அட்டையைப் புகாரளிக்கவும்';

  @override
  String get patientHideDetailedReport => 'விரிவான அறிக்கையை மறைக்கவும்';

  @override
  String get patientShowDetailedReport => 'விரிவான அறிக்கையைக் காட்டு';

  @override
  String get patientEID => 'ஈஐடி';

  @override
  String get patientViewHistoryButton => 'வரலாற்றைக் காண்க';

  @override
  String get patientViewReportButton => 'அறிக்கையைக் காண்க';

  @override
  String get patientNoMoreData => 'மேலும் தரவு இல்லை';

  @override
  String get patientErrorFetchingReport => 'அறிக்கையைப் பெறுவதில் பிழை';

  @override
  String get patientTimeline => 'காலவரிசை';

  @override
  String get patientRoutineCheckup => 'வழக்கமான பரிசோதனை';

  @override
  String get patientAssessmentID => 'மதிப்பீட்டு ஐடி';

  @override
  String get patientStartDate => 'தொடங்கும் தேதி';

  @override
  String get patientIVRAssessment => 'ஐவிஆர் மதிப்பீடு';

  @override
  String get patientEarlyConsultationRecommended => 'முன்கூட்டியே ஆலோசனை பரிந்துரைக்கப்படுகிறது';

  @override
  String get patientCataractEyeReport => 'கண்புரை கண் அறிக்கை';

  @override
  String get patientRedEyeReport => 'சிவப்பு கண் அறிக்கை';

  @override
  String get patientScanAgain => 'மீண்டும் ஸ்கேன் செய்யுங்கள்';

  @override
  String get patientStepsToScan => 'விழித்திரை ஸ்கேனிங் செய்வதற்கான படிகள்';

  @override
  String get patientProceedToScan => 'ஸ்கேன் செய்ய தொடருங்கள்';

  @override
  String get patientSkipAndProceedToScan => 'தவிர்க்கவும் & ஸ்கேன் செய்ய தொடருங்கள்';

  @override
  String get patientEyeScanner => 'கண் ஸ்கேனர்';

  @override
  String get patientErrorSelectCamera => 'முதலில் ஒரு கேமராவைத் தேர்ந்தெடுங்கள்!';

  @override
  String get patientEyeBoxText => 'கண் பெட்டி உரை';

  @override
  String get patientLoggedOut => 'நீங்கள் வெளியேற்றப்பட்டுவிட்டீர்கள்';

  @override
  String get patientLogoutError => 'மன்னிக்கவும், மொபைல் பயன்பாட்டில் உள்நுழைவு பிழையை நாங்கள் சந்தித்தோம்.';

  @override
  String get patientUpdateProfile => 'சுயவிவரத்தைப் புதுப்பிக்கவும்';

  @override
  String get patientEdit => 'திருத்தவும்';

  @override
  String get patientProfileNotUpdated => 'சுயவிவரம் புதுப்பிக்கப்படவில்லை';

  @override
  String get patientProfileUpdated => 'சுயவிவரம் புதுப்பிக்கப்பட்டது';

  @override
  String get patientReportUnavailable => 'அறிக்கை கிடைக்கவில்லை';

  @override
  String get patientClinicalReportNotFound => 'மருத்துவ அறிக்கை கிடைக்கவில்லை';

  @override
  String get patientRID => 'ஆர்ஐடி';

  @override
  String get patientUpdateUnavailable => 'இந்த நேரத்தில் புதுப்பிப்பு கிடைக்கவில்லை';

  @override
  String get vgAddEvent => 'நிகழ்வைச் சேர்க்கவும்';

  @override
  String get vgUploadingImageAddingEvent => 'படத்தைப் பதிவேற்றுவது மற்றும் நிகழ்வைச் சேர்ப்பது';

  @override
  String get vgEventTitle => 'நிகழ்வின் தலைப்பு';

  @override
  String get vgPleaseEnterEndTime => 'தயவுசெய்து இறுதி நேரத்தை உள்ளிடவும்';

  @override
  String get vgShouldNotContainSpecialCharacter => 'எந்த சிறப்பு எழுத்துக்களையும் கொண்டிருக்கக் கூடாது.';

  @override
  String get vgEventDescription => 'நிகழ்வு விவரம்';

  @override
  String get vgAddPatient => 'நோயாளியைச் சேர்க்கவும்';

  @override
  String get vgPatients => 'நோயாளிகள்';

  @override
  String get vgDetails => 'விவரங்கள்';

  @override
  String get vgTeammates => 'சக வீரர்கள்';

  @override
  String get vgEyeAssessment => 'கண் மதிப்பீடு';

  @override
  String get vgStart => 'தொடங்குங்கள்';

  @override
  String get vgEyeAssessmentDescription => 'உங்கள், உங்கள் நண்பர்கள் மற்றும் குடும்ப உறுப்பினர்களின் கண் பிரச்சினைகளை சில படிகளில் மதிப்பீடு செய்யுங்கள். உங்கள் கண் பிரச்சினைகள் தொடர்பான அறிகுறிகளைப் புரிந்துகொள்ள ஒரு சில கேள்விகள் கேட்கப்படும், அதைத் தொடர்ந்து காட்சி சோதனைகள் செய்யப்படும்.';

  @override
  String get vgLogoutMessage => 'நீங்கள் வெளியேற்றப்பட்டுவிட்டீர்கள்';

  @override
  String get vgLogoutErrorMessage => 'மன்னிக்கவும், மொபைல் பயன்பாட்டில் உள்நுழைவு பிழையை நாங்கள் சந்தித்தோம்.';

  @override
  String get vgWelcome => 'வரவேற்கிறேன்.';

  @override
  String get vgServices => 'சேவைகள்';

  @override
  String get vgEvents => 'நிகழ்வுகள்';

  @override
  String get vgViewAll => 'அனைத்தையும் பார்க்கவும்';

  @override
  String get vtAssessmentReport => 'மதிப்பீட்டு அறிக்கை-EA';

  @override
  String get vtRemarks => 'குறிப்புகள்';

  @override
  String get vtNoPatientFound => 'நோயாளி யாரும் கண்டுபிடிக்கப்படவில்லை.';

  @override
  String get vtClose => 'மூடு';

  @override
  String get vtBack => 'பின்னோக்கி.';

  @override
  String get vtSubmit => 'சமர்ப்பிக்கவும்';

  @override
  String get vtSomethingWentWrong => 'ஏதோ தவறு நடந்துவிட்டது.';

  @override
  String get vtAssessmentClosedSuccessfully => 'மதிப்பீடு வெற்றிகரமாக முடிவடைந்தது';

  @override
  String get vtEyeScan => 'கண் ஸ்கேன்';

  @override
  String get vtDashboard => 'டேஷ்போர்டு';

  @override
  String get vtRegisterPatient => 'நோயாளியை பதிவு செய்யுங்கள்';

  @override
  String get vtTriage => 'மும்முரம்.';

  @override
  String get vtMarkMyAvailability => 'எனது கிடைக்கும் தன்மையைக் குறிக்கவும்';

  @override
  String get vtIVRCallHistory => 'ஐவிஆர் அழைப்பு வரலாறு';

  @override
  String get vtMarked => 'குறிக்கப்பட்ட';

  @override
  String get vtPreliminaryAssessment => 'முதற்கட்ட மதிப்பீடு';

  @override
  String get vtAge => 'வயது.';

  @override
  String get vtGender => 'பாலினம்';

  @override
  String get vtAddress => 'முகவரி';

  @override
  String get vtProfile => 'சுயவிவரம்';

  @override
  String get vtLogoutMessage => 'நீங்கள் வெளியேற்றப்பட்டுவிட்டீர்கள்';

  @override
  String get vtLogoutError => 'மன்னிக்கவும், மொபைல் பயன்பாட்டில் உள்நுழைவு பிழையை நாங்கள் சந்தித்தோம்.';

  @override
  String get vtError => 'பிழை';

  @override
  String get vtPatient => 'நோயாளி.';

  @override
  String get vtMobile => 'மொபைல்';

  @override
  String get vtAssessmentID => 'மதிப்பீட்டு ஐடி';

  @override
  String get vtStatus => 'அந்தஸ்து';

  @override
  String get vtTimeline => 'காலவரிசை';

  @override
  String get vtCategory => 'வகை';

  @override
  String get vtNoDataFound => 'தரவு எதுவும் கிடைக்கவில்லை';

  @override
  String get appCameraCapture => 'பிடிப்பு';

  @override
  String get appCameraRetake => 'மீள்பரிசீலனை செய்யுங்கள்.';

  @override
  String get appCameraUsePhoto => 'புகைப்படத்தைப் பயன்படுத்தவும்';

  @override
  String get appCameraCancel => 'ரத்து செய்யுங்கள்';

  @override
  String get appCameraNotFound => 'கேமராவைக் காணவில்லை';

  @override
  String get appCameraException => 'கேமரா விதிவிலக்கு';

  @override
  String get appCameraProgressMessage => 'ஏற்றப்படுகிறது...';

  @override
  String get internetLostNoConnection => 'இணைய இணைப்பு இல்லை';

  @override
  String get internetLostRetry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get secureJailbreak => 'உங்கள் சாதனம் சிறைப்பிடிக்கப்பட்டதாகத் தெரிகிறது.';

  @override
  String get secureRestrictedAccess => 'பாதுகாப்பு காரணங்களுக்காக, இந்த பயன்பாட்டிற்கான அணுகல் ஜெயில்ப்ரோக்கன் சாதனங்களில் கட்டுப்படுத்தப்பட்டுள்ளது.';

  @override
  String get secureExitApp => 'பயன்பாட்டிலிருந்து வெளியேறு';

  @override
  String get sharedErrorPageIssues => 'நாங்கள் சில சிக்கல்களை எதிர்கொள்கிறோம். தயவுசெய்து பின்னர் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get appointmentBookingTitle => 'நியமன முன்பதிவு';

  @override
  String get comingSoon => 'விரைவில் வரும்...';

  @override
  String get miniappService => 'சேவை';

  @override
  String get miniappConsole => 'கன்சோல்';

  @override
  String get roleChooseYourRole => 'உங்கள் பாத்திரத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get roleNote => 'குறிப்புஃ பயன்பாட்டிற்குள் உங்கள் பங்கை நீங்கள் மாற்ற முடியாது.';

  @override
  String get roleConfirm => 'உறுதிப்படுத்துங்கள்';

  @override
  String get roleEyeCareProfessional => 'கண் பராமரிப்பு நிபுணர்';

  @override
  String get roleVisionTechnician => 'தொலைநோக்கு தொழில்நுட்பம்';

  @override
  String get rolePatient => 'நோயாளி';

  @override
  String get roleVisionGuardian => 'தொலைநோக்கு பாதுகாப்பு';

  @override
  String get vtSearchText => 'நோயாளி ஐடி, மொபைல் எண் அல்லது பெயர் மூலம் தேடுங்கள்';

  @override
  String get emptyPatientsInfo => 'நோயாளிகளின் விவரங்களைக் காண அவர்களைத் தேடத் தொடங்குங்கள்.';

  @override
  String get vtPersonalDetails => 'தனிப்பட்ட விவரங்கள்';

  @override
  String get vtHprId => 'எச். பி. ஆர் ஐடி';

  @override
  String get vtEmailId => 'மின்னஞ்சல் ஐடி';

  @override
  String get vtEducationalQualification => 'கல்வித் தகுதி';

  @override
  String get vtAddressAndDoorNumber => 'முகவரி மற்றும் கதவு எண்';

  @override
  String get vtCity => 'நகரம்.';

  @override
  String get vtState => 'மாநிலம்.';

  @override
  String get vtPincode => 'பின்கோடு';

  @override
  String get vtOrganisationDetails => 'அமைப்பு விவரங்கள்';

  @override
  String get vtOrgId => 'உறுப்பு ஐடி';

  @override
  String get vtFacilityType => 'வசதி வகை';

  @override
  String get vtAssessments => 'மதிப்பீடுகள்';

  @override
  String get vtNoAssessmentsFound => 'மதிப்பீடுகள் எதுவும் காணப்படவில்லை';

  @override
  String get vtAnalytics => 'பகுப்பாய்வு';

  @override
  String get vtTotalCases => 'மொத்த வழக்குகள்';

  @override
  String get vtIvrCalls => 'ஐவிஆர் அழைப்புகள்';

  @override
  String get vtClinicVisits => 'கிளினிக்கிற்கு வருகை';

  @override
  String get vtCasesClosed => 'வழக்குகள் மூடப்பட்டன';

  @override
  String get vtCritical => 'விமர்சன ரீதியாக';

  @override
  String get vtRegular => 'வழக்கமான';

  @override
  String get vtAvgClosureTime => 'சராசரி. மூடல் நேரம்';

  @override
  String get vtByAge => 'வயதின் அடிப்படையில்';

  @override
  String get vtByGender => 'பாலினம் அடிப்படையில்';

  @override
  String get vtSymptoms => 'அறிகுறிகள்';

  @override
  String get vtSearchByMobileNo => 'மொபைல் எண் மூலம் தேடுங்கள்.';

  @override
  String get vtInvalidMobileNo => 'செல்லுபடியாகாத மொபைல் எண்.';

  @override
  String get vtCallLogEmpty => 'அழைப்பு பதிவு காலியாக உள்ளது.. இன்னும் அழைப்புகள் எதுவும் செய்யப்படவில்லை!';

  @override
  String get vtNoDataAvailable => 'தரவு இல்லை';

  @override
  String get vtToday => 'இன்று';

  @override
  String get vtYesterday => 'நேற்று';

  @override
  String get vtIvrCallNotAvailable => 'ஐவிஆர் அழைப்பு கிடைக்கவில்லை. மீண்டும் முயற்சிக்கவும்!!';

  @override
  String get vtMarkUnavailable => 'கிடைக்கவில்லை என்று குறிக்கவும்';

  @override
  String get vtStartDate => 'தொடங்கும் தேதி';

  @override
  String get vtEndDate => 'முடிவு தேதி';

  @override
  String get vtStartTime => 'தொடங்கும் நேரம்';

  @override
  String get vtEndTime => 'முடிவு நேரம்';

  @override
  String get vtAddRemarksOptional => 'குறிப்புகளைச் சேர்க்கவும் (விருப்பப்படி)';

  @override
  String get vtSave => 'சேமிக்கவும்';

  @override
  String get vtCancel => 'ரத்து செய்யுங்கள்';

  @override
  String get vtPleaseEnterRemark => 'தயவுசெய்து குறிப்பை உள்ளிடவும்';

  @override
  String get vtAssessment => 'மதிப்பீடு';

  @override
  String get vtIvrSelections => 'ஐவிஆர் தேர்வுகள்';

  @override
  String get vtLanguageSelection => 'மொழித் தேர்வு';

  @override
  String get vtEnglish => 'ஆங்கிலம்';

  @override
  String get vtPatientType => 'நோயாளி வகை';

  @override
  String get vtProblem => 'சிக்கல்.';

  @override
  String get vtEyeSight => 'கண் பார்வை';

  @override
  String get vtVisionTechnician => 'பார்வை தொழில்நுட்ப வல்லுநர்';

  @override
  String get vtRecommendedCenter => 'பரிந்துரைக்கப்பட்ட மையம்';

  @override
  String get vtAssessmentIDEA => 'மதிப்பீட்டு ஐடிஃ ஈ. ஏ.';

  @override
  String get vtPid => 'பிஐடிஃ ஓபி';

  @override
  String get vtAssessmentTimeline => 'மதிப்பீட்டு காலவரிசை';

  @override
  String get vtPleaseSelectEncounter => 'தயவுசெய்து ஒரு சந்திப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get vtTimelineEA => 'காலவரிசைஃ EA';

  @override
  String get vtGeneralInformation => 'பொதுத் தகவல்';

  @override
  String get vtDateOfBirth => 'பிறந்த தேதி';

  @override
  String get vtAssessmentEA => 'மதிப்பீடு ஈ. ஏ.';

  @override
  String get vtNotRegistered => 'நீங்கள் கணினியில் பதிவு செய்யவில்லை. தயவுசெய்து ஒரு தவறவிட்ட அழைப்பை அனுப்பவும்';

  @override
  String get vtOkay => 'சரி.';

  @override
  String get vtTakePicture => 'படம் எடுங்கள்.';

  @override
  String get vtEye => 'கண்.';

  @override
  String get vtRetakePicture => 'படத்தை மறுபரிசீலனை செய்யுங்கள்';

  @override
  String get vtNext => 'அடுத்து';

  @override
  String get vtMrCode => 'எம்ஆர் குறியீடு';

  @override
  String get vtEnterMrCode => 'எம்ஆர் குறியீட்டை இங்கே உள்ளிடவும்';

  @override
  String get vtPleaseEnterMrCode => 'தயவுசெய்து எம்ஆர் குறியீட்டை உள்ளிடவும்';

  @override
  String get vtNote => 'குறிப்பு';

  @override
  String get vtEnterRecommendations => 'பரிந்துரைகளை இங்கே உள்ளிடவும்';

  @override
  String get vtSolutions => 'தீர்வுகள் (கள்)';

  @override
  String get vtLeftEye => 'இடது கண்';

  @override
  String get vtRightEye => 'வலது கண்';

  @override
  String get vtBothEyes => 'இரண்டு கண்களும்';

  @override
  String get vtFilterBy => 'இதன் மூலம் வடிகட்டவும்';

  @override
  String get vtLocation => 'இருப்பிடம்';

  @override
  String get vtEnterTime => 'தயவுசெய்து நேரத்தை உள்ளிடவும்';

  @override
  String get vtEnterDate => 'தயவுசெய்து தேதியை உள்ளிடவும்';

  @override
  String get vtRecommendation => 'பரிந்துரை';

  @override
  String get vtVisitPrimaryCenter => 'முதன்மை மையத்தைப் பார்வையிடவும்';

  @override
  String get vtVisitSecondaryCenter => 'இரண்டாம் நிலை மையத்திற்குச் செல்லவும்';

  @override
  String get vtVisitTertiaryCenter => 'மூன்றாம் நிலை மையத்தைப் பார்வையிடவும்';

  @override
  String get vtVisitCenterOfExcellence => 'சிறப்புமிக்க மையத்தைப் பார்வையிடவும்';

  @override
  String get vtIvrCallQuestion => 'நீங்கள் ஐவிஆர் அழைப்பில் இருக்கிறீர்களா?';

  @override
  String get vtYes => 'ஆம்.';

  @override
  String get vtNo => 'இல்லை.';

  @override
  String get vtRetry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get vtAssessmentQuestions => 'மதிப்பீட்டு கேள்விகள்';

  @override
  String get vtVisionCenter => 'பார்வை மையம்';

  @override
  String get vtVisualAcuity => 'பார்வைக் கூர்மை';

  @override
  String get vtInvalidValue => 'செல்லாத மதிப்பு';

  @override
  String get vtSeverity => 'தீவிரம்.';

  @override
  String get vtNoVisionCentersFound => 'பார்வை மையங்கள் எதுவும் காணப்படவில்லை';

  @override
  String get vtRequestLocationPermission => 'இருப்பிட அனுமதி கோருதல்';

  @override
  String get vtAppSettings => 'பயன்பாட்டு அமைப்புகள்';

  @override
  String get vtEnterSomeText => 'தயவுசெய்து சில உரையை உள்ளிடவும்';

  @override
  String get vtPrimary => 'முதன்மை';

  @override
  String get vtDependent => 'சார்பு';

  @override
  String get vtAddMember => 'உறுப்பினரைச் சேர்க்கவும்';

  @override
  String get vtCompleteProfile => 'முழுமையான சுயவிவரம்';

  @override
  String get vtPatientNotRegistered => 'நோயாளி பதிவு செய்யப்படவில்லை';

  @override
  String get vtPatientRegistered => 'நோயாளி பதிவு செய்யப்பட்டுள்ளார்.';

  @override
  String get vtDependentNotAdded => 'சார்பு சேர்க்கப்படவில்லை';

  @override
  String get vtDependentAdded => 'சார்பு சேர்க்கப்பட்டது';

  @override
  String get vtServiceNotAvailable => 'சேவை கிடைக்கவில்லை';

  @override
  String get vgEyeAssessments => 'கண் மதிப்பீடுகள்';

  @override
  String get vgTotal => 'மொத்தம்';

  @override
  String get vgCamps => 'முகாம்கள்';

  @override
  String get vgDoorToDoor => 'கதவுக்கான கதவு';

  @override
  String get vgByGender => 'பாலினம் அடிப்படையில்';

  @override
  String get vgMale => 'ஆண்.';

  @override
  String get vgFemale => 'பெண்';

  @override
  String get vgOthers => 'மற்றவை';

  @override
  String get vgByAge => 'வயதின் அடிப்படையில்';

  @override
  String get vgSlideAge => 'வருடங்கள்.';

  @override
  String get vgSymptoms => 'அறிகுறிகள்';

  @override
  String get vgRefractive => 'ஒளிவிலகல்';

  @override
  String get vgCataract => 'கண்புரை';

  @override
  String get vgGlaucoma => 'கிளௌகோமா';

  @override
  String get vgKeratitis => 'கெராடிடிஸ்';

  @override
  String get vgBlepharitis => 'பிளெபரிடிஸ்';

  @override
  String get vgConjunctivitis => 'விழி வெண்படல அழற்சி';

  @override
  String get vgServicesCreateEvent => 'நிகழ்வை உருவாக்கு';

  @override
  String get vgServicesEyeAssessment => 'கண் மதிப்பீடு';

  @override
  String get vgServicesRegisterPatient => 'புதிய நோயாளியை பதிவு செய்யுங்கள்';

  @override
  String get vgAddPatients => 'நோயாளிகளைச் சேர்க்கவும்';

  @override
  String get vgEvent => 'நிகழ்வு';

  @override
  String get vgAddEventPhoto => 'நிகழ்வு புகைப்படத்தைச் சேர்க்கவும்';

  @override
  String get vgUploadImage => 'படத்தை பதிவேற்றவும்';

  @override
  String get vgAddPhotoInstruction => 'சிறுபடமாக காட்டப்படும் நிகழ்வின் புகைப்படத்தைச் சேர்க்கவும்';

  @override
  String get vgAddressDetails => 'முகவரி விவரங்கள்';

  @override
  String get vgVenueName => 'இடத்தின் பெயர்';

  @override
  String get vgVenueNameError => 'தயவுசெய்து இடத்தின் பெயரை உள்ளிடவும்';

  @override
  String get vgVenueNameSpecialCharError => 'எந்த சிறப்பு எழுத்துக்களையும் கொண்டிருக்கக் கூடாது.';

  @override
  String get vgPincode => 'பின்கோடு';

  @override
  String get vgPincodeError => '6 இலக்க பின்கோடு மட்டுமே அனுமதிக்கப்படுகிறது';

  @override
  String get vgCityTownVillage => 'நகரம்/நகரம்/கிராமம்';

  @override
  String get vgCityTownVillageError => 'நகரம்/நகரம்/கிராமத்தின் பெயரை உள்ளிடவும்';

  @override
  String get vgCityTownVillageSpecialCharError => 'எந்த சிறப்பு எழுத்துக்களையும் கொண்டிருக்கக் கூடாது.';

  @override
  String get vgCancel => 'ரத்து செய்யுங்கள்';

  @override
  String get vgSave => 'சேமிக்கவும்';

  @override
  String get vgAddEventImage => 'நிகழ்வு படத்தைச் சேர்க்கவும்';

  @override
  String get vgEventAdded => 'நிகழ்வு சேர்க்கப்பட்டது';

  @override
  String get vgEventNotAdded => 'நிகழ்வு சேர்க்கப்படவில்லை';

  @override
  String get vgDateTime => 'தேதி & நேரம்';

  @override
  String get vgStartDate => 'தொடங்கும் தேதி';

  @override
  String get vgStartTime => 'தொடங்கும் நேரம்';

  @override
  String get vgLocation => 'இருப்பிடம்';

  @override
  String get vgViewOnMap => 'வரைபடத்தில் பார்க்கவும்';

  @override
  String get vgAddressAndDoorNumber => 'முகவரி மற்றும் கதவு எண்';

  @override
  String get vgSubDistrictName => 'துணை மாவட்டத்தின் பெயர்';

  @override
  String get vgVillageName => 'கிராமத்தின் பெயர்';

  @override
  String get vgDistrictName => 'மாவட்டத்தின் பெயர்';

  @override
  String get vgAbout => 'பற்றி';

  @override
  String get vgEditEvent => 'நிகழ்வைத் திருத்து';

  @override
  String get vgDeleteEvent => 'நிகழ்வை நீக்கு';

  @override
  String get vgErrorFetchingEventDetails => 'நிகழ்வு விவரங்களைப் பெறுவதில் பிழை';

  @override
  String get vgNoPatientRegistered => 'நோயாளி பெயர் பதிவு செய்யப்படவில்லை. நோயாளி பதிவு என்பதைக் கிளிக் செய்க.';

  @override
  String get vgRegisterPatient => 'நோயாளியை பதிவு செய்யுங்கள்';

  @override
  String get vgPrimary => 'முதன்மை';

  @override
  String get vgDependent => 'சார்பு';

  @override
  String get vgAddMember => 'உறுப்பினரைச் சேர்க்கவும்';

  @override
  String get vgCompleteProfile => 'முழுமையான சுயவிவரம்';

  @override
  String get vgStartAssessment => 'மதிப்பீட்டைத் தொடங்குங்கள்';

  @override
  String get vgSearchPatientByPhoneNumber => 'தொலைபேசி எண் மூலம் நோயாளியைத் தேடுங்கள்';

  @override
  String get vgInvalidPhoneNumber => 'செல்லுபடியாகும் தொலைபேசி எண்ணை உள்ளிடவும்';

  @override
  String get vgServerError => 'சேவையகப் பிழை';

  @override
  String get vgPatient => 'நோயாளி.';

  @override
  String get vgReportId => 'அடையாள அட்டையைப் புகாரளிக்கவும்';

  @override
  String get vgNoEventFound => 'எந்த நிகழ்வும் காணப்படவில்லை';

  @override
  String get vgTeamMateDeletedSuccessfully => 'டீம்மேட் வெற்றிகரமாக நீக்கப்பட்டது';

  @override
  String get vgSomethingWentWrong => 'ஏதோ தவறு நடந்துவிட்டது.';

  @override
  String get vgName => 'பெயர்.';

  @override
  String get vgPhoneNumber => 'தொலைபேசி எண்';

  @override
  String get vgErrorFetchingTeammatesDetails => 'அணி வீரர்களின் விவரங்களைப் பெறுவதில் பிழை';

  @override
  String get vgTeamMateAddedSuccessfully => 'டீம்மேட் வெற்றிகரமாக சேர்க்கப்பட்டது';

  @override
  String get vgAddTeammate => 'அணி வீரரைச் சேர்க்கவும்';

  @override
  String get vgPleaseEnter => 'தயவுசெய்து உள்ளிடவும்';

  @override
  String get vgPleaseEnterField => 'தயவுசெய்து புலத்தை உள்ளிடவும்';

  @override
  String get vgOr => 'அல்லது';

  @override
  String get vgSearch => 'தேடுங்கள்.';

  @override
  String get vgEventDeletedSuccessfully => 'நிகழ்வு வெற்றிகரமாக நீக்கப்பட்டது';

  @override
  String get vgEventDeletionFailed => 'நிகழ்வு நீக்குதல் தோல்வியடைந்தது';

  @override
  String get vgEndTimeGreaterThanStartTime => 'தொடக்க நேரத்தை விட இறுதி நேரம் அதிகமாக இருக்க வேண்டும்.';

  @override
  String get vgNoPatientsPresent => 'தற்போது நோயாளிகள் யாரும் இல்லை. "நோயாளியைச் சேர்க்கவும்" என்பதைத் தட்டவும்.';

  @override
  String get textSize => 'உரையின் அளவு';

  @override
  String get increase => 'அதிகரிக்க';

  @override
  String get decrease => 'குறைக்க';

  @override
  String get reset => 'மீட்டமை';

  @override
  String get minimumTextSizeReached => 'குறைந்தபட்ச உரை அளவு அடைந்துவிட்டது';

  @override
  String get maximumTextSizeReached => 'அதிகபட்ச உரை அளவு அடைந்துவிட்டது';

  @override
  String get chatClearChat => 'அரட்டை அழிக்கவும்';

  @override
  String get chatEyeAssessmentRecommended => 'கண் மதிப்பீடு உங்களுக்கு பரிந்துரைக்கப்படுகிறது.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'நீங்கள் முக்கோண கண் மதிப்பீட்டை எடுக்க விரும்புகிறீர்களா?';

  @override
  String get chatChatbotNotAvailable => 'சாட்போட் தற்போது இல்லை. தயவுசெய்து பின்னர் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get chatTypeHere => 'இங்கே தட்டச்சு செய்க...';

  @override
  String get switchProfile => 'சுயவிவரத்தை மாற்று';

  @override
  String get switchRole => 'பாத்திரத்தை மாற்றவும்';

  @override
  String get switchTenant => 'வாடகைதாரரை மாற்றவும்';

  @override
  String get patientHeaderWelcomeText => 'சைட் கனெக்டுக்கு வரவேற்கிறோம்! உங்கள் பார்வையை கவனித்துக்கொள்வது முக்கியம், ஒவ்வொரு அடியிலும் நாங்கள் உங்களுக்காக இங்கே இருக்கிறோம்.';

  @override
  String get triageTestCardHeader => 'உங்கள் கண் பரிசோதனை இலவசம்...';

  @override
  String get triageTestCardBody1 => 'உங்கள் கண் அறிகுறிகளை விரைவாக பகுப்பாய்வு செய்யுங்கள்.';

  @override
  String get triageTestCardBody2 => 'உங்களுக்கு கண் பிரச்சனை இருந்தால் அடையாளம் காணவும்';

  @override
  String get triageTestCardBody3 => 'உங்கள் மருத்துவரை எப்போது பார்க்க வேண்டும் என்பதை அறிந்து கொள்ளுங்கள்';

  @override
  String get triageTestCardButton => 'இலவச கண் பரிசோதனையைத் தொடங்குங்கள்';

  @override
  String get myConnectionListAddMembersDescription => 'உங்கள் குடும்பத்தையும் நண்பர்களையும் சேர்க்க உறுப்பினர்களைச் சேர்க்க பொத்தானைக் கிளிக் செய்க.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'நீங்கள் எவ்வாறு தொடர விரும்புகிறீர்கள்?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'எனக்கு ஒரு சிக்கல் உள்ளது மற்றும் சரிபார்க்க விரும்புகிறேன்';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'எனக்கு ஏதேனும் சிக்கல் இருக்கிறதா என்று எனக்குத் தெரியவில்லை';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'எனக்கு கண் பிரச்சினைகள் எதுவும் இல்லை-சரிபார்க்க விரும்புகிறேன்';

  @override
  String get appDrawerToastMessageText => 'மன்னிக்கவும், மொபைல் பயன்பாட்டில் உள்நுழைவு பிழையை நாங்கள் சந்தித்தோம்.';

  @override
  String get myConnectionListAddMembers => 'உறுப்பினர் சேர்க்கவும்';

  @override
  String get appDrawerReferral => 'பரிந்துரை';

  @override
  String get patientTenantDisplayPageHeader => 'வாடகைதாரர்கள்';

  @override
  String get patientTenantDisplayPageBody => 'பட்டியலில் இருந்து ஒரு தொலைநோக்கு மையத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'இருப்பிட அனுமதி கோருதல்';

  @override
  String get referralGenerateSheetHeader => 'உங்கள் பரிந்துரைக் குறியீடு';

  @override
  String get referralGenerateSheetTapHereButton => 'குறியீடு உள்ளதா? இங்கே தட்டவும்';

  @override
  String get referralGenerateSheetMyReferrals => 'எனது பரிந்துரைகள்';

  @override
  String get referralGenerateSheetShareCode => 'நன்மைகளைப் பெற உங்கள் பரிந்துரைக் குறியீட்டை உங்கள் நண்பர்கள் மற்றும் குடும்பத்தினருடன் பகிர்ந்து கொள்ளுங்கள்.';

  @override
  String get referralGenerateSheetReferralGenerateError => 'மன்னிக்கவும், இந்த நேரத்தில் ஒரு பரிந்துரை குறியீட்டை எங்களால் உருவாக்க முடியவில்லை.';

  @override
  String get referralGenerateSheetShareButton => 'பகிர்ந்து கொள்ளுங்கள்.';

  @override
  String get referralGenerateSheetCopy => 'நகல்';

  @override
  String get referralCollectSheetYourRefferalCode => 'உங்கள் பரிந்துரைக் குறியீடு';

  @override
  String get referralCollectSheetReferralCodeMessage => 'நன்மைகளைப் பெற உங்கள் பரிந்துரைக் குறியீட்டை உங்கள் நண்பர்கள் மற்றும் குடும்பத்தினருடன் பகிர்ந்து கொள்ளுங்கள்.';

  @override
  String get referralCollectSheetHeader => 'பரிந்துரை சேகரிக்கவும்';

  @override
  String get referralCollectSheetBody => 'உங்கள் வெகுமதியை சேகரிக்க பரிந்துரை குறியீட்டை உள்ளிடவும்';

  @override
  String get referralCollectSheetTextFieldHeader => 'பரிந்துரை குறியீடு';

  @override
  String get referralCollectSheetTextFieldBody => 'பரிந்துரை குறியீட்டை உள்ளிடவும்';

  @override
  String get referralCollectSheetSkipButton => 'விலகிச் செல்லுங்கள்.';

  @override
  String get referralCollectSheetCollectButton => 'சேகரிக்கவும்';

  @override
  String get referralCollectSheetError => 'மன்னிக்கவும், ஏதோ தவறு நடந்தது. தயவுசெய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get referralCollectSheetSuccessToast => 'பரிந்துரை குறியீடு வெற்றிகரமாக சமர்ப்பிக்கப்பட்டது';

  @override
  String get referralCollectSheetErrorToast => 'நீங்கள் உள்ளிட்ட பரிந்துரை குறியீடு செல்லாது. தயவுசெய்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get referralStatisticsPageHeader => 'உங்கள் பரிந்துரை புள்ளிவிவரங்கள்';

  @override
  String get referralStatisticsPageTotalReferred => 'குறிப்பிடப்பட்ட மொத்த தொகை';

  @override
  String get referralStatisticsPageSucessfulReferred => 'வெற்றிகரமான குறிப்பு';

  @override
  String get referralStatisticsPageTotalTriage => 'மொத்த முத்திரை';

  @override
  String get referralStatisticsPageReferFriendHeader => 'ஒரு நண்பரை எவ்வாறு குறிப்பிடுவது?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'உங்கள் பரிந்துரை குறியீட்டை உங்கள் நண்பருடன் பகிர்ந்து கொள்ளுங்கள்.';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'உங்கள் பரிந்துரை குறியீட்டைப் பயன்படுத்தி உங்கள் நண்பர் பதிவு செய்கிறார்.';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'உங்கள் நண்பர் குறைந்தபட்சம் ஒரு முக்கோண சோதனையை முடிக்கிறார்.';

  @override
  String get referralStatisticsPageReferFriendButton => 'ஒரு நண்பரைப் பார்க்கவும்';

  @override
  String get referralStatisticsPageError => 'மன்னிக்கவும், இந்த நேரத்தில் உங்கள் பரிந்துரை புள்ளிவிவரங்களை எங்களால் பெற முடியவில்லை.';

  @override
  String get referralStatisticsPageRetryButton => 'மீண்டும் முயற்சிக்கவும்';

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
  String get distanceNotifierProviderNoFaceDetectedError => 'No face detected. Please face the camera 40 cm from the screen';

  @override
  String get appCameraPageTakePictureLoadingOverlayMessage => 'Hold the camera steady…';

  @override
  String get appCameraPageDefaultLoadingOverlayMessage => 'Loading…';

  @override
  String get topReadingCardFaceNotFoundError => 'No Face';

  @override
  String get topReadingCardLongDistanceTestMessage => 'Position yourself 2m from the screen';

  @override
  String get roleVolunteer => 'VOLUNTEER';

  @override
  String get patientHomePageVolunteerInviteeCardJoinUsNowButton => 'Join Us Now';

  @override
  String get patientHomePageVolunteerInviteeCardTitle => 'Become a SightConnect Volunteer!';

  @override
  String get patientHomePageVolunteerInviteeCardDescription1 => 'Promote Preventive Eye Care';

  @override
  String get patientHomePageVolunteerInviteeCardDescription2 => 'Engage with Communities';

  @override
  String get patientHomePageVolunteerInviteeCardDescription3 => 'Support Health Initiatives';
}
