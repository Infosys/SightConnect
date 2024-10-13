/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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

  /// No description provided for @referralSmsContent.
  ///
  /// In en, this message translates to:
  /// **'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hands. Use my referral code {referral} when you sign up. Get it now: https://healthconnecttech.org/install'**
  String referralSmsContent(String referral);

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

  /// No description provided for @patientHasAnAppointment.
  ///
  /// In en, this message translates to:
  /// **'{patient} has an appointment'**
  String patientHasAnAppointment(String patient);

  /// No description provided for @vgEmptyResults.
  ///
  /// In en, this message translates to:
  /// **'There are no {type}s at present. Tap on "Add {type}"'**
  String vgEmptyResults(String type);

  /// No description provided for @vgSearchByIdName.
  ///
  /// In en, this message translates to:
  /// **'Search by {searchType} ID, Name'**
  String vgSearchByIdName(String searchType);

  /// No description provided for @emergencyTollFreeNumberText.
  ///
  /// In en, this message translates to:
  /// **'In case of emergency, please call {tollFreeNumber}'**
  String emergencyTollFreeNumberText(String tollFreeNumber);

  /// No description provided for @referralCollectSheetReferredBy.
  ///
  /// In en, this message translates to:
  /// **'You have been referred by {referredBy}'**
  String referralCollectSheetReferredBy(String referredBy);

  /// No description provided for @vaDistanceToFaceInstruction.
  ///
  /// In en, this message translates to:
  /// **'Please ensure that the camera is {distance} cm away from your face.'**
  String vaDistanceToFaceInstruction(int distance);

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

  /// No description provided for @bothEyesString.
  ///
  /// In en, this message translates to:
  /// **'Both Eyes'**
  String get bothEyesString;

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
  /// **'\r\n\r\n7 eye problems to get tested for:\r\n\r\n \r\n\r\n• Redness of eye\r\n\r\n• Watering of eyes\r\n\r\n• White spots on eyes'**
  String get homeCarousal2Description;

  /// No description provided for @homeCarousal3Title.
  ///
  /// In en, this message translates to:
  /// **'Eye problems. There are many that you can\'t see'**
  String get homeCarousal3Title;

  /// No description provided for @homeCarousal3Description.
  ///
  /// In en, this message translates to:
  /// **'But a vision care expert can.\r\n\r\nGet eye problems identified\r\n\r\nand treated in time to avoid\r\n\r\ncomplications later'**
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
  /// **'Sightconnect is a user-friendly eye care app that helps with self-assessment and consultation over the call.\r\n\r\n\r\n\r\nAt the heart of our mission is a commitment to make eyecare accessible to all. The app is designed to be inclusive and accessible by users from all walks of life, regardless of their age, technical background, and social or economic background. The app and its content are made available in English and other local languages. It helps users to self-assess their eyes and get timely treatment advice. The app uses the latest technologies and tools to provide personalized eye care solutions to our users. It comes with a variety of features to make their life easier. '**
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
  /// **'Step 2 - Visual Acuity Test'**
  String get eyeAssessmentStepTwo;

  /// No description provided for @eyeAssessmentStepThree.
  ///
  /// In en, this message translates to:
  /// **'Step 3 - Eye Scan'**
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
  /// **'I agree'**
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
  /// **'Assessment\r\n\r\nQuestions'**
  String get assessmentResultCardAssessmentQuestions;

  /// No description provided for @assessmentResultCardAcuityTest.
  ///
  /// In en, this message translates to:
  /// **'Acuity\r\n\r\nTest'**
  String get assessmentResultCardAcuityTest;

  /// No description provided for @assessmentResultCardEyeScan.
  ///
  /// In en, this message translates to:
  /// **'Eye\r\n\r\nScan'**
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
  /// **'Privacy & Data Protection Statement'**
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

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @loginVerifyMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify your mobile number'**
  String get loginVerifyMobileNumber;

  /// No description provided for @loginEnterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter mobile number'**
  String get loginEnterMobileNumber;

  /// No description provided for @loginEnterValidMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid mobile number'**
  String get loginEnterValidMobileNumber;

  /// No description provided for @loginUnableToSendOTP.
  ///
  /// In en, this message translates to:
  /// **'Unable to send OTP to this number'**
  String get loginUnableToSendOTP;

  /// No description provided for @loginGetOTP.
  ///
  /// In en, this message translates to:
  /// **'Get OTP'**
  String get loginGetOTP;

  /// No description provided for @loginInvalidOTP.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get loginInvalidOTP;

  /// No description provided for @loginDidntReceiveOTP.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the OTP?'**
  String get loginDidntReceiveOTP;

  /// No description provided for @loginOTPSent.
  ///
  /// In en, this message translates to:
  /// **'OTP sent successfully'**
  String get loginOTPSent;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @triageExitConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit the Test?'**
  String get triageExitConfirmation;

  /// No description provided for @triageReportEyeProblems.
  ///
  /// In en, this message translates to:
  /// **'Report Eye Problems'**
  String get triageReportEyeProblems;

  /// No description provided for @triageHowToReport.
  ///
  /// In en, this message translates to:
  /// **'How to report eye problems?'**
  String get triageHowToReport;

  /// No description provided for @triageReportInstructions.
  ///
  /// In en, this message translates to:
  /// **'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\r\n\r\n\r\n\r\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.'**
  String get triageReportInstructions;

  /// No description provided for @assessment.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get assessment;

  /// No description provided for @triageOtherSymptomsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Do you have any other symptoms?'**
  String get triageOtherSymptomsQuestion;

  /// No description provided for @triageEnterSymptoms.
  ///
  /// In en, this message translates to:
  /// **'Enter your symptoms here'**
  String get triageEnterSymptoms;

  /// No description provided for @triageEyeAssessmentResults.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment Results'**
  String get triageEyeAssessmentResults;

  /// No description provided for @triageTestId.
  ///
  /// In en, this message translates to:
  /// **'Test ID'**
  String get triageTestId;

  /// No description provided for @triageEyeScanUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Eye scan updated successfully'**
  String get triageEyeScanUpdatedSuccessfully;

  /// No description provided for @triageErrorEyeScanNotUpdated.
  ///
  /// In en, this message translates to:
  /// **'Eye scan not updated!'**
  String get triageErrorEyeScanNotUpdated;

  /// No description provided for @triageLeftEyeString.
  ///
  /// In en, this message translates to:
  /// **'Left Eye'**
  String get triageLeftEyeString;

  /// No description provided for @triageRightEyeString.
  ///
  /// In en, this message translates to:
  /// **'Right Eye'**
  String get triageRightEyeString;

  /// No description provided for @vaEyeTest.
  ///
  /// In en, this message translates to:
  /// **'Eye Test'**
  String get vaEyeTest;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @vaSwipeUp.
  ///
  /// In en, this message translates to:
  /// **'Swipe Up'**
  String get vaSwipeUp;

  /// No description provided for @vaSwipeDown.
  ///
  /// In en, this message translates to:
  /// **'Swipe Down'**
  String get vaSwipeDown;

  /// No description provided for @vaSwipeLeft.
  ///
  /// In en, this message translates to:
  /// **'Swipe Left'**
  String get vaSwipeLeft;

  /// No description provided for @vaSwipeRight.
  ///
  /// In en, this message translates to:
  /// **'Swipe Right'**
  String get vaSwipeRight;

  /// No description provided for @vaSwipeGestureError.
  ///
  /// In en, this message translates to:
  /// **'Invalid swipe gesture. Please try again.'**
  String get vaSwipeGestureError;

  /// No description provided for @permissionNotGranted.
  ///
  /// In en, this message translates to:
  /// **'Permission not granted'**
  String get permissionNotGranted;

  /// No description provided for @serviceNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service not available'**
  String get serviceNotAvailable;

  /// No description provided for @vaDistanceToFace.
  ///
  /// In en, this message translates to:
  /// **'Distance to Face'**
  String get vaDistanceToFace;

  /// No description provided for @vaBringFaceInsideBox.
  ///
  /// In en, this message translates to:
  /// **'Bring your face inside the box'**
  String get vaBringFaceInsideBox;

  /// No description provided for @startAssessment.
  ///
  /// In en, this message translates to:
  /// **'Start Assessment'**
  String get startAssessment;

  /// No description provided for @optoAddPatientInfo.
  ///
  /// In en, this message translates to:
  /// **'Add Patient Information'**
  String get optoAddPatientInfo;

  /// No description provided for @loggedOutMessage.
  ///
  /// In en, this message translates to:
  /// **'You have been logged out'**
  String get loggedOutMessage;

  /// No description provided for @optoLogoutError.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we encountered a logout error in the mobile app.'**
  String get optoLogoutError;

  /// No description provided for @optoLoggingOut.
  ///
  /// In en, this message translates to:
  /// **'Logging out...'**
  String get optoLoggingOut;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @optoGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Let\'s get started'**
  String get optoGetStarted;

  /// No description provided for @optoCompletedTests.
  ///
  /// In en, this message translates to:
  /// **'Completed tests'**
  String get optoCompletedTests;

  /// No description provided for @optoThisMonth.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get optoThisMonth;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @optoAssessmentHistory.
  ///
  /// In en, this message translates to:
  /// **'Assessment History'**
  String get optoAssessmentHistory;

  /// No description provided for @optoEyeAssessments.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessments'**
  String get optoEyeAssessments;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'FeedBack'**
  String get feedback;

  /// No description provided for @optoImproveApp.
  ///
  /// In en, this message translates to:
  /// **'We would like your feedback to improve our application'**
  String get optoImproveApp;

  /// No description provided for @assessments.
  ///
  /// In en, this message translates to:
  /// **'Assessments'**
  String get assessments;

  /// No description provided for @optoPatientAssistance.
  ///
  /// In en, this message translates to:
  /// **'Did the patient need assistance?'**
  String get optoPatientAssistance;

  /// No description provided for @optoVisualAcuity.
  ///
  /// In en, this message translates to:
  /// **'Visual Acuity'**
  String get optoVisualAcuity;

  /// No description provided for @optoPatientAided.
  ///
  /// In en, this message translates to:
  /// **'Was the patient Aided?'**
  String get optoPatientAided;

  /// No description provided for @optoEyeScan.
  ///
  /// In en, this message translates to:
  /// **'Eye Scan'**
  String get optoEyeScan;

  /// No description provided for @optoLeaveFeedback.
  ///
  /// In en, this message translates to:
  /// **'Please leave your feedback below'**
  String get optoLeaveFeedback;

  /// No description provided for @optoNoInternet.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get optoNoInternet;

  /// No description provided for @optoCheckInternet.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection and try again'**
  String get optoCheckInternet;

  /// No description provided for @optoSearchPatientId.
  ///
  /// In en, this message translates to:
  /// **'Search Patient ID'**
  String get optoSearchPatientId;

  /// No description provided for @optoRecentAssessments.
  ///
  /// In en, this message translates to:
  /// **'Recent Assessments'**
  String get optoRecentAssessments;

  /// No description provided for @optoSelectDateRange.
  ///
  /// In en, this message translates to:
  /// **'Please select a date range'**
  String get optoSelectDateRange;

  /// No description provided for @optoDataNotFound.
  ///
  /// In en, this message translates to:
  /// **'Data not found for this search'**
  String get optoDataNotFound;

  /// No description provided for @optoAssessmentReport.
  ///
  /// In en, this message translates to:
  /// **'Assessment Report'**
  String get optoAssessmentReport;

  /// No description provided for @optoPID.
  ///
  /// In en, this message translates to:
  /// **'PID'**
  String get optoPID;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @patientAssessmentAndTest.
  ///
  /// In en, this message translates to:
  /// **'Patient Assessment and Test'**
  String get patientAssessmentAndTest;

  /// No description provided for @patientSelfTestReport.
  ///
  /// In en, this message translates to:
  /// **'Self Test Report'**
  String get patientSelfTestReport;

  /// No description provided for @patientClinicalReport.
  ///
  /// In en, this message translates to:
  /// **'Clinical Report'**
  String get patientClinicalReport;

  /// No description provided for @patientAppointmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointment'**
  String get patientAppointmentTitle;

  /// No description provided for @patientBookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment'**
  String get patientBookAppointment;

  /// No description provided for @patientAppointmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your Appointments'**
  String get patientAppointmentSubtitle;

  /// No description provided for @patientTelephoneConsultation.
  ///
  /// In en, this message translates to:
  /// **'Telephone Consultation'**
  String get patientTelephoneConsultation;

  /// No description provided for @patientAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get patientAddress;

  /// No description provided for @patientReschedule.
  ///
  /// In en, this message translates to:
  /// **'Reschedule'**
  String get patientReschedule;

  /// No description provided for @patientCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get patientCancel;

  /// No description provided for @patientPID.
  ///
  /// In en, this message translates to:
  /// **'PID'**
  String get patientPID;

  /// No description provided for @patientReportID.
  ///
  /// In en, this message translates to:
  /// **'Report ID'**
  String get patientReportID;

  /// No description provided for @patientHideDetailedReport.
  ///
  /// In en, this message translates to:
  /// **'Hide Detailed Report'**
  String get patientHideDetailedReport;

  /// No description provided for @patientShowDetailedReport.
  ///
  /// In en, this message translates to:
  /// **'Show Detailed Report'**
  String get patientShowDetailedReport;

  /// No description provided for @patientEID.
  ///
  /// In en, this message translates to:
  /// **'EID'**
  String get patientEID;

  /// No description provided for @patientViewHistoryButton.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get patientViewHistoryButton;

  /// No description provided for @patientViewReportButton.
  ///
  /// In en, this message translates to:
  /// **'View Report'**
  String get patientViewReportButton;

  /// No description provided for @patientNoMoreData.
  ///
  /// In en, this message translates to:
  /// **'No more data'**
  String get patientNoMoreData;

  /// No description provided for @patientErrorFetchingReport.
  ///
  /// In en, this message translates to:
  /// **'Error in fetching report'**
  String get patientErrorFetchingReport;

  /// No description provided for @patientTimeline.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get patientTimeline;

  /// No description provided for @patientRoutineCheckup.
  ///
  /// In en, this message translates to:
  /// **'Routine Checkup'**
  String get patientRoutineCheckup;

  /// No description provided for @patientAssessmentID.
  ///
  /// In en, this message translates to:
  /// **'Assessment ID'**
  String get patientAssessmentID;

  /// No description provided for @patientStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get patientStartDate;

  /// No description provided for @patientIVRAssessment.
  ///
  /// In en, this message translates to:
  /// **'IVR Assessment'**
  String get patientIVRAssessment;

  /// No description provided for @patientEarlyConsultationRecommended.
  ///
  /// In en, this message translates to:
  /// **'Early Consultation Recommended'**
  String get patientEarlyConsultationRecommended;

  /// No description provided for @patientCataractEyeReport.
  ///
  /// In en, this message translates to:
  /// **'Cataract Eye Report'**
  String get patientCataractEyeReport;

  /// No description provided for @patientRedEyeReport.
  ///
  /// In en, this message translates to:
  /// **'Red Eye Report'**
  String get patientRedEyeReport;

  /// No description provided for @patientScanAgain.
  ///
  /// In en, this message translates to:
  /// **'Scan Again'**
  String get patientScanAgain;

  /// No description provided for @patientStepsToScan.
  ///
  /// In en, this message translates to:
  /// **'Steps to do the retinal scanning'**
  String get patientStepsToScan;

  /// No description provided for @patientProceedToScan.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Scan'**
  String get patientProceedToScan;

  /// No description provided for @patientSkipAndProceedToScan.
  ///
  /// In en, this message translates to:
  /// **'Skip & Proceed to Scan'**
  String get patientSkipAndProceedToScan;

  /// No description provided for @patientEyeScanner.
  ///
  /// In en, this message translates to:
  /// **'Eye Scanner'**
  String get patientEyeScanner;

  /// No description provided for @patientErrorSelectCamera.
  ///
  /// In en, this message translates to:
  /// **'Select a camera first!'**
  String get patientErrorSelectCamera;

  /// No description provided for @patientEyeBoxText.
  ///
  /// In en, this message translates to:
  /// **'Eye Box Text'**
  String get patientEyeBoxText;

  /// No description provided for @patientLoggedOut.
  ///
  /// In en, this message translates to:
  /// **'You have been logged out'**
  String get patientLoggedOut;

  /// No description provided for @patientLogoutError.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we encountered a logout error in the mobile app.'**
  String get patientLogoutError;

  /// No description provided for @patientUpdateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get patientUpdateProfile;

  /// No description provided for @patientEdit.
  ///
  /// In en, this message translates to:
  /// **'edit'**
  String get patientEdit;

  /// No description provided for @patientProfileNotUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile not updated'**
  String get patientProfileNotUpdated;

  /// No description provided for @patientProfileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated'**
  String get patientProfileUpdated;

  /// No description provided for @patientReportUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Report not available'**
  String get patientReportUnavailable;

  /// No description provided for @patientClinicalReportNotFound.
  ///
  /// In en, this message translates to:
  /// **'Clinical Report not found'**
  String get patientClinicalReportNotFound;

  /// No description provided for @patientRID.
  ///
  /// In en, this message translates to:
  /// **'RID'**
  String get patientRID;

  /// No description provided for @patientUpdateUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Update not available at this moment'**
  String get patientUpdateUnavailable;

  /// No description provided for @vgAddEvent.
  ///
  /// In en, this message translates to:
  /// **'Add Event'**
  String get vgAddEvent;

  /// No description provided for @vgUploadingImageAddingEvent.
  ///
  /// In en, this message translates to:
  /// **'Uploading Image and adding event'**
  String get vgUploadingImageAddingEvent;

  /// No description provided for @vgEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Event Title'**
  String get vgEventTitle;

  /// No description provided for @vgPleaseEnterEndTime.
  ///
  /// In en, this message translates to:
  /// **'Please Enter End time'**
  String get vgPleaseEnterEndTime;

  /// No description provided for @vgShouldNotContainSpecialCharacter.
  ///
  /// In en, this message translates to:
  /// **'Should not contain any special character'**
  String get vgShouldNotContainSpecialCharacter;

  /// No description provided for @vgEventDescription.
  ///
  /// In en, this message translates to:
  /// **'Event Description'**
  String get vgEventDescription;

  /// No description provided for @vgAddPatient.
  ///
  /// In en, this message translates to:
  /// **'Add Patient'**
  String get vgAddPatient;

  /// No description provided for @vgPatients.
  ///
  /// In en, this message translates to:
  /// **'Patients'**
  String get vgPatients;

  /// No description provided for @vgDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get vgDetails;

  /// No description provided for @vgTeammates.
  ///
  /// In en, this message translates to:
  /// **'Teammates'**
  String get vgTeammates;

  /// No description provided for @vgEyeAssessment.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessment'**
  String get vgEyeAssessment;

  /// No description provided for @vgStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get vgStart;

  /// No description provided for @vgEyeAssessmentDescription.
  ///
  /// In en, this message translates to:
  /// **'Get the eye problems of you, your friends, and family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.'**
  String get vgEyeAssessmentDescription;

  /// No description provided for @vgLogoutMessage.
  ///
  /// In en, this message translates to:
  /// **'You have been logged out'**
  String get vgLogoutMessage;

  /// No description provided for @vgLogoutErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we encountered a logout error in the mobile app.'**
  String get vgLogoutErrorMessage;

  /// No description provided for @vgWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get vgWelcome;

  /// No description provided for @vgServices.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get vgServices;

  /// No description provided for @vgEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get vgEvents;

  /// No description provided for @vgViewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get vgViewAll;

  /// No description provided for @vtAssessmentReport.
  ///
  /// In en, this message translates to:
  /// **'Assessment Report - EA'**
  String get vtAssessmentReport;

  /// No description provided for @vtRemarks.
  ///
  /// In en, this message translates to:
  /// **'Remarks'**
  String get vtRemarks;

  /// No description provided for @vtNoPatientFound.
  ///
  /// In en, this message translates to:
  /// **'No patient found'**
  String get vtNoPatientFound;

  /// No description provided for @vtClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get vtClose;

  /// No description provided for @vtBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get vtBack;

  /// No description provided for @vtSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get vtSubmit;

  /// No description provided for @vtSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get vtSomethingWentWrong;

  /// No description provided for @vtAssessmentClosedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Assessment Closed Successfully'**
  String get vtAssessmentClosedSuccessfully;

  /// No description provided for @vtEyeScan.
  ///
  /// In en, this message translates to:
  /// **'Eye Scan'**
  String get vtEyeScan;

  /// No description provided for @vtDashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get vtDashboard;

  /// No description provided for @vtRegisterPatient.
  ///
  /// In en, this message translates to:
  /// **'Register Patient'**
  String get vtRegisterPatient;

  /// No description provided for @vtTriage.
  ///
  /// In en, this message translates to:
  /// **'Triage'**
  String get vtTriage;

  /// No description provided for @vtMarkMyAvailability.
  ///
  /// In en, this message translates to:
  /// **'Mark My Availability'**
  String get vtMarkMyAvailability;

  /// No description provided for @vtIVRCallHistory.
  ///
  /// In en, this message translates to:
  /// **'IVR Call History'**
  String get vtIVRCallHistory;

  /// No description provided for @vtMarked.
  ///
  /// In en, this message translates to:
  /// **'Marked'**
  String get vtMarked;

  /// No description provided for @vtPreliminaryAssessment.
  ///
  /// In en, this message translates to:
  /// **'Preliminary Assessment'**
  String get vtPreliminaryAssessment;

  /// No description provided for @vtAge.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get vtAge;

  /// No description provided for @vtGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get vtGender;

  /// No description provided for @vtAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get vtAddress;

  /// No description provided for @vtProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get vtProfile;

  /// No description provided for @vtLogoutMessage.
  ///
  /// In en, this message translates to:
  /// **'You have been logged out'**
  String get vtLogoutMessage;

  /// No description provided for @vtLogoutError.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we encountered a logout error in the mobile app.'**
  String get vtLogoutError;

  /// No description provided for @vtError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get vtError;

  /// No description provided for @vtPatient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get vtPatient;

  /// No description provided for @vtMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get vtMobile;

  /// No description provided for @vtAssessmentID.
  ///
  /// In en, this message translates to:
  /// **'Assessment ID'**
  String get vtAssessmentID;

  /// No description provided for @vtStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get vtStatus;

  /// No description provided for @vtTimeline.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get vtTimeline;

  /// No description provided for @vtCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get vtCategory;

  /// No description provided for @vtNoDataFound.
  ///
  /// In en, this message translates to:
  /// **'No Data Found'**
  String get vtNoDataFound;

  /// No description provided for @appCameraCapture.
  ///
  /// In en, this message translates to:
  /// **'Capture'**
  String get appCameraCapture;

  /// No description provided for @appCameraRetake.
  ///
  /// In en, this message translates to:
  /// **'Retake'**
  String get appCameraRetake;

  /// No description provided for @appCameraUsePhoto.
  ///
  /// In en, this message translates to:
  /// **'Use Photo'**
  String get appCameraUsePhoto;

  /// No description provided for @appCameraCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get appCameraCancel;

  /// No description provided for @appCameraNotFound.
  ///
  /// In en, this message translates to:
  /// **'Camera not found'**
  String get appCameraNotFound;

  /// No description provided for @appCameraException.
  ///
  /// In en, this message translates to:
  /// **'Camera Exception'**
  String get appCameraException;

  /// No description provided for @appCameraProgressMessage.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get appCameraProgressMessage;

  /// No description provided for @internetLostNoConnection.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get internetLostNoConnection;

  /// No description provided for @internetLostRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get internetLostRetry;

  /// No description provided for @secureJailbreak.
  ///
  /// In en, this message translates to:
  /// **'It seems your device is jailbroken'**
  String get secureJailbreak;

  /// No description provided for @secureRestrictedAccess.
  ///
  /// In en, this message translates to:
  /// **'For security reasons, access to this app is restricted on jailbroken devices.'**
  String get secureRestrictedAccess;

  /// No description provided for @secureExitApp.
  ///
  /// In en, this message translates to:
  /// **'Exit App'**
  String get secureExitApp;

  /// No description provided for @sharedErrorPageIssues.
  ///
  /// In en, this message translates to:
  /// **'We are facing some issues. Please try again later.'**
  String get sharedErrorPageIssues;

  /// No description provided for @appointmentBookingTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointment Booking'**
  String get appointmentBookingTitle;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon...'**
  String get comingSoon;

  /// No description provided for @miniappService.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get miniappService;

  /// No description provided for @miniappConsole.
  ///
  /// In en, this message translates to:
  /// **'Console'**
  String get miniappConsole;

  /// No description provided for @roleChooseYourRole.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Role'**
  String get roleChooseYourRole;

  /// No description provided for @roleNote.
  ///
  /// In en, this message translates to:
  /// **'Note: You cannot change your role inside the app.'**
  String get roleNote;

  /// No description provided for @roleConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get roleConfirm;

  /// No description provided for @roleEyeCareProfessional.
  ///
  /// In en, this message translates to:
  /// **'EYE CARE PROFESSIONAL'**
  String get roleEyeCareProfessional;

  /// No description provided for @roleVisionTechnician.
  ///
  /// In en, this message translates to:
  /// **'VISION TECHNICIAN'**
  String get roleVisionTechnician;

  /// No description provided for @rolePatient.
  ///
  /// In en, this message translates to:
  /// **'PATIENT'**
  String get rolePatient;

  /// No description provided for @roleVisionGuardian.
  ///
  /// In en, this message translates to:
  /// **'VISION GUARDIAN'**
  String get roleVisionGuardian;

  /// No description provided for @vtSearchText.
  ///
  /// In en, this message translates to:
  /// **'Search by Patient ID, Mobile No or Name'**
  String get vtSearchText;

  /// No description provided for @emptyPatientsInfo.
  ///
  /// In en, this message translates to:
  /// **'Start searching for patients to view their details .. '**
  String get emptyPatientsInfo;

  /// No description provided for @vtPersonalDetails.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get vtPersonalDetails;

  /// No description provided for @vtHprId.
  ///
  /// In en, this message translates to:
  /// **'HPR ID'**
  String get vtHprId;

  /// No description provided for @vtEmailId.
  ///
  /// In en, this message translates to:
  /// **'Email ID'**
  String get vtEmailId;

  /// No description provided for @vtEducationalQualification.
  ///
  /// In en, this message translates to:
  /// **'Educational Qualification'**
  String get vtEducationalQualification;

  /// No description provided for @vtAddressAndDoorNumber.
  ///
  /// In en, this message translates to:
  /// **'Address and Door Number'**
  String get vtAddressAndDoorNumber;

  /// No description provided for @vtCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get vtCity;

  /// No description provided for @vtState.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get vtState;

  /// No description provided for @vtPincode.
  ///
  /// In en, this message translates to:
  /// **'Pincode'**
  String get vtPincode;

  /// No description provided for @vtOrganisationDetails.
  ///
  /// In en, this message translates to:
  /// **'Organisation Details'**
  String get vtOrganisationDetails;

  /// No description provided for @vtOrgId.
  ///
  /// In en, this message translates to:
  /// **'Org ID'**
  String get vtOrgId;

  /// No description provided for @vtFacilityType.
  ///
  /// In en, this message translates to:
  /// **'Facility Type'**
  String get vtFacilityType;

  /// No description provided for @vtAssessments.
  ///
  /// In en, this message translates to:
  /// **'Assessments'**
  String get vtAssessments;

  /// No description provided for @vtNoAssessmentsFound.
  ///
  /// In en, this message translates to:
  /// **'No Assessments Found'**
  String get vtNoAssessmentsFound;

  /// No description provided for @vtAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get vtAnalytics;

  /// No description provided for @vtTotalCases.
  ///
  /// In en, this message translates to:
  /// **'Total Cases'**
  String get vtTotalCases;

  /// No description provided for @vtIvrCalls.
  ///
  /// In en, this message translates to:
  /// **'IVR Calls'**
  String get vtIvrCalls;

  /// No description provided for @vtClinicVisits.
  ///
  /// In en, this message translates to:
  /// **'Clinic Visits'**
  String get vtClinicVisits;

  /// No description provided for @vtCasesClosed.
  ///
  /// In en, this message translates to:
  /// **'Cases Closed'**
  String get vtCasesClosed;

  /// No description provided for @vtCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get vtCritical;

  /// No description provided for @vtRegular.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get vtRegular;

  /// No description provided for @vtAvgClosureTime.
  ///
  /// In en, this message translates to:
  /// **'Avg. Closure Time'**
  String get vtAvgClosureTime;

  /// No description provided for @vtByAge.
  ///
  /// In en, this message translates to:
  /// **'By Age'**
  String get vtByAge;

  /// No description provided for @vtByGender.
  ///
  /// In en, this message translates to:
  /// **'By Gender'**
  String get vtByGender;

  /// No description provided for @vtSymptoms.
  ///
  /// In en, this message translates to:
  /// **'Symptoms'**
  String get vtSymptoms;

  /// No description provided for @vtSearchByMobileNo.
  ///
  /// In en, this message translates to:
  /// **'Search by Mobile No.'**
  String get vtSearchByMobileNo;

  /// No description provided for @vtInvalidMobileNo.
  ///
  /// In en, this message translates to:
  /// **'Invalid Mobile No.'**
  String get vtInvalidMobileNo;

  /// No description provided for @vtCallLogEmpty.
  ///
  /// In en, this message translates to:
  /// **'Call Log is Empty.. No Calls made yet!!'**
  String get vtCallLogEmpty;

  /// No description provided for @vtNoDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Data available'**
  String get vtNoDataAvailable;

  /// No description provided for @vtToday.
  ///
  /// In en, this message translates to:
  /// **'TODAY'**
  String get vtToday;

  /// No description provided for @vtYesterday.
  ///
  /// In en, this message translates to:
  /// **'YESTERDAY'**
  String get vtYesterday;

  /// No description provided for @vtIvrCallNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'IVR call not available.. Try Again!!'**
  String get vtIvrCallNotAvailable;

  /// No description provided for @vtMarkUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Mark as Unavailable'**
  String get vtMarkUnavailable;

  /// No description provided for @vtStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get vtStartDate;

  /// No description provided for @vtEndDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get vtEndDate;

  /// No description provided for @vtStartTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get vtStartTime;

  /// No description provided for @vtEndTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get vtEndTime;

  /// No description provided for @vtAddRemarksOptional.
  ///
  /// In en, this message translates to:
  /// **'Add Remarks (Optional)'**
  String get vtAddRemarksOptional;

  /// No description provided for @vtSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get vtSave;

  /// No description provided for @vtCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get vtCancel;

  /// No description provided for @vtPleaseEnterRemark.
  ///
  /// In en, this message translates to:
  /// **'Please enter Remark'**
  String get vtPleaseEnterRemark;

  /// No description provided for @vtAssessment.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get vtAssessment;

  /// No description provided for @vtIvrSelections.
  ///
  /// In en, this message translates to:
  /// **'IVR Selections'**
  String get vtIvrSelections;

  /// No description provided for @vtLanguageSelection.
  ///
  /// In en, this message translates to:
  /// **'Language Selection'**
  String get vtLanguageSelection;

  /// No description provided for @vtEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get vtEnglish;

  /// No description provided for @vtPatientType.
  ///
  /// In en, this message translates to:
  /// **'Patient Type'**
  String get vtPatientType;

  /// No description provided for @vtProblem.
  ///
  /// In en, this message translates to:
  /// **'Problem'**
  String get vtProblem;

  /// No description provided for @vtEyeSight.
  ///
  /// In en, this message translates to:
  /// **'Eye Sight'**
  String get vtEyeSight;

  /// No description provided for @vtVisionTechnician.
  ///
  /// In en, this message translates to:
  /// **'Vision Technician'**
  String get vtVisionTechnician;

  /// No description provided for @vtRecommendedCenter.
  ///
  /// In en, this message translates to:
  /// **'Recommended Center'**
  String get vtRecommendedCenter;

  /// No description provided for @vtAssessmentIDEA.
  ///
  /// In en, this message translates to:
  /// **'Assessment ID: EA'**
  String get vtAssessmentIDEA;

  /// No description provided for @vtPid.
  ///
  /// In en, this message translates to:
  /// **'PID: OP'**
  String get vtPid;

  /// No description provided for @vtAssessmentTimeline.
  ///
  /// In en, this message translates to:
  /// **'Assessment Timeline'**
  String get vtAssessmentTimeline;

  /// No description provided for @vtPleaseSelectEncounter.
  ///
  /// In en, this message translates to:
  /// **'Please select an encounter'**
  String get vtPleaseSelectEncounter;

  /// No description provided for @vtTimelineEA.
  ///
  /// In en, this message translates to:
  /// **'Timeline: EA'**
  String get vtTimelineEA;

  /// No description provided for @vtGeneralInformation.
  ///
  /// In en, this message translates to:
  /// **'General Information'**
  String get vtGeneralInformation;

  /// No description provided for @vtDateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get vtDateOfBirth;

  /// No description provided for @vtAssessmentEA.
  ///
  /// In en, this message translates to:
  /// **'Assessment EA'**
  String get vtAssessmentEA;

  /// No description provided for @vtNotRegistered.
  ///
  /// In en, this message translates to:
  /// **'You are not registered in the system. Please give a missed call to'**
  String get vtNotRegistered;

  /// No description provided for @vtOkay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get vtOkay;

  /// No description provided for @vtTakePicture.
  ///
  /// In en, this message translates to:
  /// **'Take Picture'**
  String get vtTakePicture;

  /// No description provided for @vtEye.
  ///
  /// In en, this message translates to:
  /// **'Eye'**
  String get vtEye;

  /// No description provided for @vtRetakePicture.
  ///
  /// In en, this message translates to:
  /// **'Retake Picture'**
  String get vtRetakePicture;

  /// No description provided for @vtNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get vtNext;

  /// No description provided for @vtMrCode.
  ///
  /// In en, this message translates to:
  /// **'MR Code'**
  String get vtMrCode;

  /// No description provided for @vtEnterMrCode.
  ///
  /// In en, this message translates to:
  /// **'Enter MR Code Here'**
  String get vtEnterMrCode;

  /// No description provided for @vtPleaseEnterMrCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter MR Code'**
  String get vtPleaseEnterMrCode;

  /// No description provided for @vtNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get vtNote;

  /// No description provided for @vtEnterRecommendations.
  ///
  /// In en, this message translates to:
  /// **'Enter Recommendations Here'**
  String get vtEnterRecommendations;

  /// No description provided for @vtSolutions.
  ///
  /// In en, this message translates to:
  /// **'Solutions(s)'**
  String get vtSolutions;

  /// No description provided for @vtLeftEye.
  ///
  /// In en, this message translates to:
  /// **'Left Eye'**
  String get vtLeftEye;

  /// No description provided for @vtRightEye.
  ///
  /// In en, this message translates to:
  /// **'Right Eye'**
  String get vtRightEye;

  /// No description provided for @vtBothEyes.
  ///
  /// In en, this message translates to:
  /// **'Both Eyes'**
  String get vtBothEyes;

  /// No description provided for @vtFilterBy.
  ///
  /// In en, this message translates to:
  /// **'Filter by'**
  String get vtFilterBy;

  /// No description provided for @vtLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get vtLocation;

  /// No description provided for @vtEnterTime.
  ///
  /// In en, this message translates to:
  /// **'Please enter Time'**
  String get vtEnterTime;

  /// No description provided for @vtEnterDate.
  ///
  /// In en, this message translates to:
  /// **'Please enter Date'**
  String get vtEnterDate;

  /// No description provided for @vtRecommendation.
  ///
  /// In en, this message translates to:
  /// **'Recommendation'**
  String get vtRecommendation;

  /// No description provided for @vtVisitPrimaryCenter.
  ///
  /// In en, this message translates to:
  /// **'Visit Primary Center'**
  String get vtVisitPrimaryCenter;

  /// No description provided for @vtVisitSecondaryCenter.
  ///
  /// In en, this message translates to:
  /// **'Visit Secondary Center'**
  String get vtVisitSecondaryCenter;

  /// No description provided for @vtVisitTertiaryCenter.
  ///
  /// In en, this message translates to:
  /// **'Visit Tertiary Center'**
  String get vtVisitTertiaryCenter;

  /// No description provided for @vtVisitCenterOfExcellence.
  ///
  /// In en, this message translates to:
  /// **'Visit Center of Excellence'**
  String get vtVisitCenterOfExcellence;

  /// No description provided for @vtIvrCallQuestion.
  ///
  /// In en, this message translates to:
  /// **'Are you on IVR Call?'**
  String get vtIvrCallQuestion;

  /// No description provided for @vtYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get vtYes;

  /// No description provided for @vtNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get vtNo;

  /// No description provided for @vtRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get vtRetry;

  /// No description provided for @vtAssessmentQuestions.
  ///
  /// In en, this message translates to:
  /// **'Assessment Questions'**
  String get vtAssessmentQuestions;

  /// No description provided for @vtVisionCenter.
  ///
  /// In en, this message translates to:
  /// **'Vision Center'**
  String get vtVisionCenter;

  /// No description provided for @vtVisualAcuity.
  ///
  /// In en, this message translates to:
  /// **'Visual Acuity'**
  String get vtVisualAcuity;

  /// No description provided for @vtInvalidValue.
  ///
  /// In en, this message translates to:
  /// **'Invalid value'**
  String get vtInvalidValue;

  /// No description provided for @vtSeverity.
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get vtSeverity;

  /// No description provided for @vtNoVisionCentersFound.
  ///
  /// In en, this message translates to:
  /// **'No Vision Centers Found'**
  String get vtNoVisionCentersFound;

  /// No description provided for @vtRequestLocationPermission.
  ///
  /// In en, this message translates to:
  /// **'Request Location Permission'**
  String get vtRequestLocationPermission;

  /// No description provided for @vtAppSettings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get vtAppSettings;

  /// No description provided for @vtEnterSomeText.
  ///
  /// In en, this message translates to:
  /// **'Please enter some text'**
  String get vtEnterSomeText;

  /// No description provided for @vtPrimary.
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get vtPrimary;

  /// No description provided for @vtDependent.
  ///
  /// In en, this message translates to:
  /// **'Dependent'**
  String get vtDependent;

  /// No description provided for @vtAddMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get vtAddMember;

  /// No description provided for @vtCompleteProfile.
  ///
  /// In en, this message translates to:
  /// **'Complete Profile'**
  String get vtCompleteProfile;

  /// No description provided for @vtPatientNotRegistered.
  ///
  /// In en, this message translates to:
  /// **'Patient not registered'**
  String get vtPatientNotRegistered;

  /// No description provided for @vtPatientRegistered.
  ///
  /// In en, this message translates to:
  /// **'Patient registered'**
  String get vtPatientRegistered;

  /// No description provided for @vtDependentNotAdded.
  ///
  /// In en, this message translates to:
  /// **'Dependent not added'**
  String get vtDependentNotAdded;

  /// No description provided for @vtDependentAdded.
  ///
  /// In en, this message translates to:
  /// **'Dependent added'**
  String get vtDependentAdded;

  /// No description provided for @vtServiceNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Service Not Available'**
  String get vtServiceNotAvailable;

  /// No description provided for @vgEyeAssessments.
  ///
  /// In en, this message translates to:
  /// **'Eye Assessments'**
  String get vgEyeAssessments;

  /// No description provided for @vgTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get vgTotal;

  /// No description provided for @vgCamps.
  ///
  /// In en, this message translates to:
  /// **'Camps'**
  String get vgCamps;

  /// No description provided for @vgDoorToDoor.
  ///
  /// In en, this message translates to:
  /// **'Door to Door'**
  String get vgDoorToDoor;

  /// No description provided for @vgByGender.
  ///
  /// In en, this message translates to:
  /// **'By Gender'**
  String get vgByGender;

  /// No description provided for @vgMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get vgMale;

  /// No description provided for @vgFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get vgFemale;

  /// No description provided for @vgOthers.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get vgOthers;

  /// No description provided for @vgByAge.
  ///
  /// In en, this message translates to:
  /// **'By Age'**
  String get vgByAge;

  /// No description provided for @vgSlideAge.
  ///
  /// In en, this message translates to:
  /// **'Yrs'**
  String get vgSlideAge;

  /// No description provided for @vgSymptoms.
  ///
  /// In en, this message translates to:
  /// **'Symptoms'**
  String get vgSymptoms;

  /// No description provided for @vgRefractive.
  ///
  /// In en, this message translates to:
  /// **'Refractive'**
  String get vgRefractive;

  /// No description provided for @vgCataract.
  ///
  /// In en, this message translates to:
  /// **'Cataract'**
  String get vgCataract;

  /// No description provided for @vgGlaucoma.
  ///
  /// In en, this message translates to:
  /// **'Glaucoma'**
  String get vgGlaucoma;

  /// No description provided for @vgKeratitis.
  ///
  /// In en, this message translates to:
  /// **'Keratitis'**
  String get vgKeratitis;

  /// No description provided for @vgBlepharitis.
  ///
  /// In en, this message translates to:
  /// **'Blepharitis'**
  String get vgBlepharitis;

  /// No description provided for @vgConjunctivitis.
  ///
  /// In en, this message translates to:
  /// **'Conjunctivitis'**
  String get vgConjunctivitis;

  /// No description provided for @vgServicesCreateEvent.
  ///
  /// In en, this message translates to:
  /// **'Create\r\n\r\nEvent'**
  String get vgServicesCreateEvent;

  /// No description provided for @vgServicesEyeAssessment.
  ///
  /// In en, this message translates to:
  /// **'Eye\r\n\r\nAssessment'**
  String get vgServicesEyeAssessment;

  /// No description provided for @vgServicesRegisterPatient.
  ///
  /// In en, this message translates to:
  /// **'Register\r\n\r\nNew Patient'**
  String get vgServicesRegisterPatient;

  /// No description provided for @vgAddPatients.
  ///
  /// In en, this message translates to:
  /// **'Add Patients'**
  String get vgAddPatients;

  /// No description provided for @vgEvent.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get vgEvent;

  /// No description provided for @vgAddEventPhoto.
  ///
  /// In en, this message translates to:
  /// **'Add Event Photo'**
  String get vgAddEventPhoto;

  /// No description provided for @vgUploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get vgUploadImage;

  /// No description provided for @vgAddPhotoInstruction.
  ///
  /// In en, this message translates to:
  /// **'Add a photo of the Event which\r\n\r\nwill be shown as thumbnail'**
  String get vgAddPhotoInstruction;

  /// No description provided for @vgAddressDetails.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get vgAddressDetails;

  /// No description provided for @vgVenueName.
  ///
  /// In en, this message translates to:
  /// **'Venue Name'**
  String get vgVenueName;

  /// No description provided for @vgVenueNameError.
  ///
  /// In en, this message translates to:
  /// **'Please enter Venue name'**
  String get vgVenueNameError;

  /// No description provided for @vgVenueNameSpecialCharError.
  ///
  /// In en, this message translates to:
  /// **'Should not contain any special character'**
  String get vgVenueNameSpecialCharError;

  /// No description provided for @vgPincode.
  ///
  /// In en, this message translates to:
  /// **'Pincode'**
  String get vgPincode;

  /// No description provided for @vgPincodeError.
  ///
  /// In en, this message translates to:
  /// **'Only 6 digit pincode allowed'**
  String get vgPincodeError;

  /// No description provided for @vgCityTownVillage.
  ///
  /// In en, this message translates to:
  /// **'City/Town/Village'**
  String get vgCityTownVillage;

  /// No description provided for @vgCityTownVillageError.
  ///
  /// In en, this message translates to:
  /// **'Please enter City/Town/Village name'**
  String get vgCityTownVillageError;

  /// No description provided for @vgCityTownVillageSpecialCharError.
  ///
  /// In en, this message translates to:
  /// **'Should not contain any special character'**
  String get vgCityTownVillageSpecialCharError;

  /// No description provided for @vgCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get vgCancel;

  /// No description provided for @vgSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get vgSave;

  /// No description provided for @vgAddEventImage.
  ///
  /// In en, this message translates to:
  /// **'Add Event Image'**
  String get vgAddEventImage;

  /// No description provided for @vgEventAdded.
  ///
  /// In en, this message translates to:
  /// **'Event added'**
  String get vgEventAdded;

  /// No description provided for @vgEventNotAdded.
  ///
  /// In en, this message translates to:
  /// **'Event not added'**
  String get vgEventNotAdded;

  /// No description provided for @vgDateTime.
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get vgDateTime;

  /// No description provided for @vgStartDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get vgStartDate;

  /// No description provided for @vgStartTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get vgStartTime;

  /// No description provided for @vgLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get vgLocation;

  /// No description provided for @vgViewOnMap.
  ///
  /// In en, this message translates to:
  /// **'View On Map'**
  String get vgViewOnMap;

  /// No description provided for @vgAddressAndDoorNumber.
  ///
  /// In en, this message translates to:
  /// **'Address and Door Number'**
  String get vgAddressAndDoorNumber;

  /// No description provided for @vgSubDistrictName.
  ///
  /// In en, this message translates to:
  /// **'Sub District Name'**
  String get vgSubDistrictName;

  /// No description provided for @vgVillageName.
  ///
  /// In en, this message translates to:
  /// **'Village Name'**
  String get vgVillageName;

  /// No description provided for @vgDistrictName.
  ///
  /// In en, this message translates to:
  /// **'District Name'**
  String get vgDistrictName;

  /// No description provided for @vgAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get vgAbout;

  /// No description provided for @vgEditEvent.
  ///
  /// In en, this message translates to:
  /// **'Edit Event'**
  String get vgEditEvent;

  /// No description provided for @vgDeleteEvent.
  ///
  /// In en, this message translates to:
  /// **'Delete Event'**
  String get vgDeleteEvent;

  /// No description provided for @vgErrorFetchingEventDetails.
  ///
  /// In en, this message translates to:
  /// **'Error fetching event details'**
  String get vgErrorFetchingEventDetails;

  /// No description provided for @vgNoPatientRegistered.
  ///
  /// In en, this message translates to:
  /// **'No Patient with Name is registered. Click on the  Register Patient.'**
  String get vgNoPatientRegistered;

  /// No description provided for @vgRegisterPatient.
  ///
  /// In en, this message translates to:
  /// **'Register Patient'**
  String get vgRegisterPatient;

  /// No description provided for @vgPrimary.
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get vgPrimary;

  /// No description provided for @vgDependent.
  ///
  /// In en, this message translates to:
  /// **'Dependent'**
  String get vgDependent;

  /// No description provided for @vgAddMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get vgAddMember;

  /// No description provided for @vgCompleteProfile.
  ///
  /// In en, this message translates to:
  /// **'Complete Profile'**
  String get vgCompleteProfile;

  /// No description provided for @vgStartAssessment.
  ///
  /// In en, this message translates to:
  /// **'Start Assessment'**
  String get vgStartAssessment;

  /// No description provided for @vgSearchPatientByPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Search Patient by Phone Number'**
  String get vgSearchPatientByPhoneNumber;

  /// No description provided for @vgInvalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get vgInvalidPhoneNumber;

  /// No description provided for @vgServerError.
  ///
  /// In en, this message translates to:
  /// **'Server Error'**
  String get vgServerError;

  /// No description provided for @vgPatient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get vgPatient;

  /// No description provided for @vgReportId.
  ///
  /// In en, this message translates to:
  /// **'Report ID'**
  String get vgReportId;

  /// No description provided for @vgNoEventFound.
  ///
  /// In en, this message translates to:
  /// **'No Event Found'**
  String get vgNoEventFound;

  /// No description provided for @vgTeamMateDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'TeamMate Deleted Successfully'**
  String get vgTeamMateDeletedSuccessfully;

  /// No description provided for @vgSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get vgSomethingWentWrong;

  /// No description provided for @vgName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get vgName;

  /// No description provided for @vgPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get vgPhoneNumber;

  /// No description provided for @vgErrorFetchingTeammatesDetails.
  ///
  /// In en, this message translates to:
  /// **'Error fetching teammates details'**
  String get vgErrorFetchingTeammatesDetails;

  /// No description provided for @vgTeamMateAddedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'TeamMate Added Successfully'**
  String get vgTeamMateAddedSuccessfully;

  /// No description provided for @vgAddTeammate.
  ///
  /// In en, this message translates to:
  /// **'Add Teammate'**
  String get vgAddTeammate;

  /// No description provided for @vgPleaseEnter.
  ///
  /// In en, this message translates to:
  /// **'Please enter'**
  String get vgPleaseEnter;

  /// No description provided for @vgPleaseEnterField.
  ///
  /// In en, this message translates to:
  /// **'Please enter field'**
  String get vgPleaseEnterField;

  /// No description provided for @vgOr.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get vgOr;

  /// No description provided for @vgSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get vgSearch;

  /// No description provided for @vgEventDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Event Deleted Successfully'**
  String get vgEventDeletedSuccessfully;

  /// No description provided for @vgEventDeletionFailed.
  ///
  /// In en, this message translates to:
  /// **'Event Deletion Failed'**
  String get vgEventDeletionFailed;

  /// No description provided for @vgEndTimeGreaterThanStartTime.
  ///
  /// In en, this message translates to:
  /// **'End time should be greater than start time'**
  String get vgEndTimeGreaterThanStartTime;

  /// No description provided for @vgNoPatientsPresent.
  ///
  /// In en, this message translates to:
  /// **'There are no patients at present. Tap on "Add Patient"'**
  String get vgNoPatientsPresent;

  /// No description provided for @textSize.
  ///
  /// In en, this message translates to:
  /// **'Text Size'**
  String get textSize;

  /// No description provided for @increase.
  ///
  /// In en, this message translates to:
  /// **'Increase'**
  String get increase;

  /// No description provided for @decrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease'**
  String get decrease;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @minimumTextSizeReached.
  ///
  /// In en, this message translates to:
  /// **'Minimum text size reached'**
  String get minimumTextSizeReached;

  /// No description provided for @maximumTextSizeReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum text size reached'**
  String get maximumTextSizeReached;

  /// No description provided for @chatClearChat.
  ///
  /// In en, this message translates to:
  /// **'Clear Chat'**
  String get chatClearChat;

  /// No description provided for @chatEyeAssessmentRecommended.
  ///
  /// In en, this message translates to:
  /// **'Eye assessment is recommended for you.'**
  String get chatEyeAssessmentRecommended;

  /// No description provided for @chatDoYouWantToTakeTheTriageEyeAssessment.
  ///
  /// In en, this message translates to:
  /// **'Do you want to take the triage eye assessment?'**
  String get chatDoYouWantToTakeTheTriageEyeAssessment;

  /// No description provided for @chatChatbotNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Chatbot is not available at the moment. Please try again later.'**
  String get chatChatbotNotAvailable;

  /// No description provided for @chatTypeHere.
  ///
  /// In en, this message translates to:
  /// **'Type here...'**
  String get chatTypeHere;

  /// No description provided for @switchProfile.
  ///
  /// In en, this message translates to:
  /// **'Switch Profile'**
  String get switchProfile;

  /// No description provided for @switchRole.
  ///
  /// In en, this message translates to:
  /// **'Switch Role'**
  String get switchRole;

  /// No description provided for @switchTenant.
  ///
  /// In en, this message translates to:
  /// **'Switch Tenant'**
  String get switchTenant;

  /// No description provided for @patientHeaderWelcomeText.
  ///
  /// In en, this message translates to:
  /// **'Welcome to SightConnect! Taking care of your vision is important, and we are here for you every step of the way.'**
  String get patientHeaderWelcomeText;

  /// No description provided for @triageTestCardHeader.
  ///
  /// In en, this message translates to:
  /// **'Your eye test is free…'**
  String get triageTestCardHeader;

  /// No description provided for @triageTestCardBody1.
  ///
  /// In en, this message translates to:
  /// **'Quickly analyse your eye symptoms'**
  String get triageTestCardBody1;

  /// No description provided for @triageTestCardBody2.
  ///
  /// In en, this message translates to:
  /// **'Identify if you may have an eye problem'**
  String get triageTestCardBody2;

  /// No description provided for @triageTestCardBody3.
  ///
  /// In en, this message translates to:
  /// **'Know when to visit your doctor'**
  String get triageTestCardBody3;

  /// No description provided for @triageTestCardButton.
  ///
  /// In en, this message translates to:
  /// **'Start Free Eye Test'**
  String get triageTestCardButton;

  /// No description provided for @myConnectionListAddMembersDescription.
  ///
  /// In en, this message translates to:
  /// **'Click the Add Members button to add your family and friends.'**
  String get myConnectionListAddMembersDescription;

  /// No description provided for @showTriageHowToProceedBottomSheetHeader.
  ///
  /// In en, this message translates to:
  /// **'How do you want to proceed?'**
  String get showTriageHowToProceedBottomSheetHeader;

  /// No description provided for @showTriageHowToProceedBottomSheetBody1.
  ///
  /// In en, this message translates to:
  /// **'I have a problem and want to validate'**
  String get showTriageHowToProceedBottomSheetBody1;

  /// No description provided for @showTriageHowToProceedBottomSheetBody2.
  ///
  /// In en, this message translates to:
  /// **'I am not sure if I have a problem'**
  String get showTriageHowToProceedBottomSheetBody2;

  /// No description provided for @showTriageHowToProceedBottomSheetBody3.
  ///
  /// In en, this message translates to:
  /// **'I have no eye issues – just want to check'**
  String get showTriageHowToProceedBottomSheetBody3;

  /// No description provided for @appDrawerToastMessageText.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we encountered a logout error in the mobile app.'**
  String get appDrawerToastMessageText;

  /// No description provided for @myConnectionListAddMembers.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get myConnectionListAddMembers;

  /// No description provided for @appDrawerReferral.
  ///
  /// In en, this message translates to:
  /// **'Referral'**
  String get appDrawerReferral;

  /// No description provided for @patientTenantDisplayPageHeader.
  ///
  /// In en, this message translates to:
  /// **'Tenants'**
  String get patientTenantDisplayPageHeader;

  /// No description provided for @patientTenantDisplayPageBody.
  ///
  /// In en, this message translates to:
  /// **'Select a Vision Center from the list'**
  String get patientTenantDisplayPageBody;

  /// No description provided for @patientTenantDisplayPageRequestLocationPermissionButton.
  ///
  /// In en, this message translates to:
  /// **'Request Location Permission'**
  String get patientTenantDisplayPageRequestLocationPermissionButton;

  /// No description provided for @referralGenerateSheetHeader.
  ///
  /// In en, this message translates to:
  /// **'Your Referral Code'**
  String get referralGenerateSheetHeader;

  /// No description provided for @referralGenerateSheetTapHereButton.
  ///
  /// In en, this message translates to:
  /// **'Have a Code? Tap Here'**
  String get referralGenerateSheetTapHereButton;

  /// No description provided for @referralGenerateSheetMyReferrals.
  ///
  /// In en, this message translates to:
  /// **'My Referrals'**
  String get referralGenerateSheetMyReferrals;

  /// No description provided for @referralGenerateSheetShareCode.
  ///
  /// In en, this message translates to:
  /// **'Share your referral code with your friends and family to avail benefits.'**
  String get referralGenerateSheetShareCode;

  /// No description provided for @referralGenerateSheetReferralGenerateError.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we\'re unable to generate a referral code at the moment.'**
  String get referralGenerateSheetReferralGenerateError;

  /// No description provided for @referralGenerateSheetShareButton.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get referralGenerateSheetShareButton;

  /// No description provided for @referralGenerateSheetCopy.
  ///
  /// In en, this message translates to:
  /// **'COPY'**
  String get referralGenerateSheetCopy;

  /// No description provided for @referralCollectSheetYourRefferalCode.
  ///
  /// In en, this message translates to:
  /// **'Your Referral Code'**
  String get referralCollectSheetYourRefferalCode;

  /// No description provided for @referralCollectSheetReferralCodeMessage.
  ///
  /// In en, this message translates to:
  /// **'Share your referral code with your friends and family to avail benefits.'**
  String get referralCollectSheetReferralCodeMessage;

  /// No description provided for @referralCollectSheetHeader.
  ///
  /// In en, this message translates to:
  /// **'Collect Referral'**
  String get referralCollectSheetHeader;

  /// No description provided for @referralCollectSheetBody.
  ///
  /// In en, this message translates to:
  /// **'Enter referral code to collect your reward'**
  String get referralCollectSheetBody;

  /// No description provided for @referralCollectSheetTextFieldHeader.
  ///
  /// In en, this message translates to:
  /// **'Referral Code'**
  String get referralCollectSheetTextFieldHeader;

  /// No description provided for @referralCollectSheetTextFieldBody.
  ///
  /// In en, this message translates to:
  /// **'Enter referral code'**
  String get referralCollectSheetTextFieldBody;

  /// No description provided for @referralCollectSheetSkipButton.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get referralCollectSheetSkipButton;

  /// No description provided for @referralCollectSheetCollectButton.
  ///
  /// In en, this message translates to:
  /// **'Collect'**
  String get referralCollectSheetCollectButton;

  /// No description provided for @referralCollectSheetError.
  ///
  /// In en, this message translates to:
  /// **'Sorry, something went wrong. Please try again.'**
  String get referralCollectSheetError;

  /// No description provided for @referralCollectSheetSuccessToast.
  ///
  /// In en, this message translates to:
  /// **'Referral code submitted successfully'**
  String get referralCollectSheetSuccessToast;

  /// No description provided for @referralCollectSheetErrorToast.
  ///
  /// In en, this message translates to:
  /// **'The referral code you entered is invalid. Please try again.'**
  String get referralCollectSheetErrorToast;

  /// No description provided for @referralStatisticsPageHeader.
  ///
  /// In en, this message translates to:
  /// **'Your Referral Statistics'**
  String get referralStatisticsPageHeader;

  /// No description provided for @referralStatisticsPageTotalReferred.
  ///
  /// In en, this message translates to:
  /// **'Total Referred'**
  String get referralStatisticsPageTotalReferred;

  /// No description provided for @referralStatisticsPageSucessfulReferred.
  ///
  /// In en, this message translates to:
  /// **'Successful Referred'**
  String get referralStatisticsPageSucessfulReferred;

  /// No description provided for @referralStatisticsPageTotalTriage.
  ///
  /// In en, this message translates to:
  /// **'Total Triage'**
  String get referralStatisticsPageTotalTriage;

  /// No description provided for @referralStatisticsPageReferFriendHeader.
  ///
  /// In en, this message translates to:
  /// **'How to refer a friend?'**
  String get referralStatisticsPageReferFriendHeader;

  /// No description provided for @referralStatisticsPageReferFriendBody1.
  ///
  /// In en, this message translates to:
  /// **'Share your referral code with your friend.'**
  String get referralStatisticsPageReferFriendBody1;

  /// No description provided for @referralStatisticsPageReferFriendBody2.
  ///
  /// In en, this message translates to:
  /// **'Your friend register using your referral code.'**
  String get referralStatisticsPageReferFriendBody2;

  /// No description provided for @referralStatisticsPageReferFriendBody3.
  ///
  /// In en, this message translates to:
  /// **'Your friend completes at least one triage test.'**
  String get referralStatisticsPageReferFriendBody3;

  /// No description provided for @referralStatisticsPageReferFriendButton.
  ///
  /// In en, this message translates to:
  /// **'Refer a Friend'**
  String get referralStatisticsPageReferFriendButton;

  /// No description provided for @referralStatisticsPageError.
  ///
  /// In en, this message translates to:
  /// **'Apologies, we\'re unable to fetch your referral statistics at the moment.'**
  String get referralStatisticsPageError;

  /// No description provided for @referralStatisticsPageRetryButton.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get referralStatisticsPageRetryButton;

  /// No description provided for @triageInstructionPageTopAppBarEyeTest.
  ///
  /// In en, this message translates to:
  /// **'Eye Test'**
  String get triageInstructionPageTopAppBarEyeTest;

  /// No description provided for @triageInstructionPageHeader.
  ///
  /// In en, this message translates to:
  /// **'What you would be doing'**
  String get triageInstructionPageHeader;

  /// No description provided for @triageInstructionPageBody1.
  ///
  /// In en, this message translates to:
  /// **'You will need to place your device at eye level.'**
  String get triageInstructionPageBody1;

  /// No description provided for @triageInstructionPageBody2.
  ///
  /// In en, this message translates to:
  /// **'You will need to select responses to questions.'**
  String get triageInstructionPageBody2;

  /// No description provided for @triageInstructionPageBody3.
  ///
  /// In en, this message translates to:
  /// **'You will need to take clear pictures of your eyes.'**
  String get triageInstructionPageBody3;

  /// No description provided for @triageInstructionPageComfortableWithSelfTest.
  ///
  /// In en, this message translates to:
  /// **'If you are comfortable with doing the test by yourself, you can proceed directly'**
  String get triageInstructionPageComfortableWithSelfTest;

  /// No description provided for @triageInstructionPageTestAssistanceRequired.
  ///
  /// In en, this message translates to:
  /// **'If you need assistance, please get someone who can help you and start.'**
  String get triageInstructionPageTestAssistanceRequired;

  /// No description provided for @triageInstructionPageIAmReadyButton.
  ///
  /// In en, this message translates to:
  /// **'I am ready'**
  String get triageInstructionPageIAmReadyButton;

  /// No description provided for @appDrawerAddReview.
  ///
  /// In en, this message translates to:
  /// **'Add Review'**
  String get appDrawerAddReview;

  /// No description provided for @optionCardNeedHelpTextButton.
  ///
  /// In en, this message translates to:
  /// **'Need help to understand this '**
  String get optionCardNeedHelpTextButton;

  /// No description provided for @triageTextTypeQuestionCounterText.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get triageTextTypeQuestionCounterText;

  /// No description provided for @vaTopAppBarNearVisionTest.
  ///
  /// In en, this message translates to:
  /// **'Near Vision Test'**
  String get vaTopAppBarNearVisionTest;

  /// No description provided for @vaDemoPageInstruction.
  ///
  /// In en, this message translates to:
  /// **'Tap on the E matching the image shown on top'**
  String get vaDemoPageInstruction;

  /// No description provided for @vaShowInstructionBottomSheetRightEyeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Cover your right eye and tap on the E matching the image on top'**
  String get vaShowInstructionBottomSheetRightEyeInstruction;

  /// No description provided for @vaShowInstructionBottomSheetLeftEyeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Cover your left eye and tap on the E matching the image on top'**
  String get vaShowInstructionBottomSheetLeftEyeInstruction;

  /// No description provided for @vaShowInstructionBottomSheetBothEyesInstruction.
  ///
  /// In en, this message translates to:
  /// **'View with both eyes and tap on the E matching the image on top'**
  String get vaShowInstructionBottomSheetBothEyesInstruction;

  /// No description provided for @vaShowInstructionBottomSheetProceedButton.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get vaShowInstructionBottomSheetProceedButton;

  /// No description provided for @touchGestureCardRightEyeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Cover your right eye and tap on the E matching the image on top'**
  String get touchGestureCardRightEyeInstruction;

  /// No description provided for @touchGestureCardLeftEyeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Cover your left eye and tap on the E matching the image on top'**
  String get touchGestureCardLeftEyeInstruction;

  /// No description provided for @touchGestureCardBothEyesInstruction.
  ///
  /// In en, this message translates to:
  /// **'View with both eyes and tap on the E matching the image on top'**
  String get touchGestureCardBothEyesInstruction;

  /// No description provided for @touchGestureCardICantSeeOutlineButton.
  ///
  /// In en, this message translates to:
  /// **'I Can’t see'**
  String get touchGestureCardICantSeeOutlineButton;

  /// No description provided for @distanceVaTopAppBarDistanceVisionTest.
  ///
  /// In en, this message translates to:
  /// **'Distance Vision Test'**
  String get distanceVaTopAppBarDistanceVisionTest;

  /// No description provided for @fakeDataSourceGetCarouselDataDescription.
  ///
  /// In en, this message translates to:
  /// **'Early detection can save your eyes'**
  String get fakeDataSourceGetCarouselDataDescription;

  /// No description provided for @fakeDataSourceGetCarouselDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Doctor says'**
  String get fakeDataSourceGetCarouselDataTitle;

  /// No description provided for @distanceNotifierProviderNoFaceDetectedError.
  ///
  /// In en, this message translates to:
  /// **'No face detected. Please face the camera 40 cm from the screen'**
  String get distanceNotifierProviderNoFaceDetectedError;

  /// No description provided for @appCameraPageTakePictureLoadingOverlayMessage.
  ///
  /// In en, this message translates to:
  /// **'Hold the camera steady…'**
  String get appCameraPageTakePictureLoadingOverlayMessage;

  /// No description provided for @appCameraPageDefaultLoadingOverlayMessage.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get appCameraPageDefaultLoadingOverlayMessage;

  /// No description provided for @topReadingCardFaceNotFoundError.
  ///
  /// In en, this message translates to:
  /// **'No Face'**
  String get topReadingCardFaceNotFoundError;

  /// No description provided for @topReadingCardLongDistanceTestMessage.
  ///
  /// In en, this message translates to:
  /// **'Position yourself 2m from the screen'**
  String get topReadingCardLongDistanceTestMessage;

  /// No description provided for @roleVolunteer.
  ///
  /// In en, this message translates to:
  /// **'VOLUNTEER'**
  String get roleVolunteer;

  /// No description provided for @patientHomePageVolunteerInviteeCardJoinUsNowButton.
  ///
  /// In en, this message translates to:
  /// **'Join Us Now'**
  String get patientHomePageVolunteerInviteeCardJoinUsNowButton;

  /// No description provided for @patientHomePageVolunteerInviteeCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Become a SightConnect Volunteer!'**
  String get patientHomePageVolunteerInviteeCardTitle;

  /// No description provided for @patientHomePageVolunteerInviteeCardDescription1.
  ///
  /// In en, this message translates to:
  /// **'Promote Preventive Eye Care'**
  String get patientHomePageVolunteerInviteeCardDescription1;

  /// No description provided for @patientHomePageVolunteerInviteeCardDescription2.
  ///
  /// In en, this message translates to:
  /// **'Engage with Communities'**
  String get patientHomePageVolunteerInviteeCardDescription2;

  /// No description provided for @patientHomePageVolunteerInviteeCardDescription3.
  ///
  /// In en, this message translates to:
  /// **'Support Health Initiatives'**
  String get patientHomePageVolunteerInviteeCardDescription3;
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