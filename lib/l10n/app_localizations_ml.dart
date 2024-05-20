import 'app_localizations.dart';

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} / ${total}';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'അയച്ച ഒടിപി ദയവായി നൽകുക ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'വീണ്ടും അയയ്ക്കുക ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} രോഗിക്ക് ഒരു അപ്പോയിന്റ്മെന്റ് ഉണ്ട്';
  }

  @override
  String vgEmptyResults(String type) {
    return 'നിലവിൽ തരങ്ങളൊന്നുമില്ല. ആഡ് ${type} ബട്ടൺ അമർത്തുക.';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ഐഡി, പേര് എന്നിവ ഉപയോഗിച്ച് തിരയുക';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'In case of emergency, please call ${tollFreeNumber}';
  }

  @override
  String get questionnaireTitle => 'നേത്ര അസ്സെസ്സ്മെന്റ് ചോദ്യങ്ങൾ';

  @override
  String get questionnaireExitDialog => 'ഈ ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകുന്നത് നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നങ്ങൾ തിരിച്ചറിയാൻ സഹായിക്കും. അസ്സെസ്സ്മെന്റ് ഉപേക്ഷിക്കാൻ നിങ്ങൾ ആഗ്രഹിക്കുന്നുവെന്ന് ഉറപ്പാണോ?';

  @override
  String get visualAcuityTitle => '\r\n\r\nകാഴ്ച പ്രവർത്തന പരിശോധന';

  @override
  String get visualAcuityDescription => 'ഒരു പ്രത്യേക അകലത്തിൽ നിന്ന് ഒരു അക്ഷരത്തിൻ്റെയോ ചിഹ്നത്തിൻ്റെയോ വിശദാംശങ്ങൾ നിങ്ങൾ എത്ര നന്നായി കാണുന്നുവെന്ന് പരിശോധിക്കുന്ന ഒരു നേത്രപരിശോധനയാണിത് . ഈ പരിശോധന ഇപ്പോൾ ചെയ്യുക!';

  @override
  String get visualAcuityHowToPerform => '\r\n\r\nകാഴ്ച പരിശോധന എങ്ങനെ നടത്താം?';

  @override
  String get visualAcuityViewStepsToPerform => 'കാഴ്ച പരിശോധന നടത്തുന്നതിനുള്ള ഘട്ടങ്ങൾ';

  @override
  String get visualAcuityCompletionDialog => 'കാഴ്ച പരിശോധന പൂർത്തിയായിരിക്കുന്നു. അടുത്തതായി നിങ്ങളുടെ കണ്ണിന്റെ ഫോട്ടോ എടുക്കലാണ്.';

  @override
  String get visualAcuityExitDialog => 'നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നത്തെക്കുറിച്ച് മനസിലാക്കാൻ കാഴ്ച പരിശോധന പ്രധാനമാണ്. ഈ പരിശോധന ഉപേക്ഷിക്കാൻ നിങ്ങൾ ആഗ്രഹിക്കുന്നുവെന്ന് ഉറപ്പാണോ?';

  @override
  String get swipeGestureTab => 'സ്വൈപ്പ് ജെസ്ചർ';

  @override
  String get voiceAssistTab => 'വോയിസ് അസ്സിസ്റ്റ്';

  @override
  String get distanceString => 'അകലം';

  @override
  String get leftEyeString => 'ഇടത് കണ്ണ്';

  @override
  String get rightEyeString => 'വലത് കണ്ണ്';

  @override
  String get bothEyesString => 'രണ്ട് കണ്ണുകളും';

  @override
  String get visualAcuityLeftEyeHeader => ' പരിശോധന 2-ഇടത് കണ്ണ്';

  @override
  String get visualAcuityLeftEyeInstructions => 'കൺപോളയിൽ അമർത്താതെ നിങ്ങളുടെ വലത് കണ്ണ് കൈകൊണ്ട് മൂടുക. നിങ്ങൾ കണ്ണട ധരിച്ചിട്ടുണ്ടെങ്കിൽ കണ്ണടയ്ക്ക് മുകളിൽ കൈ വയ്ക്കുക.';

  @override
  String get visualAcuityRightEyeHeader => ' പരിശോധന 1-വലത് കണ്ണ്';

  @override
  String get visualAcuityRightEyeInstructions => 'കൺപോളയിൽ അമർത്താതെ ഇടത് കണ്ണ് കൈകൊണ്ട് മൂടുക. നിങ്ങൾ കണ്ണട ധരിച്ചിട്ടുണ്ടെങ്കിൽ കണ്ണടയ്ക്ക് മുകളിൽ കൈ വയ്ക്കുക.';

  @override
  String get visualAcuityBothEyeHeader => ' പരിശോധന 3-രണ്ട് കണ്ണുകളും';

  @override
  String get visualAcuityBothEyeInstructions => 'ഇരു കണ്ണുകളും മറയ്ക്കാതെ അടുത്തതായി ദൃശ്യമാകുന്ന ചിഹ്നങ്ങൾ നോക്കുക.';

  @override
  String get overlayHeaderDirection => 'ദിശ';

  @override
  String get overlayDescription => 'ഓരോ ചിഹ്നത്തിന്റെയും ദിശ ഇങ്ങനെ മനസ്സിലാക്കാം.';

  @override
  String get overlaySymbolDirectionText => 'ചിഹ്നത്തിൻറെ ദിശഃ';

  @override
  String get directionDown => 'താഴേക്ക്.';

  @override
  String get directionUp => 'മുകളിലേക്ക്.';

  @override
  String get directionLeft => 'ഇടത്തോട്ട്';

  @override
  String get directionRight => 'വലത്തോട്ട്';

  @override
  String get dontShowAgainString => 'ഇനി മുതൽ കാണിക്കരുത്';

  @override
  String get visualAcuityCarouselTitle => 'കാഴ്ച പരിശോധന നടത്തുന്നതിനുള്ള ഘട്ടങ്ങൾ';

  @override
  String get eyeScanTitle => 'നേത്ര സ്കാൻ';

  @override
  String get eyeScanDescription => 'അടുത്തതായി നിങ്ങളുടെ കണ്ണുകളുടെ ഫോട്ടോ എടുക്കുക.';

  @override
  String get eyeScanHowToPerform => 'നിങ്ങളുടെ കണ്ണുകൾ എങ്ങനെ സ്കാൻ ചെയ്യാം?';

  @override
  String get eyeScanViewStepsToPerform => 'കണ്ണുകൾ സ്കാൻ ചെയ്യുവാനുള്ള ഘട്ടങ്ങൾ.';

  @override
  String get eyeScanExitDialog => 'നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നത്തെക്കുറിച്ച് കൂടുതൽ മനസ്സിലാക്കാൻ കണ്ണിൻറെ സ്കാൻ സഹായിക്കും. ഈ സ്കാൻ ഉപേക്ഷിക്കാൻ നിങ്ങൾ ആഗ്രഹിക്കുന്നുവെന്ന് ഉറപ്പാണോ?';

  @override
  String get captureRightEyeString => 'വലതു കണ്ണിന്റെ ഫോട്ടോ എടുക്കുക';

  @override
  String get captureLeftEyeString => 'ഇടത് കണ്ണിന്റെ ഫോട്ടോ എടുക്കുക';

  @override
  String get skipButton => 'സ്കിപ്';

  @override
  String get startTestText => 'പരിശോധന ആരംഭിക്കുക';

  @override
  String get continueButton => 'തുടരുക.';

  @override
  String get startButton => 'ആരംഭിക്കുക.';

  @override
  String get nextButton => 'അടുത്തത്';

  @override
  String get proceedButton => 'തുടരുക';

  @override
  String get yesButton => 'അതെ.';

  @override
  String get noButton => 'ഇല്ല.';

  @override
  String get exitButton => 'എക്സിറ്റ്';

  @override
  String get okButton => 'ശരി.';

  @override
  String get knowMoreButton => 'കൂടുതൽ അറിയുക';

  @override
  String get seeAllButton => 'എല്ലാം കാണുക';

  @override
  String get tryAgainButton => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get shareNowButton => 'ഷെയർ';

  @override
  String get retryButton => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get homeCarousal1Title => '40 വയസും അതിൽ കൂടുതലുമുള്ളവർക്കിടയിൽ തിമിര വ്യാപനവും അതുമായി ബന്ധപ്പെട്ട ഘടകങ്ങളും';

  @override
  String get homeCarousal1Description => 'തിമിരത്തിൻറെയും അനുബന്ധ ഘടകങ്ങളുടെയും വ്യാപനത്തെക്കുറിച്ചുള്ള സാമ്പിൾ പ്രക്രിയയുടെ ആസൂത്രിത അവതരണം';

  @override
  String get homeCarousal2Title => 'ശ്രദ്ധിക്കേണ്ട 7 നേത്ര പ്രശ്നങ്ങൾ';

  @override
  String get homeCarousal2Description => '\r\n\r\n പരിശോധിക്കേണ്ട 7 നേത്ര പ്രശ്നങ്ങൾ:\r\n\r\n \r\n\r\n• കണ്ണ് പ്രശ്നങ്ങൾഃ കണ്ണ് ചുവപ്പ്;\r\n\r\n• ഈറൻ കണ്ണുകൾ;\r\n\r\n• കണ്ണുകളിൽ വെളുത്ത പാടുകൾ';

  @override
  String get homeCarousal3Title => 'നേത്ര പ്രശ്നങ്ങൾ. നിങ്ങൾക്ക് കാണാൻ കഴിയാത്ത നിരവധി കാര്യങ്ങളുണ്ട്.';

  @override
  String get homeCarousal3Description => 'എന്നാൽ ഒരു നേത്ര പരിശോധന വിദഗ്ധന് കഴിയും.\r\n\r\n സങ്കീർണതകൾ ഒഴിവാക്കാൻ കണ്ണിലെ പ്രശ്നങ്ങൾ തിരിച്ചറിയുകയും കൃത്യസമയത്ത്\r\n\r\n ചികിത്സിക്കുകയും ചെയ്യുക.';

  @override
  String get myConnectionsTitle => 'അംഗങ്ങൾ';

  @override
  String get myConnectionsAddMember => 'അംഗങ്ങളെ ചേർക്കുക';

  @override
  String get myConnectionsServiceNotAvailable => 'ഈ സേവനം ലഭ്യമല്ല';

  @override
  String get myConnectionsAdd => 'ചേർക്കുക';

  @override
  String get recentServicesTitle => 'റീസെന്റ് സർവീസസ്';

  @override
  String get recentServicesEyeAssessment => 'നേത്ര അസ്സെസ്സ്മെന്റ്';

  @override
  String get recentServicesVisualAcuityTest => 'കാഴ്ച പരിശോധന';

  @override
  String get nearbyVisionCentersTitle => 'സമീപത്തുള്ള കാഴ്ച പരിശോധന കേന്ദ്രങ്ങൾ';

  @override
  String get nearbyVisionCentersNotFound => 'കാഴ്ച പരിശോധന കേന്ദ്രങ്ങളൊന്നും ലഭ്യമല്ല';

  @override
  String get tollFreeNumber => 'ടോൾ ഫ്രീ നമ്പർ';

  @override
  String get appDrawerTitle => 'മെനു';

  @override
  String get appDrawerHome => 'ഹോം';

  @override
  String get appDrawerLanguageSelection => 'ഭാഷ സെലെക്ഷൻ';

  @override
  String get appDrawerAccessibility => 'പ്രവേശനക്ഷമത ക്രമീകരണങ്ങൾ';

  @override
  String get appDrawerMyProfile => 'എൻ്റെ പ്രൊഫൈൽ';

  @override
  String get appDrawerAssessmentsAndTests => 'നിഗമനങ്ങളും പരിശോധനകളും';

  @override
  String get appDrawerScanner => 'QR കോഡ് സ്കാനർ';

  @override
  String get appDrawerAboutUs => 'ഞങ്ങളെക്കുറിച്ച്';

  @override
  String get appDrawerPrivacyPolicy => 'പ്രൈവസി ആൻഡ് ടാറ്റ പോളിസി';

  @override
  String get appDrawerHelpAndSupport => 'ഹെല്പ് ആൻഡ് സപ്പോർട്ട്';

  @override
  String get appDrawerSignOut => 'സൈൻ ഔട്ട്';

  @override
  String get aboutUsDescription => 'കോളിലൂടെ സ്വയം വിലയിരുത്തലിനും കൂടിയാലോചനകൾക്കും സഹായിക്കുന്ന ഒരു ഉപയോക്തൃ-സൌഹൃദ നേത്ര സംരക്ഷണ ആപ്ലിക്കേഷനാണ് SightConnect. എല്ലാവർക്കും ഐക്കെയർ ലഭ്യമാക്കാനുള്ള പ്രതിബദ്ധതയാണ് ഞങ്ങളുടെ ദൌത്യത്തിന്റെ കാതൽ. അവരുടെ പ്രായം, സാങ്കേതിക പശ്ചാത്തലം, സാമൂഹിക അല്ലെങ്കിൽ സാമ്പത്തിക പശ്ചാത്തലം എന്നിവ കണക്കിലെടുക്കാതെ ജീവിതത്തിന്റെ എല്ലാ മേഖലകളിലും നിന്നുള്ള ഉപയോക്താക്കളെ ഉൾക്കൊള്ളുന്നതും ആക്സസ് ചെയ്യാവുന്നതുമായ രീതിയിലാണ് ആപ്ലിക്കേഷൻ രൂപകൽപ്പന ചെയ്തിരിക്കുന്നത്. ആപ്ലിക്കേഷനും അതിന്റെ ഉള്ളടക്കവും ഇംഗ്ലീഷിലും മറ്റ് പ്രാദേശിക ഭാഷകളിലും ലഭ്യമാക്കിയിട്ടുണ്ട്. ഉപയോക്താക്കൾക്ക് അവരുടെ കണ്ണുകൾ സ്വയം വിലയിരുത്താനും സമയബന്ധിതമായ ചികിത്സാ ഉപദേശം നേടാനും ഇത് സഹായിക്കുന്നു. ഞങ്ങളുടെ ഉപയോക്താക്കൾക്ക് വ്യക്തിഗത നേത്ര സംരക്ഷണ പരിഹാരങ്ങൾ നൽകുന്നതിന് ഏറ്റവും പുതിയ സാങ്കേതികവിദ്യകളും ഉപകരണങ്ങളും ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നു. അവരുടെ ജീവിതം എളുപ്പമാക്കുന്നതിന് വൈവിധ്യമാർന്ന സവിശേഷതകളോടെയാണ് ഇത് വരുന്നത്.';

  @override
  String get aboutUsFeaturesTitle => 'ഫീച്ചറുകൾ';

  @override
  String get aboutUsFeaturesDescription => 'ആപ്പിലെ കണ്ണ് പരിശോധന: ആപ്പ് ഉപയോക്താക്കൾക്ക് ചില ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകി സ്വന്തം കണ്ണുകൾ സ്വയം പരിശോധിക്കാനും, അടുത്ത ഘട്ടങ്ങൾ എന്തെന്നും സന്ദർശിക്കേണ്ട ഡോക്ടറെ എന്തെന്നും യോജിക്കപ്പെട്ട ശുപാർശകൾ നേടാനും അനുവദിക്കുന്നു. ഉപയോക്താക്കളുടെ കുടുംബം ഒപ്പം സുഹൃത്തുക്കളും ഇതിലൂടെ ഗുണം പ്രാപിക്കും. |അപ്പോയിന്റ്മെന്റ് ബുക്കിംഗ്: ഉപയോക്താക്കൾക്ക് ഡോക്ടറുമായി ഓൺലൈൻ ടെലികൺസൾട്ടേഷനുകളും ക്ലിനിക്കിൽ സന്ദർശനങ്ങളും ബുക്ക് ചെയ്യാം. |IVR കോൾ സേവനങ്ങൾ: ഞങ്ങളുടെ IVR കോൾ സേവനങ്ങൾ ഇംഗ്ലീഷിലും പ്രാദേശിക ഭാഷകളിലും ലഭ്യമാണ്, ഇത് ബേസിക് ഫീച്ചർ ഫോണുകളുള്ള ഉപയോക്താക്കൾക്കും സഹായകമാണ്. അടിയന്തര സഹായത്തിനോ കണ്ണിന്റെ ഏതെങ്കിലും പ്രശ്നങ്ങൾക്കോ ഉടൻ സഹായം തേടാൻ ഉപയോക്താക്കൾക്ക് ഞങ്ങളുടെ കണ്ണ് പരിചരണ വിദഗ്ദ്ധരെ വിളിക്കാം. അപ്പോയിന്റ്മെന്റുകൾ ബുക്ക് ചെയ്യാനോ കൂടുതൽ വ്യക്തത തേടാനോ അവർക്ക് വിളിക്കാം. |സമീപത്തെ ക്ലിനിക്കുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ സമീപത്തുള്ള കണ്ണ് പരിചരണ ക്ലിനിക്കുകൾ കണ്ടെത്താം. |പ്രസ്ക്രിപ്ഷനുകൾ റിപ്പോർട്ടുകൾ: ഉപയോക്താക്കളുടെ എല്ലാ പ്രസ്ക്രിപ്ഷനുകളും റിപ്പോർട്ടുകളും ഒരു സ്ഥലത്ത് എളുപ്പത്തിൽ ലഭ്യമാണ്. |കണ്ണ് ക്യാമ്പുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ സുഹൃത്തുക്കളുടെയും കുടുംബത്തിന്റെയും കണ്ണുകൾ സൗജന്യമായി പരിശോധിക്കാനുള്ള സമീപത്തെ കണ്ണ് ക്യാമ്പുകളുടെ വിവരങ്ങൾ നേടാം. |ഓർമ്മപ്പെടുത്തലുകൾ അലർട്ടുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ വരാനിരിക്കുന്ന അപ്പോയിന്റ്മ മെന്റുകൾ, മരുന്നുകൾ, റിപ്പോർട്ടുകൾ എന്നിവയെ സംബന്ധിച്ച സമയോചിതമായ അലർട്ടുകളും ഓർമ്മപ്പെടുത്തലുകളും ലഭിക്കും. |പങ്കുവെക്കൽ: ഈ ആപ്പും അതിനുള്ളിൽ നൽകുന്ന ഉപയോഗപ്രദമായ വിവരങ്ങളും ഉപയോക്താക്കൾ അവരുടെ സുഹൃത്തുക്കളോടും കുടുംബാംഗങ്ങളോടും പങ്കുവെക്കാം.';

  @override
  String get aboutUsConclusion => 'ഞങ്ങളുടെ ഉപയോക്തൃ സമൂഹത്തെ മികച്ച രീതിയിൽ സേവിക്കുന്നതിനായി പ്രമുഖ നേത്ര സംരക്ഷണ പ്രൊഫഷണലുകളുടെ സഹായത്തോടെയാണ് ആപ്പ് വികസിപ്പിച്ചെടുത്തത്. തിളക്കമാർന്നതും ആരോഗ്യകരവുമായ ഒരു ലോകം സൃഷ്ടിക്കുന്നതിനുള്ള ഞങ്ങളുടെ ദൌത്യത്തിൽ ഞങ്ങളോടൊപ്പം ചേരുക. സൈറ്റ്കണക്ട് ആപ്പ് ഇന്ന് ഡൌൺലോഡ് ചെയ്ത് പങ്കിടുക!';

  @override
  String get privacyPolicyDescription => 'എൽവി പ്രസാദ് ഐ ഇൻസ്റ്റിറ്റ്യൂട്ട്, അതിന്റെ അനുബന്ധ സ്ഥാപനങ്ങൾ, അസോസിയേറ്റുകൾ, അനുബന്ധ കമ്പനികൾ (കൂട്ടായി "എൽവിപിഇഐ", "ഞങ്ങൾ", "ഞങ്ങൾ" എന്ന് വിളിക്കുന്നു) എന്നിവ നിങ്ങളുടെ അധികാരപരിധിയിലുള്ള നിയമങ്ങൾ അനുസരിച്ച് നിങ്ങളുടെ സ്വകാര്യ ഡാറ്റ പ്രോസസ്സ് ചെയ്യാൻ പ്രതിജ്ഞാബദ്ധരാണ്. വ്യക്തിഗത ഡാറ്റ പ്രോസസ്സ് ചെയ്യുന്നതിനെക്കുറിച്ചുള്ള ഇനിപ്പറയുന്ന വിവരങ്ങൾ ഞങ്ങൾ ഇതിനാൽ നിങ്ങളെ അറിയിക്കുന്നു.';

  @override
  String get privacyPolicyPersonalDataTitle => 'ശേഖരിച്ച/പ്രോസസ്സ് ചെയ്ത വ്യക്തിഗത ഡാറ്റ ഘടകങ്ങൾഃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'നിങ്ങളുടെയും നിങ്ങളുടെ ബന്ധങ്ങളുടെയും വ്യക്തിഗത ഡാറ്റ എന്നിവ മൊബൈൽ നമ്പർ, പേര്, ജന്മ തീയതി, ലിംഗം (പുരുഷൻ/സ്ത്രീ), വിലാസം (പിൻ കോഡ്), രോഗിയുടെ ഐഡി, ബന്ധം, കണ്ണ് ട്രയാജ് ചോദ്യാവലികളുടെ പ്രതികരണങ്ങൾ, കണ്ണ് ട്രയാജ് റിപ്പോർട്ട്, കണ്ണിന്റെ ചിത്രങ്ങൾ, നിങ്ങളുടെ കണ്ണിന്റെ ചിത്രത്തിന് ചേർത്ത ലക്ഷണങ്ങൾ, ഫോട്ടോഗ്രാഫ്, വിലാസ വിവരങ്ങൾ പോലെ വിലാസം, ജില്ലാ പേര് (ജില്ലാ കോഡ് ഉൾപ്പെടെ), സംസ്ഥാന പേര് (സംസ്ഥാന കോഡ് ഉൾപ്പെടെ), ഉപജില്ല പേര്, ഗ്രാമ പേര്, നഗരം പേര്, ഇമെയിൽ വിലാസം, പേരിന്റെ അവസാനഭാഗം, മധ്യനാമം, രക്തഗ്രൂപ്പ്, ഉയരം, ഭാരം, തൊഴിൽ, നിങ്ങളുടെ നൽകിയ ABHA വിവരങ്ങൾ, അപ്ലിക്കേഷൻ ആക്സസ് ചെയ്യാൻ ക്യാമറ, GPS ലൊക്കേഷൻ, ഗാലറി, പൂർണ്ണ നെറ്റ്വർക്ക് ആക്സസ്, നെറ്റ്വർക്ക് കണക്ഷനുകൾ കാണുക, ഉപകരണ വിവരങ്ങൾ എന്നിവയിലേക്ക് നിങ്ങളുടെ ആപ്പ് അനുമതികൾ അനുസരിച്ച്.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'പ്രോസസ്സിംഗിന്റെ ഉദ്ദേശ്യം: ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'നിങ്ങളുടെയും നിങ്ങളുടെ ബന്ധങ്ങളുടെയും (നിങ്ങൾ നൽകിയതനുസരിച്ച്) കണ്ണുമായി ബന്ധപ്പെട്ട ഓൺലൈൻ ആരോഗ്യ പരിശോധനയ്ക്കായി നമ്മുടെ അപ്ലിക്കേഷനും അതിന്റെ സവിശേഷതകളും ആക്സസ് ചെയ്യാൻ നിങ്ങളെ അനുവദിക്കുന്നു.|ഏതെങ്കിലും കണ്ണിന്റെ അസുഖം/ആരോഗ്യ പ്രശ്നങ്ങൾക്ക് പകരം LVPEI കീഴിലെ വിഷൻ ടെക്നീഷ്യന്മാർ, ഓഫ്താൽമോളജിസ്റ്റുകൾ എന്നിവരുമായി ബന്ധപ്പെടാൻ നിങ്ങളെ അനുവദിക്കുന്നു.|നിങ്ങളുടെ ആരോഗ്യ പരാമർശത്തിന ത്തിനും നിദാനത്തിനും ഭാഗമായ ഏതെങ്കിലും നേത്രാരോഗ്യ ഡാറ്റ (റിപ്പോർട്ടുകൾ ഉൾപ്പെടെ) നൽകുന്നതിനും, ആരോഗ്യസംബന്ധമായ ആശങ്കകളിൽ നിങ്ങളെയോ നിങ്ങളുടെ ബന്ധങ്ങളെയോ ബന്ധപ്പെടുന്നതിനും.|നിങ്ങളുടെ നേത്രാരോഗ്യ ഡാറ്റ ഞങ്ങളുടെ അംഗീകൃത LVPEI നേത്രരോഗ വിദഗ്ധരോട്/ ഡോക്ടർമാരോട് പങ്കുവെക്കുന്നതും, കൂടുതൽ നിദാനം നടത്താൻ അവരുടെ സഹായം നേടുന്നതും, നിങ്ങളുടെ GPS സ്ഥലത്തിന്റെ അവസ്ഥയെ അനുസരിച്ച് (ആവശ്യമായ കാര്യങ്ങളിൽ) നേത്ര പ്രശ്നത്തിന്റെ ഗുരുതരതയ്ക്ക് അനുസൃതമായി LVPEI ഡോക്ടർമാർക്ക് വിവരം നൽകാൻ പറ്റാത്ത സാഹചര്യങ്ങളിൽ ഗ്രാമമുഖ്യനോ/ മേയറോ (പ്രസക്തമായ സ്ഥലങ്ങളിൽ) അതേ പോലെ പങ്കുവെക്കുന്നതും ചെയ്യുന്നു.|നിങ്ങളുടെ സമീപത്തുള്ള LVPEI-യുടെ നേത്രക്ലിനിക്കുകൾ/ ആശുപത്രികൾ നിങ്ങൾ ഏതെങ്കിലും നേത്ര പ്രശ്നങ്ങൾക്ക് ബന്ധപ്പെടാൻ പട്ടിക നൽകുന്നതും ചെയ്യുന്നു.|തിരിച്ചറിയൽ ചിഹ്നങ്ങൾ ഇല്ലാതെ കണ്ണിന്റെ ചിത്രം, കണ്ണിന്റെ ചിത്രത്തോട് ബന്ധപ്പെട്ട ലക്ഷണങ്ങൾ, പ്രായം, രക്തഗ്രൂപ്പ്, സ്ഥലം എന്നിവ ഉപയോഗിച്ച് ഭാവിയിലെ ശരിയായ നിദാനം നൽകുന്നതിനായി നമ്മുടെ മെഷീൻ ലേണിംഗ് അല്ലെങ്കിൽ കൃത്രിമ ബുദ്ധി മോഡലുകൾ പരിശീലിപ്പിക്കാൻ ഉപയോഗിക്കുന്നു.|കണ്ണിന്റെ ആരോഗ്യത്തെ കുറിച്ച് ബോധവത്കരണം സൃഷ്ടിക്കാൻ, ഓർമ്മിപ്പിക്കൽ, കമ്മ്യൂണിക്കേഷൻ, ക്യാമ്പെയ്ൻ മെയിലർമാർ അയക്കുന്നത്.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ഡാറ്റ സ്വീകർത്താക്കൾ/ആക്സസ് ചെയ്യാവുന്നവർഃ';

  @override
  String get privacyPolicyDataRecipientsDescription => 'നിങ്ങൾ പങ്കിട്ട വ്യക്തിഗത ഡാറ്റ (സെൻസിറ്റീവ് വ്യക്തിഗത ഡാറ്റ ഉൾപ്പെടെ) അംഗീകൃത എൽവിപിഇഐ ഉദ്യോഗസ്ഥരായ ഡോക്ടർമാർ/നേത്രരോഗവിദഗ്ദ്ധർ, വിഷൻ ടെക്നീഷ്യൻമാർ, വിഷൻ ഗാർഡിയൻമാർ, എൽവിപിഇഐ പ്രതിനിധികൾ, ആന്തരിക/ബാഹ്യ ഓഡിറ്റർമാർ, ബാധകമെങ്കിൽ സർക്കാർ അധികാരികൾ, ഞങ്ങളുടെ അംഗീകൃത സേവന ദാതാവായ ഇൻഫോസിസ് എന്നിവർക്ക് ലഭ്യമാകും.';

  @override
  String get privacyPolicyDataTransferTitle => 'ഡാറ്റ കൈമാറ്റവും സംഭരണവുംഃ';

  @override
  String get privacyPolicyDataTransferDescription => 'നിങ്ങൾ പങ്കിട്ട വ്യക്തിഗത ഡാറ്റ ഇന്ത്യയിലെ ഞങ്ങളുടെ അംഗീകൃത സേവന ദാതാവിന്റെ സർവറുകളിലും ഞങ്ങളുടെ ആന്തരിക സർവറുകളിലും സംഭരിക്കപ്പെടും.';

  @override
  String get privacyPolicyDataSecurityTitle => 'ഡാറ്റ സുരക്ഷഃ';

  @override
  String get privacyPolicyDataSecurityDescription => 'നിങ്ങളുടെ സ്വകാര്യ ഡാറ്റ സംരക്ഷിക്കുന്നതിനായി അഡ്മിനിസ്ട്രേറ്റീവ്, ഫിസിക്കൽ സെക്യൂരിറ്റി, സാങ്കേതിക നിയന്ത്രണങ്ങൾ എന്നിവയുൾപ്പെടെ ന്യായമായതും ഉചിതവുമായ സുരക്ഷാ രീതികളും നടപടിക്രമങ്ങളും എൽവിപിഇഐ സ്വീകരിക്കുന്നു.';

  @override
  String get privacyPolicyDataRetentionTitle => 'ഡാറ്റ നിലനിർത്തൽഃ';

  @override
  String get privacyPolicyDataRetentionDescription => 'നിയമപരവും ബിസിനസ്സ് ആവശ്യകതകളും അനുസരിച്ച് നിലനിർത്തേണ്ട ആവശ്യമില്ലാത്ത വ്യക്തിഗത ഡാറ്റ സുരക്ഷിതമായ രീതിയിൽ വിനിയോഗിക്കും.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ഡാറ്റ വിഷയ അവകാശങ്ങൾഃ';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'നിങ്ങളുടെ സ്വകാര്യ വിവരങ്ങൾ എപ്പോൾ വേണമെങ്കിലും ആക്സസ് ചെയ്യാനും ശരിയാക്കാനും നിങ്ങൾക്ക് അവകാശമുണ്ട്. ഏതെങ്കിലും അഭ്യർത്ഥനകൾ, പ്രശ്നങ്ങൾ, ആശങ്കകൾ അല്ലെങ്കിൽ ചോദ്യങ്ങൾ ഉണ്ടെങ്കിൽ ഡിഎസ്ആറിനായി പൊതുവായ മെയിൽ ഐഡി നൽകുന്നതിന് <എൽവിപിഇഐ-യിലേക്ക് ഒരു ഇമെയിൽ അയച്ചുകൊണ്ട് നിങ്ങൾക്ക് എൽവി പ്രസാദ് ഓഫീസുമായി ബന്ധപ്പെടാം.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'പിൻവലിക്കാനുള്ള അവകാശംഃ';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'നിങ്ങളുടെ സമ്മതത്തിന്റെ അടിസ്ഥാനത്തിൽ നിങ്ങളുടെ സ്വകാര്യ ഡാറ്റ ഞങ്ങൾ പ്രോസസ്സ് ചെയ്യുമ്പോൾ, ഭാവിയിൽ എപ്പോൾ വേണമെങ്കിലും ബാധകമായ ഡിപി നിയമങ്ങൾ അനുസരിച്ച് പ്രോസസ്സിംഗിനുള്ള നിങ്ങളുടെ സമ്മതം നിങ്ങൾക്ക് പിൻവലിക്കാം. ഇത് നിങ്ങൾ പിൻവലിക്കുന്നതിന് മുമ്പുള്ള ഏതെങ്കിലും പ്രോസസ്സിംഗ് പ്രവർത്തനത്തിന്റെ നിയമസാധുതയെ ബാധിക്കില്ല. നിങ്ങളുടെ സമ്മതം പിൻവലിക്കുന്നതിന്, ഡിഎസ്ആറിനായി ജനറിക് മെയിൽ ഐഡി നൽകുന്നതിന് നിങ്ങൾക്ക് <എൽവിപിഇഐയ്ക്ക് ഒരു ഇമെയിൽ അയയ്ക്കാം.';

  @override
  String get privacyPolicyAcknowledgement => 'ചുവടെയുള്ള ബട്ടൺ ക്ലിക്കുചെയ്യുന്നതിലൂടെ, സെൻസിറ്റീവ് വ്യക്തിഗത ഡാറ്റ ഉൾപ്പെടെയുള്ള നിങ്ങളുടെ സ്വകാര്യ ഡാറ്റ മുകളിൽ സൂചിപ്പിച്ച രീതിയിൽ ശേഖരിക്കുകയും പ്രോസസ്സ് ചെയ്യുകയും ചെയ്യാമെന്ന് നിങ്ങൾ ഇതിനാൽ അംഗീകരിക്കുകയും മനസ്സിലാക്കുകയും ചെയ്യുന്നു, കൂടാതെ മുകളിൽ സൂചിപ്പിച്ച ആവശ്യങ്ങൾക്കായി ഇത് സമ്മതിക്കുകയും ചെയ്യുന്നു. നിങ്ങൾ പങ്കിട്ട സെൻസിറ്റീവ് വ്യക്തിഗത ഡാറ്റ ഉൾപ്പെടെയുള്ള ഏത് വ്യക്തിഗത ഡാറ്റയും (നിങ്ങളൊഴികെ) അവരിൽ നിന്ന് ഉചിതമായ സമ്മതം സ്വീകരിച്ചതിനുശേഷം മാത്രമാണെന്ന് നിങ്ങൾ സമ്മതിക്കുന്നു. മുകളിൽ സൂചിപ്പിച്ച ആവശ്യങ്ങൾക്ക് ആവശ്യമില്ലാത്ത വ്യക്തിഗത ഡാറ്റയും (സെൻസിറ്റീവ് വ്യക്തിഗത ഡാറ്റ ഉൾപ്പെടെ) നിങ്ങൾ പങ്കിടില്ലെന്നും നിങ്ങൾ സമ്മതിക്കുന്നു. പ്രായപൂർത്തിയാകാത്തവരുടെ വ്യക്തിഗത ഡാറ്റ അവരുടെ രക്ഷകർത്താവ്/നിയമപരമായ രക്ഷാധികാരി എന്ന നിലയിൽ പങ്കിടുമ്പോൾ മുകളിൽ സൂചിപ്പിച്ചതുപോലെ അവരുടെ ഡാറ്റ ശേഖരണത്തിനും പ്രോസസ്സിംഗിനും നിങ്ങൾ സമ്മതിക്കുന്നുവെന്നും നിങ്ങൾ സമ്മതിക്കുന്നു.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'പ്രൈവസി പോളിസി അംഗീകരിച്ചിരിക്കുന്നു';

  @override
  String get helpAndSupportReachTitle => 'ഞങ്ങളെ ബന്ധപ്പെടുക';

  @override
  String get assessmentAndTestsSubtitle => 'ഇതുവരെ നടത്തിയ വിലയിരുത്തലുകളുടെ ഒരു ദ്രുത കാഴ്ച.';

  @override
  String get assessmentAndTestsReportsNotFound => 'റിപ്പോർട്ടുകളൊന്നും ലഭ്യമല്ല';

  @override
  String get eyeAssessmentTitle => 'നേത്ര അസ്സെസ്സ്മെന്റ് ';

  @override
  String get eyeAssessmentSubtitle => 'നിങ്ങളുടെയും സുഹൃത്തുക്കളുടെയും കുടുംബാംഗങ്ങളുടെയും നേത്രപ്രശ്നങ്ങൾ കുറച്ച് ഘട്ടങ്ങളിലൂടെ വിലയിരുത്തുക. നിങ്ങളുടെ നേത്രപ്രശ്നങ്ങളുമായി ബന്ധപ്പെട്ട ലക്ഷണങ്ങൾ മനസിലാക്കാൻ നിങ്ങളോട് ഒരു കൂട്ടം ചോദ്യങ്ങൾ ചോദിക്കുകയും തുടർന്ന് വിഷ്വൽ ടെസ്റ്റുകൾ നടത്തുകയും ചെയ്യും.';

  @override
  String get eyeAssessmentGetMemberLabel => 'അംഗത്തെ മാറ്റുക';

  @override
  String get eyeAssessmentProceedButton => 'തുടരുക';

  @override
  String get eyeAssessmentBrightnessLabel => 'സ്ക്രീനിന്റെ തെളിച്ചം 80% ആക്കി മാറ്റിയിട്ടുണ്ട്';

  @override
  String get eyeAssessmentBrightnessError => 'ദയവായി സ്ക്രീനിന്റെ തെളിച്ചം 80% ആക്കുക';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ഈ ചോദ്യം ഇപ്പോൾ ലഭ്യമല്ല';

  @override
  String get eyeAssessmentPopUpHeading => 'അസ്സെസ്സ്മെന്റ് ';

  @override
  String get eyeAssessmentPopUpBody => 'നിങ്ങൾക്ക് കാഴ്ചയുമായി ബന്ധപ്പെട്ട എന്തെങ്കിലും പ്രശ്നങ്ങളുണ്ടോ?';

  @override
  String get eyeAssessmentPopUpYesButton => 'അതെ.';

  @override
  String get eyeAssessmentPopUpNoButton => 'ഇല്ല.';

  @override
  String get visualAcuityTestInstructionOne => 'നല്ല വെളിച്ചമുള്ള സ്ഥലത്ത് ഇരിക്കുക. തെളിച്ചത്തിൽ പെട്ടെന്നുള്ള മാറ്റം നിങ്ങൾക്ക് അനുഭവപ്പെട്ടേക്കാം, ഒപ്റ്റിമൽ ഫലം നൽകുന്നതിന് സ്ക്രീൻ ഓട്ടോ-ബ്രൈറ്റ്നസ് ആയി സജ്ജീകരിച്ചിരിക്കുന്നു.';

  @override
  String get visualAcuityTestInstructionTwo => 'നിങ്ങൾ ഉപകരണം കണ്ണിന്റെ തലത്തിൽ പിടിക്കുന്നുവെന്ന് ഉറപ്പാക്കുക. നിങ്ങൾ കണ്ണടയോ കോൺടാക്റ്റ് ലെൻസോ ധരിക്കുന്നുണ്ടെങ്കിൽ അവ ധരിച്ചിരിക്കുക.';

  @override
  String get visualAcuityTestInstructionThree => 'സ്ക്രീനിൽ നിന്ന് 40 സെന്റീമീറ്റർ അകലെ നിൽക്കുക. ടെസ്റ്റ് സ്ക്രീനിൽ ദൂരം കാണാവുന്നതാണ്.';

  @override
  String get visualAcuityTestInstructionFour => 'നിങ്ങൾ കണ്ണട ഉപയോഗിച്ച് പരിശോധന നടത്തുകയാണെങ്കിൽ, ഒരു കണ്ണ് മാത്രം പരിശോധിക്കുമ്പോൾ കണ്ണടയ്ക്ക് മുകളിൽ കൈ കൊണ്ട് മൂടുക.';

  @override
  String get skipAndProceedButton => 'സ്കിപ് & സ്കാൻ ചെയ്യുക';

  @override
  String get proceedToScanButton => 'സ്കാൻ ചെയ്യുക';

  @override
  String get eyeAssessmentSteps => 'ഘട്ടങ്ങൾ';

  @override
  String get eyeAssessmentStepOne => 'ഘട്ടം 1-നേത്ര അസ്സെസ്സ്മെന്റ് ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentStepTwo => 'ഘട്ടം 2-നേത്ര അസ്സെസ്സ്മെന്റ് ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentStepThree => 'ഘട്ടം 3-നേത്ര അസ്സെസ്സ്മെന്റ് ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentOngoing => 'തുടരുന്നു ';

  @override
  String get eyeAssessmentCompleted => 'പൂർത്തിയായി.';

  @override
  String get eyeAssessmentPending => 'പൂർത്തിയായിട്ടില്ല';

  @override
  String get eyeAssessmentResults => 'അസ്സെസ്സ്മെന്റ് ഫലങ്ങൾ';

  @override
  String get eyeAssessmentCompleteSteps => 'ഫലങ്ങൾ കാണുന്നതിന് എല്ലാ ഘട്ടങ്ങളും പൂർത്തിയാക്കുക';

  @override
  String get eyeAssessmentToolTip => 'ഫ്ലാഷ് ഓഫ് ചെയ്തിട്ടുണ്ടെന്നും തെളിച്ചം 80% ആക്കി മാറ്റിയിട്ടുണ്ടെന്നും ഉറപ്പാക്കുക.';

  @override
  String get eyeScanInstructionOne => 'ഫ്രെയിമിൽ മുഖം ശരിയായി കാണുന്നപോലെ ക്യാമറ പിടിക്കുക.';

  @override
  String get eyeScanInstructionTwo => 'നിങ്ങളുടെ ഫോണിന്റെ പിൻ ക്യാമറ ഉപയോഗിച്ച് കണ്ണുകളുടെ ഒരു ചിത്രം എടുക്കുക.';

  @override
  String get eyeScanInstructionThree => 'ഫ്ലാഷ് ഓൺ ചെയ്തുകൊണ്ട് നല്ല വെളിച്ചമുള്ള സ്ഥലത്താണെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get eyeScanInstructionFour => 'ചിത്രത്തിൻ്റെ ഗുണനിലവാരവും വ്യക്തതയും വർദ്ധിപ്പിക്കുന്നതിന്, ഫോട്ടോ എടുക്കുവാൻ മറ്റൊരാളെ നിയോഗിക്കുക.';

  @override
  String get eyeScanInstructionFive => 'ചിത്രം എടുക്കുമ്പോൾ ഒരു കണ്ണ് കൈകൊണ്ട് മറയ്ക്കുകയും മറ്റേ കണ്ണ് കൊണ്ട് നേരെ മുന്നോട്ട് നോക്കുകയും ചെയ്യുക.';

  @override
  String get eyeScanInstructionSix => 'സ്കാൻ ആരംഭിക്കുന്നതിന് മുമ്പ് പാനലിനുള്ളിൽ കണ്ണ് കേന്ദ്രീകരിക്കുക.';

  @override
  String get eyeScanInstructionSeven => 'ഫ്ലാഷ് ഓഫ് ചെയ്യുന്നതുവരെ നിങ്ങളുടെ കണ്ണുകൾ പൂർണ്ണമായും തുറന്നു പിടിക്കുക, ഫോട്ടോ എടുത്തതായി സൂചിപ്പിക്കുന്ന ഒരു \'ബീപ്പ്\' കേൾക്കുന്നത് വരെ ഇങ്ങനെ തുടരുക.';

  @override
  String get eyeAssessmentNote => 'ശ്രദ്ധിക്കുക: ഇവിടെ കാണിച്ചിരിക്കുന്ന ചിത്രങ്ങൾ സൂചനകൾക്ക് മാത്രമുള്ളതാണ്. യഥാർത്ഥത്തിൽ അവ മറ്റു രീതിയിൽ പ്രത്യക്ഷപ്പെടാം.';

  @override
  String get agreeButton => 'ഞാൻ സമ്മതിക്കുന്നു.';

  @override
  String get consentPageCheckbox => 'നിബന്ധനകളും വ്യവസ്ഥകളും ഞാൻ അംഗീകരിക്കുന്നു.';

  @override
  String get confirmButton => 'സ്ഥിരീകരിക്കുക';

  @override
  String get discardButton => 'ഉപേക്ഷിക്കുക.';

  @override
  String get imageNotCapturedToastMessage => 'ഫോട്ടോ എടുത്തിട്ടില്ല';

  @override
  String get eyeCaptureCompletionDialogHeading => 'ടെസ്റ്റ് പൂർത്തിയായി';

  @override
  String get eyeCaptureCompletionDialogBody => 'നിങ്ങൾ ടെസ്റ്റ് പൂർത്തിയാക്കി. ഫലം കാണാൻ താഴെ കൊടുത്തിരിക്കുന്ന ബട്ടണിൽ ക്ലിക്ക് ചെയ്യുക.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ഫലം കാണുക';

  @override
  String get eyeCaptureTriageSavedLocally => 'ട്രിയാജ് പ്രാദേശികമായി സേവ് ചെയ്തിരിക്കുന്നു ';

  @override
  String get visualAcuityTestResults => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ് ഫലങ്ങൾ';

  @override
  String get assessmentResultPageMoreDetailsText => 'കൂടുതൽ വിവരങ്ങൾക്ക് അടുത്തുള്ള വിഷൻ സെന്റർ സന്ദർശിക്കുക. ഞങ്ങളുടെ വിഷൻ ടെക്നീഷ്യനുമായി സംസാരിക്കാൻ ടോൾ ഫ്രീ നമ്പറിൽ വിളിക്കുക.';

  @override
  String get assessmentReportButton => 'കണ്ണ് വിലയിരുത്തൽ റിപ്പോർട്ട്';

  @override
  String get notificationsTitle => 'അറിയിപ്പുകൾ';

  @override
  String get notificationsNotAvailable => 'അറിയിപ്പുകൾ ഇല്ല';

  @override
  String get servicesPatientCare => 'രോഗിയുടെ പരിചരണം';

  @override
  String get reportAssessmentId => 'അസ്സെസ്സ്മെന്റ് ഐഡി';

  @override
  String get reportDateAndTime => 'ഡേറ്റ് & ടൈം';

  @override
  String get reportSeverityAbnormal => 'അടിയന്തര പരിശോധന';

  @override
  String get reportSeverityHigh => 'എത്രയും നേരത്തെ പരിശോധന';

  @override
  String get reportSeverityLow => 'പതിവ് പരിശോധന';

  @override
  String get reportDataUnavailable => 'ഡാറ്റ ലഭ്യമല്ല';

  @override
  String get reportTumblingTitle => 'അക്യൂട്ടി ടെസ്റ്റ് - ടംബ്ളിംഗ് ഈ';

  @override
  String get rightCornea => 'വലത് കോർണിയ';

  @override
  String get leftCornea => 'ഇടത് കോർണിയ';

  @override
  String get myProfileGeneralInfo => 'പൊതുവിവരങ്ങൾ';

  @override
  String get myProfileAge => 'പ്രായം';

  @override
  String get myProfileAddress => 'വിലാസം';

  @override
  String get myProfileLine => 'ലൈൻ';

  @override
  String get myProfileCity => 'നഗരം';

  @override
  String get myProfileDistrict => 'ജില്ല';

  @override
  String get myProfileState => 'സംസ്ഥാനം';

  @override
  String get myProfilePinCode => 'പിൻ കോഡ്';

  @override
  String get submitButton => 'സബ്മിറ്റ് ';

  @override
  String get swipeGestureError => 'തെറ്റായ സ്വൈപ്പ്! ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get swipeGestureCardText => 'ചിഹ്നത്തിന്റെ ദിശയിൽ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get assessmentResultCardAssessmentQuestions => 'അസ്സെസ്സ്മെന്റ് ചോദ്യങ്ങൾ';

  @override
  String get assessmentResultCardAcuityTest => 'അക്യൂട്ടി ടെസ്റ്റ് ';

  @override
  String get assessmentResultCardEyeScan => 'നേത്ര\r\n\r\nസ്കാൻ';

  @override
  String get viewReportButton => 'റിപ്പോർട്ട്';

  @override
  String get updateButton => 'അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get assessmentCardUrgentConsult => 'അടിയന്തര പരിശോധന';

  @override
  String get assessmentCardRoutineCheckUp => ' പതിവ്  പരിശോധന';

  @override
  String get assessmentCardEarlyCheckUp => 'എത്രയും നേരത്തെ പരിശോധന';

  @override
  String get testAgainButton => 'വീണ്ടും പരിശോധിക്കുക';

  @override
  String get homeButton => 'ഹോം';

  @override
  String get homeTriageCardTitle => 'നമ്മുടെ കണ്ണുകളാണ് ഏറ്റവും വിലപ്പെട്ട സ്വത്ത്.';

  @override
  String get homeTriageCardDescription => 'നേത്രരോഗങ്ങൾ തടയാൻ കൃത്യസമയത്ത് പരിശോധന നടത്തുക.';

  @override
  String get homeTriageCardTest => 'നേത്ര പരിശോധന ആരംഭിക്കുക';

  @override
  String get homeHelplineCardDescrition => 'പെട്ടെന്ന് കാഴ്ച നഷ്ടപ്പെട്ടാൽ ഈ എമർജൻസി ഹെൽപ്പ് ലൈനിൽ വിളിക്കുക.';

  @override
  String get inviteCardTitle => 'മറ്റുള്ളവരെ ക്ഷണിക്കുക';

  @override
  String get inviteCardDescription => '5 സുഹൃത്തുക്കളെയും കുടുംബാംഗങ്ങളെയും ക്ഷണിക്കുക, അതുവഴി അവർക്ക് അവരുടെ കണ്ണുകൾ പരിശോധിക്കാനും ഭാവിയിൽ നേത്ര പ്രശ്നങ്ങൾ ഉണ്ടാകാതിരിക്കാനും കഴിയും.';

  @override
  String get inviteCardInvitation => 'ക്ഷണിക്കുക';

  @override
  String get partnerCardTitle => 'പങ്കാളി';

  @override
  String get languageSelection => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get profileTitle => 'പ്രൊഫൈൽ';

  @override
  String get eyeAssessmentEnterLabel => 'ഇവിടെ പ്രവേശിക്കുക';

  @override
  String get profilePageAddressDetails => 'വിലാസം';

  @override
  String get profilePaeCheckReports => 'നിങ്ങളുടെ റിപ്പോർട്ടുകൾ പരിശോധിക്കുക';

  @override
  String get bottomNavItemEyeTest => 'നേത്ര പരിശോധന';

  @override
  String get bottomNavItemAppointment => 'അപ്പോയ്ന്റ്മെന്റ്സ്';

  @override
  String get memberSelection => 'അംഗത്തെ തിരഞ്ഞെടുക്കുക';

  @override
  String get triageAlerDialogBoxTitle => 'വീണ്ടും ചെയ്യാനുള്ള ഘട്ടങ്ങൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get scannerTitle => 'സ്കാനർ';

  @override
  String get visualAcuityTestDistanceInstruction => 'ക്യാമറ കണ്ണിൽ നിന്ന് 40cm അകലെ സ്ഥാപിക്കുക.';

  @override
  String get somethingWentWrong => 'അഭ്യർത്ഥന പരാജയപ്പെട്ടു';

  @override
  String get triageUpdatedSuccessfully => 'ട്രിയാജ് അപ്ഡേറ്റ് ചെയ്തിരിക്കുന്നു';

  @override
  String get noPreviewAvailable => 'പ്രിവ്യൂ ലഭ്യമല്ല';

  @override
  String get privacyPolicyTitle => 'പ്രൈവസി & ടാറ്റ പ്രൊട്ടക്ഷൻ ';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'താഴെപ്പറയുന്ന ആവശ്യങ്ങൾക്കായി നിങ്ങൾ നൽകുന്ന വ്യക്തിഗത ഡാറ്റ ഞങ്ങൾ പ്രോസസ്സ് ചെയ്യുന്നുഃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'നിങ്ങൾ ക്യാമറയുടെ വളരെ അടുത്താണ്, ക്യാമറ കണ്ണിൽ നിന്ന് 40cm അകലെ സ്ഥാപിക്കുക.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'നിങ്ങൾ ക്യാമറയിൽ നിന്ന് വളരെ അകലെയാണ്, ക്യാമറ കണ്ണിൽ നിന്ന് 40cm അകലെ സ്ഥാപിക്കുക.';

  @override
  String get myProfileABHAID => 'ആഭ ഐഡി';

  @override
  String get myProfileEmail => 'ഇമെയിൽ ';

  @override
  String get viewHistoryButton => 'ഹിസ്റ്ററി ';

  @override
  String get profilePagePersonalDetails => 'വ്യക്തിഗത വിശദാംശങ്ങൾ';

  @override
  String get profilePageDateOfBirth => 'ജനന തിയതി ';

  @override
  String get profilePageGender => 'ലിംഗഭേദം';

  @override
  String get profilePageMobile => 'മൊബൈൽ';

  @override
  String get profilePageHealthCardTitle => 'ഹെൽത്ത് കാർഡ് ';

  @override
  String get appointmentTitle => 'അപ്പോയ്ന്റ്മെന്റ്സ്';

  @override
  String get appointmentSubtitle => 'എല്ലാ അപ്പോയ്ന്റ്മെന്റ്‌സും';

  @override
  String get eyeBoxText => 'കണ്ണുകൾക്ക് ചുറ്റും പച്ച ബോക്സുകൾ ദൃശ്യമാകുന്നതുവരെ ചിത്രം ക്രമീകരിച്ച് സ്ഥാപിക്കുക. കണ്ണ് അടുത്തേക്ക് നീക്കി ബോക്‌സിൻ്റെ 40% കണ്ണിനാൽ മൂടപ്പെട്ടിരിക്കുന്നുവെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get bottomNavItemServices => 'സേവനങ്ങൾ';

  @override
  String get smsContent => 'ഹേയ്! എൻ്റെ കണ്ണുകളെ പരിപാലിക്കാൻ ഞാൻ സൈറ്റ്കണക്ട് ആപ്പ് ഉപയോഗിക്കുന്നു, നിങ്ങളും ഉപയോഗിക്കണം! നിങ്ങളുടെ കണ്ണുകൾ വിലയിരുത്തുകയും സൈറ്റ്കണക്ട് ആപ്പ് ഉപയോഗിച്ച് സമയബന്ധിതമായ ചികിത്സ നേടുകയും ചെയ്യുക. പ്രതിരോധാത്മകമായ ഐക്കെയർ നിങ്ങളുടെ കൈകളിലേക്ക് കൊണ്ടുവരുന്ന സവിശേഷമായ ഒരു ആപ്ലിക്കേഷനാണിത്. ഇപ്പോൾ അത് നേടുകഃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'സൈറ്റ്കണക്ട് ആപ്പ് ഉപയോഗിച്ച് നിങ്ങളുടെ കണ്ണിന്റെ ആരോഗ്യത്തിന് മുൻഗണന നൽകുക!';

  @override
  String get recentServicesCataractEyeTest => 'തിമിരം കണ്ണ് പരിശോധന';

  @override
  String get recentServicesRedEyeTest => 'ചുവന്ന കണ്ണ് പരിശോധന';

  @override
  String get chatBotDefaultQuerySuggestions => 'കണ്ണ് വിലയിരുത്തൽ ആരംഭിക്കുക | സാധാരണ കണ്ണ് പ്രശ്നങ്ങൾ | മെച്ചപ്പെട്ട കാഴ്ചയ്ക്കുള്ള നുറുങ്ങുകൾ';

  @override
  String get chatBotWelcomeMessage => 'ഹായ്, ഇന്ന് ഞാൻ നിങ്ങളെ എങ്ങനെ സഹായിക്കും?';

  @override
  String get poweredByText => 'പവർ ചെയ്തിരിക്കുന്നത്';

  @override
  String get digitalHealthCard => 'ഡിജിറ്റൽ പൊതുജനാരോഗ്യ സ്റ്റാക്ക്';

  @override
  String get inviteNowText => 'ഇപ്പോൾ ക്ഷണിക്കുക';

  @override
  String get resend => 'വീണ്ടും അയയ്ക്കുക';

  @override
  String get mobileNumber => 'മൊബൈൽ നമ്പർ';

  @override
  String get loginVerifyMobileNumber => 'നിങ്ങളുടെ മൊബൈൽ നമ്പർ പരിശോധിക്കുക';

  @override
  String get loginEnterMobileNumber => 'ദയവായി മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get loginEnterValidMobileNumber => 'ദയവായി സാധുവായ മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get loginUnableToSendOTP => 'ഈ നമ്പറിലേക്ക് ഒടിപി അയയ്ക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get loginGetOTP => 'ഒടിപി നേടുക';

  @override
  String get loginInvalidOTP => 'അസാധുവായ ഒടിപി';

  @override
  String get loginDidntReceiveOTP => 'ഒടിപി ലഭിച്ചില്ലേ?';

  @override
  String get loginOTPSent => 'ഒടിപി വിജയകരമായി അയച്ചു';

  @override
  String get areYouSure => 'നിങ്ങൾക്ക് ഉറപ്പാണോ?';

  @override
  String get triageExitConfirmation => 'പരീക്ഷയിൽ നിന്ന് പുറത്തുകടക്കാൻ നിങ്ങൾ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get triageReportEyeProblems => 'കണ്ണിൻറെ പ്രശ്നങ്ങൾ റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get triageHowToReport => 'കണ്ണിന്റെ പ്രശ്നങ്ങൾ എങ്ങനെ റിപ്പോർട്ട് ചെയ്യാം?';

  @override
  String get triageReportInstructions => 'നിങ്ങൾക്ക് കണ്ണുമായി ബന്ധപ്പെട്ട പ്രശ്നങ്ങളുണ്ടെങ്കിൽ, ഉചിതമായ മാർഗ്ഗനിർദ്ദേശം ലഭിക്കുന്നതിന് നിങ്ങൾക്ക് സ്വയം പ്രഖ്യാപിക്കുകയും നിങ്ങളുടെ പ്രശ്നങ്ങൾ ഇവിടെ പരാമർശിക്കുകയും ചെയ്യാം. നിങ്ങളുടെ സുഹൃത്തുക്കളുടെയോ കുടുംബാംഗങ്ങളുടെയോ നേത്രപ്രശ്നങ്ങൾ ഇവിടെ പരാമർശിക്കുകയും ഉചിതമായ മാർഗ്ഗനിർദ്ദേശം നേടുകയും ചെയ്യാം. കണ്ണിന്റെ പ്രശ്നത്തിന്റെ സ്വഭാവവും കാഠിന്യവും മനസിലാക്കാൻ ഇനിപ്പറയുന്ന വിഭാഗങ്ങളിൽ നിങ്ങളോട് ഒരു കൂട്ടം ചോദ്യങ്ങൾ ചോദിക്കും. എല്ലാ ചോദ്യങ്ങൾക്കും ഉത്തരം നൽകിയ ശേഷം ചെയ്യേണ്ട പരിശോധനകളും തുടർനടപടികളും നിങ്ങളെ ശുപാർശ ചെയ്യുകയും നയിക്കുകയും ചെയ്യും.';

  @override
  String get assessment => 'വിലയിരുത്തൽ';

  @override
  String get triageOtherSymptomsQuestion => 'നിങ്ങൾക്ക് മറ്റെന്തെങ്കിലും ലക്ഷണങ്ങളുണ്ടോ?';

  @override
  String get triageEnterSymptoms => 'നിങ്ങളുടെ ലക്ഷണങ്ങൾ ഇവിടെ നൽകുക';

  @override
  String get triageEyeAssessmentResults => 'കണ്ണ് വിലയിരുത്തൽ ഫലങ്ങൾ';

  @override
  String get triageTestId => 'ടെസ്റ്റ് ഐഡി';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'കണ്ണ് സ്കാൻ വിജയകരമായി അപ്ഡേറ്റുചെയ്തു';

  @override
  String get triageErrorEyeScanNotUpdated => 'കണ്ണ് സ്കാൻ അപ്ഡേറ്റ് ചെയ്തിട്ടില്ല!';

  @override
  String get triageLeftEyeString => 'ഇടത് കണ്ണ്';

  @override
  String get triageRightEyeString => 'വലത് കണ്ണ്';

  @override
  String get vaEyeTest => 'കണ്ണ് പരിശോധന';

  @override
  String get instructions => 'നിർദ്ദേശങ്ങൾ';

  @override
  String get vaSwipeUp => 'മുകളിലേക്ക് സ്വൈപ്പുചെയ്യുക';

  @override
  String get vaSwipeDown => 'താഴേക്ക് സ്വൈപ്പുചെയ്യുക';

  @override
  String get vaSwipeLeft => 'ഇടത്തോട്ട് സ്വൈപ്പുചെയ്യുക';

  @override
  String get vaSwipeRight => 'വലത്തോട്ട് സ്വൈപ്പുചെയ്യുക';

  @override
  String get vaSwipeGestureError => 'അസാധുവായ സ്വൈപ്പ് ആംഗ്യം. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get permissionNotGranted => 'അനുമതി നൽകിയിട്ടില്ല.';

  @override
  String get serviceNotAvailable => 'സേവനം ലഭ്യമല്ല';

  @override
  String get vaDistanceToFace => 'അഭിമുഖീകരിക്കുന്ന ദൂരം';

  @override
  String get vaDistanceToFaceInstruction => 'ക്യാമറ നിങ്ങളുടെ മുഖത്ത് നിന്ന് 40 സെന്റിമീറ്റർ അകലെയാണെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get vaBringFaceInsideBox => 'നിങ്ങളുടെ മുഖം പെട്ടിക്കുള്ളിൽ കൊണ്ടുവരിക.';

  @override
  String get startAssessment => 'വിലയിരുത്തൽ ആരംഭിക്കുക';

  @override
  String get optoAddPatientInfo => 'രോഗിയുടെ വിവരങ്ങൾ ചേർക്കുക';

  @override
  String get loggedOutMessage => 'നിങ്ങൾ ലോഗ് ഔട്ട് ചെയ്യപ്പെട്ടു';

  @override
  String get optoLogoutError => 'ക്ഷമിക്കണം, മൊബൈൽ ആപ്ലിക്കേഷനിൽ ഒരു ലോഗൌട്ട് പിശക് ഞങ്ങൾ നേരിട്ടു.';

  @override
  String get optoLoggingOut => 'ലോഗ് ഔട്ട് ചെയ്യുന്നു...';

  @override
  String get hello => 'നമസ്കാരം.';

  @override
  String get optoGetStarted => 'നമുക്ക് തുടങ്ങാം.';

  @override
  String get optoCompletedTests => 'പരീക്ഷണങ്ങൾ പൂർത്തിയായി';

  @override
  String get optoThisMonth => 'ഈ മാസം';

  @override
  String get today => 'ഇന്ന്';

  @override
  String get services => 'സേവനങ്ങൾ';

  @override
  String get optoAssessmentHistory => 'മൂല്യനിർണ്ണയ ചരിത്രം';

  @override
  String get optoEyeAssessments => 'കണ്ണ് വിലയിരുത്തലുകൾ';

  @override
  String get feedback => 'ഫീഡ്ബാക്ക്';

  @override
  String get optoImproveApp => 'നിങ്ങളുടെ പ്രതികരണം ഞങ്ങളുടെ ആപ്ലിക്കേഷൻ മെച്ചപ്പെടുത്താൻ ഞങ്ങൾ ആഗ്രഹിക്കുന്നു.';

  @override
  String get assessments => 'വിലയിരുത്തലുകൾ';

  @override
  String get optoPatientAssistance => 'രോഗിക്ക് സഹായം ആവശ്യമായിരുന്നോ?';

  @override
  String get optoVisualAcuity => 'വിഷ്വൽ അക്വിറ്റി';

  @override
  String get optoPatientAided => 'രോഗിയെ സഹായിച്ചിട്ടുണ്ടോ?';

  @override
  String get optoEyeScan => 'കണ്ണ് സ്കാൻ';

  @override
  String get optoLeaveFeedback => 'ദയവായി നിങ്ങളുടെ പ്രതികരണം ചുവടെ നൽകുക';

  @override
  String get optoNoInternet => 'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല';

  @override
  String get optoCheckInternet => 'ദയവായി നിങ്ങളുടെ ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get optoSearchPatientId => 'രോഗിയുടെ ഐഡി തിരയുക';

  @override
  String get optoRecentAssessments => 'സമീപകാല വിലയിരുത്തലുകൾ';

  @override
  String get optoSelectDateRange => 'ദയവായി ഒരു തീയതി പരിധി തിരഞ്ഞെടുക്കുക';

  @override
  String get optoDataNotFound => 'ഈ തിരച്ചിലിനായി ഡാറ്റ കണ്ടെത്തിയില്ല';

  @override
  String get optoAssessmentReport => 'മൂല്യനിർണ്ണയ റിപ്പോർട്ട്';

  @override
  String get optoPID => 'പിഐഡി';

  @override
  String get category => 'വിഭാഗം';

  @override
  String get patientAssessmentAndTest => 'രോഗിയുടെ വിലയിരുത്തലും പരിശോധനയും';

  @override
  String get patientSelfTestReport => 'സ്വയം പരിശോധനാ റിപ്പോർട്ട്';

  @override
  String get patientClinicalReport => 'ക്ലിനിക്കൽ റിപ്പോർട്ട്';

  @override
  String get patientAppointmentTitle => 'നിയമനം';

  @override
  String get patientBookAppointment => 'ബുക്ക് അപ്പോയിൻമെൻ്റ്';

  @override
  String get patientAppointmentSubtitle => 'നിങ്ങളുടെ നിയമനങ്ങൾ';

  @override
  String get patientTelephoneConsultation => 'ടെലിഫോൺ കൺസൾട്ടേഷൻ';

  @override
  String get patientAddress => 'വിലാസം';

  @override
  String get patientReschedule => 'പുനക്രമീകരിക്കുക';

  @override
  String get patientCancel => 'റദ്ദാക്കുക';

  @override
  String get patientPID => 'പിഐഡി';

  @override
  String get patientReportID => 'ഐഡി റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get patientHideDetailedReport => 'വിശദമായ റിപ്പോർട്ട് മറയ്ക്കുക';

  @override
  String get patientShowDetailedReport => 'വിശദമായ റിപ്പോർട്ട് കാണിക്കുക';

  @override
  String get patientEID => 'ഇ. ഐ. ഡി.';

  @override
  String get patientViewHistoryButton => 'ചരിത്രം കാണുക';

  @override
  String get patientViewReportButton => 'റിപ്പോർട്ട് കാണുക';

  @override
  String get patientNoMoreData => 'കൂടുതൽ വിവരങ്ങളില്ല';

  @override
  String get patientErrorFetchingReport => 'റിപ്പോർട്ട് ലഭിക്കുന്നതിൽ പിശക്';

  @override
  String get patientTimeline => 'ടൈംലൈൻ';

  @override
  String get patientRoutineCheckup => 'പതിവ് പരിശോധന';

  @override
  String get patientAssessmentID => 'മൂല്യനിർണ്ണയ ഐഡി';

  @override
  String get patientStartDate => 'ആരംഭ തീയതി';

  @override
  String get patientIVRAssessment => 'ഐവിആർ വിലയിരുത്തൽ';

  @override
  String get patientEarlyConsultationRecommended => 'നേരത്തെയുള്ള കൂടിയാലോചന ശുപാർശ ചെയ്യുന്നു';

  @override
  String get patientCataractEyeReport => 'തിമിരത്തിൻറെ നേത്ര റിപ്പോർട്ട്';

  @override
  String get patientRedEyeReport => 'ചുവന്ന കണ്ണ് റിപ്പോർട്ട്';

  @override
  String get patientScanAgain => 'വീണ്ടും സ്കാൻ ചെയ്യുക';

  @override
  String get patientStepsToScan => 'റെറ്റിന സ്കാനിംഗ് നടത്തുന്നതിനുള്ള നടപടികൾ';

  @override
  String get patientProceedToScan => 'സ്കാനിലേക്ക് പോകുക';

  @override
  String get patientSkipAndProceedToScan => 'സ്കിപ് ചെയ്ത് സ്കാനിലേക്ക് പോകുക';

  @override
  String get patientEyeScanner => 'കണ്ണ് സ്കാനർ';

  @override
  String get patientErrorSelectCamera => 'ആദ്യം ഒരു ക്യാമറ തിരഞ്ഞെടുക്കുക!';

  @override
  String get patientEyeBoxText => 'ഐ ബോക്സ് ടെക്സ്റ്റ്';

  @override
  String get patientLoggedOut => 'നിങ്ങൾ ലോഗ് ഔട്ട് ചെയ്യപ്പെട്ടു';

  @override
  String get patientLogoutError => 'ക്ഷമിക്കണം, മൊബൈൽ ആപ്ലിക്കേഷനിൽ ഒരു ലോഗൌട്ട് പിശക് ഞങ്ങൾ നേരിട്ടു.';

  @override
  String get patientUpdateProfile => 'പ്രൊഫൈൽ അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get patientEdit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get patientProfileNotUpdated => 'പ്രൊഫൈൽ അപ്ഡേറ്റ് ചെയ്തിട്ടില്ല';

  @override
  String get patientProfileUpdated => 'പ്രൊഫൈൽ അപ്ഡേറ്റുചെയ്തു';

  @override
  String get patientReportUnavailable => 'റിപ്പോർട്ട് ലഭ്യമല്ല';

  @override
  String get patientClinicalReportNotFound => 'ക്ലിനിക്കൽ റിപ്പോർട്ട് കണ്ടെത്തിയില്ല';

  @override
  String get patientRID => 'ആർഐഡി';

  @override
  String get patientUpdateUnavailable => 'അപ്ഡേറ്റ് ഇപ്പോൾ ലഭ്യമല്ല';

  @override
  String get vgAddEvent => 'ഇവന്റ് ചേർക്കുക';

  @override
  String get vgUploadingImageAddingEvent => 'ചിത്രം അപ്ലോഡ് ചെയ്യുകയും ഇവന്റ് ചേർക്കുകയും ചെയ്യുന്നു';

  @override
  String get vgEventTitle => 'പരിപാടിയുടെ തലക്കെട്ട്';

  @override
  String get vgPleaseEnterEndTime => 'ദയവായി അവസാന സമയം നൽകുക';

  @override
  String get vgShouldNotContainSpecialCharacter => 'പ്രത്യേക പ്രതീകങ്ങളൊന്നും ഉണ്ടായിരിക്കരുത്.';

  @override
  String get vgEventDescription => 'പരിപാടിയുടെ വിവരണം';

  @override
  String get vgAddPatient => 'രോഗിയെ ചേർക്കുക';

  @override
  String get vgPatients => 'രോഗികൾ';

  @override
  String get vgDetails => 'വിശദാംശങ്ങൾ';

  @override
  String get vgTeammates => 'ടീമംഗങ്ങൾ';

  @override
  String get vgEyeAssessment => 'കണ്ണ് വിലയിരുത്തൽ';

  @override
  String get vgStart => 'ആരംഭിക്കുക.';

  @override
  String get vgEyeAssessmentDescription => 'നിങ്ങളുടെയും നിങ്ങളുടെ സുഹൃത്തുക്കളുടെയും കുടുംബാംഗങ്ങളുടെയും നേത്രപ്രശ്നങ്ങൾ കുറച്ച് ഘട്ടങ്ങളിലൂടെ വിലയിരുത്തുക. നിങ്ങളുടെ നേത്രപ്രശ്നങ്ങളുമായി ബന്ധപ്പെട്ട ലക്ഷണങ്ങൾ മനസിലാക്കാൻ നിങ്ങളോട് ഒരു കൂട്ടം ചോദ്യങ്ങൾ ചോദിക്കുകയും തുടർന്ന് വിഷ്വൽ ടെസ്റ്റുകൾ നടത്തുകയും ചെയ്യും.';

  @override
  String get vgLogoutMessage => 'നിങ്ങൾ ലോഗ് ഔട്ട് ചെയ്യപ്പെട്ടു';

  @override
  String get vgLogoutErrorMessage => 'ക്ഷമിക്കണം, മൊബൈൽ ആപ്ലിക്കേഷനിൽ ഒരു ലോഗൌട്ട് പിശക് ഞങ്ങൾ നേരിട്ടു.';

  @override
  String get vgWelcome => 'സ്വാഗതം.';

  @override
  String get vgServices => 'സേവനങ്ങൾ';

  @override
  String get vgEvents => 'സംഭവങ്ങൾ';

  @override
  String get vgViewAll => 'എല്ലാം കാണുക';

  @override
  String get vtAssessmentReport => 'മൂല്യനിർണ്ണയ റിപ്പോർട്ട്-ഇ. എ.';

  @override
  String get vtRemarks => 'പരാമർശങ്ങൾ';

  @override
  String get vtNoPatientFound => 'രോഗിയെ കണ്ടെത്താനായിട്ടില്ല.';

  @override
  String get vtClose => 'അടയ്ക്കുക';

  @override
  String get vtBack => 'പിന്നോട്ട്.';

  @override
  String get vtSubmit => 'സമർപ്പിക്കുക';

  @override
  String get vtSomethingWentWrong => 'എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get vtAssessmentClosedSuccessfully => 'വിലയിരുത്തൽ വിജയകരമായി പൂർത്തിയായി';

  @override
  String get vtEyeScan => 'കണ്ണ് സ്കാൻ';

  @override
  String get vtDashboard => 'ഡാഷ്ബോർഡ്';

  @override
  String get vtRegisterPatient => 'രോഗിയെ രജിസ്റ്റർ ചെയ്യുക';

  @override
  String get vtTriage => 'ട്രീറ്റ്മെൻ്റ്';

  @override
  String get vtMarkMyAvailability => 'എൻ്റെ ലഭ്യത അടയാളപ്പെടുത്തുക';

  @override
  String get vtIVRCallHistory => 'ഐവിആർ കോൾ ചരിത്രം';

  @override
  String get vtMarked => 'അടയാളപ്പെടുത്തി.';

  @override
  String get vtPreliminaryAssessment => 'പ്രാഥമിക വിലയിരുത്തൽ';

  @override
  String get vtAge => 'പ്രായം.';

  @override
  String get vtGender => 'ലിംഗഭേദം';

  @override
  String get vtAddress => 'വിലാസം';

  @override
  String get vtProfile => 'പ്രൊഫൈൽ';

  @override
  String get vtLogoutMessage => 'നിങ്ങൾ ലോഗ് ഔട്ട് ചെയ്യപ്പെട്ടു';

  @override
  String get vtLogoutError => 'ക്ഷമിക്കണം, മൊബൈൽ ആപ്ലിക്കേഷനിൽ ഒരു ലോഗൌട്ട് പിശക് ഞങ്ങൾ നേരിട്ടു.';

  @override
  String get vtError => 'പിശക്';

  @override
  String get vtPatient => 'രോഗി.';

  @override
  String get vtMobile => 'മൊബൈൽ';

  @override
  String get vtAssessmentID => 'മൂല്യനിർണ്ണയ ഐഡി';

  @override
  String get vtStatus => 'സ്റ്റാറ്റസ്';

  @override
  String get vtTimeline => 'ടൈംലൈൻ';

  @override
  String get vtCategory => 'വിഭാഗം';

  @override
  String get vtNoDataFound => 'വിവരങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get appCameraCapture => 'പിടിച്ചെടുക്കൽ';

  @override
  String get appCameraRetake => 'തിരിച്ചെടുക്കുക.';

  @override
  String get appCameraUsePhoto => 'ഫോട്ടോ ഉപയോഗിക്കുക';

  @override
  String get appCameraCancel => 'റദ്ദാക്കുക';

  @override
  String get appCameraNotFound => 'ക്യാമറ കണ്ടെത്തിയില്ല';

  @override
  String get appCameraException => 'ക്യാമറ ഒഴിവാക്കൽ';

  @override
  String get appCameraProgressMessage => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get internetLostNoConnection => 'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല';

  @override
  String get internetLostRetry => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get secureJailbreak => 'നിങ്ങളുടെ ഉപകരണം ജയിൽ ബ്രോക്കൺ ആണെന്ന് തോന്നുന്നു.';

  @override
  String get secureRestrictedAccess => 'സുരക്ഷാ കാരണങ്ങളാൽ, ഈ ആപ്ലിക്കേഷനിലേക്കുള്ള ആക്സസ് ജയിൽ ബ്രോക്കൺ ഉപകരണങ്ങളിൽ പരിമിതപ്പെടുത്തിയിരിക്കുന്നു.';

  @override
  String get secureExitApp => 'ആപ്ലിക്കേഷനിൽ നിന്ന് പുറത്തുകടക്കുക';

  @override
  String get sharedErrorPageIssues => 'ഞങ്ങൾ ചില പ്രശ്നങ്ങൾ നേരിടുന്നു. ദയവായി പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get appointmentBookingTitle => 'അപ്പോയിൻമെൻ്റ് ബുക്കിംഗ്';

  @override
  String get comingSoon => 'ഉടൻ വരുന്നു...';

  @override
  String get miniappService => 'സേവനം';

  @override
  String get miniappConsole => 'കൺസോൾ';

  @override
  String get roleChooseYourRole => 'നിങ്ങളുടെ റോൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get roleNote => 'ശ്രദ്ധിക്കുകഃ ആപ്ലിക്കേഷനുള്ളിൽ നിങ്ങൾക്ക് നിങ്ങളുടെ റോൾ മാറ്റാൻ കഴിയില്ല.';

  @override
  String get roleConfirm => 'സ്ഥിരീകരിക്കുക';

  @override
  String get roleEyeCareProfessional => 'ഐ കെയർ പ്രൊഫഷണൽ';

  @override
  String get roleVisionTechnician => 'വിഷൻ ടെക്നീഷ്യൻ';

  @override
  String get rolePatient => 'രോഗി';

  @override
  String get roleVisionGuardian => 'വിഷൻ ഗാർഡിയൻ';

  @override
  String get vtSearchText => 'രോഗിയുടെ ഐഡി, മൊബൈൽ നമ്പർ അല്ലെങ്കിൽ പേര് ഉപയോഗിച്ച് തിരയുക';

  @override
  String get emptyPatientsInfo => 'രോഗികളെ അവരുടെ വിശദാംശങ്ങൾ കാണാൻ തിരയാൻ ആരംഭിക്കുക..';

  @override
  String get vtPersonalDetails => 'വ്യക്തിപരമായ വിശദാംശങ്ങൾ';

  @override
  String get vtHprId => 'എച്ച്പിആർ ഐഡി';

  @override
  String get vtEmailId => 'ഇമെയിൽ ഐഡി';

  @override
  String get vtEducationalQualification => 'വിദ്യാഭ്യാസ യോഗ്യത';

  @override
  String get vtAddressAndDoorNumber => 'വിലാസവും വാതിൽ നമ്പറും';

  @override
  String get vtCity => 'നഗരം';

  @override
  String get vtState => 'സംസ്ഥാനം';

  @override
  String get vtPincode => 'പിൻകോഡ്';

  @override
  String get vtOrganisationDetails => 'സംഘടനയുടെ വിശദാംശങ്ങൾ';

  @override
  String get vtOrgId => 'ഓർഗ് ഐഡി';

  @override
  String get vtFacilityType => 'സൌകര്യത്തിന്റെ തരം';

  @override
  String get vtAssessments => 'വിലയിരുത്തലുകൾ';

  @override
  String get vtNoAssessmentsFound => 'വിലയിരുത്തലുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get vtAnalytics => 'വിശകലനം';

  @override
  String get vtTotalCases => 'ആകെ കേസുകൾ';

  @override
  String get vtIvrCalls => 'ഐവിആർ കോളുകൾ';

  @override
  String get vtClinicVisits => 'ക്ലിനിക് സന്ദർശനങ്ങൾ';

  @override
  String get vtCasesClosed => 'കേസുകൾ അടച്ചു';

  @override
  String get vtCritical => 'വിമർശനാത്മകം';

  @override
  String get vtRegular => 'പതിവ്';

  @override
  String get vtAvgClosureTime => 'ശരാശരി. അടച്ചുപൂട്ടൽ സമയം';

  @override
  String get vtByAge => 'പ്രായമനുസരിച്ച്';

  @override
  String get vtByGender => 'ലിംഗഭേദം അനുസരിച്ച്';

  @override
  String get vtSymptoms => 'രോഗലക്ഷണങ്ങൾ';

  @override
  String get vtSearchByMobileNo => 'മൊബൈൽ നമ്പർ ഉപയോഗിച്ച് തിരയുക.';

  @override
  String get vtInvalidMobileNo => 'അസാധുവായ മൊബൈൽ നമ്പർ.';

  @override
  String get vtCallLogEmpty => 'കോൾ ലോഗ് ശൂന്യമാണ്.. ഇതുവരെ കോളുകളൊന്നും വന്നിട്ടില്ല!';

  @override
  String get vtNoDataAvailable => 'വിവരങ്ങൾ ലഭ്യമല്ല';

  @override
  String get vtToday => 'ഇന്ന്';

  @override
  String get vtYesterday => 'ഇന്നലെ';

  @override
  String get vtIvrCallNotAvailable => 'ഐവിആർ കോൾ ലഭ്യമല്ല. വീണ്ടും ശ്രമിക്കുക!!';

  @override
  String get vtMarkUnavailable => 'ലഭ്യമല്ല എന്ന് അടയാളപ്പെടുത്തുക';

  @override
  String get vtStartDate => 'ആരംഭ തീയതി';

  @override
  String get vtEndDate => 'അവസാന തീയതി';

  @override
  String get vtStartTime => 'ആരംഭ സമയം';

  @override
  String get vtEndTime => 'അവസാന സമയം';

  @override
  String get vtAddRemarksOptional => 'പരാമർശങ്ങൾ ചേർക്കുക (ഓപ്ഷണൽ)';

  @override
  String get vtSave => 'സംരക്ഷിക്കുക';

  @override
  String get vtCancel => 'റദ്ദാക്കുക';

  @override
  String get vtPleaseEnterRemark => 'ദയവായി പരാമർശം നൽകുക';

  @override
  String get vtAssessment => 'വിലയിരുത്തൽ';

  @override
  String get vtIvrSelections => 'ഐവിആർ തിരഞ്ഞെടുപ്പുകൾ';

  @override
  String get vtLanguageSelection => 'ഭാഷാ തിരഞ്ഞെടുപ്പ്';

  @override
  String get vtEnglish => 'ഇംഗ്ലീഷ്';

  @override
  String get vtPatientType => 'രോഗിയുടെ തരം';

  @override
  String get vtProblem => 'പ്രശ്നം';

  @override
  String get vtEyeSight => 'കണ്ണിന്റെ കാഴ്ച.';

  @override
  String get vtVisionTechnician => 'വിഷൻ ടെക്നീഷ്യൻ';

  @override
  String get vtRecommendedCenter => 'ശുപാർശ ചെയ്യപ്പെട്ട കേന്ദ്രം';

  @override
  String get vtAssessmentIDEA => 'മൂല്യനിർണ്ണയ ഐഡിഃ ഇഎ';

  @override
  String get vtPid => 'പിഐഡിഃ ഒപി';

  @override
  String get vtAssessmentTimeline => 'മൂല്യനിർണ്ണയ ടൈംലൈൻ';

  @override
  String get vtPleaseSelectEncounter => 'ദയവായി ഒരു ഏറ്റുമുട്ടൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get vtTimelineEA => 'ടൈംലൈൻഃ ഇ. എ.';

  @override
  String get vtGeneralInformation => 'പൊതുവായ വിവരങ്ങൾ';

  @override
  String get vtDateOfBirth => 'ജനനത്തീയതി';

  @override
  String get vtAssessmentEA => 'വിലയിരുത്തൽ ഇ. എ.';

  @override
  String get vtNotRegistered => 'നിങ്ങൾ സിസ്റ്റത്തിൽ രജിസ്റ്റർ ചെയ്തിട്ടില്ല. ദയവായി ഒരു മിസ്ഡ് കോൾ നൽകുക';

  @override
  String get vtOkay => 'ശരി.';

  @override
  String get vtTakePicture => 'ചിത്രം എടുക്കുക.';

  @override
  String get vtEye => 'കണ്ണ്';

  @override
  String get vtRetakePicture => 'ചിത്രം വീണ്ടും എടുക്കുക';

  @override
  String get vtNext => 'അടുത്തത്';

  @override
  String get vtMrCode => 'എംആർ കോഡ്';

  @override
  String get vtEnterMrCode => 'ഇവിടെ എംആർ കോഡ് നൽകുക';

  @override
  String get vtPleaseEnterMrCode => 'ദയവായി എംആർ കോഡ് നൽകുക';

  @override
  String get vtNote => 'കുറിപ്പ്';

  @override
  String get vtEnterRecommendations => 'ശുപാർശകൾ ഇവിടെ നൽകുക';

  @override
  String get vtSolutions => 'പരിഹാരങ്ങൾ (കൾ)';

  @override
  String get vtLeftEye => 'ഇടത് കണ്ണ്';

  @override
  String get vtRightEye => 'വലത് കണ്ണ്';

  @override
  String get vtBothEyes => 'രണ്ട് കണ്ണുകളും';

  @override
  String get vtFilterBy => 'ഇതിനാൽ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get vtLocation => 'സ്ഥലം';

  @override
  String get vtEnterTime => 'ദയവായി സമയം നൽകുക';

  @override
  String get vtEnterDate => 'ദയവായി തീയതി നൽകുക';

  @override
  String get vtRecommendation => 'ശുപാർശ';

  @override
  String get vtVisitPrimaryCenter => 'പ്രാഥമിക കേന്ദ്രം സന്ദർശിക്കുക';

  @override
  String get vtVisitSecondaryCenter => 'സെക്കൻഡറി സെന്റർ സന്ദർശിക്കുക';

  @override
  String get vtVisitTertiaryCenter => 'തൃതീയ കേന്ദ്രം സന്ദർശിക്കുക';

  @override
  String get vtVisitCenterOfExcellence => 'സെന്റർ ഓഫ് എക്സലൻസ് സന്ദർശിക്കുക';

  @override
  String get vtIvrCallQuestion => 'നിങ്ങൾ ഐവിആർ കോളിലാണോ?';

  @override
  String get vtYes => 'അതെ.';

  @override
  String get vtNo => 'ഇല്ല.';

  @override
  String get vtRetry => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get vtAssessmentQuestions => 'മൂല്യനിർണ്ണയ ചോദ്യങ്ങൾ';

  @override
  String get vtVisionCenter => 'ദർശന കേന്ദ്രം';

  @override
  String get vtVisualAcuity => 'വിഷ്വൽ അക്വിറ്റി';

  @override
  String get vtInvalidValue => 'അസാധുവായ മൂല്യം';

  @override
  String get vtSeverity => 'തീവ്രത.';

  @override
  String get vtNoVisionCentersFound => 'കാഴ്ച കേന്ദ്രങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get vtRequestLocationPermission => 'ലൊക്കേഷൻ അനുമതി അഭ്യർത്ഥിക്കുക';

  @override
  String get vtAppSettings => 'ആപ്ലിക്കേഷൻ ക്രമീകരണങ്ങൾ';

  @override
  String get vtEnterSomeText => 'ദയവായി കുറച്ച് വാചകം നൽകുക';

  @override
  String get vtPrimary => 'പ്രാഥമികം';

  @override
  String get vtDependent => 'ആശ്രിതൻ.';

  @override
  String get vtAddMember => 'അംഗത്തെ ചേർക്കുക';

  @override
  String get vtCompleteProfile => 'പൂർണ്ണമായ പ്രൊഫൈൽ';

  @override
  String get vtPatientNotRegistered => 'രോഗി രജിസ്റ്റർ ചെയ്തിട്ടില്ല';

  @override
  String get vtPatientRegistered => 'രോഗി രജിസ്റ്റർ ചെയ്തു';

  @override
  String get vtDependentNotAdded => 'ആശ്രിതൻ ചേർത്തിട്ടില്ല';

  @override
  String get vtDependentAdded => 'ആശ്രിതൻ ചേർത്തു';

  @override
  String get vtServiceNotAvailable => 'സേവനം ലഭ്യമല്ല';

  @override
  String get vgEyeAssessments => 'കണ്ണ് വിലയിരുത്തലുകൾ';

  @override
  String get vgTotal => 'ആകെ';

  @override
  String get vgCamps => 'ക്യാമ്പുകൾ';

  @override
  String get vgDoorToDoor => 'വാതിലിലേക്കുള്ള വാതിൽ';

  @override
  String get vgByGender => 'ലിംഗഭേദം അനുസരിച്ച്';

  @override
  String get vgMale => 'പുരുഷൻ.';

  @override
  String get vgFemale => 'സ്ത്രീലിംഗം.';

  @override
  String get vgOthers => 'മറ്റുള്ളവ';

  @override
  String get vgByAge => 'പ്രായമനുസരിച്ച്';

  @override
  String get vgSlideAge => 'വർഷങ്ങൾ';

  @override
  String get vgSymptoms => 'രോഗലക്ഷണങ്ങൾ';

  @override
  String get vgRefractive => 'റിഫ്രാക്റ്റീവ്';

  @override
  String get vgCataract => 'തിമിരം';

  @override
  String get vgGlaucoma => 'ഗ്ലോക്കോമ';

  @override
  String get vgKeratitis => 'കെരാറ്റിറ്റിസ്';

  @override
  String get vgBlepharitis => 'ബ്ലെഫറൈറ്റിസ്';

  @override
  String get vgConjunctivitis => 'കൺജങ്ക്റ്റിവിറ്റിസ്';

  @override
  String get vgServicesCreateEvent => 'ഇവന്റ് സൃഷ്ടിക്കുക';

  @override
  String get vgServicesEyeAssessment => 'കണ്ണ് വിലയിരുത്തൽ';

  @override
  String get vgServicesRegisterPatient => 'പുതിയ രോഗിയെ രജിസ്റ്റർ ചെയ്യുക';

  @override
  String get vgAddPatients => 'രോഗികളെ ചേർക്കുക';

  @override
  String get vgEvent => 'പരിപാടി';

  @override
  String get vgAddEventPhoto => 'ഇവന്റ് ഫോട്ടോ ചേർക്കുക';

  @override
  String get vgUploadImage => 'ചിത്രം അപ്ലോഡ് ചെയ്യുക';

  @override
  String get vgAddPhotoInstruction => 'ലഘുചിത്രമായി കാണിക്കുന്ന പരിപാടിയുടെ ഒരു ഫോട്ടോ ചേർക്കുക';

  @override
  String get vgAddressDetails => 'വിലാസ വിശദാംശങ്ങൾ';

  @override
  String get vgVenueName => 'സ്ഥലത്തിന്റെ പേര്';

  @override
  String get vgVenueNameError => 'ദയവായി സ്ഥലത്തിൻറെ പേര് നൽകുക';

  @override
  String get vgVenueNameSpecialCharError => 'പ്രത്യേക പ്രതീകങ്ങളൊന്നും ഉണ്ടായിരിക്കരുത്.';

  @override
  String get vgPincode => 'പിൻകോഡ്';

  @override
  String get vgPincodeError => '6 അക്ക പിൻകോഡ് മാത്രമേ അനുവദിക്കൂ.';

  @override
  String get vgCityTownVillage => 'നഗരം/പട്ടണം/ഗ്രാമം';

  @override
  String get vgCityTownVillageError => 'ദയവായി നഗരം/പട്ടണം/ഗ്രാമം എന്നിവയുടെ പേര് നൽകുക';

  @override
  String get vgCityTownVillageSpecialCharError => 'പ്രത്യേക പ്രതീകങ്ങളൊന്നും ഉണ്ടായിരിക്കരുത്.';

  @override
  String get vgCancel => 'റദ്ദാക്കുക';

  @override
  String get vgSave => 'സംരക്ഷിക്കുക';

  @override
  String get vgAddEventImage => 'ഇവന്റ് ചിത്രം ചേർക്കുക';

  @override
  String get vgEventAdded => 'ഇവന്റ് ചേർത്തു';

  @override
  String get vgEventNotAdded => 'ഇവന്റ് ചേർത്തിട്ടില്ല';

  @override
  String get vgDateTime => 'തീയതിയും സമയവും';

  @override
  String get vgStartDate => 'ആരംഭ തീയതി';

  @override
  String get vgStartTime => 'ആരംഭ സമയം';

  @override
  String get vgLocation => 'സ്ഥലം';

  @override
  String get vgViewOnMap => 'ഭൂപടത്തിലെ കാഴ്ച';

  @override
  String get vgAddressAndDoorNumber => 'വിലാസവും വാതിൽ നമ്പറും';

  @override
  String get vgSubDistrictName => 'ഉപ ജില്ലയുടെ പേര്';

  @override
  String get vgVillageName => 'ഗ്രാമത്തിന്റെ പേര്';

  @override
  String get vgDistrictName => 'ജില്ലയുടെ പേര്';

  @override
  String get vgAbout => 'അതിനെക്കുറിച്ച്';

  @override
  String get vgEditEvent => 'പരിപാടി എഡിറ്റ് ചെയ്യുക';

  @override
  String get vgDeleteEvent => 'ഇവന്റ് ഇല്ലാതാക്കുക';

  @override
  String get vgErrorFetchingEventDetails => 'പരിപാടിയുടെ വിശദാംശങ്ങൾ ലഭിക്കുന്നതിൽ പിശക്';

  @override
  String get vgNoPatientRegistered => 'പേരുള്ള ഒരു രോഗിയും രജിസ്റ്റർ ചെയ്തിട്ടില്ല. രജിസ്റ്റർ പേഷ്യന്റിൽ ക്ലിക്ക് ചെയ്യുക.';

  @override
  String get vgRegisterPatient => 'രോഗിയെ രജിസ്റ്റർ ചെയ്യുക';

  @override
  String get vgPrimary => 'പ്രാഥമികം';

  @override
  String get vgDependent => 'ആശ്രിതൻ.';

  @override
  String get vgAddMember => 'അംഗത്തെ ചേർക്കുക';

  @override
  String get vgCompleteProfile => 'പൂർണ്ണമായ പ്രൊഫൈൽ';

  @override
  String get vgStartAssessment => 'വിലയിരുത്തൽ ആരംഭിക്കുക';

  @override
  String get vgSearchPatientByPhoneNumber => 'ഫോൺ നമ്പർ ഉപയോഗിച്ച് രോഗിയെ തിരയുക';

  @override
  String get vgInvalidPhoneNumber => 'ദയവായി സാധുവായ ഒരു ഫോൺ നമ്പർ നൽകുക';

  @override
  String get vgServerError => 'സെർവർ പിശക്';

  @override
  String get vgPatient => 'രോഗി.';

  @override
  String get vgReportId => 'ഐഡി റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get vgNoEventFound => 'ഒരു സംഭവവും കണ്ടെത്തിയില്ല';

  @override
  String get vgTeamMateDeletedSuccessfully => 'ടീംമേറ്റ് വിജയകരമായി ഇല്ലാതാക്കി';

  @override
  String get vgSomethingWentWrong => 'എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get vgName => 'പേര്';

  @override
  String get vgPhoneNumber => 'ഫോൺ നമ്പർ';

  @override
  String get vgErrorFetchingTeammatesDetails => 'സഹതാരങ്ങളുടെ വിശദാംശങ്ങൾ കൊണ്ടുവരുന്നതിൽ പിശക്';

  @override
  String get vgTeamMateAddedSuccessfully => 'ടീംമേറ്റ് വിജയകരമായി ചേർന്നു';

  @override
  String get vgAddTeammate => 'ടീം അംഗങ്ങളെ ചേർക്കുക';

  @override
  String get vgPleaseEnter => 'ദയവായി പ്രവേശിക്കുക';

  @override
  String get vgPleaseEnterField => 'ദയവായി ഫീൽഡ് നൽകുക';

  @override
  String get vgOr => 'അല്ലെങ്കിൽ';

  @override
  String get vgSearch => 'തിരയൽ';

  @override
  String get vgEventDeletedSuccessfully => 'പരിപാടി വിജയകരമായി ഇല്ലാതാക്കി';

  @override
  String get vgEventDeletionFailed => 'ഇവന്റ് ഇല്ലാതാക്കൽ പരാജയപ്പെട്ടു';

  @override
  String get vgEndTimeGreaterThanStartTime => 'അവസാന സമയം ആരംഭ സമയത്തേക്കാൾ കൂടുതലായിരിക്കണം';

  @override
  String get vgNoPatientsPresent => 'നിലവിൽ രോഗികളില്ല. "ആഡ് പേഷ്യന്റ്" എന്നതിൽ ടാപ്പുചെയ്യുക.';

  @override
  String get textSize => 'വാചകത്തിന്റെ വലിപ്പം';

  @override
  String get increase => 'വർദ്ധിപ്പിക്കുക';

  @override
  String get decrease => 'കുറയ്ക്കുക';

  @override
  String get reset => 'പുനഃസജ്ജീകരിക്കുക';

  @override
  String get minimumTextSizeReached => 'ഏറ്റവും കുറഞ്ഞ വാചക വലിപ്പം എത്തി';

  @override
  String get maximumTextSizeReached => 'ഏറ്റവും കൂടിയ വാചക വലിപ്പം എത്തി';

  @override
  String get chatClearChat => 'ചാറ്റ് മായ്ച്ചു കളയുക';

  @override
  String get chatEyeAssessmentRecommended => 'നിങ്ങൾക്കായി കണ്ണ് വിലയിരുത്തൽ ശുപാർശ ചെയ്യുന്നു.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'നിങ്ങൾക്ക് ട്രൈഏജ് ഐ വിലയിരുത്തൽ നടത്തണോ?';

  @override
  String get chatChatbotNotAvailable => 'ചാറ്റ്ബോട്ട് ഇപ്പോൾ ലഭ്യമല്ല. ദയവായി പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get chatTypeHere => 'ഇവിടെ ടൈപ്പ് ചെയ്യുക...';

  @override
  String get switchProfile => 'പ്രൊഫൈൽ മാറ്റുക';

  @override
  String get switchRole => 'റോൾ മാറ്റുക';

  @override
  String get switchTenant => 'വാടകക്കാരനെ മാറ്റുക';

  @override
  String get patientHeaderWelcomeText => 'സൈറ്റ്കണക്ടിലേക്ക് സ്വാഗതം! നിങ്ങളുടെ കാഴ്ച ശ്രദ്ധിക്കേണ്ടത് പ്രധാനമാണ്, ഓരോ ഘട്ടത്തിലും ഞങ്ങൾ നിങ്ങൾക്കായി ഇവിടെയുണ്ട്.';

  @override
  String get triageTestCardHeader => 'നിങ്ങളുടെ കണ്ണ് പരിശോധന സൌജന്യമാണ്...';

  @override
  String get triageTestCardBody1 => 'നിങ്ങളുടെ കണ്ണിന്റെ ലക്ഷണങ്ങൾ വേഗത്തിൽ വിശകലനം ചെയ്യുക.';

  @override
  String get triageTestCardBody2 => 'നിങ്ങൾക്ക് കണ്ണിന് പ്രശ്നമുണ്ടോ എന്ന് തിരിച്ചറിയുക.';

  @override
  String get triageTestCardBody3 => 'എപ്പോഴാണ് ഡോക്ടറെ സന്ദർശിക്കേണ്ടതെന്ന് അറിയുക';

  @override
  String get triageTestCardButton => 'സൌജന്യ നേത്രപരിശോധന ആരംഭിക്കുക';

  @override
  String get myConnectionListAddMembersDescription => 'നിങ്ങളുടെ കുടുംബത്തെയും സുഹൃത്തുക്കളെയും ചേർക്കാൻ ആഡ് മെമ്പേഴ്സ് ബട്ടൺ ക്ലിക്കുചെയ്യുക.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'നിങ്ങൾ എങ്ങനെ മുന്നോട്ട് പോകാൻ ആഗ്രഹിക്കുന്നു?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'എനിക്ക് ഒരു പ്രശ്നമുണ്ട്, അത് സാധൂകരിക്കാൻ ഞാൻ ആഗ്രഹിക്കുന്നു.';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'എനിക്ക് എന്തെങ്കിലും പ്രശ്നമുണ്ടോ എന്ന് എനിക്ക് ഉറപ്പില്ല';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'എനിക്ക് കണ്ണിന് പ്രശ്നങ്ങളൊന്നുമില്ല-പരിശോധിക്കാൻ മാത്രമാണ് ഞാൻ ആഗ്രഹിക്കുന്നത്.';

  @override
  String get appDrawerToastMessageText => 'ക്ഷമിക്കണം, മൊബൈൽ ആപ്ലിക്കേഷനിൽ ഒരു ലോഗൌട്ട് പിശക് ഞങ്ങൾ നേരിട്ടു.';

  @override
  String get myConnectionListAddMembers => 'അംഗങ്ങളെ ചേർക്കുക';
}
