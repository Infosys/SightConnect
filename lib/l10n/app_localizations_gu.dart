import 'app_localizations.dart';

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} ના ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'અરે! હું મારી આંખોની સંભાળ રાખવા માટે સાઇટકનેક્ટ એપ્લિકેશનનો ઉપયોગ કરું છું, અને તમારે પણ કરવી જોઈએ! તમારી આંખોનું મૂલ્યાંકન કરો અને સાઇટકનેક્ટ એપ્લિકેશનથી સમયસર સારવાર મેળવો. તે એક અનોખી એપ્લિકેશન છે જે તમારા હાથમાં નિવારક આઈકેર લાવે છે. જ્યારે તમે સાઇન અપ કરો ત્યારે મારા રેફરલ કોડનો ઉપયોગ કરો. હવે તેને મેળવોઃ https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'મહેરબાની કરીને મોકલેલ ઓ. ટી. પી. દાખલ કરો ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'ફરીથી મોકલો ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} દર્દીની એપોઇન્ટમેન્ટ હોય છે';
  }

  @override
  String vgEmptyResults(String type) {
    return 'હાલમાં કોઈ પ્રકાર નથી. ઉમેરો ${type} પર ટેપ કરો';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ID, નામ દ્વારા શોધો';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'કટોકટીના કિસ્સામાં, કૃપા કરીને ${tollFreeNumber} પર ફોન કરો';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'તમને ${referredBy} દ્વારા સંદર્ભિત કરવામાં આવ્યા છે';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'મહેરબાની કરીને ખાતરી કરો કે કેમેરા તમારા ચહેરાથી ${distance} સે. મી. દૂર છે.';
  }

  @override
  String get questionnaireTitle => 'આંખના મૂલ્યાંકનના પ્રશ્નો';

  @override
  String get questionnaireExitDialog => 'આ પ્રશ્નોના જવાબ આપવાથી તમારી આંખની સમસ્યાઓને ઓળખવામાં મદદ મળશે. શું તમે ખરેખર બહાર નીકળવા માંગો છો?';

  @override
  String get visualAcuityTitle => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ';

  @override
  String get visualAcuityDescription => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ એ આંખની પરીક્ષા છે જે તપાસે છે કે તમે ચોક્કસ અંતરથી અક્ષર અથવા પ્રતીકની વિગતો કેટલી સારી રીતે જુઓ છો. આ ઝડપી પરીક્ષણ હમણાં કરો!';

  @override
  String get visualAcuityHowToPerform => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ કેવી રીતે કરવું?';

  @override
  String get visualAcuityViewStepsToPerform => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ કરવાના પગલાંઓ જુઓ';

  @override
  String get visualAcuityCompletionDialog => 'પૂર્ણ થયું! બંને આંખો માટે દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ પૂર્ણ થયું છે. તમારે આગળ તમારી આંખના ફોટા લેવાની જરૂર છે.';

  @override
  String get visualAcuityExitDialog => 'તમારી આંખની સમસ્યા વિશે સમજવા માટે દૃષ્ટિની તીક્ષ્ણતા એ એક મહત્વપૂર્ણ કસોટી છે. શું તમે ખરેખર બહાર નીકળવા માંગો છો?';

  @override
  String get swipeGestureTab => 'સ્વાઇપ હાવભાવ';

  @override
  String get voiceAssistTab => 'અવાજ સહાય';

  @override
  String get distanceString => 'અંતર';

  @override
  String get leftEyeString => 'ડાબી આંખ';

  @override
  String get rightEyeString => 'જમણી આંખ';

  @override
  String get bothEyesString => 'બન્ને આંખો';

  @override
  String get visualAcuityLeftEyeHeader => 'ટેસ્ટ 2 -ડાબી આંખ';

  @override
  String get visualAcuityLeftEyeInstructions => 'પોપચાને દબાવ્યા વિના, તમારી જમણી આંખને તમારા હાથથી ઢાંકી દો. જો તમે ચશ્મા પહેર્યા હોય તો તમારો હાથ ચશ્મા પર મૂકો.';

  @override
  String get visualAcuityRightEyeHeader => 'પરીક્ષણ 1-જમણી આંખ';

  @override
  String get visualAcuityRightEyeInstructions => 'પોપચાને દબાવ્યા વિના, તમારી ડાબી આંખને તમારા હાથથી ઢાંકી દો. જો તમે ચશ્મા પહેર્યા હોય તો તમારો હાથ ચશ્મા પર મૂકો.';

  @override
  String get visualAcuityBothEyeHeader => 'પરીક્ષણ 3-બન્ને આંખો';

  @override
  String get visualAcuityBothEyeInstructions => 'તમારી કોઈપણ આંખને ઢાંકશો નહીં અને બંને આંખો સાથે આગળ દેખાતા પ્રતીકોને જોશો નહીં.';

  @override
  String get overlayHeaderDirection => 'દિશા નિર્દેશ';

  @override
  String get overlayDescription => 'તમે દરેક પ્રતીકની દિશાઓને કેવી રીતે સમજો છો તે અહીં છે.';

  @override
  String get overlaySymbolDirectionText => 'પ્રતીક દિશાઃ';

  @override
  String get directionDown => 'નીચે';

  @override
  String get directionUp => 'ઉપર';

  @override
  String get directionLeft => 'ડાબી';

  @override
  String get directionRight => 'જમણી';

  @override
  String get dontShowAgainString => 'ફરી ન બતાવો';

  @override
  String get visualAcuityCarouselTitle => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ કરવાના પગલાં';

  @override
  String get eyeScanTitle => 'આંખનું સ્કેન';

  @override
  String get eyeScanDescription => 'તમે નજીક છો! માત્ર એક વધુ પરીક્ષણ બાકી છે. પછી તમારી આંખોના ફોટા લો. ';

  @override
  String get eyeScanHowToPerform => 'તમારી આંખોને કેવી રીતે સ્કેન કરવી?';

  @override
  String get eyeScanViewStepsToPerform => 'તમારી આંખોને કેવી રીતે સ્કેન કરવી તે જાણવા માટે પગલાંઓ જુઓ.';

  @override
  String get eyeScanExitDialog => 'આંખની તપાસ તમારી આંખની સમસ્યા વિશે વધુ સમજવામાં મદદ કરે છે. શું તમે ખરેખર બહાર નીકળવા માંગો છો?';

  @override
  String get captureRightEyeString => 'જમણી આંખનું  કેપ્ચર';

  @override
  String get captureLeftEyeString => 'ડાબી આંખનું  કેપ્ચર';

  @override
  String get skipButton => 'સ્કિપ કરો';

  @override
  String get startTestText => 'ટેસ્ટ શરૂ કરો';

  @override
  String get continueButton => 'ચાલુ રાખો';

  @override
  String get startButton => 'પ્રારંભ કરો';

  @override
  String get nextButton => 'આગામી તા.';

  @override
  String get proceedButton => 'આગળ વધો';

  @override
  String get yesButton => 'હા.';

  @override
  String get noButton => 'ના.';

  @override
  String get exitButton => 'બહાર નીકળો';

  @override
  String get okButton => 'ઠીક છે.';

  @override
  String get knowMoreButton => 'વધુ જાણો';

  @override
  String get seeAllButton => 'બધા જુઓ';

  @override
  String get tryAgainButton => 'ફરી પ્રયાસ કરો';

  @override
  String get shareNowButton => 'હવે શેર કરો';

  @override
  String get retryButton => 'ફરી પ્રયાસ કરો';

  @override
  String get homeCarousal1Title => '40 વર્ષ અને તેથી વધુ ઉંમરના પુખ્ત વયના લોકોમાં મોતિયાનો ફેલાવો અને તેની સાથે સંકળાયેલા પરિબળો';

  @override
  String get homeCarousal1Description => 'મોતિયા અને તેની સાથે સંકળાયેલા પરિબળોની વ્યાપકતા પર નમૂનાની પ્રક્રિયાની યોજનાબદ્ધ રજૂઆત';

  @override
  String get homeCarousal2Title => 'આંખની 7 સમસ્યાઓ ચૂકી ન જવી જોઈએ!';

  @override
  String get homeCarousal2Description => '\r\n\r\nઆંખની 7 સમસ્યાઓનું પરીક્ષણ કરાવવુંઃ\r\n\r\n \r\n\r\n• આંખની લાલાશ,\r\n\r\n•આંખોમાંથી પાણી આવવું,\r\n\r\n•આંખો પર સફેદ ડાઘા પડવા';

  @override
  String get homeCarousal3Title => 'આંખની સમસ્યાઓ. એવી ઘણી બાબતો છે જે તમે જોઈ શકતા નથી.';

  @override
  String get homeCarousal3Description => 'પણ દ્રષ્ટિ સંભાળ નિષ્ણાત કરી શકે છે.\r\n\r\nઆંખની સમસ્યાઓ ઓળખી કાઢો અને સમયસર સારવાર કરાવો જેથી પછીથી જટિલતાઓને ટાળી શકાય.';

  @override
  String get myConnectionsTitle => 'મારા સભ્યો';

  @override
  String get myConnectionsAddMember => 'સભ્ય ઉમેરો';

  @override
  String get myConnectionsServiceNotAvailable => 'સેવા ઉપલબ્ધ નથી';

  @override
  String get myConnectionsAdd => 'ઉમેરો';

  @override
  String get recentServicesTitle => 'મારી તાજેતરની સેવાઓ';

  @override
  String get recentServicesEyeAssessment => 'આંખનું મૂલ્યાંકન';

  @override
  String get recentServicesVisualAcuityTest => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ ';

  @override
  String get nearbyVisionCentersTitle => 'નજીકના દ્રષ્ટિ કેન્દ્રો';

  @override
  String get nearbyVisionCentersNotFound => 'કોઈ દ્રષ્ટિ કેન્દ્રો મળ્યાં નથી';

  @override
  String get tollFreeNumber => 'ટોલ ફ્રી નંબર';

  @override
  String get appDrawerTitle => 'મેનુ';

  @override
  String get appDrawerHome => 'ઘરગથ્થુ';

  @override
  String get appDrawerLanguageSelection => 'ભાષા પસંદગી';

  @override
  String get appDrawerAccessibility => 'ઍક્સેસિબિલિટી સેટિંગ્સ';

  @override
  String get appDrawerMyProfile => 'મારી પ્રોફાઇલ';

  @override
  String get appDrawerAssessmentsAndTests => 'મૂલ્યાંકન અને પરીક્ષણો';

  @override
  String get appDrawerScanner => 'QR કોડ સ્કેનર';

  @override
  String get appDrawerAboutUs => 'અમારા વિશે';

  @override
  String get appDrawerPrivacyPolicy => 'ગોપનીયતા અને ડેટા નીતિ';

  @override
  String get appDrawerHelpAndSupport => 'સહાય અને સમર્થન';

  @override
  String get appDrawerSignOut => 'સાઇન આઉટ કરો';

  @override
  String get aboutUsDescription => 'Sightconnect એક વપરાશકર્તા-મૈત્રીપૂર્ણ આંખની સંભાળ માટેની એપ્લિકેશન છે જે કૉલ પર સ્વ-મૂલ્યાંકન અને પરામર્શમાં મદદ કરે છે.\r\n\r\n\r\n\r\nઅમારા મિશનના કેન્દ્રમાં આંખની સંભાળને બધા માટે સુલભ બનાવવાની પ્રતિબદ્ધતા છે. એપ્લિકેશનને જીવનના તમામ ક્ષેત્રોના વપરાશકર્તાઓ દ્વારા તેમની ઉંમર, તકનીકી પૃષ્ઠભૂમિ અને સામાજિક અથવા આર્થિક પૃષ્ઠભૂમિને ધ્યાનમાં લીધા વિના સર્વસમાવેશક અને સુલભ બનાવવા માટે ડિઝાઇન કરવામાં આવી છે. એપ્લિકેશન અને તેની સામગ્રી અંગ્રેજી અને અન્ય સ્થાનિક ભાષાઓમાં ઉપલબ્ધ કરાવવામાં આવી છે. તે વપરાશકર્તાઓને તેમની આંખોનું સ્વ-મૂલ્યાંકન કરવામાં અને સમયસર સારવારની સલાહ મેળવવામાં મદદ કરે છે. એપ્લિકેશન અમારા વપરાશકર્તાઓને વ્યક્તિગત આંખની સંભાળના ઉકેલો પ્રદાન કરવા માટે નવીનતમ તકનીકો અને સાધનોનો ઉપયોગ કરે છે. તે તેમના જીવનને સરળ બનાવવા માટે વિવિધ સુવિધાઓ સાથે આવે છે.';

  @override
  String get aboutUsFeaturesTitle => 'વિશેષતાઓ';

  @override
  String get aboutUsFeaturesDescription => 'ઇન-એપ્લિકેશન આઈ ટેસ્ટિંગઃ આ એપ્લિકેશન તેના વપરાશકર્તાઓને થોડા પ્રશ્નોના જવાબ આપીને અને આગળના પગલાઓ અને ડૉક્ટરની મુલાકાત લેવા માટે યોગ્ય ભલામણો મેળવીને તેમની આંખોનું સ્વ-મૂલ્યાંકન કરવાની મંજૂરી આપે છે. વપરાશકર્તાઓના મિત્રો અને પરિવારને પણ ફાયદો થઈ શકે છે. | એપોઇન્ટમેન્ટ બુકિંગઃ વપરાશકર્તાઓ તેમની આંખોનું નિદાન કરવા માટે ઓનલાઇન ટેલી-પરામર્શ અને ડોકટરોની ઇન-ક્લિનિક મુલાકાતો બુક કરી શકે છે. | આઈ. વી. આર. કૉલ સેવાઓઃ અમારી આઈ. વી. આર. કૉલ સેવાઓ અંગ્રેજી અને સ્થાનિક ભાષાઓમાં ઉપલબ્ધ છે અને તે મૂળભૂત ફીચર ફોન ધરાવતા વપરાશકર્તાઓને પણ પૂરી પાડે છે. વપરાશકર્તાઓ કટોકટી દરમિયાન અથવા આંખ સંબંધિત કોઈપણ સમસ્યાઓ માટે તાત્કાલિક મદદ મેળવવા માટે અમારા આંખ સંભાળ વ્યાવસાયિકોને ડાયલ કરી શકે છે. તેઓ એપોઇન્ટમેન્ટ બુક કરવા અથવા વધુ સ્પષ્ટતા મેળવવા માટે પણ ફોન કરી શકે છે. | નજીકના ક્લિનિક્સઃ વપરાશકર્તાઓ તેમની નજીકના આંખની સંભાળ ક્લિનિક્સને શોધી શકે છે. | પ્રિસ્ક્રિપ્શનો અને અહેવાલોઃ વપરાશકર્તાઓના તમામ પ્રિસ્ક્રિપ્શનો અને અહેવાલો ખૂબ મુશ્કેલી વિના એક જ જગ્યાએથી મેળવી શકાય છે. | આંખના શિબિરઃ વપરાશકર્તાઓ તેમના મિત્રો અને પરિવારની આંખોની મફત તપાસ કરાવવા માટે નજીકના આંખના શિબિર વિશે માહિતી મેળવી શકે છે. | રીમાઇન્ડર્સ અને ચેતવણીઓઃ વપરાશકર્તાઓ તેમની આગામી મુલાકાત, દવા, અહેવાલો વગેરે સંબંધિત સમયસર ચેતવણીઓ અને રીમાઇન્ડર્સ પ્રાપ્ત કરી શકે છે.| વહેંચણીઃ વપરાશકર્તાઓ આ એપ્લિકેશન અને એપ્લિકેશનમાં પ્રદાન કરેલી અન્ય ઉપયોગી માહિતી તેમના મિત્રો અને પરિવારના સભ્યો સાથે શેર કરી શકે છે.';

  @override
  String get aboutUsConclusion => 'અમારા વપરાશકર્તા સમુદાયને વધુ સારી રીતે સેવા આપવા માટે અગ્રણી આંખની સંભાળના વ્યાવસાયિકોની મદદથી આ એપ્લિકેશન વિકસાવવામાં આવી છે. એક ઉજ્જવળ, તંદુરસ્ત વિશ્વ બનાવવા માટેના અમારા મિશનમાં અમારી સાથે જોડાઓ. આજે જ સાઇટકનેક્ટ એપ્લિકેશન ડાઉનલોડ કરો અને શેર કરો!';

  @override
  String get privacyPolicyDescription => 'એલ. વી. પ્રસાદ આઈ ઇન્સ્ટિટ્યૂટ, તેની પેટાકંપનીઓ, સહયોગીઓ અને સંલગ્ન કંપનીઓ (સામૂહિક રીતે "એલવીપીઇઆઈ", "અમને", "અમે" તરીકે ઓળખાય છે) તમારા અધિકારક્ષેત્રના કાયદા અનુસાર તમારા વ્યક્તિગત ડેટાની પ્રક્રિયા કરવા માટે પ્રતિબદ્ધ છે. અમે તમને વ્યક્તિગત ડેટાની પ્રક્રિયા વિશે નીચેની માહિતી સૂચિત કરીએ છીએ.';

  @override
  String get privacyPolicyPersonalDataTitle => 'એકત્રિત/પ્રક્રિયા કરાયેલ વ્યક્તિગત ડેટા ઘટકોઃ';

  @override
  String get privacyPolicyPersonalDataDescription => 'તમે અને તમારા જોડાણોના વ્યક્તિગત ડેટા જેમ કે (આમાંના કેટલાક ડેટા વૈકલ્પિક હશે) મોબાઇલ નંબર, નામ, જન્મ તારીખ, લિંગ (પુરુષ/સ્ત્રી), સરનામું (પિન કોડ), દર્દી આઈડી, જોડાણ, આંખના ટ્રાઇએજ પ્રશ્નાવલીના જવાબો, આંખના ટ્રાઇએજ અહેવાલ, આંખની છબીઓ, તમારી આંખની છબી સામે ટેગ કરેલા લક્ષણો, ફોટોગ્રાફ, સરનામું, જિલ્લાનું નામ (જિલ્લા કોડ સહિત), રાજ્યનું નામ (રાજ્ય કોડ સહિત), પેટા જિલ્લાનું નામ, ગામનું નામ, નગરનું નામ, ઇમેઇલ સરનામું, છેલ્લું નામ, મધ્ય નામ, રક્ત જૂથ, ઊંચાઈ, વજન, વ્યવસાય, આભા વિગતો (તમારા દ્વારા પ્રદાન કરેલ), તમારી એપ્લિકેશનની પરવાનગીઓના આધારે એપ્લિકેશનને ઍક્સેસ કરવા માટે કેમેરા, જીપીએસ સ્થાન ગેલેરી, સંપૂર્ણ નેટવર્ક ઍક્સેસ, નેટવર્ક જોડાણો, ઉપકરણ માહિતી જુઓ.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'પ્રક્રિયાનો હેતુઃ ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'તમને અને તમારા જોડાણો માટે (તમારા દ્વારા પૂરા પાડવામાં આવેલ) આંખ સંબંધિત ઓનલાઇન આરોગ્ય તપાસ માટે અમારી એપ્લિકેશન અને તેની સુવિધાઓને ઍક્સેસ કરવા માટે તમને સક્ષમ કરવા માટે. | આંખ સંબંધિત કોઈપણ બીમારી/આરોગ્ય સમસ્યાઓના કિસ્સામાં, લાગુ પડે તે પ્રમાણે, એલ. વી. પી. ઈ. આઈ. હેઠળ વિઝન ટેકનિશિયન, નેત્રરોગ વિશેષજ્ઞોનો સંપર્ક કરવા માટે તમને સક્ષમ કરવા માટે. | તમારા સ્વાસ્થ્ય પરામર્શ અને નિદાનના ભાગ રૂપે કોઈપણ આંખના સ્વાસ્થ્ય સંબંધિત માહિતી (અહેવાલો વગેરે સહિત) પ્રદાન કરવા માટે અને સ્વાસ્થ્ય સંબંધિત ચિંતાઓના ભાગ રૂપે તમારો અથવા તમારા જોડાણોનો સંપર્ક કરવા માટે.| વધુ સારા નિદાન માટે અમારા અધિકૃત એલ. વી. પી. ઈ. આઈ. નેત્રરોગ વિશેષજ્ઞો/ડોકટરો સાથે તમારી આંખના સ્વાસ્થ્યની માહિતી શેર કરવા માટે અને જો તમે સારવાર માટે એલ. વી. પી. ઈ. આઈ. ડોકટરો સુધી પહોંચવામાં/જાણ કરવામાં અસમર્થ હોવ તો આંખની સમસ્યાની ગંભીરતાને આધારે ગ્રામ પ્રમુખ/મેયર વગેરે (જ્યાં લાગુ હોય ત્યાં તમારા જી. પી. એસ. સ્થાનના આધારે) સાથે શેર કરવા માટે.|  તમારી નજીકના એલ. વી. પી. ઈ. આઈ. સાથે જોડાયેલા આંખના ક્લિનિક્સ/હોસ્પિટલોની સૂચિ પ્રદાન કરવા માટે, જેથી તમે આંખ સંબંધિત કોઈ પણ સમસ્યાના કિસ્સામાં સંપર્ક કરી શકો. | આંખની છબી, આંખની છબી સંબંધિત લક્ષણો, ઉંમર, રક્ત જૂથ, કોઈપણ ઓળખકર્તા વિનાનું સ્થાન જેવી માહિતીનો ઉપયોગ કરવા માટે ભવિષ્યમાં યોગ્ય નિદાન પ્રદાન કરવાના હેતુથી અમારા મશીન લર્નિંગ અથવા આર્ટિફિશિયલ ઇન્ટેલિજન્સ મોડેલ્સને તાલીમ આપવામાં મદદ કરવા માટે. | આંખના સ્વાસ્થ્ય માટે જાગૃતિ લાવવા માટે રીમાઇન્ડર, સંદેશાવ્યવહાર, ઝુંબેશ મેલર્સ મોકલવા માટે.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ડેટા પ્રાપ્તકર્તાઓ/સુલભઃ';

  @override
  String get privacyPolicyDataRecipientsDescription => 'તમારા દ્વારા શેર કરવામાં આવેલ વ્યક્તિગત ડેટા (સંવેદનશીલ વ્યક્તિગત ડેટા સહિત) અધિકૃત એલ. વી. પી. ઈ. આઈ. કર્મચારીઓ જેમ કે ડોકટરો/નેત્રરોગ વિશેષજ્ઞો, વિઝન ટેકનિશિયન, વિઝન ગાર્ડિયન્સ, એલ. વી. પી. ઈ. આઈ. ના પ્રતિનિધિઓ, આંતરિક/બાહ્ય ઓડિટર્સ, જ્યાં લાગુ હોય ત્યાં સરકારી અધિકારીઓ અને અમારા અધિકૃત સેવા પ્રદાતા ઇન્ફોસિસ માટે સુલભ હશે.';

  @override
  String get privacyPolicyDataTransferTitle => 'ડેટા ટ્રાન્સફર અને સંગ્રહઃ';

  @override
  String get privacyPolicyDataTransferDescription => 'તમારા દ્વારા શેર કરવામાં આવેલ વ્યક્તિગત ડેટા અમારા આંતરિક સર્વર પર સંગ્રહિત થશે, જે ભારતમાં અમારા અધિકૃત સેવા પ્રદાતાના સર્વર છે.';

  @override
  String get privacyPolicyDataSecurityTitle => 'ડેટા સુરક્ષાઃ';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI તમારા વ્યક્તિગત ડેટાની સુરક્ષા માટે વહીવટી, ભૌતિક સુરક્ષા અને તકનીકી નિયંત્રણો સહિત વાજબી અને યોગ્ય સુરક્ષા પદ્ધતિઓ અને પ્રક્રિયાઓ અપનાવે છે.';

  @override
  String get privacyPolicyDataRetentionTitle => 'ડેટા જાળવણીઃ';

  @override
  String get privacyPolicyDataRetentionDescription => 'વ્યક્તિગત ડેટા કે જેને હવે કાનૂની અને વ્યવસાયિક જરૂરિયાતો અનુસાર જાળવી રાખવાની જરૂર નથી, તેનો સુરક્ષિત રીતે નિકાલ કરવામાં આવશે.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ડેટા વિષય અધિકારોઃ';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'તમે કોઈપણ સમયે તમારી વ્યક્તિગત માહિતીને ઍક્સેસ કરવા અને સુધારવા માટે હકદાર છો. કોઈપણ વિનંતીઓ, મુદ્દાઓ, ચિંતાઓ અથવા પ્રશ્નોના કિસ્સામાં તમે DSR> માટે સામાન્ય મેઇલ ID પ્રદાન કરવા માટે <LVPEI પર ઇમેઇલ મોકલીને LV પ્રસાદ ઓફિસનો સંપર્ક કરી શકો છો.';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'ઉપાડનો અધિકારઃ';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'જ્યાં અમે તમારી સંમતિના આધારે તમારા વ્યક્તિગત ડેટાની પ્રક્રિયા કરીએ છીએ, ત્યાં તમે ભવિષ્ય માટે કોઈપણ સમયે લાગુ DP કાયદા અનુસાર પ્રક્રિયા માટે તમારી સંમતિ પાછી ખેંચી શકો છો. આ તમારા ઉપાડ પહેલાં કોઈપણ પ્રક્રિયા કામગીરીની કાયદેસરતાને અસર કરશે નહીં. તમારી સંમતિ પાછી ખેંચવા માટે, તમે DSR> માટે સામાન્ય મેઇલ ID પ્રદાન કરવા માટે <LVPEI ને ઇમેઇલ મોકલી શકો છો.';

  @override
  String get privacyPolicyAcknowledgement => 'નીચે આપેલા બટન પર ક્લિક કરીને, તમે આથી સ્વીકારો છો અને સમજો છો કે સંવેદનશીલ વ્યક્તિગત ડેટા સહિત તમારો વ્યક્તિગત ડેટા ઉપરોક્ત રીતે એકત્રિત અને પ્રક્રિયા કરી શકાય છે અને આથી ઉપરોક્ત હેતુઓ માટે તેની સંમતિ આપો છો. તમે એ પણ સ્વીકારો છો કે સંવેદનશીલ વ્યક્તિગત ડેટા (તમારા સિવાય) સહિત કોઈપણ વ્યક્તિગત ડેટા તમે શેર કર્યો છે તે તેમની પાસેથી યોગ્ય સંમતિ લીધા પછી જ છે. તમે એ પણ સ્વીકારો છો કે તમે કોઈપણ વ્યક્તિગત ડેટા (સંવેદનશીલ વ્યક્તિગત ડેટા સહિત) શેર કરશો નહીં જે ઉપરોક્ત હેતુઓ માટે જરૂરી નથી. તમે એ પણ સ્વીકારો છો કે જ્યારે તમે સગીરનો વ્યક્તિગત ડેટા તેમના માતાપિતા/કાનૂની વાલી તરીકે શેર કરી રહ્યાં હોવ ત્યારે તમે ઉપર જણાવ્યા મુજબ તેમના ડેટા સંગ્રહ અને પ્રક્રિયા માટે સંમતિ આપો છો.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'ગોપનીયતા નીતિ સ્વીકારવામાં આવી';

  @override
  String get helpAndSupportReachTitle => 'અમારો સંપર્ક કરો';

  @override
  String get assessmentAndTestsSubtitle => 'અહીં અત્યાર સુધી કરવામાં આવેલા મૂલ્યાંકનોની ઝડપી ઝાંખી છે.';

  @override
  String get assessmentAndTestsReportsNotFound => 'કોઈ અહેવાલો મળ્યા નથી';

  @override
  String get eyeAssessmentTitle => 'આંખનું મૂલ્યાંકન';

  @override
  String get eyeAssessmentSubtitle => 'તમારી, તમારા મિત્રો અને પરિવારના સભ્યોની આંખની સમસ્યાઓનું થોડા પગલાંઓમાં મૂલ્યાંકન કરાવો. તમને તમારી આંખની સમસ્યાઓથી સંબંધિત લક્ષણોને સમજવા માટે પ્રશ્નો પૂછવામાં આવશે અને ત્યારબાદ દ્રશ્ય પરીક્ષણો કરવામાં આવશે.';

  @override
  String get eyeAssessmentGetMemberLabel => 'સભ્ય બદલો';

  @override
  String get eyeAssessmentProceedButton => 'આગળ વધો';

  @override
  String get eyeAssessmentBrightnessLabel => 'તેજસ્વીતા 80 ટકા પર સેટ કરવામાં આવી છે';

  @override
  String get eyeAssessmentBrightnessError => 'મહેરબાની કરીને હાથ વડે તેજને 80 ટકા પર સેટ કરો';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'પ્રશ્ન હજુ સુધી આધારભૂત નથી';

  @override
  String get eyeAssessmentPopUpHeading => 'મૂલ્યાંકન';

  @override
  String get eyeAssessmentPopUpBody => 'શું તમને આંખોની સમસ્યા છે?';

  @override
  String get eyeAssessmentPopUpYesButton => 'હા.';

  @override
  String get eyeAssessmentPopUpNoButton => 'ના.';

  @override
  String get visualAcuityTestInstructionOne => 'સારી રીતે પ્રકાશમાં આરામથી બેસો. તમે તેજમાં અચાનક ફેરફાર અનુભવી શકો છો, ચિંતા કરશો નહીં કે શ્રેષ્ઠ પરિણામ આપવા માટે સ્ક્રીન ઓટો-બ્રાઇટનેસ પર સેટ થઈ ગઈ છે.';

  @override
  String get visualAcuityTestInstructionTwo => 'ખાતરી કરો કે તમે ઉપકરણને આંખના સ્તરે પકડો છો. જો તમે ચશ્મા અથવા કોન્ટેક્ટ લેન્સ પહેરો છો, તો તેને ચાલુ રાખો.';

  @override
  String get visualAcuityTestInstructionThree => 'તમારી જાતને સ્ક્રીનથી 40 સે. મી. દૂર મૂકો. પરીક્ષણ સ્ક્રીનમાં અંતર બતાવવામાં આવશે.';

  @override
  String get visualAcuityTestInstructionFour => 'જો તમે ચશ્મા પહેરીને પરીક્ષણ કરી રહ્યા હોવ, તો જ્યારે માત્ર એક આંખની તપાસ કરવામાં આવે ત્યારે ચશ્મા પર તમારા હાથથી એક આંખને ઢાંકી દો.';

  @override
  String get skipAndProceedButton => 'સ્કિપ કરો અને સ્કેન માટે આગળ વધો';

  @override
  String get proceedToScanButton => 'સ્કેન માટે આગળ વધો';

  @override
  String get eyeAssessmentSteps => 'પગલાંઓ';

  @override
  String get eyeAssessmentStepOne => 'પગલું 1-આંખના મૂલ્યાંકનના પ્રશ્નો';

  @override
  String get eyeAssessmentStepTwo => 'પગલું 2-આંખના મૂલ્યાંકનના પ્રશ્નો';

  @override
  String get eyeAssessmentStepThree => 'પગલું 3-આંખના મૂલ્યાંકનના પ્રશ્નો';

  @override
  String get eyeAssessmentOngoing => 'ચાલુ છે.';

  @override
  String get eyeAssessmentCompleted => 'પૂર્ણ થયું';

  @override
  String get eyeAssessmentPending => 'બાકી છે';

  @override
  String get eyeAssessmentResults => 'મૂલ્યાંકન પરિણામો';

  @override
  String get eyeAssessmentCompleteSteps => 'પરિણામો જોવા માટે તમામ પગલાંઓ પૂર્ણ કરો';

  @override
  String get eyeAssessmentToolTip => 'મહેરબાની કરીને ખાતરી કરો કે ફ્લેશ બંધ છે અને તેજ 80 ટકા પર સેટ છે';

  @override
  String get eyeScanInstructionOne => 'ફ્રેમ પર ચહેરો યોગ્ય રીતે મૂકીને કેમેરાને પકડી રાખો.';

  @override
  String get eyeScanInstructionTwo => 'તમારા ફોનના પાછળના કેમેરાનો ઉપયોગ કરીને આંખોની છબી લો.';

  @override
  String get eyeScanInstructionThree => 'ખાતરી કરો કે ફ્લેશ સાથે સારી રીતે પ્રકાશિત વિસ્તારમાં રહો.';

  @override
  String get eyeScanInstructionFour => 'વધુ સારી રીતે કેપ્ચર કરવા અને સ્પષ્ટતા માટે, ચિત્રને ક્લિક કરવા માટે કોઈ બીજાને કહો.';

  @override
  String get eyeScanInstructionFive => 'ચિત્ર લેતી વખતે તમારા હાથથી એક આંખને ઢાંકી દો અને બીજી આંખથી સીધું આગળ જુઓ.';

  @override
  String get eyeScanInstructionSix => 'ચિત્ર શરૂ કરતા પહેલા પેનલની અંદર આંખને કેન્દ્રિત કરો.';

  @override
  String get eyeScanInstructionSeven => 'જ્યાં સુધી \'બીપ\' અવાજ ફોટાના અંતનો સંકેત ન આપે ત્યાં સુધી ફ્લેશ બંધ ન થાય ત્યાં સુધી આંખો ખુલ્લી રાખો.';

  @override
  String get eyeAssessmentNote => 'નોંધ: અહીં બતાવેલ છબીઓ માત્ર સંકેત માટે છે. તેઓ વાસ્તવિક જીવનમાં સમાન રીતે દેખાતા નથી.';

  @override
  String get agreeButton => 'હું સંમત છું.';

  @override
  String get consentPageCheckbox => 'હું નિયમો અને શરતો સાથે સંમત છું';

  @override
  String get confirmButton => 'પુષ્ટિ કરો';

  @override
  String get discardButton => 'કાઢી નાંખો';

  @override
  String get imageNotCapturedToastMessage => 'છબી કેપ્ચર નથી';

  @override
  String get eyeCaptureCompletionDialogHeading => 'પરીક્ષણ પૂર્ણ થયું';

  @override
  String get eyeCaptureCompletionDialogBody => 'તમે પરીક્ષા પૂર્ણ કરી લીધી છે. પરિણામ જોવા માટે મહેરબાની કરીને નીચેના બટન પર ક્લિક કરો.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'પરિણામ જુઓ';

  @override
  String get eyeCaptureTriageSavedLocally => 'ટ્રાઇએજને સ્થાનિક રીતે સાચવવામાં આવ્યું';

  @override
  String get visualAcuityTestResults => 'દ્રશ્ય તીક્ષ્ણતા પરીક્ષણ પરિણામો';

  @override
  String get assessmentResultPageMoreDetailsText => 'વધુ વિગતો માટે નજીકના વિઝન સેન્ટરની મુલાકાત લો. અમારા વિઝન ટેકનિશિયન સાથે વાત કરવા માટે ટોલ ફ્રી નંબર પર કૉલ કરો.';

  @override
  String get assessmentReportButton => 'આંખ મૂલ્યાંકન અહેવાલ';

  @override
  String get notificationsTitle => 'સૂચનાઓ';

  @override
  String get notificationsNotAvailable => 'કોઈ સૂચનાઓ નથી';

  @override
  String get servicesPatientCare => 'દર્દી સંભાળ';

  @override
  String get reportAssessmentId => 'મૂલ્યાંકન આઈડી';

  @override
  String get reportDateAndTime => 'તારીખ અને સમય';

  @override
  String get reportSeverityAbnormal => 'અસામાન્ય પરીક્ષણ';

  @override
  String get reportSeverityHigh => 'પ્રથમ પરીક્ષણ';

  @override
  String get reportSeverityLow => 'નિયમિત પરીક્ષણ';

  @override
  String get reportDataUnavailable => 'ડેટા ઉપલબ્ધ નથી';

  @override
  String get reportTumblingTitle => 'એક્યુટ ટેસ્ટ - ટંબ્લિંગ ઈ';

  @override
  String get rightCornea => 'જમણી નેત્રનું વિકલ્પ';

  @override
  String get leftCornea => 'ડાબી નેત્રનું વિકલ્પ';

  @override
  String get myProfileGeneralInfo => 'સામાન્ય માહિતી';

  @override
  String get myProfileAge => 'ઉંમર';

  @override
  String get myProfileAddress => 'સરનામું';

  @override
  String get myProfileLine => 'લાઇન';

  @override
  String get myProfileCity => 'શહેર';

  @override
  String get myProfileDistrict => 'જિલ્લો';

  @override
  String get myProfileState => 'રાજ્ય';

  @override
  String get myProfilePinCode => 'પિન કોડ';

  @override
  String get submitButton => 'સબમિટ કરો';

  @override
  String get swipeGestureError => 'ખોટો સ્વાઇપ! મહેરબાની કરીને ફરીથી પ્રયતન કરો.';

  @override
  String get swipeGestureCardText => 'પ્રતીકની દિશામાં સ્વાઇપ કરો';

  @override
  String get assessmentResultCardAssessmentQuestions => 'મૂલ્યાંકન\r\n\r\nપ્રશ્નો';

  @override
  String get assessmentResultCardAcuityTest => 'ઉગ્રતા\r\n\r\nપરીક્ષણ';

  @override
  String get assessmentResultCardEyeScan => 'આંખ\r\n\r\nસ્કેન';

  @override
  String get viewReportButton => 'રિપોર્ટ જુઓ';

  @override
  String get updateButton => 'અપડેટ કરો';

  @override
  String get assessmentCardUrgentConsult => 'અર્જન્ટ કન્સલ્ટ';

  @override
  String get assessmentCardRoutineCheckUp => 'રૂટિન ચેકઅપ';

  @override
  String get assessmentCardEarlyCheckUp => 'પ્રારંભિક તપાસ';

  @override
  String get testAgainButton => 'ફરીથી ટેસ્ટ કરો';

  @override
  String get homeButton => 'હોમ';

  @override
  String get homeTriageCardTitle => 'આપણા આંખો સૌથી મૂલ્યવાન સંપત્તિ છે.';

  @override
  String get homeTriageCardDescription => 'આંખના સમસ્યાઓને રોકવા સમયે તેની ટેસ્ટિંગ કરો.';

  @override
  String get homeTriageCardTest => 'આંખ ટેસ્ટ શરૂ કરો';

  @override
  String get homeHelplineCardDescrition => 'અચાનક દૃષ્ટિ નુકશાન થતાં, આ આપત્તિ હેલ્પલાઇનને કોલ કરો';

  @override
  String get inviteCardTitle => 'અન્યોને આમંત્રિત કરો';

  @override
  String get inviteCardDescription => '5 મિત્રો અને પરિવારના સભ્યોને આમંત્રિત કરો જેથી તેઓ તેમની આંખ મૂલ્યાંકન કરી શકે અને ભવિષ્યમાં આંખની સમસ્યાઓને રોકી શકે.';

  @override
  String get inviteCardInvitation => 'હવે આમંત્રિત કરો';

  @override
  String get partnerCardTitle => 'ભાગીદારી';

  @override
  String get languageSelection => 'ભાષા પસંદ કરો';

  @override
  String get profileTitle => 'પ્રોફાઇલ';

  @override
  String get eyeAssessmentEnterLabel => 'અહીં દાખલ કરો';

  @override
  String get profilePageAddressDetails => 'સરનામાંની વિગતો';

  @override
  String get profilePaeCheckReports => 'તમારા અહેવાલો તપાસો';

  @override
  String get bottomNavItemEyeTest => 'આંખની કસોટી';

  @override
  String get bottomNavItemAppointment => 'નિમણૂંકો';

  @override
  String get memberSelection => 'સભ્ય પસંદ કરો';

  @override
  String get triageAlerDialogBoxTitle => 'ફરીથી કરવાનાં પગલાં પસંદ કરો';

  @override
  String get scannerTitle => 'સ્કેનર';

  @override
  String get visualAcuityTestDistanceInstruction => 'કેમેરો ચોક્કોરથી 40 વર્ષ પહેલાં.';

  @override
  String get somethingWentWrong => 'કંઇક ખોટું થયું';

  @override
  String get triageUpdatedSuccessfully => 'ટ્રાઇજને સફળતાપૂર્વક અપડેટ કરવામાં આવ્યું';

  @override
  String get noPreviewAvailable => 'કોઈ પૂર્વાવલોકન ઉપલબ્ધ નથી';

  @override
  String get privacyPolicyTitle => 'ગોપનીયતા અને ડેટા સુરક્ષા';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'અમે નીચે આપેલા હેતુઓ માટે તમારા દ્વારા પ્રદાન કરવામાં આવેલા વ્યક્તિગત ડેટાની પ્રક્રિયા કરીએ છીએ જેમ કેઃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'તમે કેમેરાની ખૂબ નજીક છો, કેમેરાને આંખથી 40 સે. મી. દૂર મૂકો.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'તમે કૅમેરાથી ખૂબ દૂર છો, કેમેરાને આંખથી 40 સેમી દૂર મૂકો.';

  @override
  String get myProfileABHAID => 'એબીએચએ આઈડી';

  @override
  String get myProfileEmail => 'ઇ-મેઇલ';

  @override
  String get viewHistoryButton => 'ઇતિહાસ જુઓ';

  @override
  String get profilePagePersonalDetails => 'વ્યક્તિગત વિગતો';

  @override
  String get profilePageDateOfBirth => 'જન્મ તારીખ';

  @override
  String get profilePageGender => 'જાતિ';

  @override
  String get profilePageMobile => 'મોબાઇલ';

  @override
  String get profilePageHealthCardTitle => 'આરોગ્ય કાર્ડ';

  @override
  String get appointmentTitle => 'નિમણૂકો';

  @override
  String get appointmentSubtitle => 'તમામ નિમણૂકો';

  @override
  String get eyeBoxText => 'મહેરબાની કરીને છબીને વ્યવસ્થિત કરો અને ત્યાં સુધી મૂકો જ્યાં સુધી આંખોની આસપાસ લીલા બોક્સ ન દેખાય. આંખને નજીક ખસેડો અને ખાતરી કરો કે બૉક્સનો 40 ટકા ભાગ આંખથી ઢંકાયેલો છે.';

  @override
  String get bottomNavItemServices => 'સેવાઓ';

  @override
  String get smsContent => 'અરે! હું મારી આંખોની સંભાળ રાખવા માટે સાઇટકનેક્ટ એપ્લિકેશનનો ઉપયોગ કરી રહ્યો છું, અને તમારે પણ કરવો જોઈએ! તમારી આંખોનું મૂલ્યાંકન કરો અને સાઇટકનેક્ટ એપ દ્વારા સમયસર સારવાર મેળવો. તે એક અનોખી એપ્લિકેશન છે જે તમારા હાથમાં નિવારક આંખની સંભાળ લાવે છે. હવે તેને મેળવોઃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'સાઇટકનેક્ટ એપ દ્વારા તમારી આંખના સ્વાસ્થ્યને પ્રાથમિકતા આપો!';

  @override
  String get recentServicesCataractEyeTest => 'મોતિયાની આંખની તપાસ';

  @override
  String get recentServicesRedEyeTest => 'લાલ આંખ પરીક્ષણ';

  @override
  String get chatBotDefaultQuerySuggestions => 'આંખનું મૂલ્યાંકન શરૂ કરો | સામાન્ય આંખની સમસ્યાઓ | વધુ સારી દૃષ્ટિ માટે ટીપ્સ';

  @override
  String get chatBotWelcomeMessage => 'નમસ્તે, આજે હું તમને કેવી રીતે મદદ કરી શકું?';

  @override
  String get poweredByText => 'દ્વારા સંચાલિત';

  @override
  String get digitalHealthCard => 'ડિજિટલ જાહેર આરોગ્ય માળખું';

  @override
  String get inviteNowText => 'હમણાં આમંત્રણ આપો';

  @override
  String get resend => 'ફરીથી મોકલો';

  @override
  String get mobileNumber => 'મોબાઇલ નંબર';

  @override
  String get loginVerifyMobileNumber => 'તમારો મોબાઇલ નંબર ચકાસો';

  @override
  String get loginEnterMobileNumber => 'મહેરબાની કરીને મોબાઇલ નંબર દાખલ કરો';

  @override
  String get loginEnterValidMobileNumber => 'મહેરબાની કરીને માન્ય મોબાઇલ નંબર દાખલ કરો';

  @override
  String get loginUnableToSendOTP => 'આ નંબર પર ઓ. ટી. પી. મોકલવામાં અસમર્થ';

  @override
  String get loginGetOTP => 'ઓ. ટી. પી. મેળવો';

  @override
  String get loginInvalidOTP => 'અમાન્ય ઓ. ટી. પી.';

  @override
  String get loginDidntReceiveOTP => 'શું તમને ઓ. ટી. પી. મળ્યો નથી?';

  @override
  String get loginOTPSent => 'સફળતાપૂર્વક મોકલવામાં આવેલ ઓ. ટી. પી.';

  @override
  String get areYouSure => 'શું તમને ખાતરી છે?';

  @override
  String get triageExitConfirmation => 'શું તમે ટેસ્ટમાંથી બહાર નીકળવા માંગો છો?';

  @override
  String get triageReportEyeProblems => 'આંખની સમસ્યાઓની જાણ કરો';

  @override
  String get triageHowToReport => 'આંખની સમસ્યાઓની જાણ કેવી રીતે કરવી?';

  @override
  String get triageReportInstructions => 'જો તમને આંખ સંબંધિત સમસ્યાઓ હોય, તો તમે યોગ્ય માર્ગદર્શન મેળવવા માટે અહીં તમારી સમસ્યાઓની સ્વ-ઘોષણા કરી શકો છો અને તેનો ઉલ્લેખ કરી શકો છો. તમે અહીં તમારા મિત્રો અથવા પરિવારના સભ્યોની આંખની સમસ્યાઓનો પણ ઉલ્લેખ કરી શકો છો અને યોગ્ય માર્ગદર્શન મેળવી શકો છો. તમને આંખની સમસ્યાની પ્રકૃતિ અને ગંભીરતાને સમજવા માટે નીચેના વિભાગોમાં પ્રશ્નોનો સમૂહ પૂછવામાં આવશે. તમને કરવા માટેના પરીક્ષણો અને તમામ પ્રશ્નોના જવાબ આપ્યા પછી અનુસરવા માટેના પગલાંઓની ભલામણ અને માર્ગદર્શન આપવામાં આવશે.';

  @override
  String get assessment => 'મૂલ્યાંકન';

  @override
  String get triageOtherSymptomsQuestion => 'શું તમારી પાસે કોઈ અન્ય લક્ષણો છે?';

  @override
  String get triageEnterSymptoms => 'તમારા લક્ષણો અહીં દાખલ કરો';

  @override
  String get triageEyeAssessmentResults => 'આંખ મૂલ્યાંકન પરિણામો';

  @override
  String get triageTestId => 'ટેસ્ટ ID';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'આંખના સ્કેનને સફળતાપૂર્વક અપડેટ કરવામાં આવ્યું';

  @override
  String get triageErrorEyeScanNotUpdated => 'આંખના સ્કેનને અપડેટ કરવામાં આવ્યું નથી!';

  @override
  String get triageLeftEyeString => 'ડાબી આંખ';

  @override
  String get triageRightEyeString => 'જમણી આંખ';

  @override
  String get vaEyeTest => 'આંખની તપાસ';

  @override
  String get instructions => 'સૂચનો';

  @override
  String get vaSwipeUp => 'ઉપર સ્વાઇપ કરો';

  @override
  String get vaSwipeDown => 'નીચે સ્વાઇપ કરો';

  @override
  String get vaSwipeLeft => 'ડાબી બાજુ સ્વાઇપ કરો';

  @override
  String get vaSwipeRight => 'જમણી બાજુ સ્વાઇપ કરો';

  @override
  String get vaSwipeGestureError => 'અમાન્ય સ્વાઇપ હાવભાવ. મહેરબાની કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get permissionNotGranted => 'મંજૂરી આપવામાં આવી નથી.';

  @override
  String get serviceNotAvailable => 'સેવા ઉપલબ્ધ નથી';

  @override
  String get vaDistanceToFace => 'સામનો કરવા માટેનું અંતર';

  @override
  String get vaBringFaceInsideBox => 'બૉક્સની અંદર તમારો ચહેરો લાવો.';

  @override
  String get startAssessment => 'મૂલ્યાંકન શરૂ કરો';

  @override
  String get optoAddPatientInfo => 'દર્દીની માહિતી ઉમેરો';

  @override
  String get loggedOutMessage => 'તમે લૉગ આઉટ થયા છો';

  @override
  String get optoLogoutError => 'માફ કરશો, અમને મોબાઇલ એપ્લિકેશનમાં લૉગઆઉટ ભૂલનો સામનો કરવો પડ્યો.';

  @override
  String get optoLoggingOut => 'બહાર નીકળી રહ્યું છે...';

  @override
  String get hello => 'નમસ્તે.';

  @override
  String get optoGetStarted => 'ચાલો શરૂ કરીએ';

  @override
  String get optoCompletedTests => 'પૂર્ણ થયેલ પરીક્ષણો';

  @override
  String get optoThisMonth => 'આ મહિને તા.';

  @override
  String get today => 'આજે';

  @override
  String get services => 'સેવાઓ';

  @override
  String get optoAssessmentHistory => 'મૂલ્યાંકનનો ઇતિહાસ';

  @override
  String get optoEyeAssessments => 'આંખનું મૂલ્યાંકન';

  @override
  String get feedback => 'ફીડબેક';

  @override
  String get optoImproveApp => 'અમે ઈચ્છીએ છીએ કે તમારો પ્રતિસાદ અમારી એપ્લિકેશનમાં સુધારો કરે';

  @override
  String get assessments => 'મૂલ્યાંકન';

  @override
  String get optoPatientAssistance => 'શું દર્દીને મદદની જરૂર હતી?';

  @override
  String get optoVisualAcuity => 'વિઝ્યુઅલ એક્યુટી';

  @override
  String get optoPatientAided => 'શું દર્દીને મદદ કરવામાં આવી હતી?';

  @override
  String get optoEyeScan => 'આંખનું સ્કેન';

  @override
  String get optoLeaveFeedback => 'મહેરબાની કરીને તમારો પ્રતિસાદ નીચે આપો';

  @override
  String get optoNoInternet => 'કોઈ ઈન્ટરનેટ જોડાણ નથી';

  @override
  String get optoCheckInternet => 'મહેરબાની કરીને તમારું ઇન્ટરનેટ જોડાણ તપાસો અને ફરીથી પ્રયાસ કરો';

  @override
  String get optoSearchPatientId => 'દર્દી ID શોધો';

  @override
  String get optoRecentAssessments => 'તાજેતરના મૂલ્યાંકનો';

  @override
  String get optoSelectDateRange => 'મહેરબાની કરીને તારીખની શ્રેણી પસંદ કરો';

  @override
  String get optoDataNotFound => 'આ શોધ માટે માહિતી મળી નથી';

  @override
  String get optoAssessmentReport => 'મૂલ્યાંકન અહેવાલ';

  @override
  String get optoPID => 'પી. આઈ. ડી.';

  @override
  String get category => 'શ્રેણી';

  @override
  String get patientAssessmentAndTest => 'દર્દીનું મૂલ્યાંકન અને પરીક્ષણ';

  @override
  String get patientSelfTestReport => 'સ્વ-પરીક્ષણ અહેવાલ';

  @override
  String get patientClinicalReport => 'ક્લિનિકલ રિપોર્ટ';

  @override
  String get patientAppointmentTitle => 'નિમણુંક';

  @override
  String get patientBookAppointment => 'બુક એપોઇન્ટમેન્ટ';

  @override
  String get patientAppointmentSubtitle => 'તમારી નિમણૂકો';

  @override
  String get patientTelephoneConsultation => 'ટેલિફોન પરામર્શ';

  @override
  String get patientAddress => 'સરનામું';

  @override
  String get patientReschedule => 'પુનઃનિર્ધારિત કરો';

  @override
  String get patientCancel => 'રદ કરો';

  @override
  String get patientPID => 'પી. આઈ. ડી.';

  @override
  String get patientReportID => 'આઇડીની જાણ કરો';

  @override
  String get patientHideDetailedReport => 'વિગતવાર અહેવાલ છુપાવો';

  @override
  String get patientShowDetailedReport => 'વિગતવાર અહેવાલ બતાવો';

  @override
  String get patientEID => 'EID';

  @override
  String get patientViewHistoryButton => 'ઇતિહાસ જુઓ';

  @override
  String get patientViewReportButton => 'અહેવાલ જુઓ';

  @override
  String get patientNoMoreData => 'વધુ માહિતી નથી';

  @override
  String get patientErrorFetchingReport => 'અહેવાલ મેળવવામાં ભૂલ';

  @override
  String get patientTimeline => 'સમયરેખા';

  @override
  String get patientRoutineCheckup => 'નિયમિત તપાસ';

  @override
  String get patientAssessmentID => 'મૂલ્યાંકન ID';

  @override
  String get patientStartDate => 'શરૂઆતની તારીખ';

  @override
  String get patientIVRAssessment => 'આઈ. વી. આર. મૂલ્યાંકન';

  @override
  String get patientEarlyConsultationRecommended => 'પ્રારંભિક પરામર્શની ભલામણ કરવામાં આવી';

  @override
  String get patientCataractEyeReport => 'મોતિયા આંખનો અહેવાલ';

  @override
  String get patientRedEyeReport => 'લાલ આંખનો અહેવાલ';

  @override
  String get patientScanAgain => 'ફરીથી સ્કેન કરો';

  @override
  String get patientStepsToScan => 'રેટિનલ સ્કેનીંગ કરવાના પગલાં';

  @override
  String get patientProceedToScan => 'સ્કેન માટે આગળ વધો';

  @override
  String get patientSkipAndProceedToScan => 'સ્કિપ કરો અને સ્કેન માટે આગળ વધો';

  @override
  String get patientEyeScanner => 'આંખ સ્કેનર';

  @override
  String get patientErrorSelectCamera => 'પહેલા કેમેરા પસંદ કરો!';

  @override
  String get patientEyeBoxText => 'આંખ બોક્સ લખાણ';

  @override
  String get patientLoggedOut => 'તમે લૉગ આઉટ થયા છો';

  @override
  String get patientLogoutError => 'માફ કરશો, અમને મોબાઇલ એપ્લિકેશનમાં લૉગઆઉટ ભૂલનો સામનો કરવો પડ્યો.';

  @override
  String get patientUpdateProfile => 'પ્રોફાઇલ અપડેટ કરો';

  @override
  String get patientEdit => 'ફેરફાર કરો';

  @override
  String get patientProfileNotUpdated => 'રૂપરેખા સુધારવામાં આવી નથી';

  @override
  String get patientProfileUpdated => 'પ્રોફાઇલ અપડેટ કરવામાં આવી';

  @override
  String get patientReportUnavailable => 'અહેવાલ ઉપલબ્ધ નથી';

  @override
  String get patientClinicalReportNotFound => 'ક્લિનિકલ રિપોર્ટ મળ્યો નથી';

  @override
  String get patientRID => 'RID';

  @override
  String get patientUpdateUnavailable => 'આ ક્ષણે સુધારા ઉપલબ્ધ નથી';

  @override
  String get vgAddEvent => 'ઇવેન્ટ ઉમેરો';

  @override
  String get vgUploadingImageAddingEvent => 'છબી અપલોડ કરી રહ્યું છે અને ઇવેન્ટ ઉમેરી રહ્યું છે';

  @override
  String get vgEventTitle => 'પ્રસંગ શીર્ષક';

  @override
  String get vgPleaseEnterEndTime => 'મહેરબાની કરીને અંત સમય દાખલ કરો';

  @override
  String get vgShouldNotContainSpecialCharacter => 'તેમાં કોઈ વિશેષ અક્ષર ન હોવા જોઈએ.';

  @override
  String get vgEventDescription => 'પ્રસંગનું વર્ણન';

  @override
  String get vgAddPatient => 'દર્દી ઉમેરો';

  @override
  String get vgPatients => 'દર્દીઓ';

  @override
  String get vgDetails => 'વિગતો';

  @override
  String get vgTeammates => 'ટીમના સાથીઓ';

  @override
  String get vgEyeAssessment => 'આંખનું મૂલ્યાંકન';

  @override
  String get vgStart => 'પ્રારંભ કરો';

  @override
  String get vgEyeAssessmentDescription => 'તમારી, તમારા મિત્રો અને પરિવારના સભ્યોની આંખની સમસ્યાઓનું થોડા પગલાંઓમાં મૂલ્યાંકન કરો. તમને તમારી આંખની સમસ્યાઓથી સંબંધિત લક્ષણોને સમજવા માટે પ્રશ્નો પૂછવામાં આવશે અને ત્યારબાદ દ્રશ્ય પરીક્ષણો કરવામાં આવશે.';

  @override
  String get vgLogoutMessage => 'તમે લૉગ આઉટ થયા છો';

  @override
  String get vgLogoutErrorMessage => 'માફ કરશો, અમને મોબાઇલ એપ્લિકેશનમાં લૉગઆઉટ ભૂલનો સામનો કરવો પડ્યો.';

  @override
  String get vgWelcome => 'સ્વાગત છે.';

  @override
  String get vgServices => 'સેવાઓ';

  @override
  String get vgEvents => 'ઘટનાઓ';

  @override
  String get vgViewAll => 'બધા જુઓ';

  @override
  String get vtAssessmentReport => 'મૂલ્યાંકન અહેવાલ-ઇ. એ.';

  @override
  String get vtRemarks => 'ટિપ્પણીઓ';

  @override
  String get vtNoPatientFound => 'કોઈ દર્દી મળી આવ્યો નથી.';

  @override
  String get vtClose => 'બંધ કરો';

  @override
  String get vtBack => 'પાછા';

  @override
  String get vtSubmit => 'સબમિટ કરો';

  @override
  String get vtSomethingWentWrong => 'કંઇક ખોટું થયું';

  @override
  String get vtAssessmentClosedSuccessfully => 'મૂલ્યાંકન સફળતાપૂર્વક બંધ થયું';

  @override
  String get vtEyeScan => 'આંખનું સ્કેન';

  @override
  String get vtDashboard => 'ડેશબોર્ડ';

  @override
  String get vtRegisterPatient => 'દર્દીની નોંધણી કરો';

  @override
  String get vtTriage => 'ત્રિવિધતા';

  @override
  String get vtMarkMyAvailability => 'મારી ઉપલબ્ધતાને ચિહ્નિત કરો';

  @override
  String get vtIVRCallHistory => 'આઈ. વી. આર. કૉલ ઇતિહાસ';

  @override
  String get vtMarked => 'ચિહ્નિત થયેલ છે';

  @override
  String get vtPreliminaryAssessment => 'પ્રારંભિક મૂલ્યાંકન';

  @override
  String get vtAge => 'ઉંમર';

  @override
  String get vtGender => 'જાતિ';

  @override
  String get vtAddress => 'સરનામું';

  @override
  String get vtProfile => 'પ્રોફાઇલ';

  @override
  String get vtLogoutMessage => 'તમે લૉગ આઉટ થયા છો';

  @override
  String get vtLogoutError => 'માફ કરશો, અમને મોબાઇલ એપ્લિકેશનમાં લૉગઆઉટ ભૂલનો સામનો કરવો પડ્યો.';

  @override
  String get vtError => 'ભૂલ';

  @override
  String get vtPatient => 'દર્દી';

  @override
  String get vtMobile => 'મોબાઇલ';

  @override
  String get vtAssessmentID => 'મૂલ્યાંકન ID';

  @override
  String get vtStatus => 'સ્થિતિ';

  @override
  String get vtTimeline => 'સમયરેખા';

  @override
  String get vtCategory => 'શ્રેણી';

  @override
  String get vtNoDataFound => 'કોઈ માહિતી મળી નથી';

  @override
  String get appCameraCapture => 'કેપ્ચર';

  @override
  String get appCameraRetake => 'પુનઃપ્રાપ્ત કરો';

  @override
  String get appCameraUsePhoto => 'ફોટાનો ઉપયોગ કરો';

  @override
  String get appCameraCancel => 'રદ કરો';

  @override
  String get appCameraNotFound => 'કૅમેરો મળ્યો નથી';

  @override
  String get appCameraException => 'કેમેરા અપવાદ';

  @override
  String get appCameraProgressMessage => 'લોડ કરી રહ્યા છે...';

  @override
  String get internetLostNoConnection => 'કોઈ ઈન્ટરનેટ જોડાણ નથી';

  @override
  String get internetLostRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get secureJailbreak => 'એવું લાગે છે કે તમારું ઉપકરણ જેલબ્રોકન છે';

  @override
  String get secureRestrictedAccess => 'સુરક્ષાના કારણોસર, આ એપ્લિકેશનની ઍક્સેસ જેલબ્રોકન ઉપકરણો પર પ્રતિબંધિત છે.';

  @override
  String get secureExitApp => 'બહાર નીકળો એપ્લિકેશન';

  @override
  String get sharedErrorPageIssues => 'આપણે કેટલીક સમસ્યાઓનો સામનો કરી રહ્યા છીએ. મહેરબાની કરીને પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get appointmentBookingTitle => 'એપોઇન્ટમેન્ટ બુકિંગ';

  @override
  String get comingSoon => 'ટૂંક સમયમાં આવી રહ્યું છે...';

  @override
  String get miniappService => 'સેવા';

  @override
  String get miniappConsole => 'કન્સોલ';

  @override
  String get roleChooseYourRole => 'તમારી ભૂમિકા પસંદ કરો';

  @override
  String get roleNote => 'નોંધઃ તમે એપ્લિકેશનની અંદર તમારી ભૂમિકા બદલી શકતા નથી.';

  @override
  String get roleConfirm => 'પુષ્ટિ કરો';

  @override
  String get roleEyeCareProfessional => 'આંખની સંભાળ વ્યવસાયિક';

  @override
  String get roleVisionTechnician => 'વિઝન ટેકનિકલ';

  @override
  String get rolePatient => 'દર્દી';

  @override
  String get roleVisionGuardian => 'વિઝન ગાર્ડિયન';

  @override
  String get vtSearchText => 'પેશન્ટ આઈડી, મોબાઇલ નંબર અથવા નામ દ્વારા શોધો';

  @override
  String get emptyPatientsInfo => 'તેમની વિગતો જોવા માટે દર્દીઓને શોધવાનું શરૂ કરો.';

  @override
  String get vtPersonalDetails => 'વ્યક્તિગત વિગતો';

  @override
  String get vtHprId => 'એચ. પી. આર. આઇ. ડી.';

  @override
  String get vtEmailId => 'ઇમેઇલ ID';

  @override
  String get vtEducationalQualification => 'શૈક્ષણિક લાયકાત';

  @override
  String get vtAddressAndDoorNumber => 'સરનામું અને દરવાજો નંબર';

  @override
  String get vtCity => 'શહેર';

  @override
  String get vtState => 'રાજ્ય';

  @override
  String get vtPincode => 'પિનકોડ';

  @override
  String get vtOrganisationDetails => 'સંગઠનની વિગતો';

  @override
  String get vtOrgId => 'ઓર્ગેનાઈઝેશન ID';

  @override
  String get vtFacilityType => 'સુવિધાનો પ્રકાર';

  @override
  String get vtAssessments => 'મૂલ્યાંકન';

  @override
  String get vtNoAssessmentsFound => 'કોઈ મૂલ્યાંકન મળ્યું નથી';

  @override
  String get vtAnalytics => 'વિશ્લેષણ';

  @override
  String get vtTotalCases => 'કુલ કેસ';

  @override
  String get vtIvrCalls => 'IVR કૉલ્સ';

  @override
  String get vtClinicVisits => 'ક્લિનિકની મુલાકાતો';

  @override
  String get vtCasesClosed => 'બંધ થયેલા કેસ';

  @override
  String get vtCritical => 'ક્રિટિકલ';

  @override
  String get vtRegular => 'નિયમિત';

  @override
  String get vtAvgClosureTime => 'સરેરાશ. બંધ થવાનો સમય';

  @override
  String get vtByAge => 'ઉંમર પ્રમાણે';

  @override
  String get vtByGender => 'જાતિ દ્વારા';

  @override
  String get vtSymptoms => 'લક્ષણો';

  @override
  String get vtSearchByMobileNo => 'મોબાઇલ નંબર દ્વારા શોધો.';

  @override
  String get vtInvalidMobileNo => 'અમાન્ય મોબાઇલ નં.';

  @override
  String get vtCallLogEmpty => 'કૉલ લોગ ખાલી છે.. હજી સુધી કોઈ કૉલ કરવામાં આવ્યો નથી!';

  @override
  String get vtNoDataAvailable => 'કોઈ માહિતી ઉપલબ્ધ નથી';

  @override
  String get vtToday => 'આજે';

  @override
  String get vtYesterday => 'ગઈ કાલે';

  @override
  String get vtIvrCallNotAvailable => 'આઈ. વી. આર. કૉલ ઉપલબ્ધ નથી. ફરી પ્રયાસ કરો!';

  @override
  String get vtMarkUnavailable => 'અનુપલબ્ધ તરીકે ચિહ્નિત કરો';

  @override
  String get vtStartDate => 'શરૂઆતની તારીખ';

  @override
  String get vtEndDate => 'સમાપ્તિ તારીખ';

  @override
  String get vtStartTime => 'પ્રારંભ સમય';

  @override
  String get vtEndTime => 'સમાપ્તિ સમય';

  @override
  String get vtAddRemarksOptional => 'ટિપ્પણીઓ ઉમેરો (વૈકલ્પિક)';

  @override
  String get vtSave => 'સાચવો';

  @override
  String get vtCancel => 'રદ કરો';

  @override
  String get vtPleaseEnterRemark => 'મહેરબાની કરીને ટિપ્પણી દાખલ કરો';

  @override
  String get vtAssessment => 'મૂલ્યાંકન';

  @override
  String get vtIvrSelections => 'આઈ. વી. આર. પસંદગીઓ';

  @override
  String get vtLanguageSelection => 'ભાષા પસંદગી';

  @override
  String get vtEnglish => 'અંગ્રેજી';

  @override
  String get vtPatientType => 'દર્દીનો પ્રકાર';

  @override
  String get vtProblem => 'સમસ્યા';

  @override
  String get vtEyeSight => 'આંખની દૃષ્ટિ';

  @override
  String get vtVisionTechnician => 'વિઝન ટેકનિશિયન';

  @override
  String get vtRecommendedCenter => 'ભલામણ કરેલ કેન્દ્ર';

  @override
  String get vtAssessmentIDEA => 'મૂલ્યાંકન ID: EA';

  @override
  String get vtPid => 'પી. આઈ. ડી.: ઓ. પી.';

  @override
  String get vtAssessmentTimeline => 'મૂલ્યાંકન સમયરેખા';

  @override
  String get vtPleaseSelectEncounter => 'મહેરબાની કરીને એન્કાઉન્ટર પસંદ કરો';

  @override
  String get vtTimelineEA => 'સમયરેખાઃ EA';

  @override
  String get vtGeneralInformation => 'સામાન્ય માહિતી';

  @override
  String get vtDateOfBirth => 'જન્મ તારીખ';

  @override
  String get vtAssessmentEA => 'મૂલ્યાંકન EA';

  @override
  String get vtNotRegistered => 'તમે સિસ્ટમમાં નોંધાયેલા નથી. મહેરબાની કરીને મિસ્ડ કોલ આપો';

  @override
  String get vtOkay => 'ઠીક છે.';

  @override
  String get vtTakePicture => 'ચિત્ર લો';

  @override
  String get vtEye => 'આંખ';

  @override
  String get vtRetakePicture => 'ચિત્રને ફરીથી લો';

  @override
  String get vtNext => 'આગામી તા.';

  @override
  String get vtMrCode => 'એમ. આર. કોડ';

  @override
  String get vtEnterMrCode => 'અહીં એમ. આર. કોડ દાખલ કરો';

  @override
  String get vtPleaseEnterMrCode => 'મહેરબાની કરીને એમ. આર. કોડ દાખલ કરો';

  @override
  String get vtNote => 'નોંધ';

  @override
  String get vtEnterRecommendations => 'અહીં સૂચનો દાખલ કરો';

  @override
  String get vtSolutions => 'ઉકેલો (ઓ)';

  @override
  String get vtLeftEye => 'ડાબી આંખ';

  @override
  String get vtRightEye => 'જમણી આંખ';

  @override
  String get vtBothEyes => 'બન્ને આંખો';

  @override
  String get vtFilterBy => 'દ્વારા ફિલ્ટર કરો';

  @override
  String get vtLocation => 'સ્થાન';

  @override
  String get vtEnterTime => 'મહેરબાની કરીને સમય દાખલ કરો';

  @override
  String get vtEnterDate => 'મહેરબાની કરીને તારીખ દાખલ કરો';

  @override
  String get vtRecommendation => 'ભલામણ';

  @override
  String get vtVisitPrimaryCenter => 'પ્રાથમિક કેન્દ્રની મુલાકાત લો';

  @override
  String get vtVisitSecondaryCenter => 'માધ્યમિક કેન્દ્રની મુલાકાત લો';

  @override
  String get vtVisitTertiaryCenter => 'તૃતીય કેન્દ્રની મુલાકાત લો';

  @override
  String get vtVisitCenterOfExcellence => 'શ્રેષ્ઠતા કેન્દ્રની મુલાકાત લો';

  @override
  String get vtIvrCallQuestion => 'શું તમે આઈ. વી. આર. કૉલ પર છો?';

  @override
  String get vtYes => 'હા.';

  @override
  String get vtNo => 'ના.';

  @override
  String get vtRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get vtAssessmentQuestions => 'મૂલ્યાંકન પ્રશ્નો';

  @override
  String get vtVisionCenter => 'વિઝન સેન્ટર';

  @override
  String get vtVisualAcuity => 'વિઝ્યુઅલ એક્યુટી';

  @override
  String get vtInvalidValue => 'અમાન્ય મૂલ્ય';

  @override
  String get vtSeverity => 'ગંભીરતા';

  @override
  String get vtNoVisionCentersFound => 'કોઈ દ્રષ્ટિ કેન્દ્રો મળ્યાં નથી';

  @override
  String get vtRequestLocationPermission => 'સ્થાન પરવાનગીની વિનંતી કરો';

  @override
  String get vtAppSettings => 'એપ્લિકેશન સુયોજનો';

  @override
  String get vtEnterSomeText => 'મહેરબાની કરીને અમુક લખાણ દાખલ કરો';

  @override
  String get vtPrimary => 'પ્રાથમિક';

  @override
  String get vtDependent => 'આશ્રિત';

  @override
  String get vtAddMember => 'સભ્ય ઉમેરો';

  @override
  String get vtCompleteProfile => 'સંપૂર્ણ રૂપરેખા';

  @override
  String get vtPatientNotRegistered => 'દર્દી નોંધાયેલ નથી';

  @override
  String get vtPatientRegistered => 'નોંધાયેલ દર્દી';

  @override
  String get vtDependentNotAdded => 'આશ્રિત ઉમેરવામાં આવ્યું નથી';

  @override
  String get vtDependentAdded => 'આશ્રિત ઉમેરાયું';

  @override
  String get vtServiceNotAvailable => 'સેવા ઉપલબ્ધ નથી';

  @override
  String get vgEyeAssessments => 'આંખનું મૂલ્યાંકન';

  @override
  String get vgTotal => 'કુલ';

  @override
  String get vgCamps => 'શિબિર';

  @override
  String get vgDoorToDoor => 'દ્વારથી દ્વાર';

  @override
  String get vgByGender => 'જાતિ દ્વારા';

  @override
  String get vgMale => 'પુરૂષો';

  @override
  String get vgFemale => 'સ્ત્રી';

  @override
  String get vgOthers => 'અન્યો';

  @override
  String get vgByAge => 'ઉંમર પ્રમાણે';

  @override
  String get vgSlideAge => 'વર્ષ';

  @override
  String get vgSymptoms => 'લક્ષણો';

  @override
  String get vgRefractive => 'રીફ્રેક્ટિવ';

  @override
  String get vgCataract => 'મોતિયા';

  @override
  String get vgGlaucoma => 'ગ્લુકોમા';

  @override
  String get vgKeratitis => 'કેરાટાઇટિસ';

  @override
  String get vgBlepharitis => 'બ્લેફેરાઇટિસ';

  @override
  String get vgConjunctivitis => 'નેત્રસ્તર દાહ';

  @override
  String get vgServicesCreateEvent => 'ઇવેન્ટ બનાવો';

  @override
  String get vgServicesEyeAssessment => 'આંખનું મૂલ્યાંકન';

  @override
  String get vgServicesRegisterPatient => 'નવા દર્દીની નોંધણી કરો';

  @override
  String get vgAddPatients => 'દર્દીઓને ઉમેરો';

  @override
  String get vgEvent => 'ઇવેન્ટ';

  @override
  String get vgAddEventPhoto => 'ઇવેન્ટ ફોટો ઉમેરો';

  @override
  String get vgUploadImage => 'છબી અપલોડ કરો';

  @override
  String get vgAddPhotoInstruction => 'ઇવેન્ટનો ફોટો ઉમેરો જે થંબનેલ તરીકે બતાવવામાં આવશે';

  @override
  String get vgAddressDetails => 'સરનામાની વિગતો';

  @override
  String get vgVenueName => 'સ્થળનું નામ';

  @override
  String get vgVenueNameError => 'મહેરબાની કરીને સ્થળનું નામ દાખલ કરો';

  @override
  String get vgVenueNameSpecialCharError => 'તેમાં કોઈ વિશેષ અક્ષર ન હોવા જોઈએ.';

  @override
  String get vgPincode => 'પિનકોડ';

  @override
  String get vgPincodeError => 'માત્ર 6 અંકના પિનકોડની મંજૂરી છે';

  @override
  String get vgCityTownVillage => 'શહેર/નગર/ગામ';

  @override
  String get vgCityTownVillageError => 'મહેરબાની કરીને શહેર/નગર/ગામનું નામ દાખલ કરો';

  @override
  String get vgCityTownVillageSpecialCharError => 'તેમાં કોઈ વિશેષ અક્ષર ન હોવા જોઈએ.';

  @override
  String get vgCancel => 'રદ કરો';

  @override
  String get vgSave => 'સાચવો';

  @override
  String get vgAddEventImage => 'પ્રસંગની છબી ઉમેરો';

  @override
  String get vgEventAdded => 'ઇવેન્ટ ઉમેરવામાં આવી';

  @override
  String get vgEventNotAdded => 'ઇવેન્ટ ઉમેરવામાં આવી નથી';

  @override
  String get vgDateTime => 'તારીખ અને સમય';

  @override
  String get vgStartDate => 'શરૂઆતની તારીખ';

  @override
  String get vgStartTime => 'પ્રારંભ સમય';

  @override
  String get vgLocation => 'સ્થાન';

  @override
  String get vgViewOnMap => 'નકશા પર જુઓ';

  @override
  String get vgAddressAndDoorNumber => 'સરનામું અને દરવાજો નંબર';

  @override
  String get vgSubDistrictName => 'પેટા જિલ્લાનું નામ';

  @override
  String get vgVillageName => 'ગામનું નામ';

  @override
  String get vgDistrictName => 'જિલ્લાનું નામ';

  @override
  String get vgAbout => 'વિશે';

  @override
  String get vgEditEvent => 'પ્રસંગ સંપાદિત કરો';

  @override
  String get vgDeleteEvent => 'ઇવેન્ટ કાઢી નાંખો';

  @override
  String get vgErrorFetchingEventDetails => 'પ્રસંગની વિગતો મેળવવામાં ભૂલ';

  @override
  String get vgNoPatientRegistered => 'નામ સાથે કોઈ દર્દી નોંધાયેલ નથી. રજિસ્ટર પેશન્ટ પર ક્લિક કરો.';

  @override
  String get vgRegisterPatient => 'દર્દીની નોંધણી કરો';

  @override
  String get vgPrimary => 'પ્રાથમિક';

  @override
  String get vgDependent => 'આશ્રિત';

  @override
  String get vgAddMember => 'સભ્ય ઉમેરો';

  @override
  String get vgCompleteProfile => 'સંપૂર્ણ રૂપરેખા';

  @override
  String get vgStartAssessment => 'મૂલ્યાંકન શરૂ કરો';

  @override
  String get vgSearchPatientByPhoneNumber => 'ફોન નંબર દ્વારા દર્દીને શોધો';

  @override
  String get vgInvalidPhoneNumber => 'મહેરબાની કરીને માન્ય ફોન નંબર દાખલ કરો';

  @override
  String get vgServerError => 'સર્વર ભૂલ';

  @override
  String get vgPatient => 'દર્દી';

  @override
  String get vgReportId => 'આઇડીની જાણ કરો';

  @override
  String get vgNoEventFound => 'કોઈ ઘટના મળી નથી';

  @override
  String get vgTeamMateDeletedSuccessfully => 'ટીમમેટ સફળતાપૂર્વક કાઢી નાખવામાં આવ્યું';

  @override
  String get vgSomethingWentWrong => 'કંઇક ખોટું થયું';

  @override
  String get vgName => 'નામ';

  @override
  String get vgPhoneNumber => 'ફોન નંબર';

  @override
  String get vgErrorFetchingTeammatesDetails => 'ટીમના સાથીઓની વિગતો મેળવવામાં ભૂલ';

  @override
  String get vgTeamMateAddedSuccessfully => 'ટીમમેટ સફળતાપૂર્વક ઉમેરાયું';

  @override
  String get vgAddTeammate => 'ટીમમેટ ઉમેરો';

  @override
  String get vgPleaseEnter => 'મહેરબાની કરીને દાખલ કરો';

  @override
  String get vgPleaseEnterField => 'મહેરબાની કરીને ક્ષેત્ર દાખલ કરો';

  @override
  String get vgOr => 'અથવા';

  @override
  String get vgSearch => 'શોધો';

  @override
  String get vgEventDeletedSuccessfully => 'ઇવેન્ટ સફળતાપૂર્વક કાઢી નાખવામાં આવી';

  @override
  String get vgEventDeletionFailed => 'પ્રસંગ કાઢી નાખવામાં નિષ્ફળતા';

  @override
  String get vgEndTimeGreaterThanStartTime => 'અંતનો સમય શરૂઆતના સમય કરતાં વધારે હોવો જોઈએ.';

  @override
  String get vgNoPatientsPresent => 'હાલમાં કોઈ દર્દી નથી. "દર્દી ઉમેરો" પર ટેપ કરો.';

  @override
  String get textSize => 'ટેક્સ્ટનું કદ';

  @override
  String get increase => 'વધારો';

  @override
  String get decrease => 'ઘટાડો';

  @override
  String get reset => 'ફરીથી સેટ કરો';

  @override
  String get minimumTextSizeReached => 'ન્યૂનતમ ટેક્સ્ટ કદ પહોંચ્યો છે';

  @override
  String get maximumTextSizeReached => 'મહત્તમ ટેક્સ્ટ કદ પહોંચ્યો છે';

  @override
  String get chatClearChat => 'ચેટને સાફ કરો';

  @override
  String get chatEyeAssessmentRecommended => 'તમારા માટે આંખની આકારણીની ભલામણ કરવામાં આવે છે.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'શું તમે ટ્રાઇએજ આંખનું મૂલ્યાંકન કરવા માંગો છો?';

  @override
  String get chatChatbotNotAvailable => 'ચેટબોટ અત્યારે ઉપલબ્ધ નથી. મહેરબાની કરીને પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get chatTypeHere => 'અહીં ટાઈપ કરો...';

  @override
  String get switchProfile => 'પ્રોફાઇલ બદલો';

  @override
  String get switchRole => 'ભૂમિકા બદલો';

  @override
  String get switchTenant => 'ભાડૂતને બદલો';

  @override
  String get patientHeaderWelcomeText => 'સાઇટકનેક્ટમાં આપનું સ્વાગત છે! તમારી દૃષ્ટિની સંભાળ રાખવી મહત્વપૂર્ણ છે, અને અમે તમારા માટે દરેક પગલે અહીં છીએ.';

  @override
  String get triageTestCardHeader => 'તમારી આંખની તપાસ મફત છે...';

  @override
  String get triageTestCardBody1 => 'તમારા આંખના લક્ષણોનું ઝડપથી વિશ્લેષણ કરો.';

  @override
  String get triageTestCardBody2 => 'જો તમને આંખની સમસ્યા હોય તો ઓળખો';

  @override
  String get triageTestCardBody3 => 'તમારા ડૉક્ટરની મુલાકાત ક્યારે લેવી તે જાણો';

  @override
  String get triageTestCardButton => 'મફત આંખની તપાસ શરૂ કરો';

  @override
  String get myConnectionListAddMembersDescription => 'તમારા પરિવાર અને મિત્રોને ઉમેરવા માટે સભ્યો ઉમેરો બટન પર ક્લિક કરો.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'તમે કેવી રીતે આગળ વધવા માંગો છો?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'મને એક સમસ્યા છે અને હું તેને માન્ય કરવા માંગુ છું.';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'મને ખાતરી નથી કે મને કોઈ સમસ્યા છે કે નહીં';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'મને આંખની કોઈ સમસ્યા નથી-માત્ર તપાસ કરવા માંગુ છું.';

  @override
  String get appDrawerToastMessageText => 'માફ કરશો, અમને મોબાઇલ એપ્લિકેશનમાં લૉગઆઉટ ભૂલનો સામનો કરવો પડ્યો.';

  @override
  String get myConnectionListAddMembers => 'સભ્ય ઉમેરો';

  @override
  String get appDrawerReferral => 'રેફરલ';

  @override
  String get patientTenantDisplayPageHeader => 'ભાડૂતો';

  @override
  String get patientTenantDisplayPageBody => 'સૂચિમાંથી વિઝન સેન્ટર પસંદ કરો';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'સ્થાન પરવાનગીની વિનંતી કરો';

  @override
  String get referralGenerateSheetHeader => 'તમારો રેફરલ કોડ';

  @override
  String get referralGenerateSheetTapHereButton => 'કોડ છે? અહીં ટેપ કરો';

  @override
  String get referralGenerateSheetMyReferrals => 'મારા સંદર્ભો';

  @override
  String get referralGenerateSheetShareCode => 'લાભ મેળવવા માટે તમારા મિત્રો અને પરિવાર સાથે તમારો રેફરલ કોડ શેર કરો.';

  @override
  String get referralGenerateSheetReferralGenerateError => 'માફ કરશો, અમે આ ક્ષણે રેફરલ કોડ જનરેટ કરવામાં અસમર્થ છીએ.';

  @override
  String get referralGenerateSheetShareButton => 'શેર કરો';

  @override
  String get referralGenerateSheetCopy => 'નકલ કરો';

  @override
  String get referralCollectSheetYourRefferalCode => 'તમારો રેફરલ કોડ';

  @override
  String get referralCollectSheetReferralCodeMessage => 'લાભ મેળવવા માટે તમારા મિત્રો અને પરિવાર સાથે તમારો રેફરલ કોડ શેર કરો.';

  @override
  String get referralCollectSheetHeader => 'રેફરલ એકત્રિત કરો';

  @override
  String get referralCollectSheetBody => 'તમારું ઇનામ એકત્રિત કરવા માટે રેફરલ કોડ દાખલ કરો';

  @override
  String get referralCollectSheetTextFieldHeader => 'રેફરલ કોડ';

  @override
  String get referralCollectSheetTextFieldBody => 'રેફરલ કોડ દાખલ કરો';

  @override
  String get referralCollectSheetSkipButton => 'સ્કિપ કરો';

  @override
  String get referralCollectSheetCollectButton => 'એકત્રિત કરો';

  @override
  String get referralCollectSheetError => 'માફ કરશો, કંઈક ખોટું થયું છે. મહેરબાની કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get referralCollectSheetSuccessToast => 'રેફરલ કોડ સફળતાપૂર્વક સબમિટ કરવામાં આવ્યો';

  @override
  String get referralCollectSheetErrorToast => 'તમે દાખલ કરેલ રેફરલ કોડ અમાન્ય છે. મહેરબાની કરીને ફરીથી પ્રયાસ કરો.';

  @override
  String get referralStatisticsPageHeader => 'તમારા રેફરલ આંકડા';

  @override
  String get referralStatisticsPageTotalReferred => 'કુલ ઉલ્લેખિત';

  @override
  String get referralStatisticsPageSucessfulReferred => 'સફળ સંદર્ભ';

  @override
  String get referralStatisticsPageTotalTriage => 'ટોટલ ટ્રાઇએજ';

  @override
  String get referralStatisticsPageReferFriendHeader => 'મિત્રનો ઉલ્લેખ કેવી રીતે કરવો?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'તમારો રેફરલ કોડ તમારા મિત્ર સાથે શેર કરો.';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'તમારો મિત્ર તમારા રેફરલ કોડનો ઉપયોગ કરીને નોંધણી કરાવે છે.';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'તમારો મિત્ર ઓછામાં ઓછો એક ટ્રાઇએજ ટેસ્ટ પૂર્ણ કરે છે.';

  @override
  String get referralStatisticsPageReferFriendButton => 'મિત્રનો સંદર્ભ લો';

  @override
  String get referralStatisticsPageError => 'માફ કરશો, અમે આ ક્ષણે તમારા રેફરલ આંકડા મેળવવામાં અસમર્થ છીએ.';

  @override
  String get referralStatisticsPageRetryButton => 'ફરી પ્રયાસ કરો';

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
}
