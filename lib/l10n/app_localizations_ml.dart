import 'app_localizations.dart';

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current അതിൽ നിന്ന് $total';
  }

  @override
  String get questionnaireTitle => 'കണ്ണ് വിലയിരുത്തൽ ചോദ്യങ്ങൾ';

  @override
  String get questionnaireExitDialog => 'ഈ ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകുന്നത് നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നങ്ങൾ തിരിച്ചറിയാൻ സഹായിക്കും. നിങ്ങൾ ശരിക്കും അതിൽ നിന്ന് പുറത്തുകടക്കാൻ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get visualAcuityTitle => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ്';

  @override
  String get visualAcuityDescription => 'ഒരു പ്രത്യേക അകലത്തിൽ നിന്ന് ഒരു അക്ഷരത്തിൻ്റെയോ ചിഹ്നത്തിൻ്റെയോ വിശദാംശങ്ങൾ നിങ്ങൾ എത്ര നന്നായി കാണുന്നുവെന്ന് പരിശോധിക്കുന്ന ഒരു നേത്രപരിശോധനയാണ് വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ്. ഈ പെട്ടെന്നുള്ള പരിശോധന ഇപ്പോൾ ചെയ്യുക!';

  @override
  String get visualAcuityHowToPerform => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ് എങ്ങനെ നടത്താം?';

  @override
  String get visualAcuityViewStepsToPerform => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ് നടത്തുന്നതിനുള്ള ഘട്ടങ്ങൾ കാണുക';

  @override
  String get visualAcuityCompletionDialog => 'പൂർത്തിയായി! രണ്ട് കണ്ണുകൾക്കും വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ് പൂർത്തിയായി. അടുത്തതായി നിങ്ങൾ നിങ്ങളുടെ കണ്ണിന്റെ ഫോട്ടോകൾ എടുക്കേണ്ടതുണ്ട്.';

  @override
  String get visualAcuityExitDialog => 'നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നത്തെക്കുറിച്ച് മനസിലാക്കാൻ വിഷ്വൽ അക്വിറ്റി ഒരു പ്രധാന പരിശോധനയാണ്. നിങ്ങൾ ശരിക്കും അതിൽ നിന്ന് പുറത്തുകടക്കാൻ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get swipeGestureTab => 'ആംഗ്യം സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get voiceAssistTab => 'വോയ്സ് അസിസ്റ്റ്';

  @override
  String get distanceString => 'അകലം';

  @override
  String get leftEyeString => 'ഇടത് കണ്ണ്';

  @override
  String get rightEyeString => 'വലത് കണ്ണ്';

  @override
  String get bothEyeString => 'രണ്ട് കണ്ണുകളും';

  @override
  String get visualAcuityLeftEyeHeader => 'ടെസ്റ്റ് 2-ഇടത് കണ്ണ്';

  @override
  String get visualAcuityLeftEyeInstructions => 'കൺപോളയിൽ അമർത്താതെ നിങ്ങളുടെ വലത് കണ്ണ് കൈകൊണ്ട് മൂടുക. നിങ്ങൾ കണ്ണട ധരിച്ചിട്ടുണ്ടെങ്കിൽ കണ്ണടയ്ക്ക് മുകളിൽ കൈ വയ്ക്കുക.';

  @override
  String get visualAcuityRightEyeHeader => 'ടെസ്റ്റ് 1-വലത് കണ്ണ്';

  @override
  String get visualAcuityRightEyeInstructions => 'കൺപോളയിൽ അമർത്താതെ ഇടത് കണ്ണ് കൈകൊണ്ട് മൂടുക. നിങ്ങൾ കണ്ണട ധരിച്ചിട്ടുണ്ടെങ്കിൽ കണ്ണടയ്ക്ക് മുകളിൽ കൈ വയ്ക്കുക.';

  @override
  String get visualAcuityBothEyeHeader => 'ടെസ്റ്റ് 3-രണ്ട് കണ്ണുകളും';

  @override
  String get visualAcuityBothEyeInstructions => 'നിങ്ങളുടെ കണ്ണുകളൊന്നും മറയ്ക്കരുത്, രണ്ട് കണ്ണുകളും അടുത്തതായി ദൃശ്യമാകുന്ന ചിഹ്നങ്ങൾ കാണുക.';

  @override
  String get overlayHeaderDirection => 'ദിശാബോധം.';

  @override
  String get overlayDescription => 'ഓരോ ചിഹ്നത്തിന്റെയും ദിശകൾ നിങ്ങൾ എങ്ങനെ മനസ്സിലാക്കുന്നുവെന്നത് ഇവിടെയുണ്ട്.';

  @override
  String get overlaySymbolDirectionText => 'ചിഹ്നത്തിൻറെ ദിശഃ';

  @override
  String get directionDown => 'താഴേക്ക്.';

  @override
  String get directionUp => 'മുകളിലേക്ക്.';

  @override
  String get directionLeft => 'ഇടത്തോട്ട്';

  @override
  String get directionRight => 'ശരിയാണ്.';

  @override
  String get dontShowAgainString => 'വീണ്ടും കാണിക്കരുത്';

  @override
  String get visualAcuityCarouselTitle => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ് നടത്തുന്നതിനുള്ള നടപടികൾ';

  @override
  String get eyeScanTitle => 'കണ്ണ് സ്കാൻ';

  @override
  String get eyeScanDescription => 'നിങ്ങൾ അടുത്തിരിക്കുന്നു! ഇനി ഒരു പരീക്ഷണം കൂടി ബാക്കിയുണ്ട്. അടുത്തതായി നിങ്ങളുടെ കണ്ണുകളുടെ ഫോട്ടോകൾ എടുക്കുക.';

  @override
  String get eyeScanHowToPerform => 'നിങ്ങളുടെ കണ്ണുകൾ എങ്ങനെ സ്കാൻ ചെയ്യാം?';

  @override
  String get eyeScanViewStepsToPerform => 'നിങ്ങളുടെ കണ്ണുകൾ എങ്ങനെ സ്കാൻ ചെയ്യാമെന്ന് അറിയാൻ ഘട്ടങ്ങൾ കാണുക.';

  @override
  String get eyeScanExitDialog => 'നിങ്ങളുടെ കണ്ണിന്റെ പ്രശ്നത്തെക്കുറിച്ച് കൂടുതൽ മനസ്സിലാക്കാൻ ഐ സ്കാൻ സഹായിക്കുന്നു. നിങ്ങൾക്ക് ശരിക്കും അതിൽ നിന്ന് പുറത്തുകടക്കാൻ ആഗ്രഹമുണ്ടോ?';

  @override
  String get captureRightEyeString => 'വലത് കണ്ണ് പിടിക്കുക';

  @override
  String get captureLeftEyeString => 'ഇടത് കണ്ണ് പിടിക്കുക';

  @override
  String get skipButton => 'സ്കിപ് ചെയ്യുക';

  @override
  String get startTestText => 'ടെസ്റ്റ് ആരംഭിക്കുക';

  @override
  String get continueButton => 'തുടരുക.';

  @override
  String get startButton => 'ആരംഭിക്കുക.';

  @override
  String get nextButton => 'അടുത്തത്';

  @override
  String get proceedButton => 'മുന്നോട്ടുപോവുക.';

  @override
  String get yesButton => 'അതെ.';

  @override
  String get noButton => 'ഇല്ല.';

  @override
  String get exitButton => 'പുറത്തുകടക്കുക.';

  @override
  String get okButton => 'ശരി.';

  @override
  String get knowMoreButton => 'കൂടുതൽ അറിയുക';

  @override
  String get seeAllButton => 'എല്ലാം കാണുക';

  @override
  String get tryAgainButton => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get shareNowButton => 'ഇപ്പോൾ പങ്കിടുക';

  @override
  String get retryButton => 'വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get homeCarousal1Title => '40 വയസും അതിൽ കൂടുതലുമുള്ള മുതിർന്നവരിൽ തിമിരത്തിൻറെ വ്യാപനവും അതുമായി ബന്ധപ്പെട്ട ഘടകങ്ങളും';

  @override
  String get homeCarousal1Description => 'തിമിരത്തിൻറെയും അനുബന്ധ ഘടകങ്ങളുടെയും വ്യാപനത്തെക്കുറിച്ചുള്ള സാമ്പിൾ പ്രക്രിയയുടെ ആസൂത്രിത അവതരണം';

  @override
  String get homeCarousal2Title => 'കണ്ണിനുണ്ടാകുന്ന 7 പ്രശ്നങ്ങൾ ഒഴിവാക്കരുത്!';

  @override
  String get homeCarousal2Description => '\n പരിശോധനയ്ക്ക് വിധേയമാക്കേണ്ട 7 \n \n• കണ്ണ് പ്രശ്നങ്ങൾഃ കണ്ണ് ചുവപ്പ്; \n• കണ്ണുകളിൽ വെള്ളപ്പൊക്കം; \n• കണ്ണുകളിൽ വെളുത്ത പാടുകൾ';

  @override
  String get homeCarousal3Title => 'കണ്ണിന് പ്രശ്നങ്ങളുണ്ട്. നിങ്ങൾക്ക് കാണാൻ കഴിയാത്ത നിരവധി കാര്യങ്ങളുണ്ട്.';

  @override
  String get homeCarousal3Description => 'എന്നാൽ ഒരു കാഴ്ച പരിചരണ വിദഗ്ധന് കഴിയും. \n പിന്നീട് സങ്കീർണതകൾ ഒഴിവാക്കാൻ കണ്ണിലെ പ്രശ്നങ്ങൾ തിരിച്ചറിയുകയും കൃത്യസമയത്ത് \n ചികിത്സിക്കുകയും ചെയ്യുക.';

  @override
  String get myConnectionsTitle => 'എൻ്റെ അംഗങ്ങൾ';

  @override
  String get myConnectionsAddMember => 'അംഗത്തെ ചേർക്കുക';

  @override
  String get myConnectionsServiceNotAvailable => 'സേവനം ലഭ്യമല്ല';

  @override
  String get myConnectionsAdd => 'ചേർക്കുക';

  @override
  String get recentServicesTitle => 'എൻറെ സമീപകാല സേവനങ്ങൾ';

  @override
  String get recentServicesEyeAssessment => 'കണ്ണ് വിലയിരുത്തൽ';

  @override
  String get recentServicesVisualAcuityTest => 'വിഷ്വൽ അക്വിറ്റി ടെസ്റ്റ്';

  @override
  String get nearbyVisionCentersTitle => 'സമീപത്തുള്ള ദർശന കേന്ദ്രങ്ങൾ';

  @override
  String get nearbyVisionCentersNotFound => 'കാഴ്ച കേന്ദ്രങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get tollFreeNumber => 'ടോൾ ഫ്രീ നമ്പർ';

  @override
  String get appDrawerTitle => 'മെനു';

  @override
  String get appDrawerLanguageSelection => 'ഭാഷ തിരഞ്ഞെടുക്കൽ';

  @override
  String get appDrawerAccessibility => 'പ്രവേശനക്ഷമത ക്രമീകരണങ്ങൾ';

  @override
  String get appDrawerHome => 'വീട്';

  @override
  String get appDrawerMyProfile => 'എൻ്റെ പ്രൊഫൈൽ';

  @override
  String get appDrawerAssessmentsAndTests => 'മൂല്യനിർണ്ണയങ്ങളും പരിശോധനകളും';

  @override
  String get appDrawerScanner => 'QR കോഡ് സ്കാനർ';

  @override
  String get appDrawerAboutUs => 'ഞങ്ങളെക്കുറിച്ച്';

  @override
  String get appDrawerPrivacyPolicy => 'സ്വകാര്യത & ഡാറ്റ നയം';

  @override
  String get appDrawerHelpAndSupport => 'സഹായവും പിന്തുണയും';

  @override
  String get appDrawerSignOut => 'സൈൻ ഔട്ട് ചെയ്യുക';

  @override
  String get aboutUsDescription => 'കോളിലൂടെ സ്വയം വിലയിരുത്തലിനും കൂടിയാലോചനകൾക്കും സഹായിക്കുന്ന ഒരു ഉപയോക്തൃ-സൌഹൃദ നേത്ര സംരക്ഷണ ആപ്ലിക്കേഷനാണ് SightConnect. എല്ലാവർക്കും ഐക്കെയർ ലഭ്യമാക്കാനുള്ള പ്രതിബദ്ധതയാണ് ഞങ്ങളുടെ ദൌത്യത്തിന്റെ കാതൽ. അവരുടെ പ്രായം, സാങ്കേതിക പശ്ചാത്തലം, സാമൂഹിക അല്ലെങ്കിൽ സാമ്പത്തിക പശ്ചാത്തലം എന്നിവ കണക്കിലെടുക്കാതെ ജീവിതത്തിന്റെ എല്ലാ മേഖലകളിലും നിന്നുള്ള ഉപയോക്താക്കളെ ഉൾക്കൊള്ളുന്നതും ആക്സസ് ചെയ്യാവുന്നതുമായ രീതിയിലാണ് ആപ്ലിക്കേഷൻ രൂപകൽപ്പന ചെയ്തിരിക്കുന്നത്. ആപ്ലിക്കേഷനും അതിന്റെ ഉള്ളടക്കവും ഇംഗ്ലീഷിലും മറ്റ് പ്രാദേശിക ഭാഷകളിലും ലഭ്യമാക്കിയിട്ടുണ്ട്. ഉപയോക്താക്കൾക്ക് അവരുടെ കണ്ണുകൾ സ്വയം വിലയിരുത്താനും സമയബന്ധിതമായ ചികിത്സാ ഉപദേശം നേടാനും ഇത് സഹായിക്കുന്നു. ഞങ്ങളുടെ ഉപയോക്താക്കൾക്ക് വ്യക്തിഗത നേത്ര സംരക്ഷണ പരിഹാരങ്ങൾ നൽകുന്നതിന് ഏറ്റവും പുതിയ സാങ്കേതികവിദ്യകളും ഉപകരണങ്ങളും ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നു. അവരുടെ ജീവിതം എളുപ്പമാക്കുന്നതിന് വൈവിധ്യമാർന്ന സവിശേഷതകളോടെയാണ് ഇത് വരുന്നത്.';

  @override
  String get aboutUsFeaturesTitle => 'സവിശേഷതകൾ';

  @override
  String get aboutUsFeaturesDescription => 'ആപ്പിലെ കണ്ണ് പരിശോധന: ആപ്പ് ഉപയോക്താക്കൾക്ക് ചില ചോദ്യങ്ങൾക്ക് ഉത്തരം നൽകി സ്വന്തം കണ്ണുകൾ സ്വയം പരിശോധിക്കാനും, അടുത്ത ഘട്ടങ്ങൾ എന്തെന്നും സന്ദർശിക്കേണ്ട ഡോക്ടറെ എന്തെന്നും യോജിക്കപ്പെട്ട ശുപാർശകൾ നേടാനും അനുവദിക്കുന്നു. ഉപയോക്താക്കളുടെ കുടുംബം ഒപ്പം സുഹൃത്തുക്കളും ഇതിലൂടെ ഗുണം പ്രാപിക്കും. |അപ്പോയിന്റ്മെന്റ് ബുക്കിംഗ്: ഉപയോക്താക്കൾക്ക് ഡോക്ടറുമായി ഓൺലൈൻ ടെലികൺസൾട്ടേഷനുകളും ക്ലിനിക്കിൽ സന്ദർശനങ്ങളും ബുക്ക് ചെയ്യാം. |IVR കോൾ സേവനങ്ങൾ: ഞങ്ങളുടെ IVR കോൾ സേവനങ്ങൾ ഇംഗ്ലീഷിലും പ്രാദേശിക ഭാഷകളിലും ലഭ്യമാണ്, ഇത് ബേസിക് ഫീച്ചർ ഫോണുകളുള്ള ഉപയോക്താക്കൾക്കും സഹായകമാണ്. അടിയന്തര സഹായത്തിനോ കണ്ണിന്റെ ഏതെങ്കിലും പ്രശ്നങ്ങൾക്കോ ഉടൻ സഹായം തേടാൻ ഉപയോക്താക്കൾക്ക് ഞങ്ങളുടെ കണ്ണ് പരിചരണ വിദഗ്ദ്ധരെ വിളിക്കാം. അപ്പോയിന്റ്മെന്റുകൾ ബുക്ക് ചെയ്യാനോ കൂടുതൽ വ്യക്തത തേടാനോ അവർക്ക് വിളിക്കാം. |സമീപത്തെ ക്ലിനിക്കുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ സമീപത്തുള്ള കണ്ണ് പരിചരണ ക്ലിനിക്കുകൾ കണ്ടെത്താം. |പ്രസ്ക്രിപ്ഷനുകൾ റിപ്പോർട്ടുകൾ: ഉപയോക്താക്കളുടെ എല്ലാ പ്രസ്ക്രിപ്ഷനുകളും റിപ്പോർട്ടുകളും ഒരു സ്ഥലത്ത് എളുപ്പത്തിൽ ലഭ്യമാണ്. |കണ്ണ് ക്യാമ്പുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ സുഹൃത്തുക്കളുടെയും കുടുംബത്തിന്റെയും കണ്ണുകൾ സൗജന്യമായി പരിശോധിക്കാനുള്ള സമീപത്തെ കണ്ണ് ക്യാമ്പുകളുടെ വിവരങ്ങൾ നേടാം. |ഓർമ്മപ്പെടുത്തലുകൾ അലർട്ടുകൾ: ഉപയോക്താക്കൾക്ക് അവരുടെ വരാനിരിക്കുന്ന അപ്പോയിന്റ്മ മെന്റുകൾ, മരുന്നുകൾ, റിപ്പോർട്ടുകൾ എന്നിവയെ സംബന്ധിച്ച സമയോചിതമായ അലർട്ടുകളും ഓർമ്മപ്പെടുത്തലുകളും ലഭിക്കും. |പങ്കുവെക്കൽ: ഈ ആപ്പും അതിനുള്ളിൽ നൽകുന്ന ഉപയോഗപ്രദമായ വിവരങ്ങളും ഉപയോക്താക്കൾ അവരുടെ സുഹൃത്തുക്കളോടും കുടുംബാംഗങ്ങളോടും പങ്കുവെക്കാം.';

  @override
  String get aboutUsConclusion => 'ഞങ്ങളുടെ ഉപയോക്തൃ സമൂഹത്തെ മികച്ച രീതിയിൽ സേവിക്കുന്നതിനായി പ്രമുഖ നേത്ര സംരക്ഷണ പ്രൊഫഷണലുകളുടെ സഹായത്തോടെയാണ് ആപ്പ് വികസിപ്പിച്ചെടുത്തത്. തിളക്കമാർന്നതും ആരോഗ്യകരവുമായ ഒരു ലോകം സൃഷ്ടിക്കുന്നതിനുള്ള ഞങ്ങളുടെ ദൌത്യത്തിൽ ഞങ്ങളോടൊപ്പം ചേരുക. സൈറ്റ്കണക്ട് ആപ്പ് ഇന്ന് ഡൌൺലോഡ് ചെയ്ത് പങ്കിടുക!';

  @override
  String get privacyPolicyDescription => 'എൽവി പ്രസാദ് ഐ ഇൻസ്റ്റിറ്റ്യൂട്ട്, അതിന്റെ അനുബന്ധ സ്ഥാപനങ്ങൾ, അസോസിയേറ്റുകൾ, അനുബന്ധ കമ്പനികൾ (കൂട്ടായി \"എൽവിപിഇഐ\", \"ഞങ്ങൾ\", \"ഞങ്ങൾ\" എന്ന് വിളിക്കുന്നു) എന്നിവ നിങ്ങളുടെ അധികാരപരിധിയിലുള്ള നിയമങ്ങൾ അനുസരിച്ച് നിങ്ങളുടെ സ്വകാര്യ ഡാറ്റ പ്രോസസ്സ് ചെയ്യാൻ പ്രതിജ്ഞാബദ്ധരാണ്. വ്യക്തിഗത ഡാറ്റ പ്രോസസ്സ് ചെയ്യുന്നതിനെക്കുറിച്ചുള്ള ഇനിപ്പറയുന്ന വിവരങ്ങൾ ഞങ്ങൾ ഇതിനാൽ നിങ്ങളെ അറിയിക്കുന്നു.';

  @override
  String get privacyPolicyPersonalDataTitle => 'ശേഖരിച്ച/പ്രോസസ്സ് ചെയ്ത വ്യക്തിഗത ഡാറ്റ ഘടകങ്ങൾഃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'നിങ്ങളുടെയും നിങ്ങളുടെ ബന്ധങ്ങളുടെയും വ്യക്തിഗത ഡാറ്റ എന്നിവ മൊബൈൽ നമ്പർ, പേര്, ജന്മ തീയതി, ലിംഗം (പുരുഷൻ/സ്ത്രീ), വിലാസം (പിൻ കോഡ്), രോഗിയുടെ ഐഡി, ബന്ധം, കണ്ണ് ട്രയാജ് ചോദ്യാവലികളുടെ പ്രതികരണങ്ങൾ, കണ്ണ് ട്രയാജ് റിപ്പോർട്ട്, കണ്ണിന്റെ ചിത്രങ്ങൾ, നിങ്ങളുടെ കണ്ണിന്റെ ചിത്രത്തിന് ചേർത്ത ലക്ഷണങ്ങൾ, ഫോട്ടോഗ്രാഫ്, വിലാസ വിവരങ്ങൾ പോലെ വിലാസം, ജില്ലാ പേര് (ജില്ലാ കോഡ് ഉൾപ്പെടെ), സംസ്ഥാന പേര് (സംസ്ഥാന കോഡ് ഉൾപ്പെടെ), ഉപജില്ല പേര്, ഗ്രാമ പേര്, നഗരം പേര്, ഇമെയിൽ വിലാസം, പേരിന്റെ അവസാനഭാഗം, മധ്യനാമം, രക്തഗ്രൂപ്പ്, ഉയരം, ഭാരം, തൊഴിൽ, നിങ്ങളുടെ നൽകിയ ABHA വിവരങ്ങൾ, അപ്ലിക്കേഷൻ ആക്സസ് ചെയ്യാൻ ക്യാമറ, GPS ലൊക്കേഷൻ, ഗാലറി, പൂർണ്ണ നെറ്റ്വർക്ക് ആക്സസ്, നെറ്റ്വർക്ക് കണക്ഷനുകൾ കാണുക, ഉപകരണ വിവരങ്ങൾ എന്നിവയിലേക്ക് നിങ്ങളുടെ ആപ്പ് അനുമതികൾ അനുസരിച്ച്.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'പ്രോസസ്സിംഗിന്റെ ഉദ്ദേശ്യം: നിങ്ങളുടെ നൽകിയ വ്യക്തിഗത ഡാറ്റ ഞങ്ങൾ ചുവടെപ്പറയുന്ന ഉദ്ദേശ്യങ്ങൾക്കായി പ്രോസസ്സ് ചെയ്യുന്നു:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'നിങ്ങളുടെയും നിങ്ങളുടെ ബന്ധങ്ങളുടെയും (നിങ്ങൾ നൽകിയതനുസരിച്ച്) കണ്ണുമായി ബന്ധപ്പെട്ട ഓൺലൈൻ ആരോഗ്യ പരിശോധനയ്ക്കായി നമ്മുടെ അപ്ലിക്കേഷനും അതിന്റെ സവിശേഷതകളും ആക്സസ് ചെയ്യാൻ നിങ്ങളെ അനുവദിക്കുന്നു.|ഏതെങ്കിലും കണ്ണിന്റെ അസുഖം/ആരോഗ്യ പ്രശ്നങ്ങൾക്ക് പകരം LVPEI കീഴിലെ വിഷൻ ടെക്നീഷ്യന്മാർ, ഓഫ്താൽമോളജിസ്റ്റുകൾ എന്നിവരുമായി ബന്ധപ്പെടാൻ നിങ്ങളെ അനുവദിക്കുന്നു.|നിങ്ങളുടെ ആരോഗ്യ പരാമർശത്തിന ത്തിനും നിദാനത്തിനും ഭാഗമായ ഏതെങ്കിലും നേത്രാരോഗ്യ ഡാറ്റ (റിപ്പോർട്ടുകൾ ഉൾപ്പെടെ) നൽകുന്നതിനും, ആരോഗ്യസംബന്ധമായ ആശങ്കകളിൽ നിങ്ങളെയോ നിങ്ങളുടെ ബന്ധങ്ങളെയോ ബന്ധപ്പെടുന്നതിനും.|നിങ്ങളുടെ നേത്രാരോഗ്യ ഡാറ്റ ഞങ്ങളുടെ അംഗീകൃത LVPEI നേത്രരോഗ വിദഗ്ധരോട്/ ഡോക്ടർമാരോട് പങ്കുവെക്കുന്നതും, കൂടുതൽ നിദാനം നടത്താൻ അവരുടെ സഹായം നേടുന്നതും, നിങ്ങളുടെ GPS സ്ഥലത്തിന്റെ അവസ്ഥയെ അനുസരിച്ച് (ആവശ്യമായ കാര്യങ്ങളിൽ) നേത്ര പ്രശ്നത്തിന്റെ ഗുരുതരതയ്ക്ക് അനുസൃതമായി LVPEI ഡോക്ടർമാർക്ക് വിവരം നൽകാൻ പറ്റാത്ത സാഹചര്യങ്ങളിൽ ഗ്രാമമുഖ്യനോ/ മേയറോ (പ്രസക്തമായ സ്ഥലങ്ങളിൽ) അതേ പോലെ പങ്കുവെക്കുന്നതും ചെയ്യുന്നു.|നിങ്ങളുടെ സമീപത്തുള്ള LVPEI-യുടെ നേത്രക്ലിനിക്കുകൾ/ ആശുപത്രികൾ നിങ്ങൾ ഏതെങ്കിലും നേത്ര പ്രശ്നങ്ങൾക്ക് ബന്ധപ്പെടാൻ പട്ടിക നൽകുന്നതും ചെയ്യുന്നു.|തിരിച്ചറിയൽ ചിഹ്നങ്ങൾ ഇല്ലാതെ കണ്ണിന്റെ ചിത്രം, കണ്ണിന്റെ ചിത്രത്തോട് ബന്ധപ്പെട്ട ലക്ഷണങ്ങൾ, പ്രായം, രക്തഗ്രൂപ്പ്, സ്ഥലം എന്നിവ ഉപയോഗിച്ച് ഭാവിയിലെ ശരിയായ നിദാനം നൽകുന്നതിനായി നമ്മുടെ മെഷീൻ ലേണിംഗ് അല്ലെങ്കിൽ കൃത്രിമ ബുദ്ധി മോഡലുകൾ പരിശീലിപ്പിക്കാൻ ഉപയോഗിക്കുന്നു.|കണ്ണിന്റെ ആരോഗ്യത്തെ കുറിച്ച് ബോധവത്കരണം സൃഷ്ടിക്കാൻ, ഓർമ്മിപ്പിക്കൽ, കമ്മ്യൂണിക്കേഷൻ, ക്യാമ്പെയ്ൻ മെയിലർമാർ അയക്കുന്നത്.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ഡാറ്റ സ്വീകർത്താക്കൾ/ആക്സസ് ചെയ്യാവുന്നവർഃ';

  @override
  String get privacyPolicyDataRecipientsDescription => 'നിങ്ങൾ പങ്കിട്ട വ്യക്തിഗത ഡാറ്റ (സെൻസിറ്റീവ് വ്യക്തിഗത ഡാറ്റ ഉൾപ്പെടെ) അംഗീകൃത എൽവിപിഇഐ ഉദ്യോഗസ്ഥരായ ഡോക്ടർമാർ/നേത്രരോഗവിദഗ്ദ്ധർ, വിഷൻ ടെക്നീഷ്യൻമാർ, വിഷൻ ഗാർഡിയൻമാർ, എൽവിപിഇഐ പ്രതിനിധികൾ, ആന്തരിക/ബാഹ്യ ഓഡിറ്റർമാർ, ബാധകമെങ്കിൽ സർക്കാർ അധികാരികൾ, ഞങ്ങളുടെ അംഗീകൃത സേവന ദാതാവായ ഇൻഫോസിസ് എന്നിവർക്ക് ലഭ്യമാകും.';

  @override
  String get privacyPolicyDataTransferTitle => 'ഡാറ്റ കൈമാറ്റവും സംഭരണവുംഃ';

  @override
  String get privacyPolicyDataTransferDescription => 'നിങ്ങൾ പങ്കിട്ട വ്യക്തിഗത ഡാറ്റ ഇന്ത്യയിലെ ഞങ്ങളുടെ അംഗീകൃത സേവന ദാതാവിന്റെ സെർവറായ ഞങ്ങളുടെ ആന്തരിക സെർവറുകളിൽ സംഭരിക്കപ്പെടും.';

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
  String get privacyPolicyBottomAppBarLabel => 'സ്വകാര്യതാ നയം അംഗീകരിക്കപ്പെട്ടു';

  @override
  String get helpAndSupportReachTitle => 'ഞങ്ങളെ ബന്ധപ്പെടുക';

  @override
  String get assessmentAndTestsSubtitle => 'ഇതുവരെ നടത്തിയ വിലയിരുത്തലുകളുടെ ഒരു ദ്രുത കാഴ്ച ഇതാ.';

  @override
  String get assessmentAndTestsReportsNotFound => 'റിപ്പോർട്ടുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get eyeAssessmentTitle => 'കണ്ണ് വിലയിരുത്തൽ';

  @override
  String get eyeAssessmentSubtitle => 'നിങ്ങളുടെയും നിങ്ങളുടെ സുഹൃത്തുക്കളുടെയും കുടുംബാംഗങ്ങളുടെയും നേത്രപ്രശ്നങ്ങൾ കുറച്ച് ഘട്ടങ്ങളിലൂടെ വിലയിരുത്തുക. നിങ്ങളുടെ നേത്രപ്രശ്നങ്ങളുമായി ബന്ധപ്പെട്ട ലക്ഷണങ്ങൾ മനസിലാക്കാൻ നിങ്ങളോട് ഒരു കൂട്ടം ചോദ്യങ്ങൾ ചോദിക്കുകയും തുടർന്ന് വിഷ്വൽ ടെസ്റ്റുകൾ നടത്തുകയും ചെയ്യും.';

  @override
  String get eyeAssessmentGetMemberLabel => 'അംഗത്തെ മാറ്റുക';

  @override
  String get eyeAssessmentProceedButton => 'മുന്നോട്ടുപോവുക.';

  @override
  String get eyeAssessmentBrightnessLabel => 'തെളിച്ചം 80 ശതമാനമായി സജ്ജമാക്കി';

  @override
  String get eyeAssessmentBrightnessError => 'ദയവായി തെളിച്ചം 80 ശതമാനമായി ക്രമീകരിക്കുക';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ചോദ്യം ഇതുവരെ പിന്തുണയ്ക്കുന്നില്ല';

  @override
  String get eyeAssessmentPopUpHeading => 'വിലയിരുത്തൽ';

  @override
  String get eyeAssessmentPopUpBody => 'നിങ്ങൾക്ക് കാഴ്ചയുമായി ബന്ധപ്പെട്ട എന്തെങ്കിലും പ്രശ്നങ്ങളുണ്ടോ?';

  @override
  String get eyeAssessmentPopUpYesButton => 'അതെ.';

  @override
  String get eyeAssessmentPopUpNoButton => 'ഇല്ല.';

  @override
  String get visualAcuityTestInstructionOne => 'നല്ല വെളിച്ചമുള്ള സ്ഥലത്ത് സുഖമായി ഇരിക്കുക. തെളിച്ചത്തിൽ പെട്ടെന്നുള്ള മാറ്റം നിങ്ങൾക്ക് അനുഭവപ്പെട്ടേക്കാം, ഒപ്റ്റിമൽ ഫലം നൽകുന്നതിന് സ്ക്രീൻ ഓട്ടോ-ബ്രൈറ്റ്നസ് ആയി സജ്ജീകരിച്ചിരിക്കുന്നു എന്ന് വിഷമിക്കേണ്ട.';

  @override
  String get visualAcuityTestInstructionTwo => 'നിങ്ങൾ ഉപകരണം കണ്ണിന്റെ തലത്തിൽ പിടിക്കുന്നുവെന്ന് ഉറപ്പാക്കുക. നിങ്ങൾ കണ്ണടയോ കോൺടാക്റ്റ് ലെൻസോ ധരിക്കുന്നുണ്ടെങ്കിൽ അവ ധരിച്ചിരിക്കുക.';

  @override
  String get visualAcuityTestInstructionThree => 'സ്ക്രീനിൽ നിന്ന് 40 സെന്റീമീറ്റർ അകലെ നിൽക്കുക. ടെസ്റ്റ് സ്ക്രീനിൽ ദൂരം കാണിക്കും.';

  @override
  String get visualAcuityTestInstructionFour => 'നിങ്ങൾ കണ്ണട ഉപയോഗിച്ച് പരിശോധന നടത്തുകയാണെങ്കിൽ, ഒരു കണ്ണ് മാത്രം പരിശോധിക്കുമ്പോൾ കണ്ണടയ്ക്ക് മുകളിൽ ഒരു കണ്ണ് കൊണ്ട് മൂടുക.';

  @override
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get skipAndProceedButton => 'സ്കിപ് ചെയ്ത് സ്കാനിലേക്ക് പോകുക';

  @override
  String get proceedToScanButton => 'സ്കാനിലേക്ക് പോകുക';

  @override
  String get eyeAssessmentSteps => 'നടപടികൾ';

  @override
  String get eyeAssessmentStepOne => 'ഘട്ടം 1-കണ്ണ് വിലയിരുത്തൽ ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentStepTwo => 'ഘട്ടം 2-കണ്ണ് വിലയിരുത്തൽ ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentStepThree => 'ഘട്ടം 3-കണ്ണ് വിലയിരുത്തൽ ചോദ്യങ്ങൾ';

  @override
  String get eyeAssessmentOngoing => 'നടന്നുകൊണ്ടിരിക്കുന്നു.';

  @override
  String get eyeAssessmentCompleted => 'പൂർത്തിയായി.';

  @override
  String get eyeAssessmentPending => 'തീർപ്പാക്കപ്പെടാതെ കിടക്കുന്നു.';

  @override
  String get eyeAssessmentResults => 'മൂല്യനിർണ്ണയ ഫലങ്ങൾ';

  @override
  String get eyeAssessmentCompleteSteps => 'ഫലങ്ങൾ കാണുന്നതിന് എല്ലാ ഘട്ടങ്ങളും പൂർത്തിയാക്കുക';

  @override
  String get eyeAssessmentToolTip => 'ഫ്ലാഷ് ഓഫ് ചെയ്തിട്ടുണ്ടെന്നും തെളിച്ചം 80 ശതമാനമായി സജ്ജീകരിച്ചിട്ടുണ്ടെന്നും ഉറപ്പാക്കുക.';

  @override
  String get eyeScanInstructionOne => 'ഫ്രെയിമിൽ മുഖം ശരിയായി വെച്ചുകൊണ്ട് ക്യാമറ പിടിക്കുക.';

  @override
  String get eyeScanInstructionTwo => 'നിങ്ങളുടെ ഫോണിന്റെ പിൻ ക്യാമറ ഉപയോഗിച്ച് കണ്ണുകളുടെ ഒരു ചിത്രം എടുക്കുക.';

  @override
  String get eyeScanInstructionThree => 'ഫ്ലാഷ് ഓൺ ചെയ്തുകൊണ്ട് നല്ല വെളിച്ചമുള്ള സ്ഥലത്താണെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get eyeScanInstructionFour => 'മികച്ച ക്യാപ്ചറിനും വ്യക്തതയ്ക്കും, ചിത്രത്തിൽ ക്ലിക്ക് ചെയ്യാൻ മറ്റൊരാളെ നിയോഗിക്കുക.';

  @override
  String get eyeScanInstructionFive => 'ചിത്രം എടുക്കുമ്പോൾ ഒരു കണ്ണ് കൈകൊണ്ട് മൂടുകയും മറ്റേ കണ്ണ് കൊണ്ട് നേരെ മുന്നോട്ട് നോക്കുകയും ചെയ്യുക.';

  @override
  String get eyeScanInstructionSix => 'ചിത്രം ആരംഭിക്കുന്നതിന് മുമ്പ് പാനലിനുള്ളിൽ കണ്ണ് കേന്ദ്രീകരിക്കുക.';

  @override
  String get eyeScanInstructionSeven => 'ഒരു \'ബീപ്പ്\' ശബ്ദം ഫോട്ടോയുടെ അവസാനത്തെ സൂചിപ്പിക്കുന്നതുവരെ ഫ്ലാഷ് ഓഫ് ആകുന്നതുവരെ കണ്ണുകൾ തുറന്നിടുക.';

  @override
  String get eyeAssessmentNote => 'ശ്രദ്ധിക്കുക: ഇവിടെ കാണിച്ചിരിക്കുന്ന ചിത്രങ്ങൾ സൂചനകൾക്ക് മാത്രമുള്ളതാണ്. യഥാർത്ഥ ജീവിതത്തിൽ അവർ ഒരേ രീതിയിൽ പ്രത്യക്ഷപ്പെടണമെന്നില്ല.';

  @override
  String get agreeButton => 'ഞാൻ സമ്മതിക്കുന്നു.';

  @override
  String get consentPageCheckbox => 'നിബന്ധനകളും വ്യവസ്ഥകളും ഞാൻ അംഗീകരിക്കുന്നു.';

  @override
  String get confirmButton => 'സ്ഥിരീകരിക്കുക';

  @override
  String get discardButton => 'ഉപേക്ഷിക്കുക.';

  @override
  String get imageNotCapturedToastMessage => 'ചിത്രം പകർത്തിയിട്ടില്ല';

  @override
  String get eyeCaptureCompletionDialogHeading => 'പരീക്ഷണം പൂർത്തിയായി';

  @override
  String get eyeCaptureCompletionDialogBody => 'നിങ്ങൾ പരീക്ഷ പൂർത്തിയാക്കി. ഫലം കാണാൻ താഴെ കൊടുത്തിരിക്കുന്ന ബട്ടണിൽ ക്ലിക്ക് ചെയ്യുക.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ഫലം കാണുക';

  @override
  String get eyeCaptureTriageSavedLocally => 'ട്രൈജ് പ്രാദേശികമായി സംരക്ഷിച്ചു';

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
  String get reportAssessmentId => 'മൂല്യനിർണ്ണയ ഐഡി';

  @override
  String get reportDateAndTime => 'തീയതി കാലത്തെ';

  @override
  String get reportSeverityAbnormal => 'തീവ്രമായ പരിശോധന';

  @override
  String get reportSeverityHigh => 'ആദ്യത്തെ പരിശോധന';

  @override
  String get reportSeverityLow => 'നിയമിത പരിശോധന';

  @override
  String get reportDataUnavailable => 'ഡാറ്റയുണ്ടാക്കാനാവില്ല';

  @override
  String get reportTumblingTitle => 'അക്യൂട്ടി ടെസ്റ്റ് - ടംബ്ളിംഗ് ഈ';

  @override
  String get rightCornea => 'വലത്തര വെളിപ്പെടുത്തം';

  @override
  String get leftCornea => 'ഇടത്തര വെളിപ്പെടുത്തം';

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
  String get submitButton => 'സമർപ്പിക്കുക';

  @override
  String get swipeGestureError => 'തെറ്റായ സ്വൈപ്പ്! ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get swipeGestureCardText => 'ചിഹ്നത്തിന്റെ ദിശയിൽ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get assessmentResultCardAssessmentQuestions => 'മൂല്യനിർണ്ണയം\nചോദ്യങ്ങൾ';

  @override
  String get assessmentResultCardAcuityTest => 'ദൃഷ്ടി\nപരീക്ഷ';

  @override
  String get assessmentResultCardEyeScan => 'കണ്ണ്\nസ്കാൻ';

  @override
  String get viewReportButton => 'റിപ്പോർട്ട് കാണുക';

  @override
  String get updateButton => 'അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get assessmentCardUrgentConsult => 'തത്പരമായ പരാമർശം';

  @override
  String get assessmentCardRoutineCheckUp => 'നിയമിത പരിശീലനം';

  @override
  String get assessmentCardEarlyCheckUp => 'പ്രാഥമിക പരിശീലനം';

  @override
  String get testAgainButton => 'വീണ്ടും പരീക്ഷ ചെയ്യുക';

  @override
  String get homeButton => 'ഹോം';

  @override
  String get homeTriageCardTitle => 'ഞങ്ങളുടെ കണ്ണുകൾ ഏറ്റവും മൂല്യപ്രാധാന്യമുള്ള ആസ്തികൾ ആണ്.';

  @override
  String get homeTriageCardDescription => 'കണ്ണ് പ്രശ്നങ്ങൾ മുമ്പായി സമയത്ത് പരീക്ഷിക്കുകയാണ് നടത്തുന്നത്.';

  @override
  String get homeTriageCardTest => 'കണ്ണ് പരീക്ഷ ആരംഭിക്കുക';

  @override
  String get homeHelplineCardDescrition => 'ഏറ്റവും അപ്രതീക്ഷിത ദൃഷ്ടി ഇഴഞ്ഞ സമയത്ത്, ഈ ആപത്തെത്തുവണമെന്ന് ഈ എയ്ഡ് ഹെൽപ്പ്ലൈൻ അയയ്ക്കുക';

  @override
  String get inviteCardTitle => 'മറ്റുള്ളവരെ അമന്യമാക്കുക';

  @override
  String get inviteCardDescription => '5 ആപ്രവാസികൾക്കും കുടുംബസദസ്യര്‍ക്കും അമന്യമാക്കുക, അവരുടെ കണ്ണുകളെ മൂല്യാംകനം ചെയ്യുകയും ഭവിഷ്യത്തിൽ കണ്ണ് പ്രശ്നങ്ങൾ പിന്തുടർന്ന് തടയുകയും ചെയ്യുക.';

  @override
  String get inviteCardInvitation => 'ഇപ്പോൾ അമന്യമാക്കുക';

  @override
  String get partnerCardTitle => 'പങ്കിടുത്തിയത്';

  @override
  String get languageSelection => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get profileTitle => 'പ്രൊഫൈൽ';

  @override
  String get eyeAssessmentEnterLabel => 'ഇവിടെ പ്രവേശിക്കുക';

  @override
  String get profilePageAddressDetails => 'വിലാസത്തിന്റെ വിശദാംശങ്ങൾ';

  @override
  String get profilePaeCheckReports => 'നിങ്ങളുടെ റിപ്പോർട്ടുകൾ പരിശോധിക്കുക';

  @override
  String get bottomNavItemEyeTest => 'നേത്ര പരിശോധന';

  @override
  String get bottomNavItemAppointment => 'നിയമനങ്ങൾ';

  @override
  String get memberSelection => 'അംഗം തിരഞ്ഞെടുക്കുക';

  @override
  String get triageAlerDialogBoxTitle => 'വീണ്ടും ചെയ്യാനുള്ള ഘട്ടങ്ങൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get scannerTitle => 'സ്കാനർ';

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
