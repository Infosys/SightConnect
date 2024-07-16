import 'app_localizations.dart';

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} of ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'ارے! میں اپنی آنکھوں کی دیکھ بھال کے لیے سائٹ کنیکٹ ایپ استعمال کر رہا ہوں، اور آپ کو بھی کرنا چاہیے! اپنی آنکھوں کا جائزہ لیں اور سائٹ کنیکٹ ایپ سے بروقت علاج کروائیں۔ یہ ایک منفرد ایپ ہے جو آپ کے ہاتھوں میں پریوینٹو آئی کیئر لاتا ہے۔ سائن اپ کرتے وقت میرا ریفرل کوڈ استعمال کریں۔ اسے ابھی حاصل کریں: https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'براہ کرم بھیجا گیا او ٹی پی درج کریں ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'دوبارہ بھیجیں ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} مریض کا ملاقات کا وقت ہے';
  }

  @override
  String vgEmptyResults(String type) {
    return '${type} فی الحال کوئی قسم نہیں ہے۔ ایڈ پر ٹیپ کریں';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return 'آئی ڈی، نام کے ذریعے تلاش کریں ${searchType}';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'ہنگامی صورت حال میں، براہ کرم ${tollFreeNumber} پر کال کریں';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'آپ کو ${referredBy} کے ذریعے حوالہ دیا گیا ہے';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'براہ کرم یقینی بنائیں کہ کیمرہ آپ کے چہرے سے ${distance} سینٹی میٹر دور ہے۔';
  }

  @override
  String get questionnaireTitle => 'آنکھوں کی تشخیص کے سوالات';

  @override
  String get questionnaireExitDialog => 'ان سوالوں کے جواب دینے سے آپ کی آنکھوں کے مسائل کی نشاندہی کرنے میں مدد ملے گی۔ کیا آپ واقعی باہر نکلنا چاہتے ہیں؟';

  @override
  String get visualAcuityTitle => 'بصری ایکویٹی ٹیسٹ';

  @override
  String get visualAcuityDescription => 'بصری ایکویٹی ٹیسٹ ایک آنکھ کا امتحان ہے جو یہ چیک کرتا ہے کہ آپ کسی مخصوص فاصلے سے کسی حرف یا علامت کی تفصیلات کو کتنی اچھی طرح سے دیکھتے ہیں۔ یہ فوری ٹیسٹ ابھی کریں!';

  @override
  String get visualAcuityHowToPerform => 'بصری ایکویٹی ٹیسٹ کیسے انجام دیا جائے؟';

  @override
  String get visualAcuityViewStepsToPerform => 'بصری ایکویٹی ٹیسٹ انجام دینے کے اقدامات دیکھیں';

  @override
  String get visualAcuityCompletionDialog => 'ہو گیا! دونوں آنکھوں کے لیے بصری ایکویٹی ٹیسٹ مکمل ہو گیا ہے۔ اس کے بعد آپ کو اپنی آنکھوں کی تصاویر لینے کی ضرورت ہے۔';

  @override
  String get visualAcuityExitDialog => 'آپ کی آنکھوں کے مسئلے کے بارے میں سمجھنے کے لیے بصری ایکویٹی ایک اہم امتحان ہے۔ کیا آپ واقعی باہر نکلنا چاہتے ہیں؟';

  @override
  String get swipeGestureTab => 'اشارہ سوائپ کریں';

  @override
  String get voiceAssistTab => 'وائس اسسٹ';

  @override
  String get distanceString => 'فاصلہ';

  @override
  String get leftEyeString => 'بائیں آنکھ';

  @override
  String get rightEyeString => 'دائیں آنکھ';

  @override
  String get bothEyesString => 'دونوں آنکھیں';

  @override
  String get visualAcuityLeftEyeHeader => 'ٹیسٹ 2-بائیں آنکھ';

  @override
  String get visualAcuityLeftEyeInstructions => 'پلک پر دبانے کے بغیر، دائیں آنکھ کو اپنے ہاتھ سے ڈھانپیں۔ اگر آپ چشمے پہنے ہوئے ہیں تو اپنا ہاتھ چشمے پر رکھیں۔';

  @override
  String get visualAcuityRightEyeHeader => 'ٹیسٹ 1-دائیں آنکھ';

  @override
  String get visualAcuityRightEyeInstructions => 'پلک پر دبانے کے بغیر بائیں آنکھ کو اپنے ہاتھ سے ڈھانپیں۔ اگر آپ چشمے پہنے ہوئے ہیں تو اپنا ہاتھ چشمے کے اوپر رکھیں۔';

  @override
  String get visualAcuityBothEyeHeader => 'ٹیسٹ 3-دونوں آنکھیں';

  @override
  String get visualAcuityBothEyeInstructions => 'اپنی کسی بھی آنکھ کو نہ ڈھانپیں اور ان علامتوں کو دیکھیں جو دونوں آنکھوں سے آگے دکھائی دیتی ہیں۔';

  @override
  String get overlayHeaderDirection => 'سمت';

  @override
  String get overlayDescription => 'یہاں یہ ہے کہ آپ ہر علامت کی سمتوں کو کیسے سمجھتے ہیں۔';

  @override
  String get overlaySymbolDirectionText => 'علامت کی سمت:';

  @override
  String get directionDown => 'نیچے';

  @override
  String get directionUp => 'اوپر۔';

  @override
  String get directionLeft => 'بائیں';

  @override
  String get directionRight => 'ٹھیک ہے۔';

  @override
  String get dontShowAgainString => 'دوبارہ نہ دکھائیں';

  @override
  String get visualAcuityCarouselTitle => 'بصری ایکویٹی ٹیسٹ انجام دینے کے اقدامات';

  @override
  String get eyeScanTitle => 'آنکھ کا اسکین';

  @override
  String get eyeScanDescription => 'آپ قریب ہیں! بس ایک اور امتحان باقی ہے۔ آگے اپنی آنکھوں کی تصاویر کھینچیں۔';

  @override
  String get eyeScanHowToPerform => 'اپنی آنکھوں کو کیسے اسکین کریں؟';

  @override
  String get eyeScanViewStepsToPerform => 'اپنی آنکھوں کو اسکین کرنے کا طریقہ جاننے کے لیے اقدامات دیکھیں۔';

  @override
  String get eyeScanExitDialog => 'آئی اسکین آپ کی آنکھوں کے مسئلے کے بارے میں مزید سمجھنے میں مدد کرتا ہے۔ کیا آپ واقعی باہر نکلنا چاہتے ہیں؟';

  @override
  String get captureRightEyeString => 'دائیں آنکھ پکڑو';

  @override
  String get captureLeftEyeString => 'بائیں آنکھ کو پکڑو';

  @override
  String get skipButton => 'چھلانگ لگائیں';

  @override
  String get startTestText => 'ٹیسٹ شروع کریں';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get startButton => 'شروع کریں';

  @override
  String get nextButton => 'اگلا';

  @override
  String get proceedButton => 'آگے بڑھیں';

  @override
  String get yesButton => 'ہاں۔';

  @override
  String get noButton => 'نہیں۔';

  @override
  String get exitButton => 'باہر نکلیں';

  @override
  String get okButton => 'ٹھیک ہے۔';

  @override
  String get knowMoreButton => 'مزید جانیں';

  @override
  String get seeAllButton => 'سب دیکھیں';

  @override
  String get tryAgainButton => 'دوبارہ کوشش کریں';

  @override
  String get shareNowButton => 'ابھی شیئر کریں';

  @override
  String get retryButton => 'دوبارہ کوشش کریں';

  @override
  String get homeCarousal1Title => '40 سال اور اس سے زیادہ عمر کے بالغوں میں موتیابند کا پھیلاؤ اور اس سے وابستہ عوامل';

  @override
  String get homeCarousal1Description => 'موتیابند اور اس سے وابستہ عوامل کے پھیلاؤ پر نمونے لینے کے طریقہ کار کی منصوبہ بند پیشکش';

  @override
  String get homeCarousal2Title => 'آنکھوں کے 7 مسائل جن سے باہر نہ نکلیں!';

  @override
  String get homeCarousal2Description => 'آنکھوں کے 7 مسائل جن کی جانچ کروائی جانی چاہیے: آنکھ کی لالی آنکھوں سے پانی آنا آنکھوں پر سفید دھبے';

  @override
  String get homeCarousal3Title => 'آنکھوں کے مسائل۔ بہت سے ایسے ہیں جنہیں آپ نہیں دیکھ سکتے۔';

  @override
  String get homeCarousal3Description => 'لیکن بینائی کی دیکھ بھال کرنے والا ماہر کر سکتا ہے۔ بعد میں پیچیدگیوں سے بچنے کے لیے وقت پر آنکھوں کے مسائل کی نشاندہی اور علاج کروائیں۔';

  @override
  String get myConnectionsTitle => 'میرے اراکین';

  @override
  String get myConnectionsAddMember => 'رکن شامل کریں';

  @override
  String get myConnectionsServiceNotAvailable => 'سروس دستیاب نہیں ہے';

  @override
  String get myConnectionsAdd => 'شامل کریں';

  @override
  String get recentServicesTitle => 'میری حالیہ خدمات';

  @override
  String get recentServicesEyeAssessment => 'آنکھوں کی تشخیص';

  @override
  String get recentServicesVisualAcuityTest => 'بصری ایکویٹی ٹیسٹ';

  @override
  String get nearbyVisionCentersTitle => 'قریبی وژن سینٹرز';

  @override
  String get nearbyVisionCentersNotFound => 'کوئی وژن سینٹر نہیں ملا';

  @override
  String get tollFreeNumber => 'ٹول فری نمبر';

  @override
  String get appDrawerTitle => 'مینو';

  @override
  String get appDrawerHome => 'گھر';

  @override
  String get appDrawerLanguageSelection => 'زبان کا انتخاب';

  @override
  String get appDrawerAccessibility => 'رسائی کی ترتیبات';

  @override
  String get appDrawerMyProfile => 'میرا پروفائل';

  @override
  String get appDrawerAssessmentsAndTests => 'تشخیص اور امتحانات';

  @override
  String get appDrawerScanner => 'کیو آر کوڈ اسکینر';

  @override
  String get appDrawerAboutUs => 'ہمارے بارے میں';

  @override
  String get appDrawerPrivacyPolicy => 'پرائیویسی اور ڈیٹا پالیسی';

  @override
  String get appDrawerHelpAndSupport => 'مدد اور تعاون';

  @override
  String get appDrawerSignOut => 'سائن آؤٹ کریں';

  @override
  String get aboutUsDescription => 'سائٹ کنیکٹ ایک صارف دوست آنکھوں کی دیکھ بھال کی ایپ ہے جو کال پر خود تشخیص اور مشاورت میں مدد کرتی ہے۔.ہمارے مشن کے مرکز میں آنکھوں کی دیکھ بھال کو سب کے لیے قابل رسائی بنانے کا عزم ہے۔.ایپ کو ان کی عمر، تکنیکی پس منظر، اور سماجی یا معاشی پس منظر سے قطع نظر، زندگی کے تمام شعبوں سے تعلق رکھنے والے صارفین کے لیے جامع اور قابل رسائی بنانے کے لیے ڈیزائن کیا گیا ہے۔.ایپ اور اس کا مواد انگریزی اور دیگر مقامی زبانوں میں دستیاب کرایا گیا ہے۔.یہ صارفین کو اپنی آنکھوں کا خود جائزہ لینے اور بروقت علاج کا مشورہ حاصل کرنے میں مدد کرتا ہے۔.ایپ ہمارے صارفین کو آنکھوں کی دیکھ بھال کے ذاتی حل فراہم کرنے کے لیے جدید ترین ٹیکنالوجیز اور ٹولز کا استعمال کرتی ہے۔.یہ ان کی زندگی کو آسان بنانے کے لیے مختلف خصوصیات کے ساتھ آتا ہے۔';

  @override
  String get aboutUsFeaturesTitle => 'خصوصیات';

  @override
  String get aboutUsFeaturesDescription => 'ایپ میں آنکھوں کی جانچ: ایپ اپنے صارفین کو چند سوالات کے جوابات دے کر اور اگلے مراحل اور ڈاکٹر سے ملنے کے بارے میں مناسب سفارشات حاصل کر کے اپنی آنکھوں کا خود جائزہ لینے کی سہولت دیتی ہے۔ یہاں تک کہ صارفین کے دوست اور اہل خانہ بھی فائدہ اٹھا سکتے ہیں۔|تقرری کی بکنگ: صارفین اپنی آنکھوں کی تشخیص کروانے کے لیے آن لائن ٹیلی مشاورت اور ڈاکٹروں کے ساتھ کلینک کے دوروں کی بکنگ کر سکتے ہیں۔|آئی وی آر کال سروسز: ہماری آئی وی آر کال سروسز انگریزی اور مقامی زبانوں میں دستیاب ہیں اور یہ بنیادی فیچر فون والے صارفین کی ضروریات کو بھی پورا کرتی ہیں۔ صارفین ہنگامی صورت حال کے دوران یا آنکھوں سے متعلق کسی بھی مسئلے کے لیے فوری مدد حاصل کرنے کے لیے ہمارے آنکھوں کی دیکھ بھال کرنے والے پیشہ ور افراد کو ڈائل کر سکتے ہیں۔ وہ ملاقاتوں کو بک کرنے یا مزید وضاحت طلب کرنے کے لیے بھی کال کر سکتے ہیں۔|قریبی کلینک: صارفین اپنے قریب آنکھوں کی دیکھ بھال کے کلینک تلاش کر سکتے ہیں۔|نسخے اور رپورٹیں: صارفین کے تمام نسخے اور رپورٹس تک بغیر کسی پریشانی کے ایک جگہ سے رسائی حاصل کی جا سکتی ہے۔|آنکھوں کے کیمپ: صارفین اپنے دوستوں اور اہل خانہ کی آنکھوں کی مفت جانچ کروانے کے لیے قریبی آنکھوں کے کیمپوں کے بارے میں معلومات حاصل کر سکتے ہیں۔|یاد دہانی اور انتباہات: صارفین اپنی آنے والی ملاقاتوں، ادویات، رپورٹس وغیرہ سے متعلق بروقت انتباہات اور یاد دہانی حاصل کر سکتے ہیں۔|شیئرنگ: صارفین اس ایپ اور ایپ کے اندر فراہم کردہ دیگر مفید معلومات کو اپنے دوستوں اور کنبہ کے ممبروں کے ساتھ شیئر کر سکتے ہیں۔';

  @override
  String get aboutUsConclusion => 'یہ ایپ آنکھوں کی دیکھ بھال کرنے والے سرکردہ پیشہ ور افراد کی مدد سے تیار کی گئی ہے تاکہ ہماری صارف برادری کی بہتر خدمت کی جا سکے۔ ایک روشن، صحت مند دنیا بنانے کے ہمارے مشن میں شامل ہوں۔ سائٹ کنیکٹ ایپ کو آج ہی ڈاؤن لوڈ اور شیئر کریں!';

  @override
  String get privacyPolicyDescription => 'ایل وی پرساد آئی انسٹی ٹیوٹ، اس کے ماتحت ادارے، ساتھی اور منسلک کمپنیاں (جنہیں اجتماعی طور پر "ایل وی پی ای آئی"، "ہم"، "ہم" کہا جاتا ہے) آپ کے دائرہ اختیار کے قوانین کے مطابق آپ کے ذاتی ڈیٹا پر کارروائی کرنے کے لیے پرعزم ہیں۔ ہم آپ کو ذاتی ڈیٹا کی پروسیسنگ کے بارے میں درج ذیل معلومات مطلع کرتے ہیں۔';

  @override
  String get privacyPolicyPersonalDataTitle => 'ذاتی ڈیٹا کے عناصر کو اکٹھا/پروسیس کیا گیا:';

  @override
  String get privacyPolicyPersonalDataDescription => 'آپ اور آپ کے رابطوں کا ذاتی ڈیٹا جیسے (ان میں سے کچھ ڈیٹا اختیاری ہوگا) موبائل نمبر، نام، تاریخ پیدائش، صنف (مرد/عورت)، پتہ (پن کوڈ)، مریض کی شناختی کارڈ، کنیکشن، آئی ٹرائیج سوالنامے کے جوابات، آئی ٹرائیج رپورٹ، آنکھوں کی تصاویر، آپ کی آنکھ کی تصویر کے ساتھ ٹیگ کی گئی علامات، تصویر، پتے کی تفصیلات جیسے پتہ، ضلع کا نام (بشمول ضلع کو ریاست کا نام (بشمو ریاستی کوڈ)، ذیلی ضلع کا نام، گاؤں کا نام، قصبے کا نام، ای میل پتہ، آخری نام، درمیانی نام، بلڈ گروپ، اونچائی، وزن، پیشہ، اے بی ایچ اے کی تفصیلات (جیسا کہ آپ نے فراہم کیا ہے)، آپ کی ایپ کی اجازتوں کی بنیاد پر کیمرہ، جی پی ایس لوکیشن، ایپلی کیشن تک رسائی کے لیے گیلری، مکمل نیٹ ورک تک رسائی، نیٹ ورک کنکشن دیکھنے، ڈیوائس کی معلومات تک رسائی۔';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'پروسیسنگ کا مقصد: ہم مندرجہ ذیل مقاصد کے لیے آپ کے فراہم کردہ ذاتی ڈیٹا پر کارروائی کرتے ہیں جیسے:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'آپ کو آنکھوں سے متعلق آن لائن صحت کی جانچ کے لیے ہماری ایپلی کیشن اور اس کی خصوصیات تک رسائی حاصل کرنے کے قابل بنانے کے لیے (جیسا کہ آپ نے فراہم کیا ہے)۔|آنکھوں سے متعلق کسی بھی بیماری/صحت کی مشکلات کی صورت میں، آپ کو ایل وی پی ای آئی کے تحت بصارت کے تکنیکی ماہرین، ماہر امراض چشم سے رابطہ کرنے کے قابل بنانا۔|آپ کی صحت سے متعلق مشاورت اور تشخیص کے حصے کے طور پر آنکھوں کی صحت سے متعلق کوئی بھی ڈیٹا (بشمول رپورٹس وغیرہ) فراہم کرنے اور صحت سے متعلق خدشات کے حصے کے طور پر آپ سے یا آپ کے رابطوں سے رابطہ کرنے کے لیے۔|بہتر تشخیص کے لیے اپنے مجاز ایل وی پی ای آئی ماہر امراض چشم/ڈاکٹروں کے ساتھ اپنی آنکھوں کی صحت کا ڈیٹا شیئر کرنے اور اسے ولیج چیف/میئر وغیرہ کے ساتھ شیئر کرنے کے لیے (جہاں آپ کے جی پی ایس لوکیشن کی بنیاد پر لاگو ہوتا ہے) آنکھوں کے مسئلے کی شدت پر منحصر ہے اگر آپ علاج کے لیے ایل وی پی ای آئی ڈاکٹروں تک پہنچنے/مطلع کرنے سے قاصر ہیں۔|آنکھوں سے متعلق کسی بھی مسئلے کی صورت میں آپ تک پہنچنے کے لیے اپنے قریب ایل وی پی ای آئی سے وابستہ آنکھوں کے کلینکوں/اسپتالوں کی فہرست فراہم کرنا۔|مستقبل میں مناسب تشخیص فراہم کرنے کے مقصد سے ہماری مشین لرننگ یا مصنوعی ذہانت کے ماڈلز کو تربیت دینے میں مدد کے لیے آئی امیج، آنکھ کی تصویر سے متعلق علامات، عمر، بلڈ گروپ، بغیر کسی شناخت کے مقام جیسی معلومات کا استعمال کرنے کے لیے۔|آنکھوں کی صحت کے بارے میں بیداری پیدا کرنے کے لیے یاد دہانی، مواصلات، مہم میلر بھیجنے کے لیے۔';

  @override
  String get privacyPolicyDataRecipientsTitle => 'ڈیٹا وصول کنندگان/قابل رسائی:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'آپ کی طرف سے شیئر کیا گیا ذاتی ڈیٹا (حساس ذاتی ڈیٹا سمیت) مجاز ایل وی پی ای آئی اہلکاروں جیسے ڈاکٹر/ماہر امراض چشم، ویژن ٹیکنیشن، ویژن گارڈین، ایل وی پی ای آئی کے نمائندوں، اندرونی/بیرونی آڈیٹرز، جہاں قابل اطلاق ہو سرکاری حکام، اور ہمارے مجاز سروس فراہم کنندہ انفوسس کے لیے قابل رسائی ہوگا۔';

  @override
  String get privacyPolicyDataTransferTitle => 'ڈیٹا ٹرانسفر اور اسٹوریج:';

  @override
  String get privacyPolicyDataTransferDescription => 'آپ کی طرف سے شیئر کیا گیا ذاتی ڈیٹا ہمارے اندرونی سرورز، ہندوستان میں ہمارے مجاز سروس فراہم کنندہ کے سرور پر محفوظ ہو جائے گا۔';

  @override
  String get privacyPolicyDataSecurityTitle => 'ڈیٹا سیکیورٹی:';

  @override
  String get privacyPolicyDataSecurityDescription => 'ایل وی پی ای آئی آپ کے ذاتی ڈیٹا کی حفاظت کے لیے انتظامی، جسمانی تحفظ، اور تکنیکی کنٹرول سمیت معقول اور مناسب حفاظتی طریقوں اور طریقہ کار کو اپناتا ہے۔';

  @override
  String get privacyPolicyDataRetentionTitle => 'ڈیٹا برقرار رکھنا:';

  @override
  String get privacyPolicyDataRetentionDescription => 'ذاتی ڈیٹا جسے قانونی اور کاروباری ضروریات کے مطابق برقرار رکھنے کی ضرورت نہیں ہے اسے محفوظ طریقے سے نمٹا دیا جائے گا۔';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'ڈیٹا سبجیکٹ رائٹس:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'آپ کو کسی بھی وقت اپنی ذاتی معلومات تک رسائی اور اصلاح کا حق حاصل ہے۔ کسی بھی درخواست، مسائل، خدشات یا سوالات کی صورت میں آپ ڈی ایس آر> کے لیے عام میل آئی ڈی فراہم کرنے کے لیے <ایل وی پی ای آئی کو ای میل بھیج کر ایل وی پرساد آفس سے رابطہ کر سکتے ہیں۔';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'دستبرداری کا حق:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'جہاں ہم آپ کی رضامندی کی بنیاد پر آپ کے ذاتی ڈیٹا پر کارروائی کرتے ہیں، آپ مستقبل کے لیے کسی بھی وقت قابل اطلاق ڈی پی قوانین کے مطابق پروسیسنگ کے لیے اپنی رضامندی واپس لے سکتے ہیں۔ اس سے آپ کی واپسی سے پہلے کسی بھی پروسیسنگ آپریشن کی قانونی حیثیت متاثر نہیں ہوگی۔ اپنی رضامندی واپس لینے کے لیے، آپ ڈی ایس آر> کے لیے عام میل آئی ڈی فراہم کرنے کے لیے <ایل وی پی ای آئی کو ای میل بھیج سکتے ہیں۔';

  @override
  String get privacyPolicyAcknowledgement => 'نیچے دیے گئے بٹن پر کلک کرکے، آپ اس بات کو تسلیم کرتے ہیں اور سمجھتے ہیں کہ آپ کا ذاتی ڈیٹا بشمول حساس ذاتی ڈیٹا مذکورہ بالا طریقے سے اکٹھا اور اس پر کارروائی کی جا سکتی ہے اور اس طرح مذکورہ بالا مقاصد کے لیے اسی پر رضامندی ظاہر کرتے ہیں۔.آپ یہ بھی تسلیم کرتے ہیں کہ آپ کے ذریعے شیئر کیا گیا کوئی بھی ذاتی ڈیٹا بشمول حساس ذاتی ڈیٹا (اپنے علاوہ) صرف ان سے مناسب رضامندی لینے کے بعد ہے۔.آپ یہ بھی تسلیم کرتے ہیں کہ آپ کوئی بھی ذاتی ڈیٹا (بشمول حساس ذاتی ڈیٹا) شیئر نہیں کریں گے جو مذکورہ بالا مقاصد کے لیے ضروری نہیں ہے۔.آپ یہ بھی تسلیم کرتے ہیں کہ جب آپ نابالغ کا ذاتی ڈیٹا ان کے والدین/قانونی سرپرست کے طور پر شیئر کر رہے ہوتے ہیں تو آپ ان کے ڈیٹا اکٹھا کرنے اور پروسیسنگ کے لیے رضامند ہوتے ہیں جیسا کہ اوپر ذکر کیا گیا ہے۔';

  @override
  String get privacyPolicyBottomAppBarLabel => 'پرائیویسی پالیسی قبول کی گئی';

  @override
  String get helpAndSupportReachTitle => 'ہم سے رابطہ کریں';

  @override
  String get assessmentAndTestsSubtitle => 'یہاں اب تک کیے گئے جائزوں کا ایک فوری جائزہ ہے۔';

  @override
  String get assessmentAndTestsReportsNotFound => 'کوئی رپورٹ نہیں ملی';

  @override
  String get eyeAssessmentTitle => 'آنکھوں کی تشخیص';

  @override
  String get eyeAssessmentSubtitle => 'چند مراحل میں اپنے، اپنے دوستوں اور خاندان کے افراد کی آنکھوں کے مسائل کا جائزہ لیں۔ آپ سے آنکھوں کے مسائل سے متعلق علامات کو سمجھنے کے لیے سوالات کا ایک مجموعہ پوچھا جائے گا جس کے بعد بصری ٹیسٹ کیے جائیں گے۔';

  @override
  String get eyeAssessmentGetMemberLabel => 'رکن تبدیل کریں';

  @override
  String get eyeAssessmentProceedButton => 'آگے بڑھیں';

  @override
  String get eyeAssessmentBrightnessLabel => 'چمک 80 ٪ مقرر کی گئی ہے';

  @override
  String get eyeAssessmentBrightnessError => 'براہ کرم چمک کو دستی طور پر 80 ٪ پر سیٹ کریں';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'سوال کی ابھی تک تائید نہیں ہوئی';

  @override
  String get eyeAssessmentPopUpHeading => 'تشخیص';

  @override
  String get eyeAssessmentPopUpBody => 'کیا آپ کو بینائی سے متعلق کوئی مسئلہ ہے؟';

  @override
  String get eyeAssessmentPopUpYesButton => 'ہاں۔';

  @override
  String get eyeAssessmentPopUpNoButton => 'نہیں۔';

  @override
  String get visualAcuityTestInstructionOne => 'اچھی ہلکی جگہ پر آرام سے بیٹھیں۔ آپ کو چمک میں اچانک تبدیلی محسوس ہو سکتی ہے، فکر نہ کریں کہ اسکرین زیادہ سے زیادہ نتیجہ فراہم کرنے کے لیے خودکار چمک پر سیٹ ہو گئی ہے۔';

  @override
  String get visualAcuityTestInstructionTwo => 'یقینی بنائیں کہ آپ آلہ کو آنکھوں کی سطح پر تھامے ہوئے ہیں۔ اگر آپ شیشے یا کانٹیکٹ لینس پہنتے ہیں تو انہیں آن رکھیں۔';

  @override
  String get visualAcuityTestInstructionThree => 'اپنے آپ کو اسکرین سے 40 سینٹی میٹر کے فاصلے پر رکھیں۔ فاصلہ ٹیسٹ اسکرین میں دکھایا جائے گا۔';

  @override
  String get visualAcuityTestInstructionFour => 'اگر آپ شیشے پہن کر جانچ کر رہے ہیں، تو جب صرف ایک آنکھ کی جانچ کی جائے تو شیشے پر اپنے ہاتھ سے ایک آنکھ کو ڈھانپیں۔';

  @override
  String get skipAndProceedButton => 'سکپ کریں اور اسکین کے لیے آگے بڑھیں';

  @override
  String get proceedToScanButton => 'اسکین کے لیے آگے بڑھیں';

  @override
  String get eyeAssessmentSteps => 'اقدامات';

  @override
  String get eyeAssessmentStepOne => 'مرحلہ 1-آنکھوں کی تشخیص کے سوالات';

  @override
  String get eyeAssessmentStepTwo => 'مرحلہ 2-آنکھوں کی تشخیص کے سوالات';

  @override
  String get eyeAssessmentStepThree => 'مرحلہ 3-آنکھوں کی تشخیص کے سوالات';

  @override
  String get eyeAssessmentOngoing => 'جاری ہے۔';

  @override
  String get eyeAssessmentCompleted => 'مکمل کیا۔';

  @override
  String get eyeAssessmentPending => 'زیر التواء';

  @override
  String get eyeAssessmentResults => 'تشخیص کے نتائج';

  @override
  String get eyeAssessmentCompleteSteps => 'نتائج دیکھنے کے لیے تمام مراحل مکمل کریں';

  @override
  String get eyeAssessmentToolTip => 'براہ کرم یقینی بنائیں کہ فلیش بند ہے اور چمک 80 ٪ پر سیٹ ہے';

  @override
  String get eyeScanInstructionOne => 'چہرے کو فریم پر اچھی طرح رکھ کر کیمرے کو پکڑیں۔';

  @override
  String get eyeScanInstructionTwo => 'اپنے فون کے بیک کیمرے کا استعمال کرتے ہوئے آنکھوں کی تصویر لیں۔';

  @override
  String get eyeScanInstructionThree => 'اس بات کو یقینی بنائیں کہ فلیش آن کے ساتھ اچھی طرح سے روشن جگہ پر ہوں۔';

  @override
  String get eyeScanInstructionFour => 'بہتر تصویر کشی اور وضاحت کے لیے، تصویر پر کلک کرنے کے لیے کسی اور کو رکھیں۔';

  @override
  String get eyeScanInstructionFive => 'تصویر لیتے وقت ایک آنکھ کو اپنے ہاتھ سے ڈھانپیں اور دوسری آنکھ سے سیدھا آگے دیکھیں۔';

  @override
  String get eyeScanInstructionSix => 'تصویر شروع کرنے سے پہلے پینل کے اندر آنکھ کو مرکوز کریں۔';

  @override
  String get eyeScanInstructionSeven => 'اس وقت تک آنکھیں کھلی رکھیں جب تک کہ فلیش بند نہ ہو جائے، جب تک کہ \'بیپ\' کی آواز تصویر کے اختتام کا اشارہ نہ دے۔';

  @override
  String get eyeAssessmentNote => 'نوٹ: یہاں دکھائی گئی تصاویر صرف اشارے کے لیے ہیں۔ ہو سکتا ہے کہ وہ حقیقی زندگی میں اسی طرح نظر نہ آئیں۔';

  @override
  String get agreeButton => 'میں اتفاق کرتا ہوں';

  @override
  String get consentPageCheckbox => 'میں شرائط و ضوابط سے اتفاق کرتا ہوں';

  @override
  String get confirmButton => 'تصدیق کریں';

  @override
  String get discardButton => 'پھینکیں۔';

  @override
  String get imageNotCapturedToastMessage => 'تصویر پکڑی نہیں گئی';

  @override
  String get eyeCaptureCompletionDialogHeading => 'ٹیسٹ مکمل ہوا';

  @override
  String get eyeCaptureCompletionDialogBody => 'آپ نے ٹیسٹ مکمل کر لیا ہے۔ نتیجہ دیکھنے کے لیے براہ کرم نیچے دیے گئے بٹن پر کلک کریں۔';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'نتیجہ دیکھیں';

  @override
  String get eyeCaptureTriageSavedLocally => 'ٹرائیج مقامی طور پر محفوظ کیا گیا';

  @override
  String get visualAcuityTestResults => 'بصری ایکویٹی ٹیسٹ کے نتائج';

  @override
  String get assessmentResultPageMoreDetailsText => 'مزید تفصیلات کے لیے قریب ترین وژن سینٹر پر جائیں۔ ہمارے وژن ٹیکنیشن سے بات کرنے کے لیے ٹول فری نمبر پر کال کریں۔';

  @override
  String get assessmentReportButton => 'آنکھوں کی تشخیص کی رپورٹ';

  @override
  String get notificationsTitle => 'نوٹیفیکیشنز';

  @override
  String get notificationsNotAvailable => 'کوئی اطلاع نہیں';

  @override
  String get servicesPatientCare => 'مریض کی دیکھ بھال';

  @override
  String get reportAssessmentId => 'تشخیص آئی ڈی';

  @override
  String get reportDateAndTime => 'تاریخ اور وقت';

  @override
  String get reportSeverityAbnormal => 'فوری مشاورت';

  @override
  String get reportSeverityHigh => 'ابتدائی چیک اپ';

  @override
  String get reportSeverityLow => 'معمول کی جانچ';

  @override
  String get reportDataUnavailable => 'کوئی ڈیٹا دستیاب نہیں ہے';

  @override
  String get reportTumblingTitle => 'ایکویٹی ٹیسٹ-ٹمبلنگ ای';

  @override
  String get rightCornea => 'دائیں کارنیا';

  @override
  String get leftCornea => 'بائیں کارنیا';

  @override
  String get myProfileGeneralInfo => 'عمومی معلومات';

  @override
  String get myProfileAge => 'عمر';

  @override
  String get myProfileAddress => 'پتہ';

  @override
  String get myProfileLine => 'لائن';

  @override
  String get myProfileCity => 'شہر';

  @override
  String get myProfileDistrict => 'ضلع';

  @override
  String get myProfileState => 'ریاست';

  @override
  String get myProfilePinCode => 'پن کوڈ';

  @override
  String get submitButton => 'جمع کروائیں';

  @override
  String get swipeGestureError => 'غلط سوائپ کریں! براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get swipeGestureCardText => 'علامت کی سمت میں سوائپ کریں';

  @override
  String get assessmentResultCardAssessmentQuestions => 'تشخیص کے سوالات';

  @override
  String get assessmentResultCardAcuityTest => 'ایکویٹی ٹیسٹ';

  @override
  String get assessmentResultCardEyeScan => 'آنکھ کا اسکین';

  @override
  String get viewReportButton => 'رپورٹ دیکھیں';

  @override
  String get updateButton => 'اپ ڈیٹ کریں';

  @override
  String get assessmentCardUrgentConsult => 'فوری مشاورت';

  @override
  String get assessmentCardRoutineCheckUp => 'معمول کی جانچ';

  @override
  String get assessmentCardEarlyCheckUp => 'ابتدائی چیک اپ';

  @override
  String get testAgainButton => 'دوبارہ آزمائیں';

  @override
  String get homeButton => 'گھر';

  @override
  String get homeTriageCardTitle => 'ہماری آنکھیں سب سے قیمتی اثاثے ہیں۔';

  @override
  String get homeTriageCardDescription => 'آنکھوں کے مسائل سے بچنے کے لیے وقت پر ان کی جانچ کروائیں۔';

  @override
  String get homeTriageCardTest => 'آنکھ کا ٹیسٹ شروع کریں';

  @override
  String get homeHelplineCardDescrition => 'اچانک بینائی کی کمی کی صورت میں، اس ہنگامی ہیلپ لائن پر کال کریں';

  @override
  String get inviteCardTitle => 'دوسروں کو مدعو کریں';

  @override
  String get inviteCardDescription => '5 دوستوں اور خاندان کے افراد کو مدعو کریں تاکہ وہ اپنی آنکھوں کا جائزہ لے سکیں اور مستقبل میں آنکھوں کے مسائل سے بچ سکیں۔';

  @override
  String get inviteCardInvitation => 'ابھی مدعو کریں';

  @override
  String get partnerCardTitle => 'پارٹنر';

  @override
  String get languageSelection => 'زبان منتخب کریں';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get eyeAssessmentEnterLabel => 'یہاں داخل کریں';

  @override
  String get profilePageAddressDetails => 'پتے کی تفصیلات';

  @override
  String get profilePaeCheckReports => 'اپنی رپورٹیں چیک کریں';

  @override
  String get bottomNavItemEyeTest => 'آنکھ کا ٹیسٹ';

  @override
  String get bottomNavItemAppointment => 'تقرریاں';

  @override
  String get memberSelection => 'رکن منتخب کریں';

  @override
  String get triageAlerDialogBoxTitle => 'دوبارہ کرنے کے اقدامات منتخب کریں';

  @override
  String get scannerTitle => 'اسکینر';

  @override
  String get visualAcuityTestDistanceInstruction => 'کیمرے کو آنکھ سے 40 سینٹی میٹر کے فاصلے پر رکھیں۔';

  @override
  String get somethingWentWrong => 'کچھ غلط ہو گیا';

  @override
  String get triageUpdatedSuccessfully => 'ٹریج کو کامیابی سے اپ ڈیٹ کیا گیا';

  @override
  String get noPreviewAvailable => 'کوئی پیش نظارہ دستیاب نہیں';

  @override
  String get privacyPolicyTitle => 'پرائیویسی اور ڈیٹا پروٹیکشن';

  @override
  String get privacyPolicyPurposeOfProcessingSubTitle => 'ہم مندرجہ ذیل مقاصد کے لیے آپ کے فراہم کردہ ذاتی ڈیٹا پر کارروائی کرتے ہیں جیسے:';

  @override
  String get visualAcuityTestDistanceInstructionTooClose => 'آپ کیمرے کے بہت قریب ہیں، کیمرے کو آنکھ سے 40 سینٹی میٹر دور رکھیں۔';

  @override
  String get visualAcuityTestDistanceInstructionTooFar => 'آپ کیمرے سے بہت دور ہیں، کیمرے کو آنکھ سے 40 سینٹی میٹر دور رکھیں۔';

  @override
  String get myProfileABHAID => 'اے بی ایچ اے آئی ڈی';

  @override
  String get myProfileEmail => 'ای میل کریں';

  @override
  String get viewHistoryButton => 'تاریخ دیکھیں';

  @override
  String get profilePagePersonalDetails => 'ذاتی تفصیلات';

  @override
  String get profilePageDateOfBirth => 'تاریخ پیدائش';

  @override
  String get profilePageGender => 'جنس';

  @override
  String get profilePageMobile => 'موبائل';

  @override
  String get profilePageHealthCardTitle => 'ہیلتھ کارڈ';

  @override
  String get appointmentTitle => 'تقرریاں';

  @override
  String get appointmentSubtitle => 'تمام تقرریاں';

  @override
  String get eyeBoxText => 'براہ کرم تصویر کو ایڈجسٹ کریں اور اس وقت تک پوزیشن میں رکھیں جب تک کہ آنکھوں کے ارد گرد سبز بکس ظاہر نہ ہوں۔ آنکھ کو قریب لے جائیں اور اس بات کو یقینی بنائیں کہ ڈبے کا 40 فیصد حصہ آنکھ سے ڈھکا ہوا ہے۔';

  @override
  String get bottomNavItemServices => 'خدمات';

  @override
  String get smsContent => 'ارے! میں اپنی آنکھوں کی دیکھ بھال کے لیے سائٹ کنیکٹ ایپ استعمال کر رہا ہوں، اور آپ کو بھی کرنا چاہیے! اپنی آنکھوں کا جائزہ لیں اور سائٹ کنیکٹ ایپ سے بروقت علاج کروائیں۔ یہ ایک منفرد ایپ ہے جو آپ کے ہاتھ میں احتیاطی آنکھوں کی دیکھ بھال لاتا ہے۔ ابھی حاصل کریں: https://healthconnecttech.org/install';

  @override
  String get emailSubject => 'سائٹ کنیکٹ ایپ کے ذریعے اپنی آنکھوں کی صحت کو ترجیح دیں!';

  @override
  String get recentServicesCataractEyeTest => 'موتیابند آنکھ کا ٹیسٹ';

  @override
  String get recentServicesRedEyeTest => 'سرخ آنکھ کا ٹیسٹ';

  @override
  String get chatBotDefaultQuerySuggestions => 'آنکھوں کی تشخیص شروع کریں۔ آنکھوں کے عام مسائل۔ بہتر بینائی کے لیے تجاویز';

  @override
  String get chatBotWelcomeMessage => 'ہیلو، میں آج آپ کی کس طرح مدد کر سکتا ہوں؟';

  @override
  String get poweredByText => 'کی طرف سے طاقت';

  @override
  String get digitalHealthCard => 'ڈیجیٹل پبلک ہیلتھ اسٹیک';

  @override
  String get inviteNowText => 'ابھی مدعو کریں';

  @override
  String get resend => 'دوبارہ بھیجیں';

  @override
  String get mobileNumber => 'موبائل نمبر';

  @override
  String get loginVerifyMobileNumber => 'اپنے موبائل نمبر کی تصدیق کریں';

  @override
  String get loginEnterMobileNumber => 'براہ کرم موبائل نمبر درج کریں';

  @override
  String get loginEnterValidMobileNumber => 'براہ کرم درست موبائل نمبر درج کریں';

  @override
  String get loginUnableToSendOTP => 'اس نمبر پر او ٹی پی بھیجنے سے قاصر';

  @override
  String get loginGetOTP => 'او ٹی پی حاصل کریں';

  @override
  String get loginInvalidOTP => 'غلط او ٹی پی';

  @override
  String get loginDidntReceiveOTP => 'او ٹی پی موصول نہیں ہوا؟';

  @override
  String get loginOTPSent => 'کامیابی سے بھیجا گیا او ٹی پی';

  @override
  String get areYouSure => 'کیا آپ کو یقین ہے؟';

  @override
  String get triageExitConfirmation => 'کیا آپ ٹیسٹ سے باہر ہونا چاہتے ہیں؟';

  @override
  String get triageReportEyeProblems => 'آنکھوں کے مسائل کی اطلاع دیں';

  @override
  String get triageHowToReport => 'آنکھوں کے مسائل کی اطلاع کیسے دی جائے؟';

  @override
  String get triageReportInstructions => 'اگر آپ ایک ایسے فرد ہیں جنہیں آنکھوں سے متعلق مسائل ہیں، تو آپ خود اعلان کر سکتے ہیں اور مناسب رہنمائی حاصل کرنے کے لیے یہاں اپنے مسائل کا ذکر کر سکتے ہیں۔ آپ یہاں اپنے دوستوں یا خاندان کے افراد کی آنکھوں کے مسائل کا بھی ذکر کر سکتے ہیں اور مناسب رہنمائی حاصل کر سکتے ہیں۔ آنکھوں کے مسئلے کی نوعیت اور شدت کو سمجھنے کے لیے آپ سے درج ذیل حصوں میں سوالات کا ایک مجموعہ پوچھا جائے گا۔ آپ کو کئے جانے والے ٹیسٹ اور تمام سوالات کے جوابات دینے کے بعد ان پر عمل کرنے کے اقدامات کی سفارش اور رہنمائی کی جائے گی۔';

  @override
  String get assessment => 'تشخیص';

  @override
  String get triageOtherSymptomsQuestion => 'کیا آپ کو کوئی اور علامات ہیں؟';

  @override
  String get triageEnterSymptoms => 'اپنی علامات یہاں درج کریں';

  @override
  String get triageEyeAssessmentResults => 'آنکھوں کی تشخیص کے نتائج';

  @override
  String get triageTestId => 'ٹیسٹ آئی ڈی';

  @override
  String get triageEyeScanUpdatedSuccessfully => 'آنکھ کے اسکین کو کامیابی سے اپ ڈیٹ کیا گیا';

  @override
  String get triageErrorEyeScanNotUpdated => 'آنکھ کا اسکین اپ ڈیٹ نہیں کیا گیا!';

  @override
  String get triageLeftEyeString => 'بائیں آنکھ';

  @override
  String get triageRightEyeString => 'دائیں آنکھ';

  @override
  String get vaEyeTest => 'آنکھ کا ٹیسٹ';

  @override
  String get instructions => 'ہدایات';

  @override
  String get vaSwipeUp => 'اوپر سوائپ کریں';

  @override
  String get vaSwipeDown => 'نیچے سوائپ کریں';

  @override
  String get vaSwipeLeft => 'بائیں طرف سوائپ کریں';

  @override
  String get vaSwipeRight => 'دائیں طرف سوائپ کریں';

  @override
  String get vaSwipeGestureError => 'غلط سوائپ اشارہ۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get permissionNotGranted => 'اجازت نہیں دی گئی';

  @override
  String get serviceNotAvailable => 'سروس دستیاب نہیں ہے';

  @override
  String get vaDistanceToFace => 'سامنا کرنے کا فاصلہ';

  @override
  String get vaBringFaceInsideBox => 'اپنا چہرہ ڈبے کے اندر لائیں';

  @override
  String get startAssessment => 'تشخیص شروع کریں';

  @override
  String get optoAddPatientInfo => 'مریض کی معلومات شامل کریں';

  @override
  String get loggedOutMessage => 'آپ کو لاگ آؤٹ کر دیا گیا ہے';

  @override
  String get optoLogoutError => 'معذرت، ہمیں موبائل ایپ میں لاگ آؤٹ کی غلطی کا سامنا کرنا پڑا۔';

  @override
  String get optoLoggingOut => 'لاگ آؤٹ ہو رہا ہے...';

  @override
  String get hello => 'ہیلو۔';

  @override
  String get optoGetStarted => 'چلو شروع کرتے ہیں';

  @override
  String get optoCompletedTests => 'مکمل کیے گئے امتحانات';

  @override
  String get optoThisMonth => 'اس مہینے میں';

  @override
  String get today => 'آج';

  @override
  String get services => 'خدمات';

  @override
  String get optoAssessmentHistory => 'تشخیص کی تاریخ';

  @override
  String get optoEyeAssessments => 'آنکھوں کے جائزے';

  @override
  String get feedback => 'فیڈ بیک';

  @override
  String get optoImproveApp => 'ہم چاہتے ہیں کہ آپ کی رائے ہماری درخواست کو بہتر بنائے';

  @override
  String get assessments => 'جائزے';

  @override
  String get optoPatientAssistance => 'کیا مریض کو مدد کی ضرورت تھی؟';

  @override
  String get optoVisualAcuity => 'بصری ایکویٹی';

  @override
  String get optoPatientAided => 'کیا مریض کی مدد کی گئی تھی؟';

  @override
  String get optoEyeScan => 'آنکھ کا اسکین';

  @override
  String get optoLeaveFeedback => 'براہ کرم اپنی رائے نیچے دیں';

  @override
  String get optoNoInternet => 'انٹرنیٹ کنیکشن نہیں ہے';

  @override
  String get optoCheckInternet => 'براہ کرم اپنا انٹرنیٹ کنکشن چیک کریں اور دوبارہ کوشش کریں';

  @override
  String get optoSearchPatientId => 'مریض کی شناخت تلاش کریں';

  @override
  String get optoRecentAssessments => 'حالیہ جائزے';

  @override
  String get optoSelectDateRange => 'براہ کرم تاریخ کی حد منتخب کریں';

  @override
  String get optoDataNotFound => 'اس تلاش کے لیے ڈیٹا نہیں ملا';

  @override
  String get optoAssessmentReport => 'تشخیص کی رپورٹ';

  @override
  String get optoPID => 'پی آئی ڈی';

  @override
  String get category => 'زمرہ';

  @override
  String get patientAssessmentAndTest => 'مریض کی تشخیص اور ٹیسٹ';

  @override
  String get patientSelfTestReport => 'سیلف ٹیسٹ رپورٹ';

  @override
  String get patientClinicalReport => 'کلینیکل رپورٹ';

  @override
  String get patientAppointmentTitle => 'تقرری';

  @override
  String get patientBookAppointment => 'کتاب کی تقرری';

  @override
  String get patientAppointmentSubtitle => 'آپ کی تقرریاں';

  @override
  String get patientTelephoneConsultation => 'ٹیلی فون مشاورت';

  @override
  String get patientAddress => 'پتہ';

  @override
  String get patientReschedule => 'دوبارہ شیڈول کریں';

  @override
  String get patientCancel => 'منسوخ کریں';

  @override
  String get patientPID => 'پی آئی ڈی';

  @override
  String get patientReportID => 'آئی ڈی کی اطلاع دیں';

  @override
  String get patientHideDetailedReport => 'تفصیلی رپورٹ چھپائیں';

  @override
  String get patientShowDetailedReport => 'تفصیلی رپورٹ دکھائیں';

  @override
  String get patientEID => 'ای آئی ڈی';

  @override
  String get patientViewHistoryButton => 'تاریخ دیکھیں';

  @override
  String get patientViewReportButton => 'رپورٹ دیکھیں';

  @override
  String get patientNoMoreData => 'مزید ڈیٹا نہیں';

  @override
  String get patientErrorFetchingReport => 'رپورٹ حاصل کرنے میں غلطی';

  @override
  String get patientTimeline => 'ٹائم لائن';

  @override
  String get patientRoutineCheckup => 'معمول کی جانچ';

  @override
  String get patientAssessmentID => 'تشخیص آئی ڈی';

  @override
  String get patientStartDate => 'آغاز کی تاریخ';

  @override
  String get patientIVRAssessment => 'آئی وی آر تشخیص';

  @override
  String get patientEarlyConsultationRecommended => 'ابتدائی مشاورت کی سفارش کی گئی';

  @override
  String get patientCataractEyeReport => 'موتیابند کی آنکھ کی رپورٹ';

  @override
  String get patientRedEyeReport => 'سرخ آنکھ کی رپورٹ';

  @override
  String get patientScanAgain => 'دوبارہ اسکین کریں';

  @override
  String get patientStepsToScan => 'ریٹنا اسکیننگ کرنے کے اقدامات';

  @override
  String get patientProceedToScan => 'اسکین کے لیے آگے بڑھیں';

  @override
  String get patientSkipAndProceedToScan => 'سکپ کریں اور اسکین کے لیے آگے بڑھیں';

  @override
  String get patientEyeScanner => 'آنکھ کا اسکینر';

  @override
  String get patientErrorSelectCamera => 'پہلے کیمرہ منتخب کریں!';

  @override
  String get patientEyeBoxText => 'آنکھ کے خانے کا متن';

  @override
  String get patientLoggedOut => 'آپ کو لاگ آؤٹ کر دیا گیا ہے';

  @override
  String get patientLogoutError => 'معذرت، ہمیں موبائل ایپ میں لاگ آؤٹ کی غلطی کا سامنا کرنا پڑا۔';

  @override
  String get patientUpdateProfile => 'پروفائل کو اپ ڈیٹ کریں';

  @override
  String get patientEdit => 'ترمیم کریں';

  @override
  String get patientProfileNotUpdated => 'پروفائل کو اپ ڈیٹ نہیں کیا گیا';

  @override
  String get patientProfileUpdated => 'پروفائل کو اپ ڈیٹ کیا گیا';

  @override
  String get patientReportUnavailable => 'رپورٹ دستیاب نہیں ہے';

  @override
  String get patientClinicalReportNotFound => 'کلینیکل رپورٹ نہیں ملی';

  @override
  String get patientRID => 'آر آئی ڈی';

  @override
  String get patientUpdateUnavailable => 'اپ ڈیٹ اس وقت دستیاب نہیں ہے';

  @override
  String get vgAddEvent => 'تقریب شامل کریں';

  @override
  String get vgUploadingImageAddingEvent => 'تصویر اپ لوڈ کرنا اور تقریب شامل کرنا';

  @override
  String get vgEventTitle => 'تقریب کا عنوان';

  @override
  String get vgPleaseEnterEndTime => 'براہ کرم اختتامی وقت درج کریں';

  @override
  String get vgShouldNotContainSpecialCharacter => 'کوئی خاص کردار نہیں ہونا چاہیے';

  @override
  String get vgEventDescription => 'واقعہ کی تفصیل';

  @override
  String get vgAddPatient => 'مریض کو شامل کریں';

  @override
  String get vgPatients => 'مریض';

  @override
  String get vgDetails => 'تفصیلات';

  @override
  String get vgTeammates => 'ٹیم کے ساتھی';

  @override
  String get vgEyeAssessment => 'آنکھوں کی تشخیص';

  @override
  String get vgStart => 'شروع کریں';

  @override
  String get vgEyeAssessmentDescription => 'چند مراحل میں اپنے، اپنے دوستوں اور خاندان کے افراد کی آنکھوں کے مسائل کا جائزہ لیں۔ آپ سے آنکھوں کے مسائل سے متعلق علامات کو سمجھنے کے لیے سوالات کا ایک مجموعہ پوچھا جائے گا جس کے بعد بصری ٹیسٹ کیے جائیں گے۔';

  @override
  String get vgLogoutMessage => 'آپ کو لاگ آؤٹ کر دیا گیا ہے';

  @override
  String get vgLogoutErrorMessage => 'معذرت، ہمیں موبائل ایپ میں لاگ آؤٹ کی غلطی کا سامنا کرنا پڑا۔';

  @override
  String get vgWelcome => 'خوش آمدید۔';

  @override
  String get vgServices => 'خدمات';

  @override
  String get vgEvents => 'واقعات';

  @override
  String get vgViewAll => 'سب دیکھیں';

  @override
  String get vtAssessmentReport => 'تشخیص کی رپورٹ-ای اے';

  @override
  String get vtRemarks => 'تبصرے';

  @override
  String get vtNoPatientFound => 'کوئی مریض نہیں ملا';

  @override
  String get vtClose => 'بند کریں';

  @override
  String get vtBack => 'پیچھے';

  @override
  String get vtSubmit => 'جمع کروائیں';

  @override
  String get vtSomethingWentWrong => 'کچھ غلط ہو گیا';

  @override
  String get vtAssessmentClosedSuccessfully => 'تشخیص کامیابی سے بند ہوئی';

  @override
  String get vtEyeScan => 'آنکھ کا اسکین';

  @override
  String get vtDashboard => 'ڈیش بورڈ';

  @override
  String get vtRegisterPatient => 'مریض کو رجسٹر کریں';

  @override
  String get vtTriage => 'ٹرائی۔';

  @override
  String get vtMarkMyAvailability => 'میری دستیابی کو نشان زد کریں';

  @override
  String get vtIVRCallHistory => 'آئی وی آر کال ہسٹری';

  @override
  String get vtMarked => 'نشان زد';

  @override
  String get vtPreliminaryAssessment => 'ابتدائی تشخیص';

  @override
  String get vtAge => 'عمر';

  @override
  String get vtGender => 'جنس';

  @override
  String get vtAddress => 'پتہ';

  @override
  String get vtProfile => 'پروفائل';

  @override
  String get vtLogoutMessage => 'آپ کو لاگ آؤٹ کر دیا گیا ہے';

  @override
  String get vtLogoutError => 'معذرت، ہمیں موبائل ایپ میں لاگ آؤٹ کی غلطی کا سامنا کرنا پڑا۔';

  @override
  String get vtError => 'غلطی';

  @override
  String get vtPatient => 'مریض۔';

  @override
  String get vtMobile => 'موبائل';

  @override
  String get vtAssessmentID => 'تشخیص آئی ڈی';

  @override
  String get vtStatus => 'حیثیت';

  @override
  String get vtTimeline => 'ٹائم لائن';

  @override
  String get vtCategory => 'زمرہ';

  @override
  String get vtNoDataFound => 'کوئی ڈیٹا نہیں ملا';

  @override
  String get appCameraCapture => 'پکڑنا';

  @override
  String get appCameraRetake => 'دوبارہ لے لو';

  @override
  String get appCameraUsePhoto => 'تصویر استعمال کریں';

  @override
  String get appCameraCancel => 'منسوخ کریں';

  @override
  String get appCameraNotFound => 'کیمرہ نہیں ملا';

  @override
  String get appCameraException => 'کیمرہ مستثنی';

  @override
  String get appCameraProgressMessage => 'لوڈ ہو رہا ہے...';

  @override
  String get internetLostNoConnection => 'انٹرنیٹ کنیکشن نہیں ہے';

  @override
  String get internetLostRetry => 'دوبارہ کوشش کریں';

  @override
  String get secureJailbreak => 'ایسا لگتا ہے کہ آپ کا آلہ جیل بروکن ہے';

  @override
  String get secureRestrictedAccess => 'حفاظتی وجوہات کی بناء پر، اس ایپ تک رسائی جیل بروکن ڈیوائسز پر محدود ہے۔';

  @override
  String get secureExitApp => 'ایپ سے باہر نکلیں';

  @override
  String get sharedErrorPageIssues => 'ہمیں کچھ مسائل کا سامنا ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get appointmentBookingTitle => 'تقرری کی بکنگ';

  @override
  String get comingSoon => 'جلد ہی آ رہا ہے...';

  @override
  String get miniappService => 'خدمت';

  @override
  String get miniappConsole => 'کنسول';

  @override
  String get roleChooseYourRole => 'اپنا کردار منتخب کریں';

  @override
  String get roleNote => 'نوٹ: آپ ایپ کے اندر اپنا کردار تبدیل نہیں کر سکتے۔';

  @override
  String get roleConfirm => 'تصدیق کریں';

  @override
  String get roleEyeCareProfessional => 'آئی کیئر پروفیشنل';

  @override
  String get roleVisionTechnician => 'ویژن ٹیکنیشن';

  @override
  String get rolePatient => 'مریض';

  @override
  String get roleVisionGuardian => 'وژن گارڈین';

  @override
  String get vtSearchText => 'مریض کی شناخت، موبائل نمبر یا نام کے ذریعے تلاش کریں';

  @override
  String get emptyPatientsInfo => 'مریضوں کو ان کی تفصیلات دیکھنے کے لیے تلاش کرنا شروع کریں۔';

  @override
  String get vtPersonalDetails => 'ذاتی تفصیلات';

  @override
  String get vtHprId => 'ایچ پی آر آئی ڈی';

  @override
  String get vtEmailId => 'ای میل آئی ڈی';

  @override
  String get vtEducationalQualification => 'تعلیمی قابلیت';

  @override
  String get vtAddressAndDoorNumber => 'پتہ اور دروازہ نمبر';

  @override
  String get vtCity => 'شہر';

  @override
  String get vtState => 'ریاست';

  @override
  String get vtPincode => 'پن کوڈ';

  @override
  String get vtOrganisationDetails => 'تنظیم کی تفصیلات';

  @override
  String get vtOrgId => 'او آر جی آئی ڈی';

  @override
  String get vtFacilityType => 'سہولت کی قسم';

  @override
  String get vtAssessments => 'جائزے';

  @override
  String get vtNoAssessmentsFound => 'کوئی تشخیص نہیں ملی';

  @override
  String get vtAnalytics => 'تجزیات';

  @override
  String get vtTotalCases => 'کل مقدمات';

  @override
  String get vtIvrCalls => 'آئی وی آر کالز';

  @override
  String get vtClinicVisits => 'کلینک کے دورے';

  @override
  String get vtCasesClosed => 'مقدمات بند کر دیے گئے';

  @override
  String get vtCritical => 'تنقیدی';

  @override
  String get vtRegular => 'باقاعدگی سے';

  @override
  String get vtAvgClosureTime => 'اوسط۔ بند ہونے کا وقت';

  @override
  String get vtByAge => 'عمر کے لحاظ سے';

  @override
  String get vtByGender => 'جنس کے لحاظ سے';

  @override
  String get vtSymptoms => 'علامات';

  @override
  String get vtSearchByMobileNo => 'موبائل نمبر کے ذریعے تلاش کریں۔';

  @override
  String get vtInvalidMobileNo => 'غلط موبائل نمبر۔';

  @override
  String get vtCallLogEmpty => 'کال لاگ خالی ہے۔ ابھی تک کوئی کال نہیں کی گئی!!';

  @override
  String get vtNoDataAvailable => 'کوئی ڈیٹا دستیاب نہیں ہے';

  @override
  String get vtToday => 'آج';

  @override
  String get vtYesterday => 'گزشتہ روز';

  @override
  String get vtIvrCallNotAvailable => 'آئی وی آر کال دستیاب نہیں ہے۔ دوبارہ کوشش کریں!!';

  @override
  String get vtMarkUnavailable => 'غیر دستیاب کے طور پر نشان زد کریں';

  @override
  String get vtStartDate => 'آغاز کی تاریخ';

  @override
  String get vtEndDate => 'اختتامی تاریخ';

  @override
  String get vtStartTime => 'آغاز کا وقت';

  @override
  String get vtEndTime => 'اختتامی وقت';

  @override
  String get vtAddRemarksOptional => 'ریمارکس شامل کریں (اختیاری)';

  @override
  String get vtSave => 'محفوظ کریں';

  @override
  String get vtCancel => 'منسوخ کریں';

  @override
  String get vtPleaseEnterRemark => 'براہ کرم تبصرہ درج کریں';

  @override
  String get vtAssessment => 'تشخیص';

  @override
  String get vtIvrSelections => 'آئی وی آر انتخاب';

  @override
  String get vtLanguageSelection => 'زبان کا انتخاب';

  @override
  String get vtEnglish => 'انگریزی';

  @override
  String get vtPatientType => 'مریض کی قسم';

  @override
  String get vtProblem => 'مسئلہ';

  @override
  String get vtEyeSight => 'آنکھوں کی بینائی';

  @override
  String get vtVisionTechnician => 'وژن ٹیکنیشن';

  @override
  String get vtRecommendedCenter => 'تجویز کردہ مرکز';

  @override
  String get vtAssessmentIDEA => 'اسسمنٹ آئی ڈی: ای اے';

  @override
  String get vtPid => 'پی آئی ڈی: او پی';

  @override
  String get vtAssessmentTimeline => 'تشخیص ٹائم لائن';

  @override
  String get vtPleaseSelectEncounter => 'براہ کرم ایک ملاقات منتخب کریں';

  @override
  String get vtTimelineEA => 'ٹائم لائن: ای اے';

  @override
  String get vtGeneralInformation => 'عمومی معلومات';

  @override
  String get vtDateOfBirth => 'تاریخ پیدائش';

  @override
  String get vtAssessmentEA => 'تشخیص ای اے';

  @override
  String get vtNotRegistered => 'آپ سسٹم میں رجسٹرڈ نہیں ہیں۔ براہ کرم ایک مسڈ کال دیں';

  @override
  String get vtOkay => 'ٹھیک ہے۔';

  @override
  String get vtTakePicture => 'تصویر کھینچیں';

  @override
  String get vtEye => 'آنکھ۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔۔';

  @override
  String get vtRetakePicture => 'تصویر دوبارہ لیں';

  @override
  String get vtNext => 'اگلا';

  @override
  String get vtMrCode => 'ایم آر کوڈ';

  @override
  String get vtEnterMrCode => 'یہاں ایم آر کوڈ درج کریں';

  @override
  String get vtPleaseEnterMrCode => 'براہ کرم ایم آر کوڈ درج کریں';

  @override
  String get vtNote => 'نوٹ';

  @override
  String get vtEnterRecommendations => 'تجاویز یہاں درج کریں';

  @override
  String get vtSolutions => 'حل (ز)';

  @override
  String get vtLeftEye => 'بائیں آنکھ';

  @override
  String get vtRightEye => 'دائیں آنکھ';

  @override
  String get vtBothEyes => 'دونوں آنکھیں';

  @override
  String get vtFilterBy => 'کے ذریعے فلٹر کریں';

  @override
  String get vtLocation => 'مقام';

  @override
  String get vtEnterTime => 'براہ کرم وقت درج کریں';

  @override
  String get vtEnterDate => 'براہ کرم تاریخ درج کریں';

  @override
  String get vtRecommendation => 'سفارشات';

  @override
  String get vtVisitPrimaryCenter => 'پرائمری سینٹر کا دورہ کریں';

  @override
  String get vtVisitSecondaryCenter => 'ثانوی مرکز کا دورہ کریں';

  @override
  String get vtVisitTertiaryCenter => 'ترتیری مرکز کا دورہ کریں';

  @override
  String get vtVisitCenterOfExcellence => 'سینٹر آف ایکسی لینس کا دورہ کریں';

  @override
  String get vtIvrCallQuestion => 'کیا آپ آئی وی آر کال پر ہیں؟';

  @override
  String get vtYes => 'ہاں۔';

  @override
  String get vtNo => 'نہیں۔';

  @override
  String get vtRetry => 'دوبارہ کوشش کریں';

  @override
  String get vtAssessmentQuestions => 'تشخیص کے سوالات';

  @override
  String get vtVisionCenter => 'وژن سینٹر';

  @override
  String get vtVisualAcuity => 'بصری ایکویٹی';

  @override
  String get vtInvalidValue => 'غلط قدر';

  @override
  String get vtSeverity => 'شدت پسندی';

  @override
  String get vtNoVisionCentersFound => 'کوئی وژن سینٹر نہیں ملا';

  @override
  String get vtRequestLocationPermission => 'مقام کی اجازت کی درخواست کریں';

  @override
  String get vtAppSettings => 'ایپ کی ترتیبات';

  @override
  String get vtEnterSomeText => 'براہ کرم کچھ متن درج کریں';

  @override
  String get vtPrimary => 'پرائمری';

  @override
  String get vtDependent => 'منحصر';

  @override
  String get vtAddMember => 'رکن شامل کریں';

  @override
  String get vtCompleteProfile => 'مکمل پروفائل';

  @override
  String get vtPatientNotRegistered => 'مریض رجسٹرڈ نہیں ہے';

  @override
  String get vtPatientRegistered => 'مریض رجسٹرڈ ہے';

  @override
  String get vtDependentNotAdded => 'انحصار شامل نہیں کیا گیا';

  @override
  String get vtDependentAdded => 'انحصار شامل کیا گیا';

  @override
  String get vtServiceNotAvailable => 'خدمت دستیاب نہیں ہے';

  @override
  String get vgEyeAssessments => 'آنکھوں کے جائزے';

  @override
  String get vgTotal => 'کل';

  @override
  String get vgCamps => 'کیمپس';

  @override
  String get vgDoorToDoor => 'دروازے کا دروازہ';

  @override
  String get vgByGender => 'جنس کے لحاظ سے';

  @override
  String get vgMale => 'مرد';

  @override
  String get vgFemale => 'عورت';

  @override
  String get vgOthers => 'دیگر';

  @override
  String get vgByAge => 'عمر کے لحاظ سے';

  @override
  String get vgSlideAge => 'سالوں کا۔';

  @override
  String get vgSymptoms => 'علامات';

  @override
  String get vgRefractive => 'ریفریکٹیو';

  @override
  String get vgCataract => 'موتیابند';

  @override
  String get vgGlaucoma => 'گلوکوما';

  @override
  String get vgKeratitis => 'کیراٹائٹس';

  @override
  String get vgBlepharitis => 'بلیفرائٹس';

  @override
  String get vgConjunctivitis => 'کنجکٹوائٹس';

  @override
  String get vgServicesCreateEvent => 'تقریب بنائیں';

  @override
  String get vgServicesEyeAssessment => 'آنکھوں کی تشخیص';

  @override
  String get vgServicesRegisterPatient => 'نئے مریض کو رجسٹر کریں';

  @override
  String get vgAddPatients => 'مریضوں کو شامل کریں';

  @override
  String get vgEvent => 'تقریب';

  @override
  String get vgAddEventPhoto => 'تقریب کی تصویر شامل کریں';

  @override
  String get vgUploadImage => 'تصویر اپ لوڈ کریں';

  @override
  String get vgAddPhotoInstruction => 'تقریب کی تصویر شامل کریں جو تھمب نیل کے طور پر دکھائی جائے گی';

  @override
  String get vgAddressDetails => 'پتے کی تفصیلات';

  @override
  String get vgVenueName => 'مقام کا نام';

  @override
  String get vgVenueNameError => 'براہ کرم مقام کا نام درج کریں';

  @override
  String get vgVenueNameSpecialCharError => 'کوئی خاص کردار نہیں ہونا چاہیے';

  @override
  String get vgPincode => 'پن کوڈ';

  @override
  String get vgPincodeError => 'صرف 6 ہندسوں کے پن کوڈ کی اجازت ہے';

  @override
  String get vgCityTownVillage => 'شہر/قصبہ/گاؤں';

  @override
  String get vgCityTownVillageError => 'براہ کرم شہر/قصبہ/گاؤں کا نام درج کریں';

  @override
  String get vgCityTownVillageSpecialCharError => 'کوئی خاص کردار نہیں ہونا چاہیے';

  @override
  String get vgCancel => 'منسوخ کریں';

  @override
  String get vgSave => 'محفوظ کریں';

  @override
  String get vgAddEventImage => 'تقریب کی تصویر شامل کریں';

  @override
  String get vgEventAdded => 'تقریب شامل کی گئی';

  @override
  String get vgEventNotAdded => 'تقریب شامل نہیں کی گئی';

  @override
  String get vgDateTime => 'تاریخ اور وقت';

  @override
  String get vgStartDate => 'آغاز کی تاریخ';

  @override
  String get vgStartTime => 'آغاز کا وقت';

  @override
  String get vgLocation => 'مقام';

  @override
  String get vgViewOnMap => 'نقشے پر دیکھیں';

  @override
  String get vgAddressAndDoorNumber => 'پتہ اور دروازہ نمبر';

  @override
  String get vgSubDistrictName => 'ذیلی ضلع کا نام';

  @override
  String get vgVillageName => 'گاؤں کا نام';

  @override
  String get vgDistrictName => 'ضلع کا نام';

  @override
  String get vgAbout => 'کے بارے میں';

  @override
  String get vgEditEvent => 'تقریب میں ترمیم کریں';

  @override
  String get vgDeleteEvent => 'تقریب کو حذف کریں';

  @override
  String get vgErrorFetchingEventDetails => 'تقریب کی تفصیلات حاصل کرنے میں خرابی';

  @override
  String get vgNoPatientRegistered => 'نام کے ساتھ کوئی مریض رجسٹرڈ نہیں ہے۔ رجسٹر مریض پر کلک کریں۔';

  @override
  String get vgRegisterPatient => 'مریض کو رجسٹر کریں';

  @override
  String get vgPrimary => 'پرائمری';

  @override
  String get vgDependent => 'منحصر';

  @override
  String get vgAddMember => 'رکن شامل کریں';

  @override
  String get vgCompleteProfile => 'مکمل پروفائل';

  @override
  String get vgStartAssessment => 'تشخیص شروع کریں';

  @override
  String get vgSearchPatientByPhoneNumber => 'فون نمبر کے ذریعے مریض کو تلاش کریں';

  @override
  String get vgInvalidPhoneNumber => 'براہ کرم ایک درست فون نمبر درج کریں';

  @override
  String get vgServerError => 'سرور میں خرابی';

  @override
  String get vgPatient => 'مریض۔';

  @override
  String get vgReportId => 'آئی ڈی کی اطلاع دیں';

  @override
  String get vgNoEventFound => 'کوئی تقریب نہیں ملی';

  @override
  String get vgTeamMateDeletedSuccessfully => 'ٹیم میٹ کامیابی سے حذف کر دیا گیا';

  @override
  String get vgSomethingWentWrong => 'کچھ غلط ہو گیا';

  @override
  String get vgName => 'نام';

  @override
  String get vgPhoneNumber => 'فون نمبر';

  @override
  String get vgErrorFetchingTeammatesDetails => 'ٹیم کے ساتھیوں کی تفصیلات حاصل کرنے میں غلطی';

  @override
  String get vgTeamMateAddedSuccessfully => 'ٹیم میٹ کو کامیابی سے شامل کیا گیا';

  @override
  String get vgAddTeammate => 'ٹیم میٹ شامل کریں';

  @override
  String get vgPleaseEnter => 'براہ کرم داخل کریں';

  @override
  String get vgPleaseEnterField => 'براہ کرم فیلڈ درج کریں';

  @override
  String get vgOr => 'یا';

  @override
  String get vgSearch => 'تلاش کریں';

  @override
  String get vgEventDeletedSuccessfully => 'تقریب کامیابی سے حذف کر دی گئی';

  @override
  String get vgEventDeletionFailed => 'تقریب حذف کرنے میں ناکام';

  @override
  String get vgEndTimeGreaterThanStartTime => 'اختتامی وقت شروع ہونے کے وقت سے زیادہ ہونا چاہیے';

  @override
  String get vgNoPatientsPresent => 'اس وقت کوئی مریض نہیں ہے۔ "ایڈ پیشنٹ" پر ٹیپ کریں۔';

  @override
  String get textSize => 'متن کا حجم';

  @override
  String get increase => 'بڑھائیں';

  @override
  String get decrease => 'کم کریں';

  @override
  String get reset => 'ری سیٹ کریں';

  @override
  String get minimumTextSizeReached => 'کم سے کم متن کا سائز پہنچ گیا';

  @override
  String get maximumTextSizeReached => 'زیادہ سے زیادہ متن کا سائز پہنچ گیا';

  @override
  String get chatClearChat => 'چیٹ صاف کریں';

  @override
  String get chatEyeAssessmentRecommended => 'آپ کے لیے آنکھوں کی تشخیص کی سفارش کی جاتی ہے۔';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'کیا آپ ٹرائیج آئی اسسمنٹ لینا چاہتے ہیں؟';

  @override
  String get chatChatbotNotAvailable => 'چیٹ بوٹ فی الحال دستیاب نہیں ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get chatTypeHere => 'یہاں ٹائپ کریں...';

  @override
  String get switchProfile => 'پروفائل تبدیل کریں';

  @override
  String get switchRole => 'کردار تبدیل کریں';

  @override
  String get switchTenant => 'کرایہ دار کو تبدیل کریں';

  @override
  String get patientHeaderWelcomeText => 'سائٹ کنیکٹ میں خوش آمدید! اپنی بینائی کا خیال رکھنا ضروری ہے، اور ہم آپ کے لیے ہر قدم پر موجود ہیں۔';

  @override
  String get triageTestCardHeader => 'آپ کی آنکھوں کا ٹیسٹ مفت ہے...';

  @override
  String get triageTestCardBody1 => 'اپنی آنکھوں کی علامات کا فوری تجزیہ کریں';

  @override
  String get triageTestCardBody2 => 'شناخت کریں کہ آیا آپ کو آنکھ کا مسئلہ ہو سکتا ہے';

  @override
  String get triageTestCardBody3 => 'جانیں کہ اپنے ڈاکٹر کے پاس کب جانا ہے';

  @override
  String get triageTestCardButton => 'مفت آنکھ کا ٹیسٹ شروع کریں';

  @override
  String get myConnectionListAddMembersDescription => 'اپنے خاندان اور دوستوں کو شامل کرنے کے لیے ایڈ ممبرز بٹن پر کلک کریں۔';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'آپ کیسے آگے بڑھنا چاہتے ہیں؟';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'مجھے ایک مسئلہ ہے اور میں تصدیق کرنا چاہتا ہوں';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'مجھے یقین نہیں ہے کہ مجھے کوئی مسئلہ ہے یا نہیں';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'مجھے آنکھوں کا کوئی مسئلہ نہیں ہے-بس چیک کرنا چاہتا ہوں';

  @override
  String get appDrawerToastMessageText => 'معذرت، ہمیں موبائل ایپ میں لاگ آؤٹ کی غلطی کا سامنا کرنا پڑا۔';

  @override
  String get myConnectionListAddMembers => 'رکن شامل کریں';

  @override
  String get appDrawerReferral => 'ریفرل';

  @override
  String get patientTenantDisplayPageHeader => 'کرایہ دار';

  @override
  String get patientTenantDisplayPageBody => 'فہرست میں سے ویژن سینٹر منتخب کریں';

  @override
  String get patientTenantDisplayPageRequestLocationPermissionButton => 'مقام کی اجازت کی درخواست کریں';

  @override
  String get referralGenerateSheetHeader => 'آپ کا ریفرل کوڈ';

  @override
  String get referralGenerateSheetTapHereButton => 'کوڈ ہے؟ یہاں ٹیپ کریں';

  @override
  String get referralGenerateSheetMyReferrals => 'میرے حوالہ جات';

  @override
  String get referralGenerateSheetShareCode => 'فوائد حاصل کرنے کے لیے اپنا ریفرل کوڈ اپنے دوستوں اور اہل خانہ کے ساتھ شیئر کریں۔';

  @override
  String get referralGenerateSheetReferralGenerateError => 'معذرت، ہم اس وقت ریفرل کوڈ تیار کرنے سے قاصر ہیں۔';

  @override
  String get referralGenerateSheetShareButton => 'شیئر کریں';

  @override
  String get referralGenerateSheetCopy => 'کاپی';

  @override
  String get referralCollectSheetYourRefferalCode => 'آپ کا ریفرل کوڈ';

  @override
  String get referralCollectSheetReferralCodeMessage => 'فوائد حاصل کرنے کے لیے اپنا ریفرل کوڈ اپنے دوستوں اور اہل خانہ کے ساتھ شیئر کریں۔';

  @override
  String get referralCollectSheetHeader => 'حوالہ جمع کریں';

  @override
  String get referralCollectSheetBody => 'اپنا انعام جمع کرنے کے لیے ریفرل کوڈ درج کریں';

  @override
  String get referralCollectSheetTextFieldHeader => 'ریفرل کوڈ';

  @override
  String get referralCollectSheetTextFieldBody => 'ریفرل کوڈ درج کریں';

  @override
  String get referralCollectSheetSkipButton => 'چھلانگ لگائیں';

  @override
  String get referralCollectSheetCollectButton => 'اکٹھا کریں';

  @override
  String get referralCollectSheetError => 'معذرت، کچھ غلط ہوا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get referralCollectSheetSuccessToast => 'ریفرل کوڈ کامیابی سے جمع کرایا گیا';

  @override
  String get referralCollectSheetErrorToast => 'آپ نے جو ریفرل کوڈ درج کیا ہے وہ غلط ہے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get referralStatisticsPageHeader => 'آپ کے حوالہ جاتی اعداد و شمار';

  @override
  String get referralStatisticsPageTotalReferred => 'کل حوالہ دیا گیا';

  @override
  String get referralStatisticsPageSucessfulReferred => 'کامیاب حوالہ دیا گیا';

  @override
  String get referralStatisticsPageTotalTriage => 'کل ٹرائیج';

  @override
  String get referralStatisticsPageReferFriendHeader => 'دوست کا حوالہ کیسے دیا جائے؟';

  @override
  String get referralStatisticsPageReferFriendBody1 => 'اپنا ریفرل کوڈ اپنے دوست کے ساتھ شیئر کریں۔';

  @override
  String get referralStatisticsPageReferFriendBody2 => 'آپ کا دوست آپ کے ریفرل کوڈ کا استعمال کرتے ہوئے اندراج کرتا ہے۔';

  @override
  String get referralStatisticsPageReferFriendBody3 => 'آپ کا دوست کم از کم ایک ٹرائیج ٹیسٹ مکمل کرتا ہے۔';

  @override
  String get referralStatisticsPageReferFriendButton => 'ایک دوست کا حوالہ دیں';

  @override
  String get referralStatisticsPageError => 'معذرت، ہم اس وقت آپ کے حوالہ کے اعداد و شمار حاصل کرنے سے قاصر ہیں۔';

  @override
  String get referralStatisticsPageRetryButton => 'دوبارہ کوشش کریں';

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
  String get distanceNotifierProviderNoFaceDetectedError => 'No face detected. Please face the camera 40 cm from the screen ';
}
