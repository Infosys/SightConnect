import 'app_localizations.dart';

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current ના $total';
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
  String get homeCarousal2Description => '\r\nઆંખની 7 સમસ્યાઓનું પરીક્ષણ કરાવવુંઃ \r\n \r\n• આંખની લાલાશ, \r\n•આંખોમાંથી પાણી આવવું, \r\n•આંખો પર સફેદ ડાઘા પડવા';

  @override
  String get homeCarousal3Title => 'આંખની સમસ્યાઓ. એવી ઘણી બાબતો છે જે તમે જોઈ શકતા નથી.';

  @override
  String get homeCarousal3Description => 'પણ દ્રષ્ટિ સંભાળ નિષ્ણાત કરી શકે છે. \r\nઆંખની સમસ્યાઓ ઓળખી કાઢો અને સમયસર સારવાર કરાવો જેથી પછીથી જટિલતાઓને ટાળી શકાય.';

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
  String get aboutUsDescription => 'Sightconnect એક વપરાશકર્તા-મૈત્રીપૂર્ણ આંખની સંભાળ માટેની એપ્લિકેશન છે જે કૉલ પર સ્વ-મૂલ્યાંકન અને પરામર્શમાં મદદ કરે છે. \r\n\r\nઅમારા મિશનના કેન્દ્રમાં આંખની સંભાળને બધા માટે સુલભ બનાવવાની પ્રતિબદ્ધતા છે. એપ્લિકેશનને જીવનના તમામ ક્ષેત્રોના વપરાશકર્તાઓ દ્વારા તેમની ઉંમર, તકનીકી પૃષ્ઠભૂમિ અને સામાજિક અથવા આર્થિક પૃષ્ઠભૂમિને ધ્યાનમાં લીધા વિના સર્વસમાવેશક અને સુલભ બનાવવા માટે ડિઝાઇન કરવામાં આવી છે. એપ્લિકેશન અને તેની સામગ્રી અંગ્રેજી અને અન્ય સ્થાનિક ભાષાઓમાં ઉપલબ્ધ કરાવવામાં આવી છે. તે વપરાશકર્તાઓને તેમની આંખોનું સ્વ-મૂલ્યાંકન કરવામાં અને સમયસર સારવારની સલાહ મેળવવામાં મદદ કરે છે. એપ્લિકેશન અમારા વપરાશકર્તાઓને વ્યક્તિગત આંખની સંભાળના ઉકેલો પ્રદાન કરવા માટે નવીનતમ તકનીકો અને સાધનોનો ઉપયોગ કરે છે. તે તેમના જીવનને સરળ બનાવવા માટે વિવિધ સુવિધાઓ સાથે આવે છે.';

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
  String get assessmentResultCardAssessmentQuestions => 'મૂલ્યાંકન\r\nપ્રશ્નો';

  @override
  String get assessmentResultCardAcuityTest => 'ઉગ્રતા\r\nપરીક્ષણ';

  @override
  String get assessmentResultCardEyeScan => 'આંખ\r\nસ્કેન';

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
  String get poweredByText => 'દ્વારા સંચાલિત';

  @override
  String get digitalHealthCard => 'ડિજિટલ જાહેર આરોગ્ય માળખું';

  @override
  String get inviteNowText => 'હમણાં આમંત્રણ આપો';

  @override
  String get chatBotDefaultQuerySuggestions => 'આંખનું મૂલ્યાંકન શરૂ કરો | સામાન્ય આંખની સમસ્યાઓ | વધુ સારી દૃષ્ટિ માટે ટીપ્સ';

  @override
  String get chatBotWelcomeMessage => 'નમસ્તે, આજે હું તમને કેવી રીતે મદદ કરી શકું?';

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
  String get triageReportInstructions => 'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\r\n\r\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.';

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
