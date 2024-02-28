import 'app_localizations.dart';

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current இன் $total';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'Please enter the OTP sent to $mobileNumber';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'Resend in $time';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '$patient has an appointment';
  }

  @override
  String vgEmptyResults(String type) {
    return 'There are no ${type}s at present. Tap on "Add $type"';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return 'Search by $searchType ID, Name';
  }

  @override
  String get questionnaireTitle => 'கண் பரிசோதனை கேள்விகள்';

  @override
  String get questionnaireExitDialog =>
      'இந்த கேள்விகளுக்கு பதில் அளிப்பது உங்கள் கண் பிரச்சினைகளை கண்டறிய உதவும். நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

  @override
  String get visualAcuityTitle => 'பார்வைக் கூர்மை சோதனை';

  @override
  String get visualAcuityDescription =>
      'பார்வை கூர்மை சோதனை என்பது ஒரு குறிப்பிட்ட தூரத்திலிருந்து எழுத்து அல்லது சின்னத்தின் விவரங்களை நீங்கள் எவ்வாறு பார்க்கிறீர்கள் என்பதை சோதிக்கும் ஒரு கண் பரிசோதனையாகும். இந்த விரைவான சோதனையை இப்போது செய்யுங்கள்!';

  @override
  String get visualAcuityHowToPerform =>
      'பார்வை கூர்மை சோதனையை எவ்வாறு செய்வது?';

  @override
  String get visualAcuityViewStepsToPerform =>
      'பார்வை கூர்மை சோதனையை செய்வதற்கான படிகளை காண்க';

  @override
  String get visualAcuityCompletionDialog =>
      'முடிந்தது! இரு கண்களுக்குமான பார்வை தெளிவுச் சோதனை முடிந்துவிட்டது. அடுத்து உங்கள் கண் புகைப்படங்களை எடுக்க வேண்டும்.';

  @override
  String get visualAcuityExitDialog =>
      'உங்கள் கண் பிரச்சினையை புரிந்துகொள்ள பார்வை தெளிவுச் சோதனை முக்கியமானது. நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

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
  String get visualAcuityLeftEyeInstructions =>
      'கண்ணிமையை அழுத்தாமல், உங்கள் கையை வலது கண் மீது வைக்கவும். நீங்கள் கண்ணாடிகளை அணிந்திருந்தால், கையை கண்ணாடிகள் மீது வைக்கவும்.';

  @override
  String get visualAcuityRightEyeHeader => 'சோதனை 1 - வலது கண்';

  @override
  String get visualAcuityRightEyeInstructions =>
      'கண்ணிமையை அழுத்தாமல், உங்கள் கையை இடது கண் மீது வைக்கவும். நீங்கள் கண்ணாடிகளை அணிந்திருந்தால், கையை கண்ணாடிகள் மீது வைக்கவும்.';

  @override
  String get visualAcuityBothEyeHeader => 'சோதனை 3 - இரு கண்களும்';

  @override
  String get visualAcuityBothEyeInstructions =>
      'உங்கள் கண்களில் எந்தவொரு கண்ணையும் மூடாமல், அடுத்து தோன்றும் சின்னங்களை இரு கண்களும் பார்க்கவும்.';

  @override
  String get overlayHeaderDirection => 'திசை';

  @override
  String get overlayDescription =>
      'ஒவ்வொரு சின்னத்தின் திசைகளை நீங்கள் எவ்வாறு புரிந்துகொள்வது என்பதை இங்கே காண்க.';

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
  String get visualAcuityCarouselTitle =>
      'பார்வை துல்நோக்கு சோதனை செய்ய வேண்டிய படிகள்';

  @override
  String get eyeScanTitle => 'கண் ஸ்கேன்';

  @override
  String get eyeScanDescription =>
      'நீங்கள் மிக அருகில் உள்ளீர்கள்! இன்னும் ஒரு சோதனை மட்டுமே போகிறது. உங்கள் கண்களின் படங்களை அடுத்து பிடிக்கவும்.';

  @override
  String get eyeScanHowToPerform => 'உங்கள் கண்களை எப்படி ஸ்கேன் செய்வது?';

  @override
  String get eyeScanViewStepsToPerform =>
      'உங்கள் கண்களை ஸ்கேன் செய்வது எப்படி என்பதை அறிய படிகளை காண்க.';

  @override
  String get eyeScanExitDialog =>
      'கண் ஸ்கேன் உங்கள் கண் பிரச்சினை பற்றி மேலும் புரிந்துகொள்ள உதவுகிறது. நீங்கள் உண்மையில் வெளியேற விரும்புகிறீர்களா?';

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
  String get homeCarousal1Title =>
      '40 வயதுக்கும் மேற்பட்ட முதியோரில் பார்வைக் கட்டியின் பரவல் மற்றும் அதன் தொடர்புடைய அம்சங்கள்';

  @override
  String get homeCarousal1Description =>
      'பார்வைக் கட்டி மற்றும் அதனுடன் தொடர்புடைய அம்சங்களின் பரவல் குறித்த மாதிரி முறையை விளக்கும் வரைபடம்';

  @override
  String get homeCarousal2Title => 'கவனிக்க வேண்டிய 7 கண் பிரச்சனைகள்!';

  @override
  String get homeCarousal2Description =>
      '\r\nசோதிக்க வேண்டிய 7 கண் பிரச்சனைகள்: \r\n \r\n• கண்களின் சிவப்பு\r\n• கண்களில் நீர் கசிவு\r\n• கண்களில் வெள்ளை புள்ளிகள்';

  @override
  String get homeCarousal3Title =>
      'கண் பிரச்சனைகள். நீங்கள் பார்க்க முடியாத பலவுண்டு';

  @override
  String get homeCarousal3Description =>
      'ஆனால் ஒரு பார்வை பராமரிப்பு நிபுணர் முடியும்.\r\nகண் பிரச்சனைகள் அடையாளம் காணப்பட்டு\r\nபின்னாளில் சிக்கல்களை தவிர்க்க\r\nசரியான நேரத்தில் சிகிச்சை பெறுங்கள்';

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
  String get aboutUsDescription =>
      'சைட்கனெக்ட் என்பது ஒரு பயனர்-நட்பு கண் பராமரிப்பு செயலி ஆகும், இது சுய-மதிப்பீடு மற்றும் அழைப்பு மூலம் ஆலோசனை பெறுவதில் உதவுகிறது.\r\n\r\nஎங்கள் பணியின் மையத்தில் உள்ளது கண் பராமரிப்பை அனைவருக்கும் அணுகக்கூடியதாக மாற்றுவதற்கான உறுதிப்பாடு. இந்த செயலி வயது, தொழில்நுட்ப பின்னணி, மற்றும் சமூக அல்லது பொருளாதார பின்னணியைப் பொருத்தமட்டும் இல்லாமல், வாழ்க்கையின் அனைத்து நடைபாதைகளிலிருந்தும் பயனர்களால் அணுகக்கூடியதாக வடிவமைக்கப்பட்டுள்ளது. இந்த செயலி மற்றும் அதன் உள்ளடக்கம் ஆங்கிலம் மற்றும் பிற உள்ளூர் மொழிகளில் கிடைக்கின்றன. இது பயனர்களுக்கு அவர்களது கண்களை சுய-மதிப்பிட மற்றும் சமயோசிதமான சிகிச்சை ஆலோசனை பெற உதவுகிறது. இந்த செயலி புதிய தொழில்நுட்பங்கள் மற்றும் கருவிகளை பயன்படுத்தி எங்கள் பயனர்களுக்கு தனிப்பயன் கண் பராமரிப்பு தீர்வுகளை வழங்குகிறது. அவர்களது வாழ்க்கையை எளிதாக்குவதற்கு பல்வேறு அம்சங்களுடன் கூடியது.';

  @override
  String get aboutUsFeaturesTitle => 'அம்சங்கள்';

  @override
  String get aboutUsFeaturesDescription =>
      'உள்ளாப்பில் கண் சோதனை: இந்த ஆப் அதன் பயனர்களுக்கு சில கேள்விகளுக்கு பதிலளித்து தங்கள் கண்களை சுய-மதிப்பிட அனுமதிக்கிறது மற்றும் அடுத்த படிகள் மற்றும் நோக்கம் படுத்தப்படும் மருத்துவரை பரிந்துரைக்கிறது. பயனர்களின் நண்பர்களும் குடும்பத்தினரும் இதிலிருந்து பயன் பெறலாம். |நியமனம் முன்பதிவு: பயனர்கள் ஆன்லைனில் தொலைத்தொடர்பு மற்றும் மருத்துவமனையில் விஜிட்டுகளுக்கு மருத்துவர்களுடன் முன்பதிவு செய்ய முடியும், தங்கள் கண்களை சோதிக்க. |IVR அழைப்பு சேவைகள்: எங்கள் IVR அழைப்பு சேவைகள் ஆங்கிலத்திலும் உள்ளூர் மொழிகளிலும் கிடைக்கின்றன, இது அடிப்படை அம்ச கைபேசிகளுடன் பயனர்களுக்கு சேவை செய்கிறது. பயனர்கள் அவசரநிலையில் உடனடி உதவிக்காக அல்லது எந்தவொரு கண் சம்பந்தப்பட்ட சிக்கல்களுக்கும் எங்கள் கண் பராமரிப்பு நிபுணர்களை அழைக்க முடியும். அவர்கள் நியமனங்களை முன்பதிவு செய்ய அல்லது மேலும் விளக்கங்களைக் கேட்க அழைக்கலாம். |அருகிலுள்ள கிளினிக்குகள்: பயனர்கள் தங்களுக்கு அருகிலுள்ள கண் பராமரிப்பு கிளினிக்குகளை கண்டறியலாம். |மருந்துகள் மற்றும் அறிக்கைகள்: பயனர்களின் அனைத்து மருந்துகள் மற்றும் அறிக்கைகளை எளிதாக ஒரு இடத்திலிருந்து அணுகலாம். |கண் முகாம்கள்: பயனர்கள் தங்கள் நண்பர்கள் மற்றும் குடும்பத்தினரின் கண்களை இலவசமாக பரிசோதிக்க அருகிலுள்ள கண் முகாம்கள் பற்றிய தகவல்களை பெறலாம். |நினைவூட்டல்கள் மற்றும் எச்சரிக்கைகள்: பயனர்கள் தங்களுடைய வருகின்ற நியமனங்கள், மருந்துகள், அறிக்கைகள் முதலியவற்றிற்கான காலத்துக்கு ஏற்ற எச்சரிக்கைகளையும் நினைவூட்டல்களையும் பெறலாம். |பகிர்வு: பயனர்கள் இந்த செயலியையும், செயலியின் உள்ளே வழங்கப்பட்டுள்ள பயனுள்ள தகவல்களையும் தங்கள் நண்பர்கள் மற்றும் குடும்பத்தினருடன் பகிரலாம்.';

  @override
  String get aboutUsConclusion =>
      'இந்த செயலி முன்னணி கண் பராமரிப்பு நிபுணர்களின் உதவியுடன் உருவாக்கப்பட்டுள்ளது, எங்கள் பயனர் சமூகத்திற்கு சிறப்பாக சேவை செய்ய நாங்கள் அர்ப்பணிக்கப்பட்டுள்ளோம். ஒளிமயமான, ஆரோக்கியமான உலகை உருவாக்கும் எங்கள் பணியில் எங்களுடன் சேர்ந்து கொள்ளுங்கள். இன்றே Sightconnect செயலியை பதிவிறக்கி, பகிர்ந்து கொள்ளுங்கள்!';

  @override
  String get privacyPolicyDescription =>
      'எல்வி பிரசாத் கண் நிறுவனம், அதன் மூலதனம், இணைந்த மற்றும் சம்பந்தப்பட்ட நிறுவனங்கள் (ஒன்றாக \'LVPEI\', \'நாங்கள்\', \'எங்கள்\' என குறிப்பிடப்படுகிறது) உங்கள் தனிப்பட்ட தரவை உங்கள் கோட்பாடுகளின் படி செயலாக்குவதில் அர்ப்பணிப்புடன் உள்ளது. தனிப்பட்ட தரவுகளின் செயலாக்கத்தின் பற்றிய தகவலை இங்கே அறிவிக்கிறோம்.';

  @override
  String get privacyPolicyPersonalDataTitle =>
      'சேகரிக்கப்பட்ட / செயலாக்கப்பட்ட தனிப்பட்ட தரவு உறுப்புகள்:';

  @override
  String get privacyPolicyPersonalDataDescription =>
      'நீங்களும் உங்கள் தொடர்புகளும் வழங்கும் சொந்த தகவல்கள் என்பது போன்றவை (இவற்றில் சில தரவுகள் விருப்பத்தேர்வு ஆகும்) மொபைல் எண், பெயர், பிறந்த தேதி, பாலினம் (ஆண்/பெண்), முகவரி (பின் குறியீடு), நோயாளி ஐடி, தொடர்பு, கண் அவசர கேள்விக்குறிப்பு பதில்கள், கண் அவசர அறிக்கை, கண் படங்கள், உங்கள் கண் படத்துடன் குறிக்கப்பட்ட அறிகுறிகள், புகைப்படம், முகவரி விவரங்கள் என்பது முகவரி, மாவட்டப் பெயர் (மாவட்ட குறியீடு உட்பட), மாநிலப் பெயர் (மாநிலக் குறியீடு உட்பட), துணை மாவட்ட பெயர், கிராமப் பெயர், நகரப் பெயர், மின்னஞ்சல் முகவரி, குடும்பப் பெயர், மத்திய பெயர், இரத்த வகை, உயரம், எடை, தொழில், ஏபிஹேச் விவரங்கள் (உங்களால் வழங்கப்பட்டுள்ளன), உங்கள் செயலி அனுமதிகளை அடிப்படையில் கேமரா, ஜிபிஎஸ் இருப்பிடம், கேலரி அணுகும் வசதி, முழுமையான நெட்வொர்க் அணுகல், நெட்வொர்க் இணைப்புகளை காண்பது, சாதன தகவல்.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'செயலாக்க நோக்கம்: ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription =>
      'உங்கள் மற்றும் உங்கள் தொடர்புகளுக்கான (உங்களால் வழங்கப்பட்ட) கண் சம்பந்தப்பட்ட ஆன்லைன் சுகாதார சோதனைக்கு எங்கள் பயன்பாட்டை மற்றும் அதன் அம்சங்களை அணுக உதவுவதற்காக.|ஏதேனும் கண் சம்பந்தப்பட்ட நோய்/ஆரோக்கிய சிக்கல்கள் இருந்தால், LVPEI க்கு உட்பட்ட கண் நிபுணர்கள், கண் மருத்துவர்களுடன் தொடர்பு கொள்ள உதவுவதற்காக.|உங்கள் சுகாதார ஆலோசனை மற்றும் நியாயமானது போன்ற எந்தவொரு கண் சுகாதார தரவுகளையும் (அறிக்கைகள் உள்ளிட்ட) வழங்குவதற்கும், சுகாதார சம்பந்தப்பட்ட கவலைகளுக்காக உங்களை அல்லது உங்கள் தொடர்புகளை தொடர்பு கொள்ளவும்.|உங்கள் கண் சுகாதார தரவுகளை எங்கள் அங்கீகாரப்பட்ட LVPEI கண் மருத்துவர்கள் / மருத்துவர்களுடன் பகிர்ந்து, மேலும் அதேவை கிராம தலைவர் / மேயர் போன்றவர்களுடன் பகிர்ந்து (உங்கள் GPS இடத்தின் அடிப்படையில் பொருத்தமானது) சிகிச்சைக்காக LVPEI மருத்துவர்களை அடைய அல்லது தகவல் கொடுக்க முடியாத போது கண் பிரச்சினையின் தீவிரத்தைப் பொருத்து.|LVPEI உடன் இணைந்த கண் மருத்துவமனைகள் / கிளினிக்குகள் பட்டியலை வழங்குவதற்கும், ஏதேனும் கண் சம்பந்தப்பட்ட பிரச்சினைகள் இருந்தால் அணுக உங்களுக்கு உதவுவதற்கும்.|சரியான நியாயமானதை வழங்குவதற்கு எங்கள் இயந்திர கற்றல் அல்லது செயற்கை நுண்ணறிவு மாதிரிகளை பயிற்சி செய்ய உதவுவதற்காக கண் படம், கண் படம் சம்பந்தப்பட்ட அறிகுறிகள், வயது, இரத்த வகை, இடம் போன்ற தகவல்களை எந்தவொரு அடையாளங்களும் இல்லாமல் பயன்படுத்துவதற்கும்.|கண் ஆரோக்கியத்துக்கான விழிப்புணர்வு உருவாக்க, நினைவூட்டல், தொடர்பு, பிரச்சார மெயிலர்களை அனுப்புவதற்கும்.';

  @override
  String get privacyPolicyDataRecipientsTitle =>
      'தரவு பெறுநர்கள் / அணுகல் கிடைக்கும்:';

  @override
  String get privacyPolicyDataRecipientsDescription =>
      'உங்களால் பகிரப்படும் தனிப்பட்ட தரவு (உள்ளிட்ட நுண்ணறிவு சார்ந்த தனிப்பட்ட தரவுகள்) LVPEI பெர்சனல் போன்ற மருத்துவர்கள்/கண் மருத்துவர்கள், காண்போர் தொழில்நுட்பக்காரர்கள், காண்போர் காவலர்கள், LVPEI இன் பிரதிநிதிகள், உள்/வெளி தணிக்கையாளர்கள், தேவைப்படும் போது அரசு அதிகாரிகள், மற்றும் நமது அங்கீகாரம் பெற்ற சேவை வழங்குநர் Infosys அணுக முடியும்.';

  @override
  String get privacyPolicyDataTransferTitle =>
      'தரவு பரிமாற்றம் மற்றும் சேமிப்பு:';

  @override
  String get privacyPolicyDataTransferDescription =>
      'உங்களால் பகிரப்படும் தனிப்பட்ட தரவு நமது உள் சேவையகங்களில், நமது அங்கீகாரம் பெற்ற சேவை வழங்குநரின் சேவையகத்தில் இந்தியாவில் சேமிக்கப்படும்.';

  @override
  String get privacyPolicyDataSecurityTitle => 'தரவு பாதுகாப்பு:';

  @override
  String get privacyPolicyDataSecurityDescription =>
      'உங்கள் தனிப்பட்ட தரவைப் பாதுகாக்க ஏற்ற மற்றும் உரிய பாதுகாப்பு நடைமுறைகள் மற்றும் செயல்முறைகள் உட்பட நிர்வாக, உடல் பாதுகாப்பு, மற்றும் தொழில்நுட்ப கட்டுப்பாடுகளை LVPEI அறிமுகப்படுத்துகிறது.';

  @override
  String get privacyPolicyDataRetentionTitle => 'தரவு சேமிப்பு:';

  @override
  String get privacyPolicyDataRetentionDescription =>
      'சட்ட மற்றும் வணிக வேண்டுகோள்களின்படி இனி தேவைப்படாத தனிப்பட்ட தரவு பாதுகாப்பான முறையில் அகற்றப்படும்.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'தரவு சார்ந்த உரிமைகள்:';

  @override
  String get privacyPolicyDataSubjectRightsDescription =>
      'எப்போதும் உங்கள் தனிப்பட்ட தகவல்களை அணுகி, திருத்த உரிமை உள்ளது. எந்தவொரு விண்ணப்பங்கள், விசாரணைகள், கவலைகள் அல்லது கேள்விகள் இருந்தால், LV Prasad Office க்கு <LVPEI பொது மின்னஞ்சல் ஐடி வழங்க வேண்டும்> முகவரிக்கு மின்னஞ்சல் அனுப்புவதன் மூலம் அணுகலாம்.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'பின்வாங்குதல் உரிமை:';

  @override
  String get privacyPolicyRightToWithdrawDescription =>
      'உங்கள் சொந்த தரவுகளை உங்கள் சம்மதத்தின் அடிப்படையில் நாங்கள் செயலாக்கும் போது, எந்த நேரத்திலும் எதிர்காலத்திற்கான உங்கள் சம்மதத்தை உரிய டிபி சட்டங்களின் படி திரும்ப பெறலாம். இது உங்கள் திரும்பப் பெறுதலுக்கு முன் நடைபெற்ற எந்த செயலாக்க செயல்பாட்டின் சட்டப்பூர்வமானதை பாதிக்காது. உங்கள் சம்மதத்தை திரும்பப் பெற, நீங்கள் <LVPEI பொது மின்னஞ்சல் ID வழங்குவதற்கு> ஒரு மின்னஞ்சல் அனுப்பலாம்.';

  @override
  String get privacyPolicyAcknowledgement =>
      'கீழே உள்ள பொத்தானை அழுத்தும்போது, உங்கள் சொந்த தரவுகள் உள்ளிட்ட உணர்வுத்திறன் சார்ந்த சொந்த தரவுகள் மேற்கூறிய விதத்தில் சேகரிக்கப்பட்டு செயலாக்கப்படலாம் என்பதை நீங்கள் இங்கே உறுதியளிக்கிறீர்கள் மற்றும் மேற்கூறிய நோக்கங்களுக்காக அதற்கு சம்மதிக்கிறீர்கள். உங்களால் பகிரப்படும் எந்த சொந்த தரவுகளும் (உணர்வுத்திறன் சார்ந்த தரவுகள் உட்பட) அவை உங்கள் அல்லாத பிறரிடமிருந்து உரிய சம்மதத்தை பெற்று பகிரப்படுவதாகும் என்றும் நீங்கள் உறுதியளிக்கிறீர்கள். மேலும், மேற்கூறிய நோக்கங்களுக்கு அவசியமில்லாத எந்த சொந்த தரவையும் (உணர்வுத்திறன் சார்ந்த தரவு உட்பட) பகிர மாட்டீர்கள் என்றும் நீங்கள் உறுதியளிக்கிறீர்கள். சிறுவர்களின் சொந்த தரவை அவர்களின் பெற்றோர் / சட்டபூர்வ பாதுகாவலராக நீங்கள் பகிரும்போது, மேலே குறிப்பிடப்பட்டபடி அவர்களின் தரவு சேகரிப்பு மற்றும் செயலாக்கத்திற்கு நீங்கள் சம்மதிக்கிறீர்கள்.';

  @override
  String get privacyPolicyBottomAppBarLabel =>
      'தனியுரிமைக் கொள்கை ஏற்கப்பட்டது';

  @override
  String get helpAndSupportReachTitle => 'எங்களை அடையுங்கள்';

  @override
  String get assessmentAndTestsSubtitle =>
      'இதுவரை செய்யப்பட்ட மதிப்பீடுகளின் ஒரு விரைவான பார்வை இதோ.';

  @override
  String get assessmentAndTestsReportsNotFound => 'அறிக்கைகள் கிடைக்கவில்லை';

  @override
  String get eyeAssessmentTitle => 'கண் மதிப்பீடு';

  @override
  String get eyeAssessmentSubtitle =>
      'உங்கள், உங்கள் நண்பர்கள் மற்றும் குடும்ப உறுப்பினர்களின் கண் பிரச்சினைகளை சில படிகளில் மதிப்பீடு செய்யுங்கள். உங்கள் கண் பிரச்சினைகள் தொடர்பான அறிகுறிகளைப் புரிந்துகொள்ள ஒரு சில கேள்விகள் கேட்கப்படும், அதைத் தொடர்ந்து காட்சி சோதனைகள் செய்யப்படும்.';

  @override
  String get eyeAssessmentGetMemberLabel => 'உறுப்பினரை மாற்றவும்';

  @override
  String get eyeAssessmentProceedButton => 'தொடரவும்';

  @override
  String get eyeAssessmentBrightnessLabel =>
      'பிரகாசம் 80% க்கு அமைக்கப்பட்டுள்ளது';

  @override
  String get eyeAssessmentBrightnessError =>
      'தயவுசெய்து பிரகாசம் கைமுறையாக 80% க்கு அமைக்கவும்';

  @override
  String get eyeAssessmentUnsupportedQuestion =>
      'கேள்வி இன்னும் ஆதரிக்கப்படவில்லை';

  @override
  String get eyeAssessmentPopUpHeading => 'மதிப்பீடு';

  @override
  String get eyeAssessmentPopUpBody =>
      'உங்களுக்கு உங்கள் கண்களுக்கு பிரச்சனை உள்ளதுவா?';

  @override
  String get eyeAssessmentPopUpYesButton => 'ஆம்';

  @override
  String get eyeAssessmentPopUpNoButton => 'இல்லை';

  @override
  String get visualAcuityTestInstructionOne =>
      'நல்ல வெளிச்சமான இடத்தில் வசதியாக உட்காரவும். பிரகாசத்தில் திடீர் மாற்றத்தை நீங்கள் உணரலாம், உகந்த முடிவை வழங்க திரை தானாகவே பிரகாசமாக அமைக்கப்பட்டுள்ளது என்று கவலைப்பட வேண்டாம்';

  @override
  String get visualAcuityTestInstructionTwo =>
      'நீங்கள் சாதனத்தை கண் மட்டத்தில் வைத்திருக்கிறீர்கள் என்பதை உறுதிப்படுத்திக் கொள்ளுங்கள். நீங்கள் கண்ணாடிகள் அல்லது காண்டாக்ட் லென்ஸ்களை அணிந்தால், அவற்றை அணிந்து கொள்ளுங்கள்.';

  @override
  String get visualAcuityTestInstructionThree =>
      'திரையில் இருந்து 40 சென்டிமீட்டர் தொலைவில் இருங்கள். சோதனைத் திரையில் தூரம் காட்டப்படும்.';

  @override
  String get visualAcuityTestInstructionFour =>
      'நீங்கள் கண்ணாடியுடன் சோதனை செய்கிறீர்கள் என்றால், ஒரு கண் மட்டுமே சோதிக்கப்படும்போது கண்ணாடியின் மீது உங்கள் கையால் ஒரு கண்ணை மூடுங்கள்.';

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
  String get eyeAssessmentCompleteSteps =>
      'முடிவுகளைக் காண அனைத்து படிகளையும் முடிக்கவும்';

  @override
  String get eyeAssessmentToolTip =>
      'ஃபிளாஷ் அணைக்கப்பட்டு, பிரகாசம் 80 சதவீதமாக அமைக்கப்பட்டுள்ளது என்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionOne =>
      'முகத்தை சட்டகத்தின் மீது சரியாக வைத்து கேமராவைப் பிடித்துக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionTwo =>
      'உங்கள் தொலைபேசியின் பின்புற கேமராவைப் பயன்படுத்தி கண்களைப் படமெடுங்கள்.';

  @override
  String get eyeScanInstructionThree =>
      'ஃபிளாஷ் இயக்கத்தில் நன்கு ஒளிரும் பகுதியில் இருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get eyeScanInstructionFour =>
      'சிறந்த பிடிப்பு மற்றும் தெளிவுக்காக, படத்தை கிளிக் செய்ய வேறு யாரையாவது அழைக்கவும்.';

  @override
  String get eyeScanInstructionFive =>
      'படம் எடுக்கும் போது ஒரு கண்ணை உங்கள் கையால் மூடி, மற்ற கண்ணால் நேராகப் பாருங்கள்.';

  @override
  String get eyeScanInstructionSix =>
      'படத்தை தொடங்குவதற்கு முன்பு பலகையின் உள்ளே கண்ணை மையப்படுத்துங்கள்.';

  @override
  String get eyeScanInstructionSeven =>
      'ஃபிளாஷ் அணைக்கப்படும் வரை கண்களைத் திறந்து வைத்திருங்கள், ஒரு \'பீப்\' ஒலி புகைப்படத்தின் முடிவைக் குறிக்கும் வரை.';

  @override
  String get eyeAssessmentNote =>
      'குறிப்பு: இங்கே காட்டப்பட்டுள்ள படங்கள் குறிப்பிற்காக மட்டுமே. நிஜ வாழ்க்கையில் அவர்கள் ஒரே மாதிரியாக தோன்றாமல் இருக்கலாம்.';

  @override
  String get agreeButton => 'நான் ஒப்புக் கொள்கிறேன்.';

  @override
  String get consentPageCheckbox =>
      'விதிமுறைகளையும் நிபந்தனைகளையும் நான் ஏற்றுக்கொள்கிறேன்.';

  @override
  String get confirmButton => 'உறுதிப்படுத்தல்';

  @override
  String get discardButton => 'தூக்கி எறியுங்கள்.';

  @override
  String get imageNotCapturedToastMessage => 'படம் பிடிக்கப்படவில்லை';

  @override
  String get eyeCaptureCompletionDialogHeading => 'சோதனை முடிந்தது';

  @override
  String get eyeCaptureCompletionDialogBody =>
      'நீங்கள் சோதனையை முடித்துவிட்டீர்கள். முடிவைக் காண கீழே உள்ள பொத்தானைக் கிளிக் செய்க.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'முடிவுகளைக் காண்க';

  @override
  String get eyeCaptureTriageSavedLocally =>
      'டிரையஜ் உள்ளூர் அளவில் சேமிக்கப்பட்டது';

  @override
  String get visualAcuityTestResults => 'விஷுவல் அக்விட்டி சோதனை முடிவுகள்';

  @override
  String get assessmentResultPageMoreDetailsText =>
      'மேலும் விவரங்களுக்கு அருகிலுள்ள பார்வை மையத்தைப் பார்வையிடவும். எங்கள் பார்வை தொழில்நுட்ப வல்லுநரிடம் பேச கட்டணமில்லா எண்ணை அழைக்கவும்.';

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
  String get assessmentResultCardAssessmentQuestions =>
      'மதிப்பாய்வு\r\nகேள்விகள்';

  @override
  String get assessmentResultCardAcuityTest => 'கண்\r\nசரிபார்க்கப்பட்டுள்ளது';

  @override
  String get assessmentResultCardEyeScan => 'கண்\r\nஸ்கேன்';

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
  String get homeTriageCardTitle =>
      'எங்கள் கண்கள் மிகவும் மதிப்பிடப்படுகின்றன.';

  @override
  String get homeTriageCardDescription =>
      'கண்களை விடுத்துத் தீர்வுகளை முன்னேற்றியும் கைகொள்ளுங்கள்.';

  @override
  String get homeTriageCardTest => 'கண் சோதனையைத் தொடங்குங்கள்';

  @override
  String get homeHelplineCardDescrition =>
      'எப்போதும் விழிப்புணர்வு இல்லாத நேரத்தில், இது அவசர ஹெல்ப்லைனை அழைக்கவும்';

  @override
  String get inviteCardTitle => 'மற்றவர்களை அழைக்கவும்';

  @override
  String get inviteCardDescription =>
      '5 நண்பர்களையும் குடும்ப உறவினர்களையும் அழைக்கவும், அவர்கள் தங்களது கண்களை மதிப்பிட மற்றும் விடுத்துக் கொள்ள முடியும்.';

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
  String get triageAlerDialogBoxTitle =>
      'மீண்டும் செய்ய படிகளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get scannerTitle => 'ஸ்கேனர்';

  @override
  String get visualAcuityTestDistanceInstruction =>
      'கேமிரடோ சக்கரம் 40 ஆண்டுகளுக்கு முன்பு. நான். தூர ராக்.';

  @override
  String get somethingWentWrong => 'ஏதோ தவறு நடந்துவிட்டது.';

  @override
  String get triageUpdatedSuccessfully =>
      'ட்ரைஜ் வெற்றிகரமாக புதுப்பிக்கப்பட்டது';

  @override
  String get noPreviewAvailable => 'முன்னோட்டம் இல்லை';

  @override
  String get privacyPolicyTitle => 'தனியுரிமை மற்றும் தரவு பாதுகாப்பு';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle =>
      'பின்வரும் நோக்கங்களுக்காக நீங்கள் வழங்கிய தனிப்பட்ட தரவை நாங்கள் செயலாக்குகிறோம்ஃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose =>
      'நீங்கள் கேமராவுக்கு மிக அருகில் இருக்கிறீர்கள், கேமராவை கண்ணிலிருந்து 40 சென்டிமீட்டர் தொலைவில் வைக்கவும்.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar =>
      'நீங்கள் கேமராவிலிருந்து வெகு தொலைவில் இருக்கிறீர்கள், கேமராவை கண்ணிலிருந்து 40 செமீ தொலைவில் வைக்கவும்.';

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
  String get eyeBoxText =>
      'கண்களைச் சுற்றி பச்சை நிறப் பெட்டிகள் தோன்றும் வரை தயவுசெய்து படத்தை சரிசெய்து வைக்கவும். கண்ணை நெருக்கமாக நகர்த்தி, பெட்டியின் 40 சதவீதம் கண்ணால் மூடப்பட்டிருப்பதை உறுதிப்படுத்திக் கொள்ளுங்கள்.';

  @override
  String get bottomNavItemServices => 'சேவைகள்';

  @override
  String get smsContent =>
      'ஏய்! என் கண்களைக் கவனித்துக் கொள்ள நான் சைட் கனெக்ட் பயன்பாட்டைப் பயன்படுத்துகிறேன், நீங்களும் பயன்படுத்த வேண்டும்! உங்கள் கண்களை மதிப்பீடு செய்து, சைட் கனெக்ட் செயலி மூலம் சரியான நேரத்தில் சிகிச்சையைப் பெறுங்கள். இது ஒரு தனித்துவமான பயன்பாடாகும், இது உங்கள் கையில் தடுப்பு கண் பராமரிப்பைக் கொண்டுவருகிறது. இப்போது அதைப் பெறுங்கள்ஃ https://healthconnecttech.org/install';

  @override
  String get emailSubject =>
      'சைட் கனெக்ட் செயலியின் மூலம் உங்கள் கண் ஆரோக்கியத்திற்கு முன்னுரிமை கொடுங்கள்!';

  @override
  String get recentServicesCataractEyeTest => 'கண்புரை கண் பரிசோதனை';

  @override
  String get recentServicesRedEyeTest => 'சிவப்பு கண் பரிசோதனை';

  @override
  String get poweredByText => 'இதன் மூலம் இயக்கப்படுகிறது';

  @override
  String get digitalHealthCard => 'டிஜிட்டல் பொது சுகாதார அடுக்கு';

  @override
  String get inviteNowText => 'இப்போது அழைக்கவும்';

  @override
  String get chatBotDefaultQuerySuggestions =>
      'கண் மதிப்பீட்டைத் தொடங்குங்கள் | பொதுவான கண் பிரச்சினைகள் | சிறந்த கண் பார்வைக்கு உதவிக்குறிப்புகள்';

  @override
  String get chatBotWelcomeMessage =>
      'வணக்கம், இன்று நான் உங்களுக்கு எப்படி உதவ முடியும்?';

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
  String get triageReportInstructions =>
      'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\r\n\r\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.';

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
  String get triageEyeScanUpdatedSuccessfully =>
      'Eye scan updated successfully';

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
  String get vaDistanceToFaceInstruction =>
      'Please ensure that the camera is 40cm away from your face';

  @override
  String get vaBringFaceInsideBox => 'Bring your face inside the box';

  @override
  String get startAssessment => 'Start Assessment';

  @override
  String get optoAddPatientInfo => 'Add Patient Information';

  @override
  String get loggedOutMessage => 'You have been logged out';

  @override
  String get optoLogoutError =>
      'Apologies, we encountered a logout error in the mobile app.';

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
  String get optoImproveApp =>
      'We would like your feedback to improve our application';

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
  String get optoCheckInternet =>
      'Please check your internet connection and try again';

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
  String get patientEarlyConsultationRecommended =>
      'Early Consultation Recommended';

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
  String get patientLogoutError =>
      'Apologies, we encountered a logout error in the mobile app.';

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
  String get vgShouldNotContainSpecialCharacter =>
      'Should not contain any special character';

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
  String get vgEyeAssessmentDescription =>
      'Get the eye problems of you, your friends, and family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.';

  @override
  String get vgLogoutMessage => 'You have been logged out';

  @override
  String get vgLogoutErrorMessage =>
      'Apologies, we encountered a logout error in the mobile app.';

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
  String get vtLogoutError =>
      'Apologies, we encountered a logout error in the mobile app.';

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
  String get secureRestrictedAccess =>
      'For security reasons, access to this app is restricted on jailbroken devices.';

  @override
  String get secureExitApp => 'Exit App';

  @override
  String get sharedErrorPageIssues =>
      'We are facing some issues. Please try again later.';

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
  String get emptyPatientsInfo =>
      'Start searching for patients to view their details .. ';

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
  String get vtNotRegistered =>
      'You are not registered in the system. Please give a missed call to';

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
  String get vgAddPhotoInstruction =>
      'Add a photo of the Event which\r\nwill be shown as thumbnail';

  @override
  String get vgAddressDetails => 'Address Details';

  @override
  String get vgVenueName => 'Venue Name';

  @override
  String get vgVenueNameError => 'Please enter Venue name';

  @override
  String get vgVenueNameSpecialCharError =>
      'Should not contain any special character';

  @override
  String get vgPincode => 'Pincode';

  @override
  String get vgPincodeError => 'Only 6 digit pincode allowed';

  @override
  String get vgCityTownVillage => 'City/Town/Village';

  @override
  String get vgCityTownVillageError => 'Please enter City/Town/Village name';

  @override
  String get vgCityTownVillageSpecialCharError =>
      'Should not contain any special character';

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
  String get vgNoPatientRegistered =>
      'No Patient with Name is registered. Click on the  Register Patient.';

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
  String get vgErrorFetchingTeammatesDetails =>
      'Error fetching teammates details';

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
  String get vgEndTimeGreaterThanStartTime =>
      'End time should be greater than start time';

  @override
  String get vgNoPatientsPresent =>
      'There are no patients at present. Tap on "Add Patient"';
}
