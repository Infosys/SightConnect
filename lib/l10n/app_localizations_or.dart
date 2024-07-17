import 'app_localizations.dart';

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} ର ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hands. Use my referral code ${referral} when you sign up. Get it now: https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'ଦଯ଼ାକରି ପଠାଯାଇଥିବା ଓଟିପି ପ୍ରବେଶ କରାନ୍ତୁ ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'ପୁନର୍ବାର ପଠାନ୍ତୁ ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} ରୋଗୀର ଏକ ଆପଏଣ୍ଟମେଣ୍ଟ ଅଛି';
  }

  @override
  String vgEmptyResults(String type) {
    return 'ବର୍ତ୍ତମାନ କୌଣସି ପ୍ରକାର ନାହିଁ। \'ଯୋଗ କରନ୍ତୁ ${type}\' ଉପରେ ଟିପନ୍ତୁ।';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return '${searchType} ପରିଚଯ଼, ନାମ ଦ୍ୱାରା ଖୋଜନ୍ତୁ';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'ଜରୁରୀକାଳୀନ ପରିସ୍ଥିତିରେ, ଦଯ଼ାକରି ${tollFreeNumber} କୁ କଲ୍ କରନ୍ତୁ।';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'You have been referred by ${referredBy}';
  }

  @override
  String get questionnaireTitle => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ପ୍ରଶ୍ନ';

  @override
  String get questionnaireExitDialog => 'ଏହି ପ୍ରଶ୍ନଗୁଡ଼ିକର ଉତ୍ତର ଦେବା ଦ୍ୱାରା ଆପଣଙ୍କ ଚକ୍ଷୁ ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ା ଚିହ୍ନଟ କରିବାରେ ସାହାଯ୍ଯ଼ ମିଳିବ। ଆପଣ ପ୍ରକୃତରେ ଏଥିରୁ ବାହାରି ଯିବାକୁ ଚାହୁଁଛନ୍ତି କି?';

  @override
  String get visualAcuityTitle => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ';

  @override
  String get visualAcuityDescription => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ ହେଉଛି ଏକ ଚକ୍ଷୁ ପରୀକ୍ଷା ଯାହା ଯାଞ୍ଚ କରେ ଯେ ଆପଣ ଏକ ନିର୍ଦ୍ଦିଷ୍ଟ ଦୂରତାରୁ ଏକ ଅକ୍ଷର କିମ୍ବା ଚିହ୍ନର ବିବରଣୀ କେତେ ଭଲ ଦେଖନ୍ତି | ବର୍ତ୍ତମାନ ଏହି  ପରୀକ୍ଷା ଶୀଘ୍ର କରନ୍ତୁ!';

  @override
  String get visualAcuityHowToPerform => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ପରୀକ୍ଷା କିପରି କରାଯିବ?';

  @override
  String get visualAcuityViewStepsToPerform => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ କରିବା ପାଇଁ ପଦକ୍ଷେପଗୁଡ଼ିକୁ ଦେଖନ୍ତୁ';

  @override
  String get visualAcuityCompletionDialog => 'ସମାପ୍ତ! ଉଭଯ଼ ଆଖି ପାଇଁ ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ ସମାପ୍ତ ହୋଇଛି। ଏହା ପରେ ଆପଣଙ୍କୁ ନିଜ ଆଖିର ଫଟୋ ଉଠାଇବାକୁ ପଡ଼ିବ।';

  @override
  String get visualAcuityExitDialog => 'ଆପଣଙ୍କ ଚକ୍ଷୁ ସମସ୍ଯ଼ା ବିଷଯ଼ରେ ବୁଝିବା ପାଇଁ ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଏକ ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ ପରୀକ୍ଷା। ଆପଣ ପ୍ରକୃତରେ ବାହାରକୁ ଯିବାକୁ ଚାହୁଁଛନ୍ତି କି?';

  @override
  String get swipeGestureTab => 'ସ୍ୱାଇପ୍ ଜେସଚର';

  @override
  String get voiceAssistTab => 'ସ୍ୱର ସହାଯ଼ତା';

  @override
  String get distanceString => 'ଦୂରତା';

  @override
  String get leftEyeString => 'ବାମ ଆଖି';

  @override
  String get rightEyeString => 'ଡାହାଣ ଆଖି';

  @override
  String get bothEyesString => 'ଉଭଯ଼ ଆଖି';

  @override
  String get visualAcuityLeftEyeHeader => 'ପରୀକ୍ଷା 2-ବାମ ଆଖି';

  @override
  String get visualAcuityLeftEyeInstructions => 'ଆଖିପତା ଉପରେ ଚାପ ନଦେଇ, ଡାହାଣ ଆଖିକୁ ହାତରେ ଢାଙ୍କି ଦିଅନ୍ତୁ। ଯଦି ଆପଣ ଚଷମା ପିନ୍ଧିଛନ୍ତି, ତେବେ ଚଷମା ଉପରେ ହାତ ରଖନ୍ତୁ।';

  @override
  String get visualAcuityRightEyeHeader => 'ପରୀକ୍ଷା 1-ଡାହାଣ ଆଖି';

  @override
  String get visualAcuityRightEyeInstructions => 'ଆଖିପତା ଉପରେ ଚାପ ନଦେଇ ବାମ ଆଖିକୁ ହାତରେ ଢାଙ୍କି ଦିଅନ୍ତୁ। ଯଦି ଆପଣ ଚଷମା ପିନ୍ଧିଛନ୍ତି, ତା "ହେଲେ ଚଷମା ଉପରେ ହାତ ରଖନ୍ତୁ।';

  @override
  String get visualAcuityBothEyeHeader => 'ପରୀକ୍ଷା 3-ଉଭଯ଼ ଆଖି';

  @override
  String get visualAcuityBothEyeInstructions => 'ଆପଣଙ୍କର କୌଣସି ଆଖିକୁ ଢାଂକନ୍ତୁ  ନାହିଁ ଏବଂ ଉଭଯ଼ ଆଖିରେ ପାର୍ଶ୍ୱରେ ଦେଖାଯାଉଥିବା ପ୍ରତୀକଗୁଡ଼ିକୁ ଦେଖନ୍ତୁ |';

  @override
  String get overlayHeaderDirection => 'ଦିଗ ';

  @override
  String get overlayDescription => 'ଏଠାରେ ଆପଣ ପ୍ରତ୍ଯ଼େକ ପ୍ରତୀକର ଦିଗକୁ ବୁଝିପାରିବେ।';

  @override
  String get overlaySymbolDirectionText => 'ପ୍ରତୀକ ଦିଗ : ';

  @override
  String get directionDown => 'ତଳକୁ';

  @override
  String get directionUp => 'ଉପରକୁ';

  @override
  String get directionLeft => 'ବାମ';

  @override
  String get directionRight => 'ଡାହାଣ';

  @override
  String get dontShowAgainString => 'ଆଉ ଦେଖାନ୍ତୁ ନାହିଁ';

  @override
  String get visualAcuityCarouselTitle => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ କରିବା ପାଇଁ ପଦକ୍ଷେପ';

  @override
  String get eyeScanTitle => 'ଚକ୍ଷୁ ସ୍କାନ୍';

  @override
  String get eyeScanDescription => 'ଆପଣ ପାଖାପାଖି ଅଛନ୍ତି! ଆଉ ଗୋଟିଏ ପରୀକ୍ଷା ବାକି ଅଛି। ତା \'ପରେ ନିଜ ଆଖିର ଫଟୋ ଉଠାନ୍ତୁ।';

  @override
  String get eyeScanHowToPerform => 'ଆଖି କିପରି ସ୍କାନ୍ କରିବେ?';

  @override
  String get eyeScanViewStepsToPerform => 'ଆପଣଙ୍କ ଆଖିକୁ କିପରି ସ୍କାନ୍ କରିବେ ତାହା ଜାଣିବା ପାଇଁ ପଦକ୍ଷେପଗୁଡ଼ିକୁ ଦେଖନ୍ତୁ।';

  @override
  String get eyeScanExitDialog => 'ଚକ୍ଷୁ ସ୍କାନ୍ ଆପଣଙ୍କ ଚକ୍ଷୁ ସମସ୍ଯ଼ା ବିଷଯ଼ରେ ଅଧିକ ବୁଝିବାରେ ସାହାଯ୍ଯ଼ କରେ। ଆପଣ ପ୍ରକୃତରେ ବାହାରକୁ ଯିବାକୁ ଚାହୁଁଛନ୍ତି କି?';

  @override
  String get captureRightEyeString => 'ଡାହାଣ ଆଖିକୁ ଧରନ୍ତୁ';

  @override
  String get captureLeftEyeString => 'ବାମ ଆଖିକୁ ଧରନ୍ତୁ';

  @override
  String get skipButton => 'ଛାଡ଼ି ଦିଅନ୍ତୁ';

  @override
  String get startTestText => 'ପରୀକ୍ଷା ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get continueButton => 'ଜାରି ରଖନ୍ତୁ';

  @override
  String get startButton => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get nextButton => 'ପରବର୍ତ୍ତୀ';

  @override
  String get proceedButton => 'ଆଗକୁ ବଢ଼ନ୍ତୁ';

  @override
  String get yesButton => 'ହଁ';

  @override
  String get noButton => 'ନା';

  @override
  String get exitButton => 'ପ୍ରସ୍ଥାନ କରନ୍ତୁ';

  @override
  String get okButton => 'ଠିକ୍ ଅଛି';

  @override
  String get knowMoreButton => 'ଅଧିକ ଜାଣନ୍ତୁ';

  @override
  String get seeAllButton => 'ସବୁ ଦେଖନ୍ତୁ';

  @override
  String get tryAgainButton => 'ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get shareNowButton => 'ବର୍ତ୍ତମାନ ସେଆର କରନ୍ତୁ';

  @override
  String get retryButton => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get homeCarousal1Title => '40 ବର୍ଷ ଏବଂ ତା \'ଠାରୁ ଅଧିକ ବଯ଼ସର ବଯ଼ସ୍କଙ୍କ ମଧ୍ଯ଼ରେ ମୋତିଆବିନ୍ଦୁ ପ୍ରସାର ଏବଂ ଏହା ସହ ଜଡ଼ିତ କାରକ';

  @override
  String get homeCarousal1Description => 'ମୋତିଆବିନ୍ଦୁ ଏବଂ ସମ୍ପୃକ୍ତ କାରକଗୁଡ଼ିକର ପ୍ରସାର ଉପରେ ନମୁନା ସଂଗ୍ରହ ପ୍ରକ୍ରିଯ଼ାର ଯୋଜନାବଦ୍ଧ ଉପସ୍ଥାପନା';

  @override
  String get homeCarousal2Title => 'ଆଖି ସମ୍ବନ୍ଧୀଯ଼ 7ଟି ସମସ୍ଯ଼ାକୁ ଏଡ଼ାଇ ହେବ ନାହିଁ!';

  @override
  String get homeCarousal2Description => '• ଆଖି ଲାଲ ହେବା\r\n\r\n• ଆଖିରୁ ପାଣି ବାହାରିବା\r\n\r\n• ଆଖିରେ ଧଳା ଦାଗ';

  @override
  String get homeCarousal3Title => 'ଆଖି ସମସ୍ଯ଼ା। ଏମିତି ଅନେକ ଅଛି ଯାହାକୁ ଆପଣ ଦେଖିପାରିବେ ନାହିଁ।';

  @override
  String get homeCarousal3Description => 'କିନ୍ତୁ ଜଣେ ଦୃଷ୍ଟି ଯତ୍ନ ବିଶେଷଜ୍ଞ କରିପାରିବେ| ପରେ ଜଟିଳତାକୁ ଏଡାଇବା ପାଇଁ ଆଖି ସମସ୍ୟାକୁ ଚିହ୍ନଟ କର ଏବଂ ସଠିକ ସମୟରେ ଚିକିତ୍ସା କର |';

  @override
  String get myConnectionsTitle => 'ମୋର ସଦସ୍ଯ଼ମାନେ';

  @override
  String get myConnectionsAddMember => 'ସଦସ୍ଯ଼ ଯୋଗ କରନ୍ତୁ';

  @override
  String get myConnectionsServiceNotAvailable => 'ସେବା ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get myConnectionsAdd => 'ଯୋଗ କରନ୍ତୁ';

  @override
  String get recentServicesTitle => 'ମୋର ଚଳିତ ସେବାଗୁଡିକ';

  @override
  String get recentServicesEyeAssessment => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get recentServicesVisualAcuityTest => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ଟେଷ୍ଟ';

  @override
  String get nearbyVisionCentersTitle => 'ନିକଟବର୍ତ୍ତୀ ଦୃଷ୍ଟି କେନ୍ଦ୍ରଗୁଡ଼ିକ';

  @override
  String get nearbyVisionCentersNotFound => 'କୌଣସି ଦୃଷ୍ଟି କେନ୍ଦ୍ର ମିଳିନାହିଁ';

  @override
  String get tollFreeNumber => 'ଟୋଲ୍ ଫ୍ରି ନମ୍ବର';

  @override
  String get appDrawerTitle => 'ସୂଚୀ';

  @override
  String get appDrawerHome => 'ଘର.';

  @override
  String get appDrawerLanguageSelection => 'ଭାଷା ଚୟନ';

  @override
  String get appDrawerAccessibility => 'ଅଭିଗମ୍ୟତା ସେଟିଂସମୂହ |';

  @override
  String get appDrawerMyProfile => 'ମୋ ପ୍ରୋଫାଇଲ';

  @override
  String get appDrawerAssessmentsAndTests => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଏବଂ ପରୀକ୍ଷଣ';

  @override
  String get appDrawerScanner => 'QR କୋଡ୍ ସ୍କାନର୍ |';

  @override
  String get appDrawerAboutUs => 'ଆମ ବିଷଯ଼ରେ';

  @override
  String get appDrawerPrivacyPolicy => 'ଗୋପନୀୟତା ଏବଂ ତଥ୍ୟ ନୀତି |';

  @override
  String get appDrawerHelpAndSupport => 'ସହାଯ଼ତା ଏବଂ ସମର୍ଥନ';

  @override
  String get appDrawerSignOut => 'ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ';

  @override
  String get aboutUsDescription => 'ଆମର ମିଶନର ହୃଦୟରେ ଏକ ପ୍ରତିବଦ୍ଧତା ଅଛି ସମସ୍ତଙ୍କ ପାଇଁ ନେତ୍ର ଯତ୍ନ ପ୍ରାପ୍ୟ କରିବା। ଏହି ଆପ୍ ବୟସ, ପ୍ରଯୁକ୍ତିଗତ ପୃଷ୍ଠଭୂମି, ସାମାଜିକ କିମ୍ବା ଆର୍ଥିକ ପୃଷ୍ଠଭୂମି ନିର୍ବିଶେଷରେ ସମସ୍ତ ବର୍ଗର ଉପଭୋଗ୍ତାମାନଙ୍କ ପାଇଁ ସମାବେଶୀ ଏବଂ ସହଜସୁଲଭ ଭାବେ ଡିଜାଇନ କରାଯାଇଛି। ଏହି ଆପ୍ ଇଂରାଜୀ ଏବଂ ଅନ୍ୟାନ୍ୟ ସ୍ଥାନୀୟ ଭାଷାରେ ଉପଲବ୍ଧ ଅଟେ  । ଏହା ଉପଭୋଗ୍ତାମାନଙ୍କୁ ସ୍ୱ ନେତ୍ର ମୂଲ୍ୟାଙ୍କନ କରିବାରେ ଏବଂ ସମୟମତେ ଚିକିତ୍ସା ପରାମର୍ଶ ପାଇବାରେ ସହାୟତା କରେ।ଉପଭୋକ୍ତାମାନଙ୍କୁ ବ୍ୟକ୍ତିଗତ ଚକ୍ଷୁ ଯତ୍ନ ସମାଧାନ ପ୍ରଦାନ କରିବାକୁ ଆପ୍ ନବୀନତମ ପ୍ରଯୁକ୍ତି ଓ ଉପକରଣ ବ୍ୟବହାର କରେ |। ଏହା ଉପଭୋଗ୍ତାମାନଙ୍କର ଜୀବନ ସୁଗମ କରିବାପାଇଁ ବିଭିନ୍ନ ଧରଣର ବୈଶିଷ୍ଟ୍ୟ ସହିତ ଆସେ।';

  @override
  String get aboutUsFeaturesTitle => 'ବୈଶିଷ୍ଟ୍ଯ଼';

  @override
  String get aboutUsFeaturesDescription => 'ଇନ-ଆପ୍ ଚକ୍ଷୁ ପରୀକ୍ଷଣଃ ଏହି ଆପ୍ ଏହାର ବ୍ଯ଼ବହାରକାରୀମାନଙ୍କୁ କିଛି ପ୍ରଶ୍ନର ଉତ୍ତର ଦେଇ ଏବଂ ପରବର୍ତ୍ତୀ ପଦକ୍ଷେପ ଏବଂ ଡାକ୍ତରଙ୍କ ନିକଟକୁ ଯିବା ପାଇଁ ଉପଯୁକ୍ତ ସୁପାରିଶ ପାଇବା ଦ୍ୱାରା ସେମାନଙ୍କ ଆଖିକୁ ଆତ୍ମ-ମୂଲ୍ଯ଼ାଙ୍କନ କରିବାକୁ ଅନୁମତି ଦିଏ | ଏପରିକି ବ୍ଯ଼ବହାରକାରୀଙ୍କ ବନ୍ଧୁ ଏବଂ ପରିବାର ମଧ୍ଯ଼ ଉପକୃତ ହୋଇପାରିବେ। | ନିଯୁକ୍ତି ବୁକିଂଃ ବ୍ଯ଼ବହାରକାରୀମାନେ ସେମାନଙ୍କ ଆଖି ଚିହ୍ନଟ କରିବା ପାଇଁ ଅନଲାଇନ୍ ଟେଲି ପରାମର୍ଶ ଏବଂ ଡାକ୍ତରଙ୍କ ସହ ଇନ-କ୍ଲିନିକ୍ ପରିଦର୍ଶନ ବୁକ୍ କରିପାରିବେ | ଆଇ. ଭି. ଆର୍. କଲ୍ ସେବାଃ ଆମର ଆଇ. ଭି. ଆର୍. କଲ୍ ସେବା ଇଂରାଜୀ ଏବଂ ସ୍ଥାନୀଯ଼ ଭାଷାରେ ଉପଲବ୍ଧ ଏବଂ ଏହା ମୌଳିକ ଫିଚର୍ ଫୋନ୍ ବ୍ଯ଼ବହାରକାରୀଙ୍କ ପାଇଁ ମଧ୍ଯ଼ ଉପଲବ୍ଧ। ଜରୁରୀକାଳୀନ ସମଯ଼ରେ କିମ୍ବା କୌଣସି ଆଖି ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ା ପାଇଁ ତୁରନ୍ତ ସାହାଯ୍ଯ଼ ନେବାକୁ ବ୍ଯ଼ବହାରକାରୀମାନେ ଆମର ଚକ୍ଷୁ ଯତ୍ନ ବୃତ୍ତିଗତଙ୍କୁ ଡାଏଲ୍ କରିପାରିବେ | ସେମାନେ ଆପଏଣ୍ଟମେଣ୍ଟ ବୁକ୍ କରିବାକୁ ମଧ୍ଯ଼ କଲ୍ କରିପାରିବେ କିମ୍ବା ଅଧିକ ସ୍ପଷ୍ଟୀକରଣ ପାଇପାରିବେ | ନିକଟସ୍ଥ କ୍ଲିନିକଃ ବ୍ଯ଼ବହାରକାରୀମାନେ ସେମାନଙ୍କ ନିକଟବର୍ତ୍ତୀ ଚକ୍ଷୁ ଚିକିତ୍ସା କ୍ଲିନିକଗୁଡ଼ିକୁ ଚିହ୍ନଟ କରିପାରିବେ। | ପ୍ରେସକ୍ରିପସନ୍ ଏବଂ ରିପୋର୍ଟଃ ବ୍ଯ଼ବହାରକାରୀଙ୍କ ସମସ୍ତ ପ୍ରେସକ୍ରିପସନ୍ ଏବଂ ରିପୋର୍ଟଗୁଡିକ ଅଧିକ ଅସୁବିଧା ବିନା ଗୋଟିଏ ସ୍ଥାନରୁ ଆକ୍ସେସ୍ କରାଯାଇପାରିବ | ଚକ୍ଷୁ ଶିବିରଃ ବ୍ଯ଼ବହାରକାରୀମାନେ ସେମାନଙ୍କ ବନ୍ଧୁ ଏବଂ ପରିବାରର ଆଖି ମାଗଣାରେ ପରୀକ୍ଷା କରିବା ପାଇଁ ନିକଟସ୍ଥ ଚକ୍ଷୁ ଶିବିର ବିଷଯ଼ରେ ସୂଚନା ପାଇପାରିବେ | ଅନୁସ୍ମାରକ ଏବଂ ଆଲର୍ଟଃ ବ୍ଯ଼ବହାରକାରୀମାନେ ସେମାନଙ୍କ ଆଗାମୀ ସାକ୍ଷାତ, ଔଷଧ, ରିପୋର୍ଟ ଇତ୍ଯ଼ାଦି ସମ୍ବନ୍ଧୀଯ଼ ସମଯ଼ୋଚିତ ଆଲର୍ଟ ଏବଂ ଅନୁସ୍ମାରକ ପାଇପାରିବେ | ଅଂଶୀଦାର କରିବାଃ ବ୍ଯ଼ବହାରକାରୀମାନେ ଏହି ଆପ୍ ଏବଂ ଆପ୍ ମଧ୍ଯ଼ରେ ପ୍ରଦାନ କରାଯାଇଥିବା ଅନ୍ଯ଼ାନ୍ଯ଼ ଉପଯୋଗୀ ସୂଚନାକୁ ସେମାନଙ୍କ ବନ୍ଧୁ ଏବଂ ପରିବାର ସଦସ୍ଯ଼ଙ୍କ ସହ ଅଂଶୀଦାର କରିପାରିବେ।';

  @override
  String get aboutUsConclusion => 'ଆମର ବ୍ୟବହାରକାରୀ ସମୁଦାଯ଼କୁ ଉନ୍ନତ ସେବା ଯୋଗାଇବା ପାଇଁ ଅଗ୍ରଣୀ ଚକ୍ଷୁ ଯତ୍ନ ପେସାଦାରଙ୍କ ସହାଯ଼ତାରେ ଏହି ଆପ୍ ବିକଶିତ ହୋଇଛି। ଏକ ଉଜ୍ଜ୍ୱଳ, ସୁସ୍ଥ ବିଶ୍ୱ ସୃଷ୍ଟି କରିବା ପାଇଁ ଆମର ମିଶନରେ ଯୋଗ ଦିଅନ୍ତୁ। ଆଜି ସାଇଟ୍କନେକ୍ଟ ଆପ୍ ଡାଉନଲୋଡ୍ ଏବଂ ସେୟାର  କରନ୍ତୁ!';

  @override
  String get privacyPolicyDescription => 'ଏଲ୍. ଭି. ପ୍ରସାଦ ଆଇ. ଇନଷ୍ଟିଚ୍ଯ଼ୁଟ, ଏହାର ସହାଯ଼କ ସଂସ୍ଥା, ସହଯୋଗୀ ଏବଂ ଅନୁବନ୍ଧିତ କମ୍ପାନୀଗୁଡ଼ିକ (ସାମୂହିକ ଭାବେ "ଏଲ୍. ଭି. ପି. ଇ. ଆଇ"., "ଆମକୁ", "ଆମେ") ଆପଣଙ୍କ ଅଧିକାର କ୍ଷେତ୍ରର ଆଇନ ଅନୁଯାଯ଼ୀ ଆପଣଙ୍କ ବ୍ୟକ୍ତିଗତ ତଥ୍ୟ ପ୍ରକ୍ରିଯ଼ାକରଣ କରିବା ପାଇଁ ପ୍ରତିଶୃତିବଦ୍ଧ। ବ୍ୟକ୍ତିଗତ ତଥ୍ୟ ପ୍ରକ୍ରିଯ଼ାକରଣ ବିଷଯ଼ରେ ଆମେ ଆପଣଙ୍କୁ ନିମ୍ନଲିଖିତ ସୂଚନା ସୂଚିତ କରୁଛୁ।';

  @override
  String get privacyPolicyPersonalDataTitle => 'ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ଉପାଦାନଗୁଡିକ ସଂଗୃହୀତ/ପ୍ରକ୍ରିଯ଼ାକୃତ :';

  @override
  String get privacyPolicyPersonalDataDescription => 'ଆପଣ ଏବଂ ଆପଣଙ୍କ ସଂଯୋଗର ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ଯେପରିକି (ଏହି ତଥ୍ଯ଼ଗୁଡ଼ିକ ମଧ୍ଯ଼ରୁ କିଛି ଇଚ୍ଛାଧୀନ ହେବ) ମୋବାଇଲ ନମ୍ବର, ନାମ, ଜନ୍ମ ତାରିଖ, ଲିଙ୍ଗ (ପୁରୁଷ/ମହିଳା), ଠିକଣା (ପିନ୍ କୋଡ୍), ରୋଗୀ ଆଇଡି, ସଂଯୋଗ, ଚକ୍ଷୁ ଟ୍ରାଇଏଜ୍ ପ୍ରଶ୍ନାବଳୀ ପ୍ରତିକ୍ରିଯ଼ା, ଚକ୍ଷୁ ଟ୍ରାଇଏଜ୍ ରିପୋର୍ଟ, ଚକ୍ଷୁ ପ୍ରତିଛବି, ଆପଣଙ୍କ ଚକ୍ଷୁ ପ୍ରତିଛବି ବିରୁଦ୍ଧରେ ଟ୍ଯ଼ାଗ୍ ହୋଇଥିବା ଲକ୍ଷଣ, ଫଟୋଗ୍ରାଫ୍, ଠିକଣା ବିବରଣୀ ଯେପରିକି ଠିକଣା, ଜିଲ୍ଲା ନାମ (ଜିଲ୍ଲା କୋଡ୍ ସହିତ), ରାଜ୍ଯ଼ ନାମ (ରାଜ୍ଯ଼ କୋଡ୍ ସହିତ), ଉପ ଜିଲ୍ଲା ନାମ, ଗ୍ରାମ ନାମ, ସହର ନାମ, ଇମେଲ ଠିକଣା, ଶେଷ ନାମ, ମଧ୍ଯ଼ମ ନାମ, ରକ୍ତ ଗୋଷ୍ଠୀ, ଉଚ୍ଚତା, ଓଜନ, ବୃତ୍ତି, ଆଭା ବିବରଣୀ (ଆପଣଙ୍କ ଦ୍ୱାରା ପ୍ରଦାନ କରାଯାଇଥିବା), ଆପ୍ଲିକେସନ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ କ୍ଯ଼ାମେରା, ଜିପିଏସ୍ ଅବସ୍ଥାନ ଗ୍ଯ଼ାଲେରୀ, ସମ୍ପୂର୍ଣ୍ଣ ନେଟୱାର୍କ ଆକ୍ସେସ୍, ନେଟୱାର୍କ ସଂଯୋଗ, ଡିଭାଇସ୍ ସୂଚନା।';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'ପ୍ରକ୍ରିଯ଼ାକରଣର ଉଦ୍ଦେଶ୍ଯ଼: ';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'ଆପଣଙ୍କୁ ଆମର ଆବେଦନରେ ଏବଂ ତାର ସୁବିଧାମାନଙ୍କୁ ପ୍ରବେଶ ଦେବାକୁ ସକ୍ଷମ କରିବା ପାଇଁ ଏବଂ ଆପଣଙ୍କ ସଂଯୋଗ (ଆପଣଙ୍କ ଦ୍ୱାରା ପ୍ରଦତ୍ତ) ପାଇଁ ଚକ୍ଷୁ ସମ୍ପର୍କିତ ଅନଲାଇନ ସ୍ବାସ୍ଥ୍ୟ ପରୀକ୍ଷା ପାଇଁ | ଯେକୌଣସି ଚକ୍ଷୁ ସମ୍ପର୍କିତ ଅସୁସ୍ଥତା / ସ୍ବାସ୍ଥ୍ୟ କଷ୍ଟ ଅବସ୍ଥାରେ LVPEI ଅଧୀନରେ ଦୃଷ୍ଟି ପ୍ରଯୁକ୍ତି ବିଶେଷଜ୍ଞ, ନେତ୍ର ଚିକିତ୍ସକଙ୍କ ସହିତ ସମ୍ପର୍କ ସ୍ଥାପନ ପାଇଁ | ଆପଣଙ୍କ ସ୍ବାସ୍ଥ୍ୟ ପରାମର୍ଶ ଏବଂ ନିଦାନର ଭାଗ ଭାବେ ଯେକୌଣସି ଚକ୍ଷୁ ସ୍ବାସ୍ଥ୍ୟ-ସମ୍ପର୍କିତ ଡାଟା (ରିପୋର୍ଟ ସହିତ) ପ୍ରଦାନ କରିବାକୁ | ସ୍ବାସ୍ଥ୍ୟ-ସମ୍ପର୍କିତ ଚିନ୍ତାର ଭାଗ ଭାବେ ଆପଣଙ୍କ ଏବଂ ଆପଣଙ୍କ ସଂଯୋଗଙ୍କୁ ସମ୍ପର୍କ କରିବାକୁ | ଉତ୍ତମ ନିଦାନ ପାଇଁ ଆମର ଅଧିକୃତ LVPEI ନେତ୍ର ଚିକିତ୍ସକ/ ଡାକ୍ତରମାନଙ୍କ ସହିତ ଆପଣଙ୍କ ଚକ୍ଷୁ ସ୍ବାସ୍ଥ୍ୟ ଡାଟା ସେୟାର କରିବା ପାଇଁ | ଆପଣଙ୍କ ଜିପିୟିଏସ ସ୍ଥାନ ଉପରେ ଆଧାରିତ ଗାଁ ମୁଖିଆ / ମେୟର ଇତ୍ୟାଦି ସହିତ (ଯେଉଁଠାରେ ଯୋଗ୍ୟ) ସେହି ସହିତ ସେୟାର କରିବାକୁ | ଯଦି ଆପଣ LVPEI ଡାକ୍ତରମାନଙ୍କୁ ଚିକିତ୍ସା ପାଇଁ ପୌଁଛି ନ ପାରନ୍ତି ବା ସୂଚନା ଦେଇ ନ ପାରନ୍ତି ତେବେ ଚକ୍ଷୁ ସମସ୍ୟାର ଗୁରୁତ୍ୱ ଅନୁସାରେ ଗାଁ ମୁଖିଆ / ମେୟର ଇତ୍ୟାଦିଙ୍କ ସହିତ ସେୟାର କରିବାକୁ | ଆପଣଙ୍କ ନିକଟରେ LVPEI ସହିତ ସହଯୋଗୀ ଚକ୍ଷୁ କ୍ଲିନିକ୍ / ହସ୍ପିଟାଲର ତାଲିକା ପ୍ରଦାନ କରିବା ପାଇଁ, ଯେଉଁଠି ଯେକୌଣସି ଚକ୍ଷୁ ସମସ୍ୟା ପାଇଁ ଆପଣ ପୌଁଛିବାକୁ | ଚକ୍ଷୁ ଚିତ୍ର, ଚକ୍ଷୁ ଚିତ୍ର ସହିତ ଲକ୍ଷଣ, ବୟସ, ରକ୍ତ ଗୋଷ୍ଠୀ, ସ୍ଥାନ ଆଦି ସମ୍ପର୍କିତ ତଥ୍ୟ ଯେକୌଣସି ଚିହ୍ନକାରୀ ବିନା ବ୍ୟବହାର କରିବା ପାଇଁ | ଭବିଷ୍ୟତରେ ସଠିକ ନିଦାନ ପ୍ରଦାନ କରିବା ଉଦ୍ଦେଶ୍ୟରେ ମେସିନ ଲର୍ନିଂ କିମ୍ବା କୃତ୍ରିମ ବୁଦ୍ଧିମତ୍ତା ମଡେଲଗୁଡିକୁ ପ୍ରଶିକ୍ଷଣ ଦେବା ପାଇଁ | ଚକ୍ଷୁ ସ୍ବାସ୍ଥ୍ୟ ପାଇଁ ସଚେତନତା ସୃଷ୍ଟି କରିବା, ଅଭିଯାନ ମେଲରସହ ରିମାଇଣ୍ଡର, ସଂଯୋଗ ପତ୍ର ପଠାଇବା ପାଇଁ।';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ତଥ୍ଯ଼ ପ୍ରାପ୍ତକର୍ତ୍ତା/ଉପଲବ୍ଧକର୍ତ୍ତା';

  @override
  String get privacyPolicyDataRecipientsDescription => 'ଆପଣଙ୍କ ଦ୍ୱାରା ସେଯ଼ାର କରାଯାଇଥିବା ବ୍ୟକ୍ତିଗତ  ତଥ୍ୟ  (ସମ୍ବେଦନଶୀଳ ବ୍ୟକ୍ତିଗତ ତଥ୍ଯ଼ ସମେତ) ଡାକ୍ତର/ଚକ୍ଷୁ ବିଶେଷଜ୍ଞ, ଭିଜନ ଟେକ୍ନିସିଆନ, ଭିଜନ ଗାର୍ଡିଆନ, ଏଲଭିପିଇଆଇର ପ୍ରତିନିଧି, ଆଭ୍ୟନ୍ତରିଣ/ବାହ୍ୟ ଅଡିଟର, ସରକାରୀ କର୍ତ୍ତୃପକ୍ଷ , ଆମର ପ୍ରାଧିକୃତ ସେବା ପ୍ରଦାନକାରୀ ଇନଫୋସିସ ଭଳି ପ୍ରାଧିକୃତ ଏଲଭିପିଇଆଇ କର୍ମଚାରୀଙ୍କ ପାଇଁ ଉପଲବ୍ଧ ହେବ।';

  @override
  String get privacyPolicyDataTransferTitle => 'ତଥ୍ଯ଼ ସ୍ଥାନାନ୍ତରଣ ଏବଂ ସଂରକ୍ଷଣ:';

  @override
  String get privacyPolicyDataTransferDescription => 'ଆପଣଙ୍କ ଦ୍ୱାରା ଅଂଶୀଦାର କରାଯାଇଥିବା ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ଆମର ଆଭ୍ଯ଼ନ୍ତରୀଣ ସର୍ଭର, ଭାରତରେ ଆମର ପ୍ରାଧିକୃତ ସେବା ପ୍ରଦାନକାରୀଙ୍କ ସର୍ଭରରେ ଗଚ୍ଛିତ ରହିବ।';

  @override
  String get privacyPolicyDataSecurityTitle => 'ତଥ୍ଯ଼ ସୁରକ୍ଷା:';

  @override
  String get privacyPolicyDataSecurityDescription => 'ଆପଣଙ୍କ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼କୁ ସୁରକ୍ଷିତ ରଖିବା ପାଇଁ ଏଲ୍. ଭି. ପି. ଇ. ଆଇ. ପ୍ରଶାସନିକ, ଶାରୀରିକ ସୁରକ୍ଷା ଏବଂ ବୈଷଯ଼ିକ ନିଯ଼ନ୍ତ୍ରଣ ସମେତ ଯୁକ୍ତିସଙ୍ଗତ ଏବଂ ଉପଯୁକ୍ତ ସୁରକ୍ଷା ଅଭ୍ଯ଼ାସ ଏବଂ ପ୍ରକ୍ରିଯ଼ା ଗ୍ରହଣ କରିଥାଏ।';

  @override
  String get privacyPolicyDataRetentionTitle => 'ତଥ୍ଯ଼ ଧାରଣ:';

  @override
  String get privacyPolicyDataRetentionDescription => 'ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ଯାହା ଆଇନଗତ ଏବଂ ବ୍ଯ଼ବସାଯ଼ିକ ଆବଶ୍ଯ଼କତା ଅନୁଯାଯ଼ୀ ଆଉ ରଖିବା ଆବଶ୍ଯ଼କ ନାହିଁ, ସେଗୁଡିକ  ଏକ ସୁରକ୍ଷିତ ଢଙ୍ଗରେ ନିଷ୍କ୍ରିୟ କରାଯିବ।';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ତଥ୍ଯ଼ ବିଷଯ଼ ଅଧିକାର:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'ଯେକୌଣସି ସମଯ଼ରେ ଆପଣ ଆପଣଙ୍କର ବ୍ୟକ୍ତିଗତ ସୂଚନାକୁ ପ୍ରବେଶ ଏବଂ ସଂଶୋଧନ କରିବାର ଅଧିକାର ରହିଛି। କୌଣସି ଅନୁରୋଧ, ସମସ୍ୟା  , ଚିନ୍ତା କିମ୍ବା ପ୍ରଶ୍ନ କ୍ଷେତ୍ରରେ ଆପଣ <ଏଲ୍.ଭି.ପି.ଇ.ଆଇ  ସାଧାରଣ ମେଲ ଆଇଡି ପ୍ରଦାନ କରିବ ଡି. ଏସ୍. ଆର୍. ପାଇଁ > କୁ  ଇମେଲ ପଠାଇ ଏଲ୍. ଭି. ପ୍ରସାଦ କାର୍ଯ୍ୟାଳୟ ସହିତ ଯୋଗାଯୋଗ କରିପାରିବେ । ';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'ପ୍ରତ୍ଯ଼ାହାର କରିବାର ଅଧିକାର:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'ଯେଉଁଠାରେ ଆମେ ଆପଣଙ୍କ ସମ୍ମତି ଆଧାରରେ ଆପଣଙ୍କ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ପ୍ରକ୍ରିଯ଼ାକରଣ କରୁ, ଆପଣ ଭବିଷ୍ଯ଼ତରେ ଯେକୌଣସି ସମଯ଼ରେ ପ୍ରଯୁଜ୍ଯ଼ ଡିପି ଆଇନ ଅନୁଯାଯ଼ୀ ପ୍ରକ୍ରିଯ଼ାକରଣ ପାଇଁ ଆପଣଙ୍କ ସମ୍ମତି ପ୍ରତ୍ଯ଼ାହାର କରିପାରିବେ। ଏହା ଆପଣଙ୍କ ପ୍ରତ୍ଯ଼ାହାର ପୂର୍ବରୁ କୌଣସି ପ୍ରକ୍ରିଯ଼ାକରଣ କାର୍ଯ୍ଯ଼ର ବୈଧତା ଉପରେ ପ୍ରଭାବ ପକାଇବ ନାହିଁ। ଆପଣଙ୍କ ସମ୍ମତି ପ୍ରତ୍ଯ଼ାହାର କରିବାକୁ, ଆପଣ DSR> ପାଇଁ ଜେନେରିକ୍ ମେଲ୍ ID ପ୍ରଦାନ କରିବାକୁ <LVPEI କୁ ଏକ ଇମେଲ ପଠାଇପାରିବେ।';

  @override
  String get privacyPolicyAcknowledgement => 'ନିମ୍ନରେ ଦିଆଯାଇଥିବା ବଟନ୍କୁ କ୍ଲିକ୍ କରିବା ଦ୍ୱାରା, ଆପଣ ସ୍ୱୀକାର କରନ୍ତି ଏବଂ ବୁଝନ୍ତି ଯେ ସମ୍ବେଦନଶୀଳ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ସମେତ ଆପଣଙ୍କ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ଉପରୋକ୍ତ ପଦ୍ଧତିରେ ସଂଗ୍ରହ ଏବଂ ପ୍ରକ୍ରିଯ଼ାକରଣ କରାଯାଇପାରେ ଏବଂ ଉପରୋକ୍ତ ଉଦ୍ଦେଶ୍ଯ଼ ପାଇଁ ଏହା ସହିତ ସମ୍ମତି ଦିଅନ୍ତି। ଆପଣ ଏହା ମଧ୍ଯ଼ ସ୍ୱୀକାର କରନ୍ତି ଯେ ଆପଣଙ୍କ ଦ୍ୱାରା ଅଂଶୀଦାର ହୋଇଥିବା ସମ୍ବେଦନଶୀଳ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ସମେତ ଯେକୌଣସି ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ (ନିଜ ବ୍ଯ଼ତୀତ) କେବଳ ସେମାନଙ୍କଠାରୁ ଉପଯୁକ୍ତ ସମ୍ମତି ନେବା ପରେ। ଆପଣ ଏହା ମଧ୍ଯ଼ ସ୍ୱୀକାର କରନ୍ତି ଯେ ଆପଣ କୌଣସି ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ (ସମ୍ବେଦନଶୀଳ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼ ସମେତ) ଅଂଶୀଦାର କରିବେ ନାହିଁ ଯାହା ଉପରୋକ୍ତ ଉଦ୍ଦେଶ୍ଯ଼ ପାଇଁ ଆବଶ୍ଯ଼କ ନୁହେଁ। ଆପଣ ଏହା ମଧ୍ଯ଼ ସ୍ୱୀକାର କରନ୍ତି ଯେ ଯେତେବେଳେ ଆପଣ ନାବାଳକଙ୍କ ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼କୁ ସେମାନଙ୍କ ପିତାମାତା/ଆଇନଗତ ଅଭିଭାବକ ଭାବରେ ଅଂଶୀଦାର କରୁଛନ୍ତି, ଆପଣ ଉପରେ ଦର୍ଶାଯାଇଥିବା ଅନୁଯାଯ଼ୀ ସେମାନଙ୍କର ତଥ୍ଯ଼ ସଂଗ୍ରହ ଏବଂ ପ୍ରକ୍ରିଯ଼ାକରଣ ପାଇଁ ରାଜି ହୁଅନ୍ତି।';

  @override
  String get privacyPolicyBottomAppBarLabel => 'ଗୋପନୀଯ଼ତା ନୀତି ଗ୍ରହଣୀଯ଼';

  @override
  String get helpAndSupportReachTitle => 'ଆମ ସହ ଯୋଗାଯୋଗ କରନ୍ତୁ';

  @override
  String get assessmentAndTestsSubtitle => 'ଏ ପର୍ଯ୍ଯ଼ନ୍ତ କରାଯାଇଥିବା ମୂଲ୍ଯ଼ାଙ୍କନଗୁଡ଼ିକର ଏକ ସଂକ୍ଷିପ୍ତ ଦୃଶ୍ଯ଼ ଏଠାରେ ଦିଆଯାଇଛି।';

  @override
  String get assessmentAndTestsReportsNotFound => 'କୌଣସି ରିପୋର୍ଟ ମିଳିନାହିଁ';

  @override
  String get eyeAssessmentTitle => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get eyeAssessmentSubtitle => 'ଆପଣ, ଆପଣଙ୍କ ବନ୍ଧୁ, ଏବଂ ପରିବାର ସଦସ୍ଯ଼ଙ୍କ ଚକ୍ଷୁ ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ାଗୁଡ଼ିକୁ ଅଳ୍ପ କିଛି ପର୍ଯ୍ଯ଼ାଯ଼ରେ ମୂଲ୍ଯ଼ାଙ୍କନ କରନ୍ତୁ। ଆପଣଙ୍କ ଚକ୍ଷୁ ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ା ସମ୍ବନ୍ଧୀଯ଼ ଲକ୍ଷଣଗୁଡ଼ିକୁ ବୁଝିବା ପାଇଁ ଆପଣଙ୍କୁ ଅନେକ ପ୍ରଶ୍ନ ପଚରାଯିବ ଏବଂ ତା \'ପରେ ଦୃଷ୍ଟି ପରୀକ୍ଷା କରାଯିବ।';

  @override
  String get eyeAssessmentGetMemberLabel => 'ସଦସ୍ଯ଼ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';

  @override
  String get eyeAssessmentProceedButton => 'ଆଗକୁ ବଢ଼ନ୍ତୁ।';

  @override
  String get eyeAssessmentBrightnessLabel => 'ଉଜ୍ଜ୍ୱଳତା 80 ପ୍ରତିଶତରେ ସ୍ଥିର ହୋଇଛି';

  @override
  String get eyeAssessmentBrightnessError => 'ଦଯ଼ାକରି ହସ୍ତକୃତ ଭାବେ ଉଜ୍ଜ୍ୱଳତାକୁ 80 ପ୍ରତିଶତରେ ସେଟ କରନ୍ତୁ।';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'ପ୍ରଶ୍ନ ଏପର୍ଯ୍ଯ଼ନ୍ତ ସମର୍ଥିତ ନୁହେଁ';

  @override
  String get eyeAssessmentPopUpHeading => 'ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get eyeAssessmentPopUpBody => 'ଆପଣଙ୍କର ଆଖି ସମ୍ବନ୍ଧୀଯ଼ କୌଣସି ସମସ୍ଯ଼ା ରହିଛି କି?';

  @override
  String get eyeAssessmentPopUpYesButton => 'ହଁ।';

  @override
  String get eyeAssessmentPopUpNoButton => 'ନା।';

  @override
  String get visualAcuityTestInstructionOne => 'ଏକ ଭଲ ହାଲୁକା ସ୍ଥାନରେ ଆରାମରେ ବସନ୍ତୁ। ଆପଣ ହଠାତ୍ ଉଜ୍ଜ୍ୱଳତାରେ ପରିବର୍ତ୍ତନ ଅନୁଭବ କରିପାରନ୍ତି, ଚିନ୍ତା କରନ୍ତୁ ନାହିଁ , ସର୍ବୋତ୍ତମ ଫଳାଫଳ ପ୍ରଦାନ କରିବା ପାଇଁ ସ୍କ୍ରିନ୍ ସ୍ୱଯ଼ଂଚାଳିତ ଉଜ୍ଜ୍ୱଳତାକୁ ସେଟ୍ ହୋଇଛି |';

  @override
  String get visualAcuityTestInstructionTwo => 'ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଆପଣ ଯନ୍ତ୍ରଟିକୁ ଆଖି ସ୍ତରରେ ଧରିଛନ୍ତି। ଯଦି ଆପଣ ଚଷମା କିମ୍ବା କଣ୍ଟାକ୍ଟ ଲେନ୍ସ ପିନ୍ଧନ୍ତି, ତେବେ ସେଗୁଡ଼ିକୁ ପିନ୍ଧି ରଖନ୍ତୁ।';

  @override
  String get visualAcuityTestInstructionThree => 'ସ୍କ୍ରିନ୍ ଠାରୁ ନିଜକୁ 40 ସେ. ମି. ଦୂରରେ ରଖନ୍ତୁ। ଦୂରତା, ପରୀକ୍ଷା ସ୍କ୍ରିନରେ ଦେଖାଯିବ।';

  @override
  String get visualAcuityTestInstructionFour => 'ଯଦି ଆପଣ ଚଷମା ପିନ୍ଧି ପରୀକ୍ଷା କରୁଛନ୍ତି, କେବଳ ଗୋଟିଏ ଆଖି ପରୀକ୍ଷା କରାଯିବା ସମଯ଼ରେ ଚଷମା ଉପରେ ଆପଣଙ୍କ ହାତରେ ଗୋଟିଏ ଆଖି ଢାଙ୍କି ଦିଅନ୍ତୁ |';

  @override
  String get skipAndProceedButton => 'ସ୍କିପ କରନ୍ତୁ ଏବଂ ସ୍କାନକୁ ଯାଆନ୍ତୁ';

  @override
  String get proceedToScanButton => 'ସ୍କାନକୁ ଯାଆନ୍ତୁ';

  @override
  String get eyeAssessmentSteps => 'ପଦକ୍ଷେପଗୁଡ଼ିକ';

  @override
  String get eyeAssessmentStepOne => 'ପର୍ଯ୍ଯ଼ାଯ଼ 1-ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ପ୍ରଶ୍ନଗୁଡିକ';

  @override
  String get eyeAssessmentStepTwo => 'ପର୍ଯ୍ଯ଼ାଯ଼ 2-ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ପ୍ରଶ୍ନଗୁଡିକ';

  @override
  String get eyeAssessmentStepThree => 'ପର୍ଯ୍ଯ଼ାଯ଼ 3-ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ପ୍ରଶ୍ନଗୁଡିକ';

  @override
  String get eyeAssessmentOngoing => 'ଚାଲୁଛି।';

  @override
  String get eyeAssessmentCompleted => 'ସମ୍ପୂର୍ଣ୍ଣ ହୋଇଛି।';

  @override
  String get eyeAssessmentPending => 'ବିଚାରାଧୀନ';

  @override
  String get eyeAssessmentResults => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଫଳାଫଳ';

  @override
  String get eyeAssessmentCompleteSteps => 'ଫଳାଫଳ ଦେଖିବା ପାଇଁ ସମସ୍ତ ପର୍ଯ୍ଯ଼ାଯ଼ ପୂରଣ କରନ୍ତୁ';

  @override
  String get eyeAssessmentToolTip => 'ଦଯ଼ାକରି ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ଫ୍ଲାସ୍ ବନ୍ଦ ଅଛି ଏବଂ ଉଜ୍ଜ୍ୱଳତା 80 ପ୍ରତିଶତ ସେଟ ହୋଇଛି।';

  @override
  String get eyeScanInstructionOne => 'ଫ୍ରେମ୍ ଉପରେ ମୁହଁକୁ ସଠିକ୍ ଭାବରେ ରଖି କ୍ଯ଼ାମେରାକୁ ଧରନ୍ତୁ |';

  @override
  String get eyeScanInstructionTwo => 'ଆପଣଙ୍କ ଫୋନର ପଛ କ୍ଯ଼ାମେରା ବ୍ଯ଼ବହାର କରି ଆଖିର ଏକ ଫଟୋ ନିଅନ୍ତୁ।';

  @override
  String get eyeScanInstructionThree => 'ଫ୍ଲାସ୍ ଅନ୍ ସହିତ ଏକ ଭଲ ଆଲୋକିତ ସ୍ଥାନରେ ରହିବା ନିଶ୍ଚିତ କରନ୍ତୁ |';

  @override
  String get eyeScanInstructionFour => 'ଭଲ କ୍ଯ଼ାପଚର୍ ଏବଂ ସ୍ପଷ୍ଟତା ପାଇଁ, ଚିତ୍ରଟିକୁ କ୍ଲିକ୍ କରିବା ପାଇଁ ଅନ୍ଯ଼ କାହାକୁ କୁହନ୍ତୁ।';

  @override
  String get eyeScanInstructionFive => 'ଫଟୋ ଉଠାଇବା ସମଯ଼ରେ ଗୋଟିଏ ଆଖିକୁ ହାତରେ ଢାଙ୍କି ଅନ୍ଯ଼ ଆଖିରେ ସିଧା ଆଗକୁ ଦେଖନ୍ତୁ।';

  @override
  String get eyeScanInstructionSix => 'ଚିତ୍ର ଆରମ୍ଭ କରିବା ପୂର୍ବରୁ ପ୍ଯ଼ାନେଲ୍ ଭିତରେ ଆଖିକୁ କେନ୍ଦ୍ର କରନ୍ତୁ।';

  @override
  String get eyeScanInstructionSeven => 'ଫ୍ଲାଶ୍ ବନ୍ଦ ହେବା ପର୍ଯ୍ଯ଼ନ୍ତ ଆଖି ଖୋଲା ରଖନ୍ତୁ, ଯେପର୍ଯ୍ଯ଼ନ୍ତ ଏକ \'ବିପ୍\' ଶବ୍ଦ ଫଟୋର ଶେଷକୁ ସଙ୍କେତ ଦିଏ |';

  @override
  String get eyeAssessmentNote => 'ଟିପ୍ପଣୀ: ଏଠାରେ ଦେଖାଯାଇଥିବା ପ୍ରତିଛବିଗୁଡ଼ିକ କେବଳ ସୂଚାଇବା ପାଇଁ | ବାସ୍ତବ ଜୀବନରେ ସେଗୁଡ଼ିକ ସମାନ ଭାବରେ ଦେଖାଯାଇନପାରେ |';

  @override
  String get agreeButton => 'ମୁଁ ରାଜି।';

  @override
  String get consentPageCheckbox => 'ମୁଁ ନିଯ଼ମ ଏବଂ ସର୍ତ୍ତାବଳୀ ସହିତ ସହମତ।';

  @override
  String get confirmButton => 'ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get discardButton => 'ପରିତ୍ଯ଼ାଗ କରନ୍ତୁ।';

  @override
  String get imageNotCapturedToastMessage => 'ପ୍ରତିଛବି କ୍ୟାପଚର ହୋଇନାହିଁ ';

  @override
  String get eyeCaptureCompletionDialogHeading => 'ପରୀକ୍ଷା ଶେଷ ହେଲା';

  @override
  String get eyeCaptureCompletionDialogBody => 'ଆପଣ ପରୀକ୍ଷା ସମାପ୍ତ କରିଛନ୍ତି। ଫଳାଫଳ ଦେଖିବା ପାଇଁ ଦଯ଼ାକରି ତଳେ ଥିବା ବଟନ୍ ଉପରେ କ୍ଲିକ୍ କରନ୍ତୁ।';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'ଫଳାଫଳ ଦେଖନ୍ତୁ';

  @override
  String get eyeCaptureTriageSavedLocally => 'ଟ୍ରାଇଏଜ୍ ସ୍ଥାନୀଯ଼ ଭାବରେ ସଂରକ୍ଷିତ ହୋଇଛି';

  @override
  String get visualAcuityTestResults => 'ଭିଜୁଆଲ୍ ଆକ୍ଯ଼ୁଇଟି ପରୀକ୍ଷା ଫଳାଫଳ';

  @override
  String get assessmentResultPageMoreDetailsText => 'ଅଧିକ ବିବରଣୀ ପାଇଁ ନିକଟସ୍ଥ ଭିଜନ ସେଣ୍ଟରକୁ ଯାଆନ୍ତୁ। ଆମର ଭିଜନ ଟେକ୍ନିସିଆନଙ୍କ ସହ କଥା ହେବା ପାଇଁ ଟୋଲ-ଫ୍ରି ନମ୍ବରକୁ କଲ୍ କରନ୍ତୁ।';

  @override
  String get assessmentReportButton => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ରିପୋର୍ଟ';

  @override
  String get notificationsTitle => 'ବିଜ୍ଞପ୍ତିଗୁଡ଼ିକ';

  @override
  String get notificationsNotAvailable => 'କୌଣସି ବିଜ୍ଞପ୍ତି ନାହିଁ';

  @override
  String get servicesPatientCare => 'ରୋଗୀ ଯତ୍ନ';

  @override
  String get reportAssessmentId => 'ମୂଲ୍ୟାଙ୍କନ ଆଇଡି';

  @override
  String get reportDateAndTime => 'ତାରିଖ ଓ ସମୟ';

  @override
  String get reportSeverityAbnormal => 'ତତ୍କାଳୀନ ପରୀକ୍ଷା';

  @override
  String get reportSeverityHigh => 'ପ୍ରଥମ ପରୀକ୍ଷା';

  @override
  String get reportSeverityLow => 'ନିୟମିତ ପରୀକ୍ଷା';

  @override
  String get reportDataUnavailable => 'ଡାଟା ଅନୁପଲବ୍ଧ';

  @override
  String get reportTumblingTitle => 'ଏକ୍ୟୁଟ ଟେଷ୍ଟ - ଟମ୍ବଲିଂ ଈ';

  @override
  String get rightCornea => 'ଡାହାଣ କର୍ଣ୍ଣିଆ';

  @override
  String get leftCornea => 'ବାମ କର୍ଣ୍ଣିଆ';

  @override
  String get myProfileGeneralInfo => 'ସାଧାରଣ ସୂଚନା';

  @override
  String get myProfileAge => 'ବୟସ';

  @override
  String get myProfileAddress => 'ଠିକଣା';

  @override
  String get myProfileLine => 'ଲାଇନ୍';

  @override
  String get myProfileCity => 'ସହର';

  @override
  String get myProfileDistrict => 'ଜିଲ୍ଲା';

  @override
  String get myProfileState => 'ରାଜ୍ୟ';

  @override
  String get myProfilePinCode => 'ପିନ୍ କୋଡ୍';

  @override
  String get submitButton => 'ଜମା କରନ୍ତୁ';

  @override
  String get swipeGestureError => 'ଭୁଲ ସ୍ୱାଇପ୍! ଦୟାକରି ପୁନଃପ୍ରୟାସ କରନ୍ତୁ।';

  @override
  String get swipeGestureCardText => 'ସଂକେତର ଦିଗକୁ ସ୍ୱାଇପ୍ କରନ୍ତୁ';

  @override
  String get assessmentResultCardAssessmentQuestions => 'ମୂଲ୍ୟାଙ୍କନ\r\n\r\nପ୍ରଶ୍ନଗୁଡିକ';

  @override
  String get assessmentResultCardAcuityTest => 'ଆକ୍ୟୁଟି ପରୀକ୍ଷା';

  @override
  String get assessmentResultCardEyeScan => 'ଚକ୍ଷୁ\r\n\r\nସ୍କାନ୍';

  @override
  String get viewReportButton => 'ରିପୋର୍ଟ ଦେଖନ୍ତୁ';

  @override
  String get updateButton => 'ଅପଡେଟ୍ କରନ୍ତୁ';

  @override
  String get assessmentCardUrgentConsult => 'ତାତ୍କାଲିକ ପରାମର୍ଶ';

  @override
  String get assessmentCardRoutineCheckUp => 'ନିୟମିତ ପରୀକ୍ଷା';

  @override
  String get assessmentCardEarlyCheckUp => 'ପୂର୍ବଦର୍ଶନ';

  @override
  String get testAgainButton => 'ପୁନଃପରୀକ୍ଷା କରନ୍ତୁ';

  @override
  String get homeButton => 'ହୋମ୍';

  @override
  String get homeTriageCardTitle => 'ଆମର ଆଖି ହେଉଛି ଆମର ବହୁମୂଲ୍ୟ ସମ୍ପତ୍ତି |';

  @override
  String get homeTriageCardDescription => 'ଆଖି ସମସ୍ୟାକୁ ରୋକିବା ପାଇଁ ଠିକ୍ ସମୟରେ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get homeTriageCardTest => 'ଚକ୍ଷୁ ପରୀକ୍ଷା ଶୁରୁ କରନ୍ତୁ';

  @override
  String get homeHelplineCardDescrition => 'ହଠାତ୍ ଦୃଷ୍ଟି ଶକ୍ତି ହରାଇଲେ, ଏହି ଜରୁରୀକାଳୀନ ହେଲ୍ପଲାଇନକୁ ଡାକନ୍ତୁ |';

  @override
  String get inviteCardTitle => 'ଅନ୍ୟମାନଙ୍କୁ ନିମନ୍ତ୍ରଣ କରନ୍ତୁ ';

  @override
  String get inviteCardDescription => '5 ବନ୍ଧୁ ଏବଂ ପରିବାରର ସଦସ୍ୟଙ୍କୁ ଆମର ଚକ୍ଷୁ ମୂଲ୍ୟାଂକନ ପାଇଁ ଆମନ୍ତ୍ରିତ କରନ୍ତୁ ଏବଂ ଭବିଷ୍ୟତର ଚକ୍ଷୁ ସମସ୍ୟାରୁ ବଚାଇବାରେ ସହାୟ୍ୟ କରନ୍ତୁ ।';

  @override
  String get inviteCardInvitation => 'ଆମନ୍ତ୍ରଣ କରନ';

  @override
  String get partnerCardTitle => 'ସହଭାଗୀ';

  @override
  String get languageSelection => 'ଭାଷା ଚୟନ କରନ୍ତୁ |';

  @override
  String get profileTitle => 'ପ୍ରୋଫାଇଲ୍';

  @override
  String get eyeAssessmentEnterLabel => 'ଏଠାରେ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get profilePageAddressDetails => 'ଠିକଣା ବିବରଣୀ';

  @override
  String get profilePaeCheckReports => 'ଆପଣଙ୍କର ରିପୋର୍ଟଗୁଡିକ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get bottomNavItemEyeTest => 'ଚକ୍ଷୁ ପରୀକ୍ଷା';

  @override
  String get bottomNavItemAppointment => 'ନିଯୁକ୍ତି';

  @override
  String get memberSelection => 'ସଦସ୍ୟ ଚୟନ କରନ୍ତୁ';

  @override
  String get triageAlerDialogBoxTitle => 'ପୁନର୍ବାର କରିବାକୁ ପଦକ୍ଷେପଗୁଡିକ ଚୟନ କରନ୍ତୁ';

  @override
  String get scannerTitle => 'ସ୍କାନର୍';

  @override
  String get visualAcuityTestDistanceInstruction => 'କ୍ଯ଼ାମେରାଟିକୁ ଆଖିଠାରୁ 40 ସେ. ମି. ଦୂରରେ ରଖନ୍ତୁ।';

  @override
  String get somethingWentWrong => 'କିଛି ଭୁଲ ହୋଇଗଲା';

  @override
  String get triageUpdatedSuccessfully => 'ଟ୍ରାଇଏଜ୍ ସଫଳତାର ସହ ଅଦ୍ଯ଼ତନ ହୋଇଛି।';

  @override
  String get noPreviewAvailable => 'କୌଣସି ପୂର୍ବରୂପ ଉପଲବ୍ଧ ନାହିଁ।';

  @override
  String get privacyPolicyTitle => 'ଗୋପନୀଯ଼ତା ଏବଂ ତଥ୍ଯ଼ ସୁରକ୍ଷା';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'ଆମେ ନିମ୍ନୋକ୍ତ ଉଦ୍ଦେଶ୍ଯ଼ ପାଇଁ ଆପଣଙ୍କ ଦ୍ୱାରା ପ୍ରଦାନ କରାଯାଇଥିବା ବ୍ଯ଼କ୍ତିଗତ ତଥ୍ଯ଼କୁ ପ୍ରକ୍ରିଯ଼ାକରଣ କରୁ, ଯେପରିକିଃ';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'ଆପଣ କ୍ଯ଼ାମେରାର ଅତି ନିକଟରେ ଅଛନ୍ତି, କ୍ଯ଼ାମେରାକୁ ଆଖିଠାରୁ 40 ସେ. ମି. ଦୂରରେ ରଖନ୍ତୁ।';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'ଆପଣ କ୍ଯ଼ାମେରାରୁ ବହୁତ ଦୂରରେ ଅଛନ୍ତି, କ୍ଯ଼ାମେରାକୁ ଆଖିଠାରୁ 40 ସେ. ମି. ଦୂରରେ ରଖନ୍ତୁ।';

  @override
  String get myProfileABHAID => 'ଏବିଏଚଏ ଆଇଡି';

  @override
  String get myProfileEmail => 'ଇମେଲ୍ କରନ୍ତୁ';

  @override
  String get viewHistoryButton => 'ଇତିହାସ ଦେଖନ୍ତୁ';

  @override
  String get profilePagePersonalDetails => 'ବ୍ଯ଼କ୍ତିଗତ ବିବରଣୀ';

  @override
  String get profilePageDateOfBirth => 'ଜନ୍ମ ତାରିଖ';

  @override
  String get profilePageGender => 'ଲିଙ୍ଗ';

  @override
  String get profilePageMobile => 'ମୋବାଇଲ';

  @override
  String get profilePageHealthCardTitle => 'ସ୍ୱାସ୍ଥ୍ଯ଼ କାର୍ଡ';

  @override
  String get appointmentTitle => 'ନିଯୁକ୍ତି';

  @override
  String get appointmentSubtitle => 'ସମସ୍ତ ନିଯୁକ୍ତି';

  @override
  String get eyeBoxText => 'ଆଖି ଚାରିପାଖରେ ସବୁଜ ବାକ୍ସ ଦୃଶ୍ଯ଼ମାନ ହେବା ପର୍ଯ୍ଯ଼ନ୍ତ ଦଯ଼ାକରି ପ୍ରତିଛବିକୁ ଆଡଜଷ୍ଟ ଏବଂ ପୋଜିସନ୍ କରନ୍ତୁ | ଆଖିକୁ ନିକଟତର କରନ୍ତୁ ଏବଂ ସୁନିଶ୍ଚିତ କରନ୍ତୁ ଯେ ବାକ୍ସଟିର 40 ପ୍ରତିଶତ ଆଖି ଦ୍ୱାରା ଆଚ୍ଛାଦିତ ହୋଇଛି।';

  @override
  String get bottomNavItemServices => 'ସେବା';

  @override
  String get smsContent => 'ଆରେ! ମୁଁ ମୋ ଆଖିର ଯତ୍ନ ନେବା ପାଇଁ ସାଇଟ୍କନେକ୍ଟ ଆପ୍ ବ୍ଯ଼ବହାର କରୁଛି, ଏବଂ ଆପଣ ମଧ୍ଯ଼ କରିବା ଉଚିତ! ନିଜ ଆଖିର ମୂଲ୍ଯ଼ାଙ୍କନ କରନ୍ତୁ ଏବଂ ସାଇଟ୍କନେକ୍ଟ ଆପ୍ ଜରିଆରେ ଠିକ୍ ସମଯ଼ରେ ଚିକିତ୍ସା କରନ୍ତୁ। ଏହା ଏକ ଅନନ୍ଯ଼ ଆପ୍ ଯାହା ଆପଣଙ୍କ ହାତରେ ପ୍ରତିଷେଧକ ଚକ୍ଷୁ ଯତ୍ନ ଆଣିଥାଏ | ବର୍ତ୍ତମାନ ଏହାକୁ ପ୍ରାପ୍ତ କରନ୍ତୁଃ https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'ସାଇଟ୍କନେକ୍ଟ ଆପ୍ ଦ୍ୱାରା ନିଜ ଚକ୍ଷୁ ସ୍ୱାସ୍ଥ୍ଯ଼କୁ ପ୍ରାଥମିକତା ଦିଅନ୍ତୁ!';

  @override
  String get recentServicesCataractEyeTest => 'ମୋତିଆବିନ୍ଦୁ ଚକ୍ଷୁ ପରୀକ୍ଷା';

  @override
  String get recentServicesRedEyeTest => 'ଲାଲ ଆଖି ପରୀକ୍ଷା';

  @override
  String get chatBotDefaultQuerySuggestions => 'ଆଖି ମୂଲ୍ଯ଼ାଙ୍କନ ଆରମ୍ଭ କରନ୍ତୁ | ସାଧାରଣ ଆଖି ସମସ୍ଯ଼ା | ଉତ୍ତମ ଦୃଷ୍ଟିଶକ୍ତି ପାଇଁ ଟିପ୍ସ';

  @override
  String get chatBotWelcomeMessage => 'ନମସ୍କାର, ମୁଁ ଆଜି ଆପଣଙ୍କୁ କିପରି ସାହାଯ୍ଯ଼ କରିପାରିବି?';

  @override
  String get poweredByText => 'ଦ୍ୱାରା ପରିଚାଳିତ';

  @override
  String get digitalHealthCard => 'ଡିଜିଟାଲ ସାର୍ବଜନୀନ ସ୍ୱାସ୍ଥ୍ଯ଼ ଷ୍ଟାକ';

  @override
  String get inviteNowText => 'ବର୍ତ୍ତମାନ ନିମନ୍ତ୍ରଣ କରନ୍ତୁ';

  @override
  String get resend => 'ପୁନର୍ବାର ପଠାନ୍ତୁ';

  @override
  String get mobileNumber => 'ମୋବାଇଲ ନମ୍ବର';

  @override
  String get loginVerifyMobileNumber => 'ଆପଣଙ୍କ ମୋବାଇଲ ନମ୍ବର ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get loginEnterMobileNumber => 'ଦଯ଼ାକରି ମୋବାଇଲ ନମ୍ବର ଭରଣ କରନ୍ତୁ';

  @override
  String get loginEnterValidMobileNumber => 'ଦଯ଼ାକରି ବୈଧ ମୋବାଇଲ ନମ୍ବର ଭରଣ କରନ୍ତୁ';

  @override
  String get loginUnableToSendOTP => 'ଏହି ନମ୍ବରକୁ ଓଟିପି ପଠାଇବାରେ ଅସମର୍ଥ';

  @override
  String get loginGetOTP => 'ଓଟିପି ପ୍ରାପ୍ତ କରନ୍ତୁ';

  @override
  String get loginInvalidOTP => 'ଅବୈଧ ଓଟିପି';

  @override
  String get loginDidntReceiveOTP => 'ଓଟିପି ପାଇନାହାନ୍ତି କି?';

  @override
  String get loginOTPSent => 'ଓଟିପି ସଫଳତାର ସହ ପଠାଯାଇଛି';

  @override
  String get areYouSure => 'ଆପଣ ନିଶ୍ଚିତ କି?';

  @override
  String get triageExitConfirmation => 'ଆପଣ ଟେଷ୍ଟରୁ ବାହାରି ଯିବାକୁ ଚାହୁଁଛନ୍ତି କି?';

  @override
  String get triageReportEyeProblems => 'ଚକ୍ଷୁ ସମସ୍ଯ଼ା ବିଷଯ଼ରେ ଜଣାନ୍ତୁ';

  @override
  String get triageHowToReport => 'ଆଖି ସମସ୍ଯ଼ା କିପରି ରିପୋର୍ଟ କରିବେ?';

  @override
  String get triageReportInstructions => 'ଯଦି ଆପଣଙ୍କର ଆଖି ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ା ରହିଛି, ତେବେ ଉପଯୁକ୍ତ ମାର୍ଗଦର୍ଶନ ପାଇବା ପାଇଁ ଆପଣ ଏଠାରେ ନିଜ ସମସ୍ଯ଼ା ବିଷଯ଼ରେ ସ୍ୱଯ଼ଂ ଘୋଷଣା କରିପାରିବେ ଏବଂ ଉଲ୍ଲେଖ କରିପାରିବେ। ଆପଣ ଏଠାରେ ଆପଣଙ୍କ ବନ୍ଧୁ କିମ୍ବା ପରିବାର ସଦସ୍ଯ଼ଙ୍କ ଆଖି ସମସ୍ଯ଼ା ବିଷଯ଼ରେ ମଧ୍ଯ଼ ଉଲ୍ଲେଖ କରିପାରିବେ ଏବଂ ଉପଯୁକ୍ତ ମାର୍ଗଦର୍ଶନ ପାଇପାରିବେ। ଆଖି ସମସ୍ଯ଼ାର ପ୍ରକୃତି ଏବଂ ଗମ୍ଭୀରତାକୁ ବୁଝିବା ପାଇଁ ଆପଣଙ୍କୁ ନିମ୍ନଲିଖିତ ବିଭାଗରେ କିଛି ପ୍ରଶ୍ନ ପଚରାଯିବ। ସମସ୍ତ ପ୍ରଶ୍ନର ଉତ୍ତର ଦେବା ପରେ ଆପଣଙ୍କୁ କେଉଁ ପରୀକ୍ଷା ଏବଂ ଅନୁସରଣ କରିବାକୁ ହେବ ସେ ବିଷଯ଼ରେ ଆପଣଙ୍କୁ ପରାମର୍ଶ ଏବଂ ମାର୍ଗଦର୍ଶନ ଦିଆଯିବ।';

  @override
  String get assessment => 'ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get triageOtherSymptomsQuestion => 'ଆପଣଙ୍କର ଅନ୍ଯ଼ କୌଣସି ଲକ୍ଷଣ ଅଛି କି?';

  @override
  String get triageEnterSymptoms => 'ଏଠାରେ ଆପଣଙ୍କ ଲକ୍ଷଣଗୁଡ଼ିକୁ ପ୍ରବେଶ କରାନ୍ତୁ।';

  @override
  String get triageEyeAssessmentResults => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ଫଳାଫଳ';

  @override
  String get triageTestId => 'ପରୀକ୍ଷା ଆଇ. ଡି.';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'ଚକ୍ଷୁ ସ୍କାନ ସଫଳତାର ସହ ଅପଡେଟ୍ ହୋଇଛି';

  @override
  String get triageErrorEyeScanNotUpdated => 'ଚକ୍ଷୁ ସ୍କାନ ଅପଡେଟ୍ ହୋଇନାହିଁ!';

  @override
  String get triageLeftEyeString => 'ବାମ ଆଖି';

  @override
  String get triageRightEyeString => 'ଡାହାଣ ଆଖି';

  @override
  String get vaEyeTest => 'ଚକ୍ଷୁ ପରୀକ୍ଷା';

  @override
  String get instructions => 'ନିର୍ଦ୍ଦେଶାବଳୀ';

  @override
  String get vaSwipeUp => 'ଉପରକୁ ଘୁଞ୍ଚାନ୍ତୁ';

  @override
  String get vaSwipeDown => 'ତଳକୁ ଘୁଞ୍ଚାନ୍ତୁ';

  @override
  String get vaSwipeLeft => 'ବାମକୁ ଘୁଞ୍ଚାନ୍ତୁ';

  @override
  String get vaSwipeRight => 'ଡାହାଣକୁ ଘୁଞ୍ଚାନ୍ତୁ';

  @override
  String get vaSwipeGestureError => 'ଅବୈଧ ସ୍ୱାଇପ୍ ଅଙ୍ଗଭଙ୍ଗୀ। ଦଯ଼ାକରି ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get permissionNotGranted => 'ଅନୁମତି ମିଳିନାହିଁ।';

  @override
  String get serviceNotAvailable => 'ସେବା ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get vaDistanceToFace => 'ସାମ୍ନାସାମ୍ନି ଦୂରତା';

  @override
  String get vaDistanceToFaceInstruction => 'ଦଯ଼ାକରି ନିଶ୍ଚିତ କରନ୍ତୁ ଯେ କ୍ଯ଼ାମେରାଟି ଆପଣଙ୍କ ମୁହଁଠାରୁ 40 ସେ. ମି. ଦୂରରେ ରହିଛି।';

  @override
  String get vaBringFaceInsideBox => 'ବାକ୍ସ ଭିତରକୁ ନିଜ ମୁହଁକୁ ଆଣନ୍ତୁ।';

  @override
  String get startAssessment => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get optoAddPatientInfo => 'ରୋଗୀ ସୂଚନା ଯୋଗ କରନ୍ତୁ';

  @override
  String get loggedOutMessage => 'ଆପଣ ଲଗ୍ ଆଉଟ୍ ହୋଇଛନ୍ତି।';

  @override
  String get optoLogoutError => 'କ୍ଷମା କରିବେ, ଆମେ ମୋବାଇଲ୍ ଆପରେ ଏକ ଲଗଆଉଟ୍ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହୋଇଛୁ।';

  @override
  String get optoLoggingOut => 'ଲଗ ଆଉଟ...';

  @override
  String get hello => 'ନମସ୍କାର।';

  @override
  String get optoGetStarted => 'ଚାଲନ୍ତୁ ଆରମ୍ଭ କରିବା';

  @override
  String get optoCompletedTests => 'ସମ୍ପୂର୍ଣ୍ଣ ହୋଇଥିବା ପରୀକ୍ଷା';

  @override
  String get optoThisMonth => 'ଏହି ମାସରେ...';

  @override
  String get today => 'ଆଜି';

  @override
  String get services => 'ସେବାଗୁଡ଼ିକ';

  @override
  String get optoAssessmentHistory => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଇତିହାସ';

  @override
  String get optoEyeAssessments => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get feedback => 'ଫିଡ୍ବ୍ଯ଼ାକ୍';

  @override
  String get optoImproveApp => 'ଆମେ ଚାହୁଁ ଯେ ଆପଣଙ୍କ ମତାମତ ଆମ ଆପ୍ଲିକେସନରେ ଉନ୍ନତି ଆଣିବ।';

  @override
  String get assessments => 'ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get optoPatientAssistance => 'ରୋଗୀକୁ ସାହାଯ୍ଯ଼ର ଆବଶ୍ଯ଼କତା ଥିଲା କି?';

  @override
  String get optoVisualAcuity => 'ଦୃଶ୍ଯ଼ମାନ ତୀକ୍ଷ୍ଣତା';

  @override
  String get optoPatientAided => 'ରୋଗୀକୁ ସାହାଯ୍ଯ଼ କରାଯାଇଥିଲା କି?';

  @override
  String get optoEyeScan => 'ଚକ୍ଷୁ ସ୍କାନ୍';

  @override
  String get optoLeaveFeedback => 'ଦଯ଼ାକରି ନିମ୍ନରେ ଆପଣଙ୍କ ମତାମତ ଦିଅନ୍ତୁ।';

  @override
  String get optoNoInternet => 'କୌଣସି ଇଣ୍ଟରନେଟ ସଂଯୋଗ ନାହିଁ';

  @override
  String get optoCheckInternet => 'ଦଯ଼ାକରି ଆପଣଙ୍କର ଇଣ୍ଟରନେଟ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ ଏବଂ ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get optoSearchPatientId => 'ରୋଗୀ ଆଇ. ଡି. କୁ ଖୋଜନ୍ତୁ';

  @override
  String get optoRecentAssessments => 'ସାମ୍ପ୍ରତିକ ଆକଳନ';

  @override
  String get optoSelectDateRange => 'ଦଯ଼ାକରି ଏକ ତାରିଖ ପରିସର ବାଛନ୍ତୁ';

  @override
  String get optoDataNotFound => 'ଏହି ସନ୍ଧାନ ପାଇଁ ତଥ୍ଯ଼ ମିଳୁନାହିଁ';

  @override
  String get optoAssessmentReport => 'ମୂଲ୍ଯ଼ାଙ୍କନ ରିପୋର୍ଟ';

  @override
  String get optoPID => 'ପି. ଆଇ. ଡି.';

  @override
  String get category => 'ବର୍ଗ';

  @override
  String get patientAssessmentAndTest => 'ରୋଗୀ ମୂଲ୍ଯ଼ାଙ୍କନ ଏବଂ ପରୀକ୍ଷା';

  @override
  String get patientSelfTestReport => 'ସ୍ୱଯ଼ଂ-ପରୀକ୍ଷଣ ରିପୋର୍ଟ';

  @override
  String get patientClinicalReport => 'କ୍ଲିନିକାଲ୍ ରିପୋର୍ଟ';

  @override
  String get patientAppointmentTitle => 'ନିଯୁକ୍ତି';

  @override
  String get patientBookAppointment => 'ପୁସ୍ତକ ନିଯୁକ୍ତି';

  @override
  String get patientAppointmentSubtitle => 'ଆପଣଙ୍କ ନିଯୁକ୍ତି';

  @override
  String get patientTelephoneConsultation => 'ଟେଲିଫୋନ୍ ପରାମର୍ଶ';

  @override
  String get patientAddress => 'ଠିକଣା';

  @override
  String get patientReschedule => 'ପୁନଃନିର୍ଦ୍ଧାରଣ କରନ୍ତୁ';

  @override
  String get patientCancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get patientPID => 'ପି. ଆଇ. ଡି.';

  @override
  String get patientReportID => 'ଆଇ. ଡି. ରିପୋର୍ଟ କରନ୍ତୁ';

  @override
  String get patientHideDetailedReport => 'ବିସ୍ତୃତ ବିବରଣୀ ଲୁଚାଇ ରଖନ୍ତୁ';

  @override
  String get patientShowDetailedReport => 'ବିସ୍ତୃତ ବିବରଣୀ ଦର୍ଶାନ୍ତୁ';

  @override
  String get patientEID => 'ଇ. ଆଇ. ଡି.';

  @override
  String get patientViewHistoryButton => 'ଇତିହାସ ଦେଖନ୍ତୁ';

  @override
  String get patientViewReportButton => 'ରିପୋର୍ଟ ଦେଖନ୍ତୁ';

  @override
  String get patientNoMoreData => 'ଆଉ କୌଣସି ତଥ୍ଯ଼ ନାହିଁ';

  @override
  String get patientErrorFetchingReport => 'ରିପୋର୍ଟ ଆଣିବାରେ ତ୍ରୁଟି';

  @override
  String get patientTimeline => 'ସମଯ଼ରେଖା';

  @override
  String get patientRoutineCheckup => 'ନିଯ଼ମିତ ଯାଞ୍ଚ';

  @override
  String get patientAssessmentID => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଆଇ. ଡି.';

  @override
  String get patientStartDate => 'ଆରମ୍ଭ ତାରିଖ';

  @override
  String get patientIVRAssessment => 'ଆଇ. ଭି. ଆର୍. ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get patientEarlyConsultationRecommended => 'ପ୍ରାରମ୍ଭିକ ପରାମର୍ଶ ସୁପାରିସ କରାଯାଇଛି';

  @override
  String get patientCataractEyeReport => 'ମୋତିଆବିନ୍ଦୁ ଚକ୍ଷୁ ରିପୋର୍ଟ';

  @override
  String get patientRedEyeReport => 'ଲାଲ ଆଖି ରିପୋର୍ଟ';

  @override
  String get patientScanAgain => 'ପୁଣିଥରେ ସ୍କାନ କରନ୍ତୁ';

  @override
  String get patientStepsToScan => 'ରେଟିନାଲ ସ୍କାନିଂ କରିବା ପାଇଁ ପଦକ୍ଷେପ';

  @override
  String get patientProceedToScan => 'ସ୍କାନକୁ ଯାଆନ୍ତୁ';

  @override
  String get patientSkipAndProceedToScan => 'ସ୍କିପ କରନ୍ତୁ ଏବଂ ସ୍କାନକୁ ଯାଆନ୍ତୁ';

  @override
  String get patientEyeScanner => 'ଚକ୍ଷୁ ସ୍କାନର';

  @override
  String get patientErrorSelectCamera => 'ପ୍ରଥମେ ଏକ କ୍ଯ଼ାମେରା ବାଛନ୍ତୁ!';

  @override
  String get patientEyeBoxText => 'ଚକ୍ଷୁ ବାକ୍ସ ପାଠ୍ଯ଼';

  @override
  String get patientLoggedOut => 'ଆପଣ ଲଗ୍ ଆଉଟ୍ ହୋଇଛନ୍ତି।';

  @override
  String get patientLogoutError => 'କ୍ଷମା କରିବେ, ଆମେ ମୋବାଇଲ୍ ଆପରେ ଏକ ଲଗଆଉଟ୍ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହୋଇଛୁ।';

  @override
  String get patientUpdateProfile => 'ପ୍ରୋଫାଇଲକୁ ଅଦ୍ଯ଼ତନ କରନ୍ତୁ';

  @override
  String get patientEdit => 'ସମ୍ପାଦନା କରନ୍ତୁ';

  @override
  String get patientProfileNotUpdated => 'ପ୍ରୋଫାଇଲ୍ ଅଦ୍ଯ଼ତନ ହୋଇନାହିଁ';

  @override
  String get patientProfileUpdated => 'ପ୍ରୋଫାଇଲକୁ ଅଦ୍ଯ଼ତନ କରାଯାଇଛି';

  @override
  String get patientReportUnavailable => 'ରିପୋର୍ଟ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get patientClinicalReportNotFound => 'କ୍ଲିନିକାଲ୍ ରିପୋର୍ଟ ମିଳୁନାହିଁ';

  @override
  String get patientRID => 'ଆର୍. ଆଇ. ଡି.';

  @override
  String get patientUpdateUnavailable => 'ଏହି ସମଯ଼ରେ ଅଦ୍ଯ଼ତନ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get vgAddEvent => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgUploadingImageAddingEvent => 'ପ୍ରତିଛବି ଅପଲୋଡ କରିବା ଏବଂ ଇଭେଣ୍ଟ ଯୋଗ କରିବା';

  @override
  String get vgEventTitle => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଶୀର୍ଷକ';

  @override
  String get vgPleaseEnterEndTime => 'ଦଯ଼ାକରି ଶେଷ ସମଯ଼ ଭରଣ କରନ୍ତୁ';

  @override
  String get vgShouldNotContainSpecialCharacter => 'ଏଥିରେ କୌଣସି ବିଶେଷ ଅକ୍ଷର ରହିବା ଉଚିତ ନୁହେଁ।';

  @override
  String get vgEventDescription => 'ଘଟଣା ବର୍ଣ୍ଣନା';

  @override
  String get vgAddPatient => 'ରୋଗୀ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgPatients => 'ରୋଗୀମାନେ';

  @override
  String get vgDetails => 'ସବିଶେଷ ବିବରଣୀ';

  @override
  String get vgTeammates => 'ସାଥୀ ଖେଳାଳିମାନେ';

  @override
  String get vgEyeAssessment => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vgStart => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get vgEyeAssessmentDescription => 'ଆପଣ, ଆପଣଙ୍କ ବନ୍ଧୁ ଏବଂ ପରିବାର ସଦସ୍ଯ଼ଙ୍କ ଚକ୍ଷୁ ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ାଗୁଡ଼ିକର ଆକଳନ କିଛିଟା ପର୍ଯ୍ଯ଼ାଯ଼ରେ କରନ୍ତୁ। ଆପଣଙ୍କ ଚକ୍ଷୁ ସମ୍ବନ୍ଧୀଯ଼ ସମସ୍ଯ଼ା ସମ୍ବନ୍ଧୀଯ଼ ଲକ୍ଷଣଗୁଡ଼ିକୁ ବୁଝିବା ପାଇଁ ଆପଣଙ୍କୁ ଅନେକ ପ୍ରଶ୍ନ ପଚରାଯିବ ଏବଂ ତା ପରେ ଦୃଷ୍ଟି ପରୀକ୍ଷା କରାଯିବ।';

  @override
  String get vgLogoutMessage => 'ଆପଣ ଲଗ୍ ଆଉଟ୍ ହୋଇଛନ୍ତି।';

  @override
  String get vgLogoutErrorMessage => 'କ୍ଷମା କରିବେ, ଆମେ ମୋବାଇଲ୍ ଆପରେ ଏକ ଲଗଆଉଟ୍ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହୋଇଛୁ।';

  @override
  String get vgWelcome => 'ସ୍ୱାଗତ।';

  @override
  String get vgServices => 'ସେବାଗୁଡ଼ିକ';

  @override
  String get vgEvents => 'ଘଟଣାଗୁଡ଼ିକ';

  @override
  String get vgViewAll => 'ସମସ୍ତ ଦେଖନ୍ତୁ';

  @override
  String get vtAssessmentReport => 'ମୂଲ୍ଯ଼ାଙ୍କନ ରିପୋର୍ଟ-ଇ. ଏ.';

  @override
  String get vtRemarks => 'ମନ୍ତବ୍ଯ଼ଗୁଡ଼ିକ';

  @override
  String get vtNoPatientFound => 'କୌଣସି ରୋଗୀ ମିଳିନାହିଁ';

  @override
  String get vtClose => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get vtBack => 'ପଛକୁ।';

  @override
  String get vtSubmit => 'ଦାଖଲ କରନ୍ତୁ';

  @override
  String get vtSomethingWentWrong => 'କିଛି ଭୁଲ ହୋଇଗଲା।';

  @override
  String get vtAssessmentClosedSuccessfully => 'ମୂଲ୍ଯ଼ାଙ୍କନ ସଫଳତାର ସହ ବନ୍ଦ ହେଲା';

  @override
  String get vtEyeScan => 'ଚକ୍ଷୁ ସ୍କାନ୍';

  @override
  String get vtDashboard => 'ଡ୍ଯ଼ାସବୋର୍ଡ';

  @override
  String get vtRegisterPatient => 'ରୋଗୀ ପଞ୍ଜିକରଣ କରନ୍ତୁ';

  @override
  String get vtTriage => 'ତ୍ରଯ଼ୋଦଶ।';

  @override
  String get vtMarkMyAvailability => 'ମୋ ଉପଲବ୍ଧତାକୁ ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get vtIVRCallHistory => 'ଆଇ. ଭି. ଆର୍. କଲ୍ ଇତିହାସ';

  @override
  String get vtMarked => 'ଚିହ୍ନିତ';

  @override
  String get vtPreliminaryAssessment => 'ପ୍ରାରମ୍ଭିକ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vtAge => 'ବଯ଼ସ.';

  @override
  String get vtGender => 'ଲିଙ୍ଗ';

  @override
  String get vtAddress => 'ଠିକଣା';

  @override
  String get vtProfile => 'ପ୍ରୋଫାଇଲ';

  @override
  String get vtLogoutMessage => 'ଆପଣ ଲଗ୍ ଆଉଟ୍ ହୋଇଛନ୍ତି।';

  @override
  String get vtLogoutError => 'କ୍ଷମା କରିବେ, ଆମେ ମୋବାଇଲ୍ ଆପରେ ଏକ ଲଗଆଉଟ୍ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହୋଇଛୁ।';

  @override
  String get vtError => 'ତ୍ରୁଟି';

  @override
  String get vtPatient => 'ରୋଗୀ।';

  @override
  String get vtMobile => 'ମୋବାଇଲ';

  @override
  String get vtAssessmentID => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଆଇ. ଡି.';

  @override
  String get vtStatus => 'ସ୍ଥିତି';

  @override
  String get vtTimeline => 'ସମଯ଼ରେଖା';

  @override
  String get vtCategory => 'ବର୍ଗ';

  @override
  String get vtNoDataFound => 'କୌଣସି ତଥ୍ଯ଼ ମିଳୁନାହିଁ';

  @override
  String get appCameraCapture => 'ଧରିନିଅନ୍ତୁ';

  @override
  String get appCameraRetake => 'ପୁନର୍ବାର ନିଅନ୍ତୁ';

  @override
  String get appCameraUsePhoto => 'ଫଟୋ ବ୍ଯ଼ବହାର କରନ୍ତୁ';

  @override
  String get appCameraCancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get appCameraNotFound => 'କ୍ଯ଼ାମେରା ମିଳିଲା ନାହିଁ';

  @override
  String get appCameraException => 'କ୍ଯ଼ାମେରା ବ୍ଯ଼ତିକ୍ରମ';

  @override
  String get appCameraProgressMessage => 'ଲୋଡ କରାଯାଉଛି...';

  @override
  String get internetLostNoConnection => 'କୌଣସି ଇଣ୍ଟରନେଟ ସଂଯୋଗ ନାହିଁ';

  @override
  String get internetLostRetry => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get secureJailbreak => 'ଏପରି ଲାଗୁଛି ଯେ ଆପଣଙ୍କ ଉପକରଣଟି ଜେଲ୍ବ୍ରୋକନ ହୋଇଛି।';

  @override
  String get secureRestrictedAccess => 'ସୁରକ୍ଷା କାରଣରୁ, ଜେଲ୍ବ୍ରୋକନ ଡିଭାଇସରେ ଏହି ଆପ୍ ବ୍ଯ଼ବହାର ଉପରେ ପ୍ରତିବନ୍ଧକ ଲଗାଯାଇଛି।';

  @override
  String get secureExitApp => 'ପ୍ରସ୍ଥାନ ଆପ୍';

  @override
  String get sharedErrorPageIssues => 'ଆମେ କେତେକ ସମସ୍ଯ଼ାର ସମ୍ମୁଖୀନ ହେଉଛୁ। ଦଯ଼ାକରି ପରେ ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get appointmentBookingTitle => 'ନିଯୁକ୍ତି ବୁକିଂ';

  @override
  String get comingSoon => 'ଖୁବ୍ଶୀଘ୍ର...';

  @override
  String get miniappService => 'ସେବା';

  @override
  String get miniappConsole => 'କନସୋଲ';

  @override
  String get roleChooseYourRole => 'ଆପଣଙ୍କ ଭୂମିକା ବାଛନ୍ତୁ';

  @override
  String get roleNote => 'ଟିପ୍ପଣୀଃ ଆପଣ ଆପ୍ ଭିତରେ ନିଜର ଭୂମିକା ବଦଳାଇ ପାରିବେ ନାହିଁ।';

  @override
  String get roleConfirm => 'ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get roleEyeCareProfessional => 'ଆଇ କେଯ଼ାର୍ ପ୍ରଫେସନାଲ୍';

  @override
  String get roleVisionTechnician => 'ଭିଜନ ଟେକ୍ନୋଲୋଜି';

  @override
  String get rolePatient => 'ରୋଗୀ';

  @override
  String get roleVisionGuardian => 'ଭିଜନ ଗାର୍ଡିଆନ';

  @override
  String get vtSearchText => 'ରୋଗୀ ଆଇଡି, ମୋବାଇଲ୍ ନମ୍ବର କିମ୍ବା ନାମ ଦ୍ୱାରା ଖୋଜନ୍ତୁ';

  @override
  String get emptyPatientsInfo => 'ରୋଗୀମାନଙ୍କୁ ସେମାନଙ୍କର ବିବରଣୀ ଦେଖିବା ପାଇଁ ଖୋଜିବା ଆରମ୍ଭ କରନ୍ତୁ।';

  @override
  String get vtPersonalDetails => 'ବ୍ଯ଼କ୍ତିଗତ ବିବରଣୀ';

  @override
  String get vtHprId => 'ଏଚପିଆର ଆଇଡି';

  @override
  String get vtEmailId => 'ଇମେଲ ଆଇଡି';

  @override
  String get vtEducationalQualification => 'ଶିକ୍ଷାଗତ ଯୋଗ୍ଯ଼ତା';

  @override
  String get vtAddressAndDoorNumber => 'ଠିକଣା ଏବଂ ଦ୍ୱାର ସଂଖ୍ଯ଼ା';

  @override
  String get vtCity => 'ସହର।';

  @override
  String get vtState => 'ରାଜ୍ଯ଼';

  @override
  String get vtPincode => 'ପିନ୍କୋଡ୍';

  @override
  String get vtOrganisationDetails => 'ସଙ୍ଗଠନ ବିବରଣୀ';

  @override
  String get vtOrgId => 'ଅର୍ଗ ଆଇ. ଡି.';

  @override
  String get vtFacilityType => 'ସୁବିଧା ପ୍ରକାର';

  @override
  String get vtAssessments => 'ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vtNoAssessmentsFound => 'କୌଣସି ମୂଲ୍ଯ଼ାଙ୍କନ ମିଳିନାହିଁ';

  @override
  String get vtAnalytics => 'ବିଶ୍ଳେଷଣ';

  @override
  String get vtTotalCases => 'ମୋଟ ମାମଲା';

  @override
  String get vtIvrCalls => 'ଆଇ. ଭି. ଆର୍. କଲ୍';

  @override
  String get vtClinicVisits => 'କ୍ଲିନିକ୍ ପରିଦର୍ଶନ';

  @override
  String get vtCasesClosed => 'ବନ୍ଦ ହେଲା ମାମଲା';

  @override
  String get vtCritical => 'ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ';

  @override
  String get vtRegular => 'ନିଯ଼ମିତ';

  @override
  String get vtAvgClosureTime => 'ଏ. ଭି. ଜି. ବନ୍ଦ ସମଯ଼';

  @override
  String get vtByAge => 'ବଯ଼ସ ଅନୁସାରେ';

  @override
  String get vtByGender => 'ଲିଙ୍ଗ ଅନୁସାରେ';

  @override
  String get vtSymptoms => 'ଲକ୍ଷଣଗୁଡ଼ିକ';

  @override
  String get vtSearchByMobileNo => 'ମୋବାଇଲ୍ ନମ୍ବର ଦ୍ୱାରା ଖୋଜନ୍ତୁ।';

  @override
  String get vtInvalidMobileNo => 'ଅବୈଧ ମୋବାଇଲ୍ ନଂ.';

  @override
  String get vtCallLogEmpty => 'କଲ୍ ଲଗ୍ ଖାଲି ଅଛି... ଏପର୍ଯ୍ଯ଼ନ୍ତ କୌଣସି କଲ୍ କରାଯାଇ ନାହିଁ!';

  @override
  String get vtNoDataAvailable => 'କୌଣସି ତଥ୍ଯ଼ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get vtToday => 'ଆଜି';

  @override
  String get vtYesterday => 'ଗତକାଲି';

  @override
  String get vtIvrCallNotAvailable => 'ଆଇ. ଭି. ଆର୍. କଲ୍ ଉପଲବ୍ଧ ନାହିଁ.. ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ!';

  @override
  String get vtMarkUnavailable => 'ଅନୁପଲବ୍ଧ ଭାବରେ ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get vtStartDate => 'ଆରମ୍ଭ ତାରିଖ';

  @override
  String get vtEndDate => 'ଶେଷ ତାରିଖ';

  @override
  String get vtStartTime => 'ଆରମ୍ଭ ସମଯ଼';

  @override
  String get vtEndTime => 'ଶେଷ ସମଯ଼';

  @override
  String get vtAddRemarksOptional => 'ମନ୍ତବ୍ଯ଼ ଯୋଗ କରନ୍ତୁ (ଇଚ୍ଛାଧୀନ)';

  @override
  String get vtSave => 'ସଞ୍ଚଯ଼ କରନ୍ତୁ';

  @override
  String get vtCancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get vtPleaseEnterRemark => 'ଦଯ଼ାକରି ଟିପ୍ପଣୀ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtAssessment => 'ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vtIvrSelections => 'ଆଇ. ଭି. ଆର୍. ଚଯ଼ନ';

  @override
  String get vtLanguageSelection => 'ଭାଷା ଚଯ଼ନ';

  @override
  String get vtEnglish => 'ଇଂରାଜୀ';

  @override
  String get vtPatientType => 'ରୋଗୀ ପ୍ରକାର';

  @override
  String get vtProblem => 'ସମସ୍ଯ଼ା';

  @override
  String get vtEyeSight => 'ଚକ୍ଷୁ ଦୃଷ୍ଟି';

  @override
  String get vtVisionTechnician => 'ଭିଜନ ଟେକ୍ନିସିଆନ୍';

  @override
  String get vtRecommendedCenter => 'ସୁପାରିସ କରାଯାଇଥିବା କେନ୍ଦ୍ର';

  @override
  String get vtAssessmentIDEA => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଆଇ. ଡି.: ଇ. ଏ.';

  @override
  String get vtPid => 'ପି. ଆଇ. ଡି.: ଓ. ପି.';

  @override
  String get vtAssessmentTimeline => 'ମୂଲ୍ଯ଼ାଙ୍କନ ସମଯ଼ସୀମା';

  @override
  String get vtPleaseSelectEncounter => 'ଦଯ଼ାକରି ଏକ ସାକ୍ଷାତ ଚଯ଼ନ କରନ୍ତୁ';

  @override
  String get vtTimelineEA => 'ସମଯ଼ସୀମାଃ ଇ. ଏ.';

  @override
  String get vtGeneralInformation => 'ସାଧାରଣ ସୂଚନା';

  @override
  String get vtDateOfBirth => 'ଜନ୍ମ ତାରିଖ';

  @override
  String get vtAssessmentEA => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଇ. ଏ.';

  @override
  String get vtNotRegistered => 'ଆପଣ ଏହି ବ୍ଯ଼ବସ୍ଥାରେ ପଞ୍ଜୀକୃତ ହୋଇନାହାନ୍ତି। ଦଯ଼ାକରି ଏଠାକୁ ଏକ ମିସ୍ଡ କଲ କରନ୍ତୁ।';

  @override
  String get vtOkay => 'ଠିକ୍ ଅଛି।';

  @override
  String get vtTakePicture => 'ଫଟୋ ଉଠାନ୍ତୁ';

  @override
  String get vtEye => 'ଆଖି।';

  @override
  String get vtRetakePicture => 'ପ୍ରତିଛବିକୁ ପୁନର୍ବାର ନିଅନ୍ତୁ';

  @override
  String get vtNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get vtMrCode => 'ଏମ୍. ଆର୍. କୋଡ୍';

  @override
  String get vtEnterMrCode => 'ଏଠାରେ ଏମ୍. ଆର୍. କୋଡ୍ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtPleaseEnterMrCode => 'ଦଯ଼ାକରି ଏମ୍. ଆର୍. କୋଡ୍ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtNote => 'ଟିପ୍ପଣୀ';

  @override
  String get vtEnterRecommendations => 'ଏଠାରେ ସୁପାରିଶଗୁଡ଼ିକୁ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtSolutions => 'ସମାଧାନ (ଗୁଡ଼ିକ)';

  @override
  String get vtLeftEye => 'ବାମ ଆଖି';

  @override
  String get vtRightEye => 'ଡାହାଣ ଆଖି';

  @override
  String get vtBothEyes => 'ଉଭଯ଼ ଆଖି';

  @override
  String get vtFilterBy => 'ଦ୍ବାରା ଫିଲ୍ଟର୍ କରନ୍ତୁ';

  @override
  String get vtLocation => 'ଅବସ୍ଥିତି';

  @override
  String get vtEnterTime => 'ଦଯ଼ାକରି ସମଯ଼ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtEnterDate => 'ଦଯ଼ାକରି ତାରିଖ ଭରଣ କରନ୍ତୁ';

  @override
  String get vtRecommendation => 'ସୁପାରିଶ';

  @override
  String get vtVisitPrimaryCenter => 'ପ୍ରାଥମିକ କେନ୍ଦ୍ରକୁ ଯାଆନ୍ତୁ';

  @override
  String get vtVisitSecondaryCenter => 'ମାଧ୍ଯ଼ମିକ କେନ୍ଦ୍ର ପରିଦର୍ଶନ କରନ୍ତୁ';

  @override
  String get vtVisitTertiaryCenter => 'ତୃତୀଯ଼କ କେନ୍ଦ୍ର ପରିଦର୍ଶନ କରନ୍ତୁ';

  @override
  String get vtVisitCenterOfExcellence => 'ଉତ୍କର୍ଷ କେନ୍ଦ୍ର ପରିଦର୍ଶନ କରନ୍ତୁ';

  @override
  String get vtIvrCallQuestion => 'ଆପଣ ଆଇ. ଭି. ଆର୍. କଲ୍ରେ ଅଛନ୍ତି କି?';

  @override
  String get vtYes => 'ହଁ।';

  @override
  String get vtNo => 'ନା।';

  @override
  String get vtRetry => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get vtAssessmentQuestions => 'ମୂଲ୍ଯ଼ାଙ୍କନ ପ୍ରଶ୍ନ';

  @override
  String get vtVisionCenter => 'ଦୃଷ୍ଟି କେନ୍ଦ୍ର';

  @override
  String get vtVisualAcuity => 'ଦୃଶ୍ଯ଼ମାନ ତୀକ୍ଷ୍ଣତା';

  @override
  String get vtInvalidValue => 'ଅବୈଧ ମୂଲ୍ଯ଼';

  @override
  String get vtSeverity => 'ତୀବ୍ରତା';

  @override
  String get vtNoVisionCentersFound => 'କୌଣସି ଦୃଷ୍ଟି କେନ୍ଦ୍ର ମିଳିନାହିଁ';

  @override
  String get vtRequestLocationPermission => 'ଅବସ୍ଥାନ ଅନୁମତି ପାଇଁ ଅନୁରୋଧ କରନ୍ତୁ';

  @override
  String get vtAppSettings => 'ଆପ୍ଲିକେସନ୍ ସେଟିଂ';

  @override
  String get vtEnterSomeText => 'ଦଯ଼ାକରି କିଛି ଲେଖା ଭରଣ କରନ୍ତୁ';

  @override
  String get vtPrimary => 'ପ୍ରାଥମିକ';

  @override
  String get vtDependent => 'ନିର୍ଭରଶୀଳ';

  @override
  String get vtAddMember => 'ସଦସ୍ଯ଼ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vtCompleteProfile => 'ସମ୍ପୂର୍ଣ୍ଣ ପ୍ରୋଫାଇଲ';

  @override
  String get vtPatientNotRegistered => 'ପଞ୍ଜୀକୃତ ହୋଇନଥିବା ରୋଗୀ';

  @override
  String get vtPatientRegistered => 'ରୋଗୀ ପଞ୍ଜିକୃତ';

  @override
  String get vtDependentNotAdded => 'ନିର୍ଭରଶୀଳ ଯୋଡ଼ାଯାଇନାହିଁ';

  @override
  String get vtDependentAdded => 'ନିର୍ଭରଶୀଳ ଯୋଡ଼ିଲା';

  @override
  String get vtServiceNotAvailable => 'ସେବା ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get vgEyeAssessments => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vgTotal => 'ମୋଟ';

  @override
  String get vgCamps => 'ଶିବିର';

  @override
  String get vgDoorToDoor => 'ଦ୍ୱାରକୁ ଦ୍ୱାର';

  @override
  String get vgByGender => 'ଲିଙ୍ଗ ଅନୁସାରେ';

  @override
  String get vgMale => 'ପୁରୁଷ।';

  @override
  String get vgFemale => 'ମହିଳା';

  @override
  String get vgOthers => 'ଅନ୍ଯ଼ମାନେ';

  @override
  String get vgByAge => 'ବଯ଼ସ ଅନୁସାରେ';

  @override
  String get vgSlideAge => 'ବର୍ଷ ବର୍ଷ';

  @override
  String get vgSymptoms => 'ଲକ୍ଷଣଗୁଡ଼ିକ';

  @override
  String get vgRefractive => 'ପ୍ରତିସରଣକାରୀ';

  @override
  String get vgCataract => 'ମୋତିଆବିନ୍ଦୁ';

  @override
  String get vgGlaucoma => 'ଗ୍ଲୁକୋମା';

  @override
  String get vgKeratitis => 'କେରାଟାଇଟିସ୍';

  @override
  String get vgBlepharitis => 'ବ୍ଲେଫାରାଇଟିସ୍';

  @override
  String get vgConjunctivitis => 'ନେତ୍ରାବରଣ ପ୍ରଦାହ';

  @override
  String get vgServicesCreateEvent => 'କାର୍ଯ୍ଯ଼କ୍ରମ ସୃଷ୍ଟି କରନ୍ତୁ';

  @override
  String get vgServicesEyeAssessment => 'ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ';

  @override
  String get vgServicesRegisterPatient => 'ନୂଆ ରୋଗୀ ପଞ୍ଜିକରଣ କରନ୍ତୁ';

  @override
  String get vgAddPatients => 'ରୋଗୀ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgEvent => 'ଘଟଣା';

  @override
  String get vgAddEventPhoto => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଫଟୋ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgUploadImage => 'ପ୍ରତିଛବିକୁ ଅପଲୋଡ କରନ୍ତୁ';

  @override
  String get vgAddPhotoInstruction => 'କାର୍ଯ୍ଯ଼କ୍ରମର ଏକ ଫଟୋ ଯୋଡ଼ନ୍ତୁ ଯାହା ଲଘୁଚିତ୍ର ଭାବେ ପ୍ରଦର୍ଶିତ ହେବ।';

  @override
  String get vgAddressDetails => 'ଠିକଣା ବିବରଣୀ';

  @override
  String get vgVenueName => 'ସ୍ଥାନର ନାମ';

  @override
  String get vgVenueNameError => 'ଦଯ଼ାକରି ସ୍ଥାନର ନାମ ଭରଣ କରନ୍ତୁ';

  @override
  String get vgVenueNameSpecialCharError => 'ଏଥିରେ କୌଣସି ବିଶେଷ ଅକ୍ଷର ରହିବା ଉଚିତ ନୁହେଁ।';

  @override
  String get vgPincode => 'ପିନ୍କୋଡ୍';

  @override
  String get vgPincodeError => 'କେବଳ 6 ଅଙ୍କ ବିଶିଷ୍ଟ ପିଙ୍କୋଡକୁ ଅନୁମତି ଦିଆଯାଇଛି।';

  @override
  String get vgCityTownVillage => 'ସହର/ସହର/ଗ୍ରାମ';

  @override
  String get vgCityTownVillageError => 'ଦଯ଼ାକରି ସହର/ସହର/ଗ୍ରାମ ନାମ ଭରଣ କରନ୍ତୁ';

  @override
  String get vgCityTownVillageSpecialCharError => 'ଏଥିରେ କୌଣସି ବିଶେଷ ଅକ୍ଷର ରହିବା ଉଚିତ ନୁହେଁ।';

  @override
  String get vgCancel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get vgSave => 'ସଞ୍ଚଯ଼ କରନ୍ତୁ';

  @override
  String get vgAddEventImage => 'କାର୍ଯ୍ଯ଼କ୍ରମ ପ୍ରତିଛବି ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgEventAdded => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଯୋଡ଼ାଗଲା';

  @override
  String get vgEventNotAdded => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଯୋଡ଼ାଯାଇନାହିଁ';

  @override
  String get vgDateTime => 'ତାରିଖ ଏବଂ ସମଯ଼';

  @override
  String get vgStartDate => 'ଆରମ୍ଭ ତାରିଖ';

  @override
  String get vgStartTime => 'ଆରମ୍ଭ ସମଯ଼';

  @override
  String get vgLocation => 'ଅବସ୍ଥିତି';

  @override
  String get vgViewOnMap => 'ମାନଚିତ୍ରରେ ଦେଖନ୍ତୁ';

  @override
  String get vgAddressAndDoorNumber => 'ଠିକଣା ଏବଂ ଦ୍ୱାର ସଂଖ୍ଯ଼ା';

  @override
  String get vgSubDistrictName => 'ଉପ-ଜିଲ୍ଲାର ନାମ';

  @override
  String get vgVillageName => 'ଗାଁର ନାମ';

  @override
  String get vgDistrictName => 'ଜିଲ୍ଲାର ନାମ';

  @override
  String get vgAbout => 'ବିଷଯ଼ରେ';

  @override
  String get vgEditEvent => 'ଇଭେଣ୍ଟକୁ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get vgDeleteEvent => 'ଇଭେଣ୍ଟକୁ ଅପସାରଣ କରନ୍ତୁ';

  @override
  String get vgErrorFetchingEventDetails => 'କାର୍ଯ୍ଯ଼କ୍ରମ ବିବରଣୀ ଆଣିବାରେ ତ୍ରୁଟି';

  @override
  String get vgNoPatientRegistered => 'ନାମ ଥିବା କୌଣସି ରୋଗୀ ପଞ୍ଜୀକୃତ ହୋଇନାହିଁ। ରେଜିଷ୍ଟର ରୋଗୀ ଉପରେ କ୍ଲିକ କରନ୍ତୁ।';

  @override
  String get vgRegisterPatient => 'ରୋଗୀ ପଞ୍ଜିକରଣ କରନ୍ତୁ';

  @override
  String get vgPrimary => 'ପ୍ରାଥମିକ';

  @override
  String get vgDependent => 'ନିର୍ଭରଶୀଳ';

  @override
  String get vgAddMember => 'ସଦସ୍ଯ଼ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgCompleteProfile => 'ସମ୍ପୂର୍ଣ୍ଣ ପ୍ରୋଫାଇଲ';

  @override
  String get vgStartAssessment => 'ମୂଲ୍ଯ଼ାଙ୍କନ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get vgSearchPatientByPhoneNumber => 'ଫୋନ୍ ନମ୍ବର ଦ୍ୱାରା ରୋଗୀକୁ ଖୋଜନ୍ତୁ';

  @override
  String get vgInvalidPhoneNumber => 'ଦଯ଼ାକରି ଏକ ବୈଧ ଫୋନ ନମ୍ବର ଦିଅନ୍ତୁ।';

  @override
  String get vgServerError => 'ସର୍ଭର ତ୍ରୁଟି';

  @override
  String get vgPatient => 'ରୋଗୀ।';

  @override
  String get vgReportId => 'ଆଇ. ଡି. ରିପୋର୍ଟ କରନ୍ତୁ';

  @override
  String get vgNoEventFound => 'କୌଣସି କାର୍ଯ୍ଯ଼କ୍ରମ ମିଳିଲା ନାହିଁ';

  @override
  String get vgTeamMateDeletedSuccessfully => 'ଟିମ୍ମେଟ୍ ସଫଳତାର ସହ ଅପସାରିତ ହେଲା';

  @override
  String get vgSomethingWentWrong => 'କିଛି ଭୁଲ ହୋଇଗଲା।';

  @override
  String get vgName => 'ନାମ';

  @override
  String get vgPhoneNumber => 'ଫୋନ ନମ୍ବର';

  @override
  String get vgErrorFetchingTeammatesDetails => 'ସାଥୀ ଖେଳାଳିଙ୍କ ବିବରଣୀ ଆଣିବାରେ ତ୍ରୁଟି';

  @override
  String get vgTeamMateAddedSuccessfully => 'ଟିମ୍ମେଟ୍ ସଫଳତାର ସହ ଯୋଡ଼ି ହେଲା';

  @override
  String get vgAddTeammate => 'ଟିମ୍ମେଟ୍ ଯୋଗ କରନ୍ତୁ';

  @override
  String get vgPleaseEnter => 'ଦଯ଼ାକରି ପ୍ରବେଶ କରନ୍ତୁ';

  @override
  String get vgPleaseEnterField => 'ଦଯ଼ାକରି କ୍ଷେତ୍ର ପ୍ରବେଶ କରନ୍ତୁ';

  @override
  String get vgOr => 'କିମ୍ବା';

  @override
  String get vgSearch => 'ଖୋଜନ୍ତୁ';

  @override
  String get vgEventDeletedSuccessfully => 'ଇଭେଣ୍ଟ ସଫଳତାର ସହ ଅପସାରିତ ହେଲା';

  @override
  String get vgEventDeletionFailed => 'କାର୍ଯ୍ଯ଼କ୍ରମ ଅପସାରଣ ବିଫଳ ହେଲା';

  @override
  String get vgEndTimeGreaterThanStartTime => 'ଶେଷ ସମଯ଼ ଆରମ୍ଭ ସମଯ଼ ଠାରୁ ଅଧିକ ହେବା ଉଚିତ।';

  @override
  String get vgNoPatientsPresent => 'ବର୍ତ୍ତମାନ କୌଣସି ରୋଗୀ ନାହାନ୍ତି। "ରୋଗୀ ଯୋଗ କରନ୍ତୁ" ଉପରେ ଟିପନ୍ତୁ।';

  @override
  String get textSize => 'ପାଠ୍ୟର ଆକାର';

  @override
  String get increase => 'ବାଡ଼ାଇବେ';

  @override
  String get decrease => 'କମାଇବେ';

  @override
  String get reset => 'ପୁନଃସେଟ କରନ୍ତୁ';

  @override
  String get minimumTextSizeReached => 'ନୂନ୍ୟତମ ପାଠ ଆକାର ପହଞ୍ଚିଛି';

  @override
  String get maximumTextSizeReached => 'ସର୍ବାଧିକ ପାଠ ଆକାର ପହଞ୍ଚିଛି';

  @override
  String get chatClearChat => 'ଚାଟ୍କୁ ସଫା କରନ୍ତୁ';

  @override
  String get chatEyeAssessmentRecommended => 'ଆପଣଙ୍କ ପାଇଁ ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ ସୁପାରିଶ କରାଯାଏ।';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'ଆପଣ ଟ୍ରାଇଏଜ୍ ଚକ୍ଷୁ ମୂଲ୍ଯ଼ାଙ୍କନ କରିବାକୁ ଚାହୁଁଛନ୍ତି କି?';

  @override
  String get chatChatbotNotAvailable => 'ଚାଟବଟ୍ ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ। ଦଯ଼ାକରି ପରେ ପୁଣିଥରେ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get chatTypeHere => 'ଏଠାରେ ଟାଇପ୍ କରନ୍ତୁ...';

  @override
  String get switchProfile => 'ପ୍ରୋଫାଇଲ ବଦଳାନ୍ତୁ';

  @override
  String get switchRole => 'ଭୂମିକା ବଦଳାନ୍ତୁ';

  @override
  String get switchTenant => 'ଭଡ଼ାଟିଆ ବଦଳାନ୍ତୁ';

  @override
  String get patientHeaderWelcomeText => 'ସାଇଟ୍କନେକ୍ଟକୁ ଆପଣଙ୍କୁ ସ୍ୱାଗତ! ନିଜର ଦୃଷ୍ଟିଶକ୍ତିର ଯତ୍ନ ନେବା ଗୁରୁତ୍ୱପୂର୍ଣ୍ଣ, ଏବଂ ଆମେ ପ୍ରତ୍ଯ଼େକ ପଦକ୍ଷେପରେ ଆପଣଙ୍କ ପାଇଁ ଏଠାରେ ଅଛୁ।';

  @override
  String get triageTestCardHeader => 'ଆପଣଙ୍କର ଚକ୍ଷୁ ପରୀକ୍ଷା ମାଗଣା...';

  @override
  String get triageTestCardBody1 => 'ଆପଣଙ୍କ ଆଖିର ଲକ୍ଷଣଗୁଡ଼ିକୁ ଶୀଘ୍ର ବିଶ୍ଳେଷଣ କରନ୍ତୁ।';

  @override
  String get triageTestCardBody2 => 'ଆପଣଙ୍କର ଆଖି ସମସ୍ଯ଼ା ଥାଇପାରେ କି ନାହିଁ ତାହା ଚିହ୍ନଟ କରନ୍ତୁ।';

  @override
  String get triageTestCardBody3 => 'ଜାଣନ୍ତୁ କେତେବେଳେ ଡାକ୍ତରଙ୍କ ପାଖକୁ ଯିବାକୁ ହେବ।';

  @override
  String get triageTestCardButton => 'ମୁକ୍ତ ଚକ୍ଷୁ ପରୀକ୍ଷା ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get myConnectionListAddMembersDescription => 'ଆପଣଙ୍କ ପରିବାର ଏବଂ ବନ୍ଧୁମାନଙ୍କୁ ଯୋଡ଼ିବାକୁ \'ସଦସ୍ଯ଼ମାନଙ୍କୁ ଯୋଡ଼ନ୍ତୁ "ବଟନ୍କୁ ଟିପନ୍ତୁ।';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'ଆପଣ କିପରି ଆଗକୁ ବଢ଼ିବାକୁ ଚାହୁଁଛନ୍ତି?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'ମୋର ଏକ ସମସ୍ଯ଼ା ରହିଛି ଏବଂ ମୁଁ ଏହାକୁ ବୈଧ କରିବାକୁ ଚାହୁଁଛି।';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'ମୋର କୌଣସି ସମସ୍ଯ଼ା ଅଛି କି ନାହିଁ ମୁଁ ନିଶ୍ଚିତ ନୁହେଁ।';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'ମୋର କୌଣସି ଆଖି ସମସ୍ଯ଼ା ନାହିଁ-କେବଳ ଯାଞ୍ଚ କରିବାକୁ ଚାହୁଁଛି।';

  @override
  String get appDrawerToastMessageText => 'କ୍ଷମା କରିବେ, ଆମେ ମୋବାଇଲ୍ ଆପରେ ଏକ ଲଗଆଉଟ୍ ତ୍ରୁଟିର ସମ୍ମୁଖୀନ ହୋଇଛୁ।';

  @override
  String get myConnectionListAddMembers => 'ସଦସ୍ଯ଼ ଯୋଗ କରନ୍ତୁ';

  @override
  String get appDrawerReferral => 'Referral';

  @override
  String get patientTenantDisplayPageHeader => 'Tenants';

  @override
  String get patientTenantDisplayPageBody => 'Select a Vision Center from the list';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'Request Location Permission';

  @override
  String get referralGenerateSheetHeader => 'Your Referral Code';

  @override
  String get referralGenerateSheetTapHereButton => 'Have a Code? Tap Here';

  @override
  String get referralGenerateSheetMyReferrals => 'My Referrals';

  @override
  String get referralGenerateSheetShareCode => 'Share your referral code with your friends and family to avail benefits.';

  @override
  String get referralGenerateSheetReferralGenerateError => 'Apologies, we\'re unable to generate a referral code at the moment.';

  @override
  String get referralGenerateSheetShareButton => 'Share';

  @override
  String get referralGenerateSheetCopy => 'COPY';

  @override
  String get referralCollectSheetYourRefferalCode => 'Your Referral Code';

  @override
  String get referralCollectSheetReferralCodeMessage => 'Share your referral code with your friends and family to avail benefits.';

  @override
  String get referralCollectSheetHeader => 'Collect Referral';

  @override
  String get referralCollectSheetBody => 'Enter referral code to collect your reward';

  @override
  String get referralCollectSheetTextFieldHeader => 'Referral Code';

  @override
  String get referralCollectSheetTextFieldBody => 'Enter referral code';

  @override
  String get referralCollectSheetSkipButton => 'Skip';

  @override
  String get referralCollectSheetCollectButton => 'Collect';

  @override
  String get referralCollectSheetError => 'Sorry, something went wrong. Please try again.';

  @override
  String get referralCollectSheetSuccessToast => 'Referral code submitted successfully';

  @override
  String get referralCollectSheetErrorToast => 'The referral code you entered is invalid. Please try again.';

  @override
  String get referralStatisticsPageHeader => 'Your Referral Statistics';

  @override
  String get referralStatisticsPageTotalReferred => 'Total Referred';

  @override
  String get referralStatisticsPageSucessfulReferred => 'Successful Referred';

  @override
  String get referralStatisticsPageTotalTriage => 'Total Triage';

  @override
  String get referralStatisticsPageReferFriendHeader => 'How to refer a friend?';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'Share your referral code with your friend.';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'Your friend register using your referral code.';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'Your friend completes at least one triage test.';

  @override
  String get referralStatisticsPageReferFriendButton => 'Refer a Friend';

  @override
  String get referralStatisticsPageError => 'Apologies, we\'re unable to fetch your referral statistics at the moment.';

  @override
  String get referralStatisticsPageRetryButton => 'Retry';
}
