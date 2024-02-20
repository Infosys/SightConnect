import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_or.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('as'),
    Locale('bn'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('or'),
    Locale('ta'),
    Locale('te'),
    Locale('ur')
  ];

  /// No description provided for @stepNumber.
  ///
  /// In en, this message translates to:
  /// **'{current} of {total}'**
  String stepNumber(String current, String total);

  /// No description provided for @loginEnterOTP.
  ///
  /// In en, this message translates to:
  /// **'Please enter the OTP sent to {mobileNumber}'**
  String loginEnterOTP(String mobileNumber);

  /// No description provided for @loginResendOTPIn.
  ///
  /// In en, this message translates to:
  /// **'Resend in {time}'**
  String loginResendOTPIn(String time);

  /// No description provided for @questionnaireTitle.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment Questions'**
  String get questionnaireTitle;

  /// No description provided for @questionnaireExitDialog.
  ///
  /// In en, this message translates to:
  /// **'Answering these questions will help in identifying your eye problems. Do you really wish to exit?'**
  String get questionnaireExitDialog;

  /// No description provided for @visualAcuityTitle.
  ///
  /// In en, this message translates to:
  /// **'Visual Acuity Test'**
  String get visualAcuityTitle;

  /// No description provided for @visualAcuityDescription.
  ///
  /// In en, this message translates to:
  /// **'A visual acuity test is an eye exam that checks how well you see the details of a letter or symbol from a specific distance. Do this quick test now!'**
  String get visualAcuityDescription;

  /// No description provided for @visualAcuityHowToPerform.
  ///
  /// In en, this message translates to:
  /// **'How to perform the visual acuity test?'**
  String get visualAcuityHowToPerform;

  /// No description provided for @visualAcuityViewStepsToPerform.
  ///
  /// In en, this message translates to:
  /// **'View Steps to perform Visual Acuity Test'**
  String get visualAcuityViewStepsToPerform;

  /// No description provided for @visualAcuityCompletionDialog.
  ///
  /// In en, this message translates to:
  /// **'Done! Visual Acuity Test is completed for both eyes. You need to capture your eye photos next.'**
  String get visualAcuityCompletionDialog;

  /// No description provided for @visualAcuityExitDialog.
  ///
  /// In en, this message translates to:
  /// **'Visual acuity is an important test to understand about your eye problem. Do you really wish to exit?'**
  String get visualAcuityExitDialog;

  /// No description provided for @swipeGestureTab.
  ///
  /// In en, this message translates to:
  /// **'Swipe Gesture'**
  String get swipeGestureTab;

  /// No description provided for @voiceAssistTab.
  ///
  /// In en, this message translates to:
  /// **'Voice Assist'**
  String get voiceAssistTab;

  /// No description provided for @distanceString.
  ///
  /// In en, this message translates to:
  /// **'distance'**
  String get distanceString;

  /// No description provided for @leftEyeString.
  ///
  /// In en, this message translates to:
  /// **'Left Eye'**
  String get leftEyeString;

  /// No description provided for @rightEyeString.
  ///
  /// In en, this message translates to:
  /// **'Right Eye'**
  String get rightEyeString;

  /// No description provided for @bothEyeString.
  ///
  /// In en, this message translates to:
  /// **'Both Eye'**
  String get bothEyeString;

  /// No description provided for @visualAcuityLeftEyeHeader.
  ///
  /// In en, this message translates to:
  /// **'Test 2 - Left Eye'**
  String get visualAcuityLeftEyeHeader;

  /// No description provided for @visualAcuityLeftEyeInstructions.
  ///
  /// In en, this message translates to:
  /// **'Without pressing on the eyelid, cover the RIGHT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.'**
  String get visualAcuityLeftEyeInstructions;

  /// No description provided for @visualAcuityRightEyeHeader.
  ///
  /// In en, this message translates to:
  /// **'Test 1 - Right Eye'**
  String get visualAcuityRightEyeHeader;

  /// No description provided for @visualAcuityRightEyeInstructions.
  ///
  /// In en, this message translates to:
  /// **'Without pressing on the eyelid, cover the LEFT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.'**
  String get visualAcuityRightEyeInstructions;

  /// No description provided for @visualAcuityBothEyeHeader.
  ///
  /// In en, this message translates to:
  /// **'Test 3 - Both Eye'**
  String get visualAcuityBothEyeHeader;

  /// No description provided for @visualAcuityBothEyeInstructions.
  ///
  /// In en, this message translates to:
  /// **'Do not cover any of your eyes and view the symbols that appear next with both eyes.'**
  String get visualAcuityBothEyeInstructions;

  /// No description provided for @overlayHeaderDirection.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get overlayHeaderDirection;

  /// No description provided for @overlayDescription.
  ///
  /// In en, this message translates to:
  /// **'Here is how you understand the directions for each symbol.'**
  String get overlayDescription;

  /// No description provided for @overlaySymbolDirectionText.
  ///
  /// In en, this message translates to:
  /// **'Symbol Direction : '**
  String get overlaySymbolDirectionText;

  /// No description provided for @directionDown.
  ///
  /// In en, this message translates to:
  /// **'Down'**
  String get directionDown;

  /// No description provided for @directionUp.
  ///
  /// In en, this message translates to:
  /// **'Up'**
  String get directionUp;

  /// No description provided for @directionLeft.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get directionLeft;

  /// No description provided for @directionRight.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get directionRight;

  /// No description provided for @dontShowAgainString.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show again'**
  String get dontShowAgainString;

  /// No description provided for @visualAcuityCarouselTitle.
  ///
  /// In en, this message translates to:
  /// **'Steps to perform Visual Acuity Test'**
  String get visualAcuityCarouselTitle;

  /// No description provided for @eyeScanTitle.
  ///
  /// In en, this message translates to:
  /// **'Eye Scan'**
  String get eyeScanTitle;

  /// No description provided for @eyeScanDescription.
  ///
  /// In en, this message translates to:
  /// **'You are close! Just one more test to go. Capture the photos of your eyes next.'**
  String get eyeScanDescription;

  /// No description provided for @eyeScanHowToPerform.
  ///
  /// In en, this message translates to:
  /// **'How to scan your eyes?'**
  String get eyeScanHowToPerform;

  /// No description provided for @eyeScanViewStepsToPerform.
  ///
  /// In en, this message translates to:
  /// **'View steps to know how to scan your eyes.'**
  String get eyeScanViewStepsToPerform;

  /// No description provided for @eyeScanExitDialog.
  ///
  /// In en, this message translates to:
  /// **'Eye Scan helps to understand more about your eye problem. Do you really wish to exit?'**
  String get eyeScanExitDialog;

  /// No description provided for @captureRightEyeString.
  ///
  /// In en, this message translates to:
  /// **'Capture Right Eye'**
  String get captureRightEyeString;

  /// No description provided for @captureLeftEyeString.
  ///
  /// In en, this message translates to:
  /// **'Capture Left Eye'**
  String get captureLeftEyeString;

  /// No description provided for @skipButton.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipButton;

  /// No description provided for @startTestText.
  ///
  /// In en, this message translates to:
  /// **'Start Test'**
  String get startTestText;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @startButton.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get startButton;

  /// No description provided for @nextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// No description provided for @proceedButton.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceedButton;

  /// No description provided for @yesButton.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesButton;

  /// No description provided for @noButton.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noButton;

  /// No description provided for @exitButton.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exitButton;

  /// No description provided for @okButton.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okButton;

  /// No description provided for @knowMoreButton.
  ///
  /// In en, this message translates to:
  /// **'Know More'**
  String get knowMoreButton;

  /// No description provided for @seeAllButton.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAllButton;

  /// No description provided for @tryAgainButton.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgainButton;

  /// No description provided for @shareNowButton.
  ///
  /// In en, this message translates to:
  /// **'Share Now'**
  String get shareNowButton;

  /// No description provided for @retryButton.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryButton;

  /// No description provided for @homeCarousal1Title.
  ///
  /// In en, this message translates to:
  /// **'Cataract Prevalence and Its Associated Factors among Adult Aged 40 Years and above'**
  String get homeCarousal1Title;

  /// No description provided for @homeCarousal1Description.
  ///
  /// In en, this message translates to:
  /// **'Schematic presentation of sampling procedure on prevalence of cataract and associated factors'**
  String get homeCarousal1Description;

  /// No description provided for @homeCarousal2Title.
  ///
  /// In en, this message translates to:
  /// **'7 eye problems not to miss out!'**
  String get homeCarousal2Title;

  /// No description provided for @homeCarousal2Description.
  ///
  /// In en, this message translates to:
  /// **'\r\n7 eye problems to get tested for: \r\n \r\n• Redness of eye\r\n• Watering of eyes\r\n• White spots on eyes'**
  String get homeCarousal2Description;

  /// No description provided for @homeCarousal3Title.
  ///
  /// In en, this message translates to:
  /// **'Eye problems. There are many that you can\'t see'**
  String get homeCarousal3Title;

  /// No description provided for @homeCarousal3Description.
  ///
  /// In en, this message translates to:
  /// **'But a vision care expert can.\r\nGet eye problems identified\r\nand treated in time to avoid\r\ncomplications later'**
  String get homeCarousal3Description;

  /// No description provided for @myConnectionsTitle.
  ///
  /// In en, this message translates to:
  /// **'My Members'**
  String get myConnectionsTitle;

  /// No description provided for @myConnectionsAddMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get myConnectionsAddMember;

  /// No description provided for @myConnectionsServiceNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service not available'**
  String get myConnectionsServiceNotAvailable;

  /// No description provided for @myConnectionsAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get myConnectionsAdd;

  /// No description provided for @recentServicesTitle.
  ///
  /// In en, this message translates to:
  /// **'My Recent Services'**
  String get recentServicesTitle;

  /// No description provided for @recentServicesEyeAssessment.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment'**
  String get recentServicesEyeAssessment;

  /// No description provided for @recentServicesVisualAcuityTest.
  ///
  /// In en, this message translates to:
  /// **'Visual Acuity Test'**
  String get recentServicesVisualAcuityTest;

  /// No description provided for @nearbyVisionCentersTitle.
  ///
  /// In en, this message translates to:
  /// **'Nearby Vision Centers'**
  String get nearbyVisionCentersTitle;

  /// No description provided for @nearbyVisionCentersNotFound.
  ///
  /// In en, this message translates to:
  /// **'No Vision Centers Found'**
  String get nearbyVisionCentersNotFound;

  /// No description provided for @tollFreeNumber.
  ///
  /// In en, this message translates to:
  /// **'Toll Free Number'**
  String get tollFreeNumber;

  /// No description provided for @appDrawerTitle.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get appDrawerTitle;

  /// No description provided for @appDrawerHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get appDrawerHome;

  /// No description provided for @appDrawerLanguageSelection.
  ///
  /// In en, this message translates to:
  /// **'Language Selection'**
  String get appDrawerLanguageSelection;

  /// No description provided for @appDrawerAccessibility.
  ///
  /// In en, this message translates to:
  /// **'Accessibility Settings'**
  String get appDrawerAccessibility;

  /// No description provided for @appDrawerMyProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get appDrawerMyProfile;

  /// No description provided for @appDrawerAssessmentsAndTests.
  ///
  /// In en, this message translates to:
  /// **'Assessments and Tests'**
  String get appDrawerAssessmentsAndTests;

  /// No description provided for @appDrawerScanner.
  ///
  /// In en, this message translates to:
  /// **'QR Code Scanner'**
  String get appDrawerScanner;

  /// No description provided for @appDrawerAboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get appDrawerAboutUs;

  /// No description provided for @appDrawerPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Data Policy'**
  String get appDrawerPrivacyPolicy;

  /// No description provided for @appDrawerHelpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help and Support'**
  String get appDrawerHelpAndSupport;

  /// No description provided for @appDrawerSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get appDrawerSignOut;

  /// No description provided for @aboutUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Sightconnect is a user-friendly eye care app that helps with self-assessment and consultation over the call.\r\n\r\nAt the heart of our mission is a commitment to make eyecare accessible to all. The app is designed to be inclusive and accessible by users from all walks of life, regardless of their age, technical background, and social or economic background. The app and its content are made available in English and other local languages. It helps users to self-assess their eyes and get timely treatment advice. The app uses the latest technologies and tools to provide personalized eye care solutions to our users. It comes with a variety of features to make their life easier. '**
  String get aboutUsDescription;

  /// No description provided for @aboutUsFeaturesTitle.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get aboutUsFeaturesTitle;

  /// No description provided for @aboutUsFeaturesDescription.
  ///
  /// In en, this message translates to:
  /// **'In-app Eye Testing: The app allows its users to self-assess their eyes by answering few questions and getting appropriate recommendations on the next steps and the doctor to be visited. Even friends and family of users can get benefitted too. |Appointment Booking: Users can book online teleconsultations and in-clinic visits with doctors to get their eyes diagnosed. |IVR Call Services: Our IVR call services are available in English and local languages and it caters to users with basic feature phones as well. Users can dial our eye care professionals to seek instant help during an emergency or for any eye related issues. They can also call to book appointments or seek any further clarifications. |Nearby Clinics: Users can locate the eye care clinics near to them. |Prescriptions and Reports: All prescriptions and reports of users can be accessed from one place without much hassle. |Eye Camps: Users can get information about nearby eye camps to get the eyes of their friends and family tested for free. |Reminders and Alerts: Users can receive timely alerts and reminders related to their upcoming appointments, medication, reports etc. |Sharing: Users can share this app and other useful information provided within the app with their friends and family members. '**
  String get aboutUsFeaturesDescription;

  /// No description provided for @aboutUsConclusion.
  ///
  /// In en, this message translates to:
  /// **'The app is developed with the help of leading eye care professionals to serve our user community better. Join us in our mission to create a brighter, healthier world. Download and Share the Sightconnect app today!'**
  String get aboutUsConclusion;

  /// No description provided for @privacyPolicyDescription.
  ///
  /// In en, this message translates to:
  /// **'LV Prasad Eye Institute, its subsidiaries, associates and affiliated companies (collectively referred to as “LVPEI”, “us”, “we”) are committed to process your personal data as per the laws of your jurisdiction. We hereby notify you the following information about the processing of personal data.'**
  String get privacyPolicyDescription;

  /// No description provided for @privacyPolicyPersonalDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Personal data elements collected/processed:'**
  String get privacyPolicyPersonalDataTitle;

  /// No description provided for @privacyPolicyPersonalDataDescription.
  ///
  /// In en, this message translates to:
  /// **'You and your connections personal data such as (Some of these data would be optional) Mobile number, Name, Date of birth, Gender (Male/Female), Address (Pin code), patient ID, Connection, eye triage questionnaire responses, eye triage report, eye images, symptoms tagged against your eye image, Photograph, Address details such as address, district name (including District code), state name (including state code), sub district name, village name, town name, Email address, Last Name, Middle Name, Blood Group, Height, Weight, Occupation, ABHA details (as provided by you), based on your app permissions access to Camera, GPS Location, Gallery for accessing the application, full network access, view network connections, Device information.'**
  String get privacyPolicyPersonalDataDescription;

  /// No description provided for @privacyPolicyPurposeOfProcessingTitle.
  ///
  /// In en, this message translates to:
  /// **'Purpose of Processing:'**
  String get privacyPolicyPurposeOfProcessingTitle;

  /// No description provided for @privacyPolicyPurposeOfProcessingDescription.
  ///
  /// In en, this message translates to:
  /// **'To enable you to access our application and its features for eye related online health checkup for you and your connections (as provided by you).|To enable you to contact Vision Technicians, Ophthalmologists under LVPEI, as applicable, in case of any eye related illness/health difficulties.|For providing any eye health-related data (including reports etc.) as part of your health consultation and diagnosis and in order to contact you or your connections as part of health-related concerns.|For sharing of your eye health data with our authorized LVPEI ophthalmologists/ doctors for better diagnosis and further sharing the same with the Village Chief/ Mayor etc. (where applicable based on your GPS location) depending on the severity of the eye issue in case you are unable to reach out to/ inform the LVPEI doctors for treatment.|To provide the list of Eye clinics/ hospitals affiliated with LVPEI near you, for you to reach out to in case of any eye related problems.|For using the information such as Eye Image, symptoms related to the eye image, Age, Blood Group, Location without any identifiers to help train our machine learning or artificial intelligence models for the purpose of providing proper diagnosis in the future|For sending reminder, communication, campaign mailers, to create awareness for eye health.'**
  String get privacyPolicyPurposeOfProcessingDescription;

  /// No description provided for @privacyPolicyDataRecipientsTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Recipients/ Accessible to:'**
  String get privacyPolicyDataRecipientsTitle;

  /// No description provided for @privacyPolicyDataRecipientsDescription.
  ///
  /// In en, this message translates to:
  /// **'The personal data shared by you (including sensitive personal data) will be accessible to authorized LVPEI personnel such as Doctors/ Ophthalmologists, Vision Technicians, Vision Guardians, representatives from LVPEI, internal/external auditors, Government authorities where applicable, and our authorized service provider Infosys as applicable.'**
  String get privacyPolicyDataRecipientsDescription;

  /// No description provided for @privacyPolicyDataTransferTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Transfer & Storage:'**
  String get privacyPolicyDataTransferTitle;

  /// No description provided for @privacyPolicyDataTransferDescription.
  ///
  /// In en, this message translates to:
  /// **'The personal data shared by you will get stored on our internal servers, our authorized service provider’s server in India.'**
  String get privacyPolicyDataTransferDescription;

  /// No description provided for @privacyPolicyDataSecurityTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Security:'**
  String get privacyPolicyDataSecurityTitle;

  /// No description provided for @privacyPolicyDataSecurityDescription.
  ///
  /// In en, this message translates to:
  /// **'LVPEI adopts reasonable and appropriate security practices and procedures including administrative, physical security, and technical controls in order to safeguard your Personal Data.'**
  String get privacyPolicyDataSecurityDescription;

  /// No description provided for @privacyPolicyDataRetentionTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Retention:'**
  String get privacyPolicyDataRetentionTitle;

  /// No description provided for @privacyPolicyDataRetentionDescription.
  ///
  /// In en, this message translates to:
  /// **'Personal Data that is no longer required to be retained as per legal and business requirements will be disposed in a secure manner.'**
  String get privacyPolicyDataRetentionDescription;

  /// No description provided for @privacyPolicyDataSubjectRightsTitle.
  ///
  /// In en, this message translates to:
  /// **'Data subject rights:'**
  String get privacyPolicyDataSubjectRightsTitle;

  /// No description provided for @privacyPolicyDataSubjectRightsDescription.
  ///
  /// In en, this message translates to:
  /// **'You are entitled at any time to access and rectify your personal information. In case of any requests, issues, concerns or queries you may reach out to LV Prasad Office by sending an email to <LVPEI to provide generic mail ID for DSR>. '**
  String get privacyPolicyDataSubjectRightsDescription;

  /// No description provided for @privacyPolicyRightToWithdrawTitle.
  ///
  /// In en, this message translates to:
  /// **'Right to Withdrawal:'**
  String get privacyPolicyRightToWithdrawTitle;

  /// No description provided for @privacyPolicyRightToWithdrawDescription.
  ///
  /// In en, this message translates to:
  /// **'Where we process your Personal Data based on your consent, you may withdraw your consent to the processing as per applicable DP laws at any time for the future. This will not affect the lawfulness of any processing operation before your withdrawal. To withdraw your consent, you may send an email to <LVPEI to provide generic mail ID for DSR>.'**
  String get privacyPolicyRightToWithdrawDescription;

  /// No description provided for @privacyPolicyAcknowledgement.
  ///
  /// In en, this message translates to:
  /// **'By clicking the below button, you hereby acknowledge and understand that your personal data including sensitive personal data may be collected and processed in the above-mentioned manner and hereby consent to the same for the above-mentioned purposes. You also acknowledge that any personal data including sensitive personal data (other than yourself) shared by you is only after taking appropriate consent from them. You also acknowledge that you will not share any personal data (including sensitive personal data) which is not required for the above-mentioned purposes. You also acknowledge that when you are sharing minor’s personal data as their parent/ legal guardian you consent to their data collection and processing as mentioned above.'**
  String get privacyPolicyAcknowledgement;

  /// No description provided for @privacyPolicyBottomAppBarLabel.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy Accepted'**
  String get privacyPolicyBottomAppBarLabel;

  /// No description provided for @helpAndSupportReachTitle.
  ///
  /// In en, this message translates to:
  /// **'Reach out to us'**
  String get helpAndSupportReachTitle;

  /// No description provided for @assessmentAndTestsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Here is a quick view of the assessments done so far.'**
  String get assessmentAndTestsSubtitle;

  /// No description provided for @assessmentAndTestsReportsNotFound.
  ///
  /// In en, this message translates to:
  /// **'No Reports Found'**
  String get assessmentAndTestsReportsNotFound;

  /// No description provided for @eyeAssessmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment'**
  String get eyeAssessmentTitle;

  /// No description provided for @eyeAssessmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get the eye problems of you, your friends, and, family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.'**
  String get eyeAssessmentSubtitle;

  /// No description provided for @eyeAssessmentGetMemberLabel.
  ///
  /// In en, this message translates to:
  /// **'Change Member'**
  String get eyeAssessmentGetMemberLabel;

  /// No description provided for @eyeAssessmentProceedButton.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get eyeAssessmentProceedButton;

  /// No description provided for @eyeAssessmentBrightnessLabel.
  ///
  /// In en, this message translates to:
  /// **'Brightness set to 80%'**
  String get eyeAssessmentBrightnessLabel;

  /// No description provided for @eyeAssessmentBrightnessError.
  ///
  /// In en, this message translates to:
  /// **'Please set the brightness manually to 80%'**
  String get eyeAssessmentBrightnessError;

  /// No description provided for @eyeAssessmentUnsupportedQuestion.
  ///
  /// In en, this message translates to:
  /// **'Question not supported yet - can this be translated as answer/feedback not available yet?'**
  String get eyeAssessmentUnsupportedQuestion;

  /// No description provided for @eyeAssessmentPopUpHeading.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get eyeAssessmentPopUpHeading;

  /// No description provided for @eyeAssessmentPopUpBody.
  ///
  /// In en, this message translates to:
  /// **'Are you having any eyesight related problem?'**
  String get eyeAssessmentPopUpBody;

  /// No description provided for @eyeAssessmentPopUpYesButton.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get eyeAssessmentPopUpYesButton;

  /// No description provided for @eyeAssessmentPopUpNoButton.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get eyeAssessmentPopUpNoButton;

  /// No description provided for @visualAcuityTestInstructionOne.
  ///
  /// In en, this message translates to:
  /// **'Sit down comfortably in a well light location. You may feel a sudden change in brightness, don’t worry the screen is set to auto-brightness to provide optimal result'**
  String get visualAcuityTestInstructionOne;

  /// No description provided for @visualAcuityTestInstructionTwo.
  ///
  /// In en, this message translates to:
  /// **'Make sure you are holding the device at the eye level. If you wear glasses or contact lenses, keep them on'**
  String get visualAcuityTestInstructionTwo;

  /// No description provided for @visualAcuityTestInstructionThree.
  ///
  /// In en, this message translates to:
  /// **'Position yourself 40 cm from the screen. Distance will be shown in the test screen.'**
  String get visualAcuityTestInstructionThree;

  /// No description provided for @visualAcuityTestInstructionFour.
  ///
  /// In en, this message translates to:
  /// **'If you are testing with glasses on, cover one eye with your hand over the glasses when only one eye is tested.'**
  String get visualAcuityTestInstructionFour;

  /// No description provided for @skipAndProceedButton.
  ///
  /// In en, this message translates to:
  /// **'Skip & Proceed to Scan'**
  String get skipAndProceedButton;

  /// No description provided for @proceedToScanButton.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Scan'**
  String get proceedToScanButton;

  /// No description provided for @eyeAssessmentSteps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get eyeAssessmentSteps;

  /// No description provided for @eyeAssessmentStepOne.
  ///
  /// In en, this message translates to:
  /// **'Step 1 - Eye Assessment Questions'**
  String get eyeAssessmentStepOne;

  /// No description provided for @eyeAssessmentStepTwo.
  ///
  /// In en, this message translates to:
  /// **'Step 2 - Eye Assessment Questions'**
  String get eyeAssessmentStepTwo;

  /// No description provided for @eyeAssessmentStepThree.
  ///
  /// In en, this message translates to:
  /// **'Step 3 - Eye Assessment Questions'**
  String get eyeAssessmentStepThree;

  /// No description provided for @eyeAssessmentOngoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get eyeAssessmentOngoing;

  /// No description provided for @eyeAssessmentCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get eyeAssessmentCompleted;

  /// No description provided for @eyeAssessmentPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get eyeAssessmentPending;

  /// No description provided for @eyeAssessmentResults.
  ///
  /// In en, this message translates to:
  /// **'Assessment Results'**
  String get eyeAssessmentResults;

  /// No description provided for @eyeAssessmentCompleteSteps.
  ///
  /// In en, this message translates to:
  /// **'Complete all steps to view results'**
  String get eyeAssessmentCompleteSteps;

  /// No description provided for @eyeAssessmentToolTip.
  ///
  /// In en, this message translates to:
  /// **'Please make sure that the flash is turned off and the brightness is set to 80%'**
  String get eyeAssessmentToolTip;

  /// No description provided for @eyeScanInstructionOne.
  ///
  /// In en, this message translates to:
  /// **'Hold the camera placing the face properly on the frame.'**
  String get eyeScanInstructionOne;

  /// No description provided for @eyeScanInstructionTwo.
  ///
  /// In en, this message translates to:
  /// **'Take an image of the eyes using the back camera of your phone.'**
  String get eyeScanInstructionTwo;

  /// No description provided for @eyeScanInstructionThree.
  ///
  /// In en, this message translates to:
  /// **'Make sure to be in a well-lit area with the flash on.'**
  String get eyeScanInstructionThree;

  /// No description provided for @eyeScanInstructionFour.
  ///
  /// In en, this message translates to:
  /// **'For better capture and clarity, have someone else to click the picture.'**
  String get eyeScanInstructionFour;

  /// No description provided for @eyeScanInstructionFive.
  ///
  /// In en, this message translates to:
  /// **'Cover one eye with your hand and look straight ahead with the other eye while taking the picture.'**
  String get eyeScanInstructionFive;

  /// No description provided for @eyeScanInstructionSix.
  ///
  /// In en, this message translates to:
  /// **'Centre the eye inside the panel before starting the picture.'**
  String get eyeScanInstructionSix;

  /// No description provided for @eyeScanInstructionSeven.
  ///
  /// In en, this message translates to:
  /// **'Keep the eyes wide open till the flash goes off, until a ‘beep’ sound signals the end of the Photo.'**
  String get eyeScanInstructionSeven;

  /// No description provided for @eyeAssessmentNote.
  ///
  /// In en, this message translates to:
  /// **'Note: The images shown here are for indication only. They may not appear the same way in real life.'**
  String get eyeAssessmentNote;

  /// No description provided for @agreeButton.
  ///
  /// In en, this message translates to:
  /// **'I Agree'**
  String get agreeButton;

  /// No description provided for @consentPageCheckbox.
  ///
  /// In en, this message translates to:
  /// **'I agree to the terms and conditions'**
  String get consentPageCheckbox;

  /// No description provided for @confirmButton.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmButton;

  /// No description provided for @discardButton.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discardButton;

  /// No description provided for @imageNotCapturedToastMessage.
  ///
  /// In en, this message translates to:
  /// **'Image not Captured'**
  String get imageNotCapturedToastMessage;

  /// No description provided for @eyeCaptureCompletionDialogHeading.
  ///
  /// In en, this message translates to:
  /// **'Test Completed'**
  String get eyeCaptureCompletionDialogHeading;

  /// No description provided for @eyeCaptureCompletionDialogBody.
  ///
  /// In en, this message translates to:
  /// **'You have completed the test. Please click on the button below to view the result.'**
  String get eyeCaptureCompletionDialogBody;

  /// No description provided for @eyeCaptureCompletionDialogViewResult.
  ///
  /// In en, this message translates to:
  /// **'View Result'**
  String get eyeCaptureCompletionDialogViewResult;

  /// No description provided for @eyeCaptureTriageSavedLocally.
  ///
  /// In en, this message translates to:
  /// **'Triage Saved Locally'**
  String get eyeCaptureTriageSavedLocally;

  /// No description provided for @visualAcuityTestResults.
  ///
  /// In en, this message translates to:
  /// **'Visual Acuity Test Results'**
  String get visualAcuityTestResults;

  /// No description provided for @assessmentResultPageMoreDetailsText.
  ///
  /// In en, this message translates to:
  /// **'Visit the nearest vision center for more details. Call the toll-free number to speak to our vision technician.'**
  String get assessmentResultPageMoreDetailsText;

  /// No description provided for @assessmentReportButton.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment Report'**
  String get assessmentReportButton;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @notificationsNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Notifications'**
  String get notificationsNotAvailable;

  /// No description provided for @servicesPatientCare.
  ///
  /// In en, this message translates to:
  /// **'Patient Care'**
  String get servicesPatientCare;

  /// No description provided for @reportAssessmentId.
  ///
  /// In en, this message translates to:
  /// **'Assessment ID'**
  String get reportAssessmentId;

  /// No description provided for @reportDateAndTime.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get reportDateAndTime;

  /// No description provided for @reportSeverityAbnormal.
  ///
  /// In en, this message translates to:
  /// **'Urgent Consult'**
  String get reportSeverityAbnormal;

  /// No description provided for @reportSeverityHigh.
  ///
  /// In en, this message translates to:
  /// **'Early Checkup'**
  String get reportSeverityHigh;

  /// No description provided for @reportSeverityLow.
  ///
  /// In en, this message translates to:
  /// **'Routine Checkup'**
  String get reportSeverityLow;

  /// No description provided for @reportDataUnavailable.
  ///
  /// In en, this message translates to:
  /// **'No Data Available'**
  String get reportDataUnavailable;

  /// No description provided for @reportTumblingTitle.
  ///
  /// In en, this message translates to:
  /// **'Acuity Test - Tumbling E'**
  String get reportTumblingTitle;

  /// No description provided for @rightCornea.
  ///
  /// In en, this message translates to:
  /// **'Right Cornea'**
  String get rightCornea;

  /// No description provided for @leftCornea.
  ///
  /// In en, this message translates to:
  /// **'Left Cornea'**
  String get leftCornea;

  /// No description provided for @myProfileGeneralInfo.
  ///
  /// In en, this message translates to:
  /// **'General Information'**
  String get myProfileGeneralInfo;

  /// No description provided for @myProfileAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get myProfileAge;

  /// No description provided for @myProfileAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get myProfileAddress;

  /// No description provided for @myProfileLine.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get myProfileLine;

  /// No description provided for @myProfileCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get myProfileCity;

  /// No description provided for @myProfileDistrict.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get myProfileDistrict;

  /// No description provided for @myProfileState.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get myProfileState;

  /// No description provided for @myProfilePinCode.
  ///
  /// In en, this message translates to:
  /// **'PinCode'**
  String get myProfilePinCode;

  /// No description provided for @submitButton.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitButton;

  /// No description provided for @swipeGestureError.
  ///
  /// In en, this message translates to:
  /// **'Incorrect Swipe! Please try again.'**
  String get swipeGestureError;

  /// No description provided for @swipeGestureCardText.
  ///
  /// In en, this message translates to:
  /// **'Swipe in the direction of the symbol'**
  String get swipeGestureCardText;

  /// No description provided for @assessmentResultCardAssessmentQuestions.
  ///
  /// In en, this message translates to:
  /// **'Assessment\r\nQuestions'**
  String get assessmentResultCardAssessmentQuestions;

  /// No description provided for @assessmentResultCardAcuityTest.
  ///
  /// In en, this message translates to:
  /// **'Acuity\r\nTest'**
  String get assessmentResultCardAcuityTest;

  /// No description provided for @assessmentResultCardEyeScan.
  ///
  /// In en, this message translates to:
  /// **'Eye\r\nScan'**
  String get assessmentResultCardEyeScan;

  /// No description provided for @viewReportButton.
  ///
  /// In en, this message translates to:
  /// **'View Report'**
  String get viewReportButton;

  /// No description provided for @updateButton.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get updateButton;

  /// No description provided for @assessmentCardUrgentConsult.
  ///
  /// In en, this message translates to:
  /// **'Urgent Consult'**
  String get assessmentCardUrgentConsult;

  /// No description provided for @assessmentCardRoutineCheckUp.
  ///
  /// In en, this message translates to:
  /// **'Routine Checkup'**
  String get assessmentCardRoutineCheckUp;

  /// No description provided for @assessmentCardEarlyCheckUp.
  ///
  /// In en, this message translates to:
  /// **'Early Checkup'**
  String get assessmentCardEarlyCheckUp;

  /// No description provided for @testAgainButton.
  ///
  /// In en, this message translates to:
  /// **'Test Again'**
  String get testAgainButton;

  /// No description provided for @homeButton.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeButton;

  /// No description provided for @homeTriageCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Our eyes are the most valuable assets.'**
  String get homeTriageCardTitle;

  /// No description provided for @homeTriageCardDescription.
  ///
  /// In en, this message translates to:
  /// **'Get them tested on time to prevent eye problems.'**
  String get homeTriageCardDescription;

  /// No description provided for @homeTriageCardTest.
  ///
  /// In en, this message translates to:
  /// **'Start Eye Test'**
  String get homeTriageCardTest;

  /// No description provided for @homeHelplineCardDescrition.
  ///
  /// In en, this message translates to:
  /// **'In the event of a sudden vision loss, call this emergency helpline'**
  String get homeHelplineCardDescrition;

  /// No description provided for @inviteCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Invite Others'**
  String get inviteCardTitle;

  /// No description provided for @inviteCardDescription.
  ///
  /// In en, this message translates to:
  /// **'Invite 5 friends and family members so that they can get their eyes assessed and prevent eye issues in the future.'**
  String get inviteCardDescription;

  /// No description provided for @inviteCardInvitation.
  ///
  /// In en, this message translates to:
  /// **'Invite Now'**
  String get inviteCardInvitation;

  /// No description provided for @partnerCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Partner'**
  String get partnerCardTitle;

  /// No description provided for @languageSelection.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get languageSelection;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @eyeAssessmentEnterLabel.
  ///
  /// In en, this message translates to:
  /// **'Enter here'**
  String get eyeAssessmentEnterLabel;

  /// No description provided for @profilePageAddressDetails.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get profilePageAddressDetails;

  /// No description provided for @profilePaeCheckReports.
  ///
  /// In en, this message translates to:
  /// **'Check your reports'**
  String get profilePaeCheckReports;

  /// No description provided for @bottomNavItemEyeTest.
  ///
  /// In en, this message translates to:
  /// **'Eye Test'**
  String get bottomNavItemEyeTest;

  /// No description provided for @bottomNavItemAppointment.
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get bottomNavItemAppointment;

  /// No description provided for @memberSelection.
  ///
  /// In en, this message translates to:
  /// **'Select Member'**
  String get memberSelection;

  /// No description provided for @triageAlerDialogBoxTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Steps to Redo'**
  String get triageAlerDialogBoxTitle;

  /// No description provided for @scannerTitle.
  ///
  /// In en, this message translates to:
  /// **'Scanner'**
  String get scannerTitle;

  /// No description provided for @visualAcuityTestDistanceInstruction.
  ///
  /// In en, this message translates to:
  /// **'Position the camera 40cm away from the eye.'**
  String get visualAcuityTestDistanceInstruction;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get somethingWentWrong;

  /// No description provided for @triageUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Triage Updated successfully.'**
  String get triageUpdatedSuccessfully;

  /// No description provided for @noPreviewAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Preview Available'**
  String get noPreviewAvailable;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Data Protection'**
  String get privacyPolicyTitle;

  /// No description provided for @privacyPolicyPurposeOfProcessingSubTitle.
  ///
  /// In en, this message translates to:
  /// **'We process the Personal Data provided by you for the below purposes such as:'**
  String get privacyPolicyPurposeOfProcessingSubTitle;

  /// No description provided for @visualAcuityTestDistanceInstructionTooClose.
  ///
  /// In en, this message translates to:
  /// **'You are too close to the Camera, Position the camera 40cm away from the eye.'**
  String get visualAcuityTestDistanceInstructionTooClose;

  /// No description provided for @visualAcuityTestDistanceInstructionTooFar.
  ///
  /// In en, this message translates to:
  /// **'You are too far from the Camera, Position the camera 40cm away from the eye.'**
  String get visualAcuityTestDistanceInstructionTooFar;

  /// No description provided for @myProfileABHAID.
  ///
  /// In en, this message translates to:
  /// **'ABHA ID'**
  String get myProfileABHAID;

  /// No description provided for @myProfileEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get myProfileEmail;

  /// No description provided for @viewHistoryButton.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get viewHistoryButton;

  /// No description provided for @profilePagePersonalDetails.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get profilePagePersonalDetails;

  /// No description provided for @profilePageDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get profilePageDateOfBirth;

  /// No description provided for @profilePageGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get profilePageGender;

  /// No description provided for @profilePageMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get profilePageMobile;

  /// No description provided for @profilePageHealthCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Health Card'**
  String get profilePageHealthCardTitle;

  /// No description provided for @appointmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get appointmentTitle;

  /// No description provided for @appointmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All Appointments'**
  String get appointmentSubtitle;

  /// No description provided for @eyeBoxText.
  ///
  /// In en, this message translates to:
  /// **'Please adjust and position the image until green boxes appear around the eyes. Move the eye closer and ensure that 40% of the box is covered by the eye.'**
  String get eyeBoxText;

  /// No description provided for @bottomNavItemServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get bottomNavItemServices;

  /// No description provided for @smsContent.
  ///
  /// In en, this message translates to:
  /// **'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hand. Get it now: https://healthconnecttech.org/install'**
  String get smsContent;

  /// No description provided for @emailSubject.
  ///
  /// In en, this message translates to:
  /// **'Prioritize your eye health with SightConnect App!'**
  String get emailSubject;

  /// No description provided for @recentServicesCataractEyeTest.
  ///
  /// In en, this message translates to:
  /// **'Cataract Eye Test'**
  String get recentServicesCataractEyeTest;

  /// No description provided for @recentServicesRedEyeTest.
  ///
  /// In en, this message translates to:
  /// **'Red Eye Test'**
  String get recentServicesRedEyeTest;

  /// No description provided for @poweredByText.
  ///
  /// In en, this message translates to:
  /// **'Powered by'**
  String get poweredByText;

  /// No description provided for @digitalHealthCard.
  ///
  /// In en, this message translates to:
  /// **'Digital Public Health Stack'**
  String get digitalHealthCard;

  /// No description provided for @inviteNowText.
  ///
  /// In en, this message translates to:
  /// **'Invite Now'**
  String get inviteNowText;

  /// No description provided for @chatBotDefaultQuerySuggestions.
  ///
  /// In en, this message translates to:
  /// **'Start Eye Assessment|Common eye issues|Tips for a better eye sight'**
  String get chatBotDefaultQuerySuggestions;

  /// No description provided for @chatBotWelcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Hi, How may I help you today?'**
  String get chatBotWelcomeMessage;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['as', 'bn', 'en', 'gu', 'hi', 'kn', 'ml', 'mr', 'or', 'ta', 'te', 'ur'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'as': return AppLocalizationsAs();
    case 'bn': return AppLocalizationsBn();
    case 'en': return AppLocalizationsEn();
    case 'gu': return AppLocalizationsGu();
    case 'hi': return AppLocalizationsHi();
    case 'kn': return AppLocalizationsKn();
    case 'ml': return AppLocalizationsMl();
    case 'mr': return AppLocalizationsMr();
    case 'or': return AppLocalizationsOr();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
    case 'ur': return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}