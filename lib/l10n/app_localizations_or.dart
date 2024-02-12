import 'app_localizations.dart';

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current ର $total';
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
  String get bothEyeString => 'ଉଭଯ଼ ଆଖି';

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
  String get homeCarousal2Description => '• ଆଖି ଲାଲ ହେବା\r\n• ଆଖିରୁ ପାଣି ବାହାରିବା \r\n• ଆଖିରେ ଧଳା ଦାଗ';

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
  String get assessmentResultCardAssessmentQuestions => 'ମୂଲ୍ୟାଙ୍କନ\r\nପ୍ରଶ୍ନଗୁଡିକ';

  @override
  String get assessmentResultCardAcuityTest => 'ଆକ୍ୟୁଟି ପରୀକ୍ଷା';

  @override
  String get assessmentResultCardEyeScan => 'ଚକ୍ଷୁ\r\nସ୍କାନ୍';

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
  String get visualAcuityTestDistanceInstruction => 'Position the camera 40cm away from the eye.';

  @override
  String get somethingWentWrong => 'Something went wrong.';

  @override
  String get triageUpdatedSuccessfully => 'Triage Updated successfully.';

  @override
  String get noPreviewAvailable => 'No Preview Available';

  @override
  String get privacyPolicyTitle => 'Privacy & Data Protection';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'We process the Personal Data provided by you for the below purposes such as:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'You are too close to the Camera, Position the camera 40cm away from the eye.';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'You are too far from the Camera, Position the camera 40cm away from the eye.';

  @override
  String get myProfileABHAID => 'ABHA ID';

  @override
  String get myProfileEmail => 'Email';

  @override
  String get viewHistoryButton => 'View History';

  @override
  String get profilePagePersonalDetails => 'Personal Details';

  @override
  String get profilePageDateOfBirth => 'Date of Birth';

  @override
  String get profilePageGender => 'Gender';

  @override
  String get profilePageMobile => 'Mobile';

  @override
  String get profilePageHealthCardTitle => 'Health Card';

  @override
  String get appointmentTitle => 'Appointments';

  @override
  String get appointmentSubtitle => 'All Appointments';

  @override
  String get eyeBoxText => 'Please adjust and position the image until green boxes appear around the eyes. Move the eye closer and ensure that 40% of the box is covered by the eye.';

  @override
  String get bottomNavItemServices => 'Services';

  @override
  String get smsContent => 'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hand. Get it now: https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'Prioritize your eye health with SightConnect App!';

  @override
  String get recentServicesCataractEyeTest => 'Cataract Eye Test';

  @override
  String get recentServicesRedEyeTest => 'Red Eye Test';
}
