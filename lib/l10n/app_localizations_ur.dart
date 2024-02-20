import 'app_localizations.dart';

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '$current of $total';
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
  String get bothEyeString => 'دونوں آنکھیں';

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
  String get poweredByText => 'کی طرف سے طاقت';

  @override
  String get digitalHealthCard => 'ڈیجیٹل پبلک ہیلتھ اسٹیک';

  @override
  String get inviteNowText => 'ابھی مدعو کریں';

  @override
  String get chatBotDefaultQuerySuggestions => 'آنکھوں کی تشخیص شروع کریں۔ آنکھوں کے عام مسائل۔ بہتر بینائی کے لیے تجاویز';

  @override
  String get chatBotWelcomeMessage => 'ہیلو، میں آج آپ کی کس طرح مدد کر سکتا ہوں؟';

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
  String get loginOTPResendIn => 'Resend in {time}';
}
