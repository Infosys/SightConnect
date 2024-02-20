import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

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
  String get questionnaireTitle => 'Eye Assessment Questions';

  @override
  String get questionnaireExitDialog => 'Answering these questions will help in identifying your eye problems. Do you really wish to exit?';

  @override
  String get visualAcuityTitle => 'Visual Acuity Test';

  @override
  String get visualAcuityDescription => 'A visual acuity test is an eye exam that checks how well you see the details of a letter or symbol from a specific distance. Do this quick test now!';

  @override
  String get visualAcuityHowToPerform => 'How to perform the visual acuity test?';

  @override
  String get visualAcuityViewStepsToPerform => 'View Steps to perform Visual Acuity Test';

  @override
  String get visualAcuityCompletionDialog => 'Done! Visual Acuity Test is completed for both eyes. You need to capture your eye photos next.';

  @override
  String get visualAcuityExitDialog => 'Visual acuity is an important test to understand about your eye problem. Do you really wish to exit?';

  @override
  String get swipeGestureTab => 'Swipe Gesture';

  @override
  String get voiceAssistTab => 'Voice Assist';

  @override
  String get distanceString => 'distance';

  @override
  String get leftEyeString => 'Left Eye';

  @override
  String get rightEyeString => 'Right Eye';

  @override
  String get bothEyeString => 'Both Eye';

  @override
  String get visualAcuityLeftEyeHeader => 'Test 2 - Left Eye';

  @override
  String get visualAcuityLeftEyeInstructions => 'Without pressing on the eyelid, cover the RIGHT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.';

  @override
  String get visualAcuityRightEyeHeader => 'Test 1 - Right Eye';

  @override
  String get visualAcuityRightEyeInstructions => 'Without pressing on the eyelid, cover the LEFT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.';

  @override
  String get visualAcuityBothEyeHeader => 'Test 3 - Both Eye';

  @override
  String get visualAcuityBothEyeInstructions => 'Do not cover any of your eyes and view the symbols that appear next with both eyes.';

  @override
  String get overlayHeaderDirection => 'Direction';

  @override
  String get overlayDescription => 'Here is how you understand the directions for each symbol.';

  @override
  String get overlaySymbolDirectionText => 'Symbol Direction : ';

  @override
  String get directionDown => 'Down';

  @override
  String get directionUp => 'Up';

  @override
  String get directionLeft => 'Left';

  @override
  String get directionRight => 'Right';

  @override
  String get dontShowAgainString => 'Don\'t show again';

  @override
  String get visualAcuityCarouselTitle => 'Steps to perform Visual Acuity Test';

  @override
  String get eyeScanTitle => 'Eye Scan';

  @override
  String get eyeScanDescription => 'You are close! Just one more test to go. Capture the photos of your eyes next.';

  @override
  String get eyeScanHowToPerform => 'How to scan your eyes?';

  @override
  String get eyeScanViewStepsToPerform => 'View steps to know how to scan your eyes.';

  @override
  String get eyeScanExitDialog => 'Eye Scan helps to understand more about your eye problem. Do you really wish to exit?';

  @override
  String get captureRightEyeString => 'Capture Right Eye';

  @override
  String get captureLeftEyeString => 'Capture Left Eye';

  @override
  String get skipButton => 'Skip';

  @override
  String get startTestText => 'Start Test';

  @override
  String get continueButton => 'Continue';

  @override
  String get startButton => 'Start';

  @override
  String get nextButton => 'Next';

  @override
  String get proceedButton => 'Proceed';

  @override
  String get yesButton => 'Yes';

  @override
  String get noButton => 'No';

  @override
  String get exitButton => 'Exit';

  @override
  String get okButton => 'Okay';

  @override
  String get knowMoreButton => 'Know More';

  @override
  String get seeAllButton => 'See All';

  @override
  String get tryAgainButton => 'Try Again';

  @override
  String get shareNowButton => 'Share Now';

  @override
  String get retryButton => 'Retry';

  @override
  String get homeCarousal1Title => 'Cataract Prevalence and Its Associated Factors among Adult Aged 40 Years and above';

  @override
  String get homeCarousal1Description => 'Schematic presentation of sampling procedure on prevalence of cataract and associated factors';

  @override
  String get homeCarousal2Title => '7 eye problems not to miss out!';

  @override
  String get homeCarousal2Description => '\r\n7 eye problems to get tested for: \r\n \r\n• Redness of eye\r\n• Watering of eyes\r\n• White spots on eyes';

  @override
  String get homeCarousal3Title => 'Eye problems. There are many that you can\'t see';

  @override
  String get homeCarousal3Description => 'But a vision care expert can.\r\nGet eye problems identified\r\nand treated in time to avoid\r\ncomplications later';

  @override
  String get myConnectionsTitle => 'My Members';

  @override
  String get myConnectionsAddMember => 'Add Member';

  @override
  String get myConnectionsServiceNotAvailable => 'Service not available';

  @override
  String get myConnectionsAdd => 'Add';

  @override
  String get recentServicesTitle => 'My Recent Services';

  @override
  String get recentServicesEyeAssessment => 'Eye Assessment';

  @override
  String get recentServicesVisualAcuityTest => 'Visual Acuity Test';

  @override
  String get nearbyVisionCentersTitle => 'Nearby Vision Centers';

  @override
  String get nearbyVisionCentersNotFound => 'No Vision Centers Found';

  @override
  String get tollFreeNumber => 'Toll Free Number';

  @override
  String get appDrawerTitle => 'Menu';

  @override
  String get appDrawerHome => 'Home';

  @override
  String get appDrawerLanguageSelection => 'Language Selection';

  @override
  String get appDrawerAccessibility => 'Accessibility Settings';

  @override
  String get appDrawerMyProfile => 'My Profile';

  @override
  String get appDrawerAssessmentsAndTests => 'Assessments and Tests';

  @override
  String get appDrawerScanner => 'QR Code Scanner';

  @override
  String get appDrawerAboutUs => 'About Us';

  @override
  String get appDrawerPrivacyPolicy => 'Privacy & Data Policy';

  @override
  String get appDrawerHelpAndSupport => 'Help and Support';

  @override
  String get appDrawerSignOut => 'Sign Out';

  @override
  String get aboutUsDescription => 'Sightconnect is a user-friendly eye care app that helps with self-assessment and consultation over the call.\r\n\r\nAt the heart of our mission is a commitment to make eyecare accessible to all. The app is designed to be inclusive and accessible by users from all walks of life, regardless of their age, technical background, and social or economic background. The app and its content are made available in English and other local languages. It helps users to self-assess their eyes and get timely treatment advice. The app uses the latest technologies and tools to provide personalized eye care solutions to our users. It comes with a variety of features to make their life easier. ';

  @override
  String get aboutUsFeaturesTitle => 'Features';

  @override
  String get aboutUsFeaturesDescription => 'In-app Eye Testing: The app allows its users to self-assess their eyes by answering few questions and getting appropriate recommendations on the next steps and the doctor to be visited. Even friends and family of users can get benefitted too. |Appointment Booking: Users can book online teleconsultations and in-clinic visits with doctors to get their eyes diagnosed. |IVR Call Services: Our IVR call services are available in English and local languages and it caters to users with basic feature phones as well. Users can dial our eye care professionals to seek instant help during an emergency or for any eye related issues. They can also call to book appointments or seek any further clarifications. |Nearby Clinics: Users can locate the eye care clinics near to them. |Prescriptions and Reports: All prescriptions and reports of users can be accessed from one place without much hassle. |Eye Camps: Users can get information about nearby eye camps to get the eyes of their friends and family tested for free. |Reminders and Alerts: Users can receive timely alerts and reminders related to their upcoming appointments, medication, reports etc. |Sharing: Users can share this app and other useful information provided within the app with their friends and family members. ';

  @override
  String get aboutUsConclusion => 'The app is developed with the help of leading eye care professionals to serve our user community better. Join us in our mission to create a brighter, healthier world. Download and Share the Sightconnect app today!';

  @override
  String get privacyPolicyDescription => 'LV Prasad Eye Institute, its subsidiaries, associates and affiliated companies (collectively referred to as “LVPEI”, “us”, “we”) are committed to process your personal data as per the laws of your jurisdiction. We hereby notify you the following information about the processing of personal data.';

  @override
  String get privacyPolicyPersonalDataTitle => 'Personal data elements collected/processed:';

  @override
  String get privacyPolicyPersonalDataDescription => 'You and your connections personal data such as (Some of these data would be optional) Mobile number, Name, Date of birth, Gender (Male/Female), Address (Pin code), patient ID, Connection, eye triage questionnaire responses, eye triage report, eye images, symptoms tagged against your eye image, Photograph, Address details such as address, district name (including District code), state name (including state code), sub district name, village name, town name, Email address, Last Name, Middle Name, Blood Group, Height, Weight, Occupation, ABHA details (as provided by you), based on your app permissions access to Camera, GPS Location, Gallery for accessing the application, full network access, view network connections, Device information.';

  @override
  String get privacyPolicyPurposeOfProcessingTitle => 'Purpose of Processing:';

  @override
  String get privacyPolicyPurposeOfProcessingDescription => 'To enable you to access our application and its features for eye related online health checkup for you and your connections (as provided by you).|To enable you to contact Vision Technicians, Ophthalmologists under LVPEI, as applicable, in case of any eye related illness/health difficulties.|For providing any eye health-related data (including reports etc.) as part of your health consultation and diagnosis and in order to contact you or your connections as part of health-related concerns.|For sharing of your eye health data with our authorized LVPEI ophthalmologists/ doctors for better diagnosis and further sharing the same with the Village Chief/ Mayor etc. (where applicable based on your GPS location) depending on the severity of the eye issue in case you are unable to reach out to/ inform the LVPEI doctors for treatment.|To provide the list of Eye clinics/ hospitals affiliated with LVPEI near you, for you to reach out to in case of any eye related problems.|For using the information such as Eye Image, symptoms related to the eye image, Age, Blood Group, Location without any identifiers to help train our machine learning or artificial intelligence models for the purpose of providing proper diagnosis in the future|For sending reminder, communication, campaign mailers, to create awareness for eye health.';

  @override
  String get privacyPolicyDataRecipientsTitle => 'Data Recipients/ Accessible to:';

  @override
  String get privacyPolicyDataRecipientsDescription => 'The personal data shared by you (including sensitive personal data) will be accessible to authorized LVPEI personnel such as Doctors/ Ophthalmologists, Vision Technicians, Vision Guardians, representatives from LVPEI, internal/external auditors, Government authorities where applicable, and our authorized service provider Infosys as applicable.';

  @override
  String get privacyPolicyDataTransferTitle => 'Data Transfer & Storage:';

  @override
  String get privacyPolicyDataTransferDescription => 'The personal data shared by you will get stored on our internal servers, our authorized service provider’s server in India.';

  @override
  String get privacyPolicyDataSecurityTitle => 'Data Security:';

  @override
  String get privacyPolicyDataSecurityDescription => 'LVPEI adopts reasonable and appropriate security practices and procedures including administrative, physical security, and technical controls in order to safeguard your Personal Data.';

  @override
  String get privacyPolicyDataRetentionTitle => 'Data Retention:';

  @override
  String get privacyPolicyDataRetentionDescription => 'Personal Data that is no longer required to be retained as per legal and business requirements will be disposed in a secure manner.';

  @override
  String get privacyPolicyDataSubjectRightsTitle => 'Data subject rights:';

  @override
  String get privacyPolicyDataSubjectRightsDescription => 'You are entitled at any time to access and rectify your personal information. In case of any requests, issues, concerns or queries you may reach out to LV Prasad Office by sending an email to <LVPEI to provide generic mail ID for DSR>. ';

  @override
  String get privacyPolicyRightToWithdrawTitle => 'Right to Withdrawal:';

  @override
  String get privacyPolicyRightToWithdrawDescription => 'Where we process your Personal Data based on your consent, you may withdraw your consent to the processing as per applicable DP laws at any time for the future. This will not affect the lawfulness of any processing operation before your withdrawal. To withdraw your consent, you may send an email to <LVPEI to provide generic mail ID for DSR>.';

  @override
  String get privacyPolicyAcknowledgement => 'By clicking the below button, you hereby acknowledge and understand that your personal data including sensitive personal data may be collected and processed in the above-mentioned manner and hereby consent to the same for the above-mentioned purposes. You also acknowledge that any personal data including sensitive personal data (other than yourself) shared by you is only after taking appropriate consent from them. You also acknowledge that you will not share any personal data (including sensitive personal data) which is not required for the above-mentioned purposes. You also acknowledge that when you are sharing minor’s personal data as their parent/ legal guardian you consent to their data collection and processing as mentioned above.';

  @override
  String get privacyPolicyBottomAppBarLabel => 'Privacy Policy Accepted';

  @override
  String get helpAndSupportReachTitle => 'Reach out to us';

  @override
  String get assessmentAndTestsSubtitle => 'Here is a quick view of the assessments done so far.';

  @override
  String get assessmentAndTestsReportsNotFound => 'No Reports Found';

  @override
  String get eyeAssessmentTitle => 'Eye Assessment';

  @override
  String get eyeAssessmentSubtitle => 'Get the eye problems of you, your friends, and, family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.';

  @override
  String get eyeAssessmentGetMemberLabel => 'Change Member';

  @override
  String get eyeAssessmentProceedButton => 'Proceed';

  @override
  String get eyeAssessmentBrightnessLabel => 'Brightness set to 80%';

  @override
  String get eyeAssessmentBrightnessError => 'Please set the brightness manually to 80%';

  @override
  String get eyeAssessmentUnsupportedQuestion => 'Question not supported yet - can this be translated as answer/feedback not available yet?';

  @override
  String get eyeAssessmentPopUpHeading => 'Assessment';

  @override
  String get eyeAssessmentPopUpBody => 'Are you having any eyesight related problem?';

  @override
  String get eyeAssessmentPopUpYesButton => 'Yes';

  @override
  String get eyeAssessmentPopUpNoButton => 'No';

  @override
  String get visualAcuityTestInstructionOne => 'Sit down comfortably in a well light location. You may feel a sudden change in brightness, don’t worry the screen is set to auto-brightness to provide optimal result';

  @override
  String get visualAcuityTestInstructionTwo => 'Make sure you are holding the device at the eye level. If you wear glasses or contact lenses, keep them on';

  @override
  String get visualAcuityTestInstructionThree => 'Position yourself 40 cm from the screen. Distance will be shown in the test screen.';

  @override
  String get visualAcuityTestInstructionFour => 'If you are testing with glasses on, cover one eye with your hand over the glasses when only one eye is tested.';

  @override
  String get skipAndProceedButton => 'Skip & Proceed to Scan';

  @override
  String get proceedToScanButton => 'Proceed to Scan';

  @override
  String get eyeAssessmentSteps => 'Steps';

  @override
  String get eyeAssessmentStepOne => 'Step 1 - Eye Assessment Questions';

  @override
  String get eyeAssessmentStepTwo => 'Step 2 - Eye Assessment Questions';

  @override
  String get eyeAssessmentStepThree => 'Step 3 - Eye Assessment Questions';

  @override
  String get eyeAssessmentOngoing => 'Ongoing';

  @override
  String get eyeAssessmentCompleted => 'Completed';

  @override
  String get eyeAssessmentPending => 'Pending';

  @override
  String get eyeAssessmentResults => 'Assessment Results';

  @override
  String get eyeAssessmentCompleteSteps => 'Complete all steps to view results';

  @override
  String get eyeAssessmentToolTip => 'Please make sure that the flash is turned off and the brightness is set to 80%';

  @override
  String get eyeScanInstructionOne => 'Hold the camera placing the face properly on the frame.';

  @override
  String get eyeScanInstructionTwo => 'Take an image of the eyes using the back camera of your phone.';

  @override
  String get eyeScanInstructionThree => 'Make sure to be in a well-lit area with the flash on.';

  @override
  String get eyeScanInstructionFour => 'For better capture and clarity, have someone else to click the picture.';

  @override
  String get eyeScanInstructionFive => 'Cover one eye with your hand and look straight ahead with the other eye while taking the picture.';

  @override
  String get eyeScanInstructionSix => 'Centre the eye inside the panel before starting the picture.';

  @override
  String get eyeScanInstructionSeven => 'Keep the eyes wide open till the flash goes off, until a ‘beep’ sound signals the end of the Photo.';

  @override
  String get eyeAssessmentNote => 'Note: The images shown here are for indication only. They may not appear the same way in real life.';

  @override
  String get agreeButton => 'I Agree';

  @override
  String get consentPageCheckbox => 'I agree to the terms and conditions';

  @override
  String get confirmButton => 'Confirm';

  @override
  String get discardButton => 'Discard';

  @override
  String get imageNotCapturedToastMessage => 'Image not Captured';

  @override
  String get eyeCaptureCompletionDialogHeading => 'Test Completed';

  @override
  String get eyeCaptureCompletionDialogBody => 'You have completed the test. Please click on the button below to view the result.';

  @override
  String get eyeCaptureCompletionDialogViewResult => 'View Result';

  @override
  String get eyeCaptureTriageSavedLocally => 'Triage Saved Locally';

  @override
  String get visualAcuityTestResults => 'Visual Acuity Test Results';

  @override
  String get assessmentResultPageMoreDetailsText => 'Visit the nearest vision center for more details. Call the toll-free number to speak to our vision technician.';

  @override
  String get assessmentReportButton => 'Eye Assessment Report';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsNotAvailable => 'No Notifications';

  @override
  String get servicesPatientCare => 'Patient Care';

  @override
  String get reportAssessmentId => 'Assessment ID';

  @override
  String get reportDateAndTime => 'Date & Time';

  @override
  String get reportSeverityAbnormal => 'Urgent Consult';

  @override
  String get reportSeverityHigh => 'Early Checkup';

  @override
  String get reportSeverityLow => 'Routine Checkup';

  @override
  String get reportDataUnavailable => 'No Data Available';

  @override
  String get reportTumblingTitle => 'Acuity Test - Tumbling E';

  @override
  String get rightCornea => 'Right Cornea';

  @override
  String get leftCornea => 'Left Cornea';

  @override
  String get myProfileGeneralInfo => 'General Information';

  @override
  String get myProfileAge => 'Age';

  @override
  String get myProfileAddress => 'Address';

  @override
  String get myProfileLine => 'Line';

  @override
  String get myProfileCity => 'City';

  @override
  String get myProfileDistrict => 'District';

  @override
  String get myProfileState => 'State';

  @override
  String get myProfilePinCode => 'PinCode';

  @override
  String get submitButton => 'Submit';

  @override
  String get swipeGestureError => 'Incorrect Swipe! Please try again.';

  @override
  String get swipeGestureCardText => 'Swipe in the direction of the symbol';

  @override
  String get assessmentResultCardAssessmentQuestions => 'Assessment\r\nQuestions';

  @override
  String get assessmentResultCardAcuityTest => 'Acuity\r\nTest';

  @override
  String get assessmentResultCardEyeScan => 'Eye\r\nScan';

  @override
  String get viewReportButton => 'View Report';

  @override
  String get updateButton => 'Update';

  @override
  String get assessmentCardUrgentConsult => 'Urgent Consult';

  @override
  String get assessmentCardRoutineCheckUp => 'Routine Checkup';

  @override
  String get assessmentCardEarlyCheckUp => 'Early Checkup';

  @override
  String get testAgainButton => 'Test Again';

  @override
  String get homeButton => 'Home';

  @override
  String get homeTriageCardTitle => 'Our eyes are the most valuable assets.';

  @override
  String get homeTriageCardDescription => 'Get them tested on time to prevent eye problems.';

  @override
  String get homeTriageCardTest => 'Start Eye Test';

  @override
  String get homeHelplineCardDescrition => 'In the event of a sudden vision loss, call this emergency helpline';

  @override
  String get inviteCardTitle => 'Invite Others';

  @override
  String get inviteCardDescription => 'Invite 5 friends and family members so that they can get their eyes assessed and prevent eye issues in the future.';

  @override
  String get inviteCardInvitation => 'Invite Now';

  @override
  String get partnerCardTitle => 'Partner';

  @override
  String get languageSelection => 'Select Language';

  @override
  String get profileTitle => 'Profile';

  @override
  String get eyeAssessmentEnterLabel => 'Enter here';

  @override
  String get profilePageAddressDetails => 'Address Details';

  @override
  String get profilePaeCheckReports => 'Check your reports';

  @override
  String get bottomNavItemEyeTest => 'Eye Test';

  @override
  String get bottomNavItemAppointment => 'Appointments';

  @override
  String get memberSelection => 'Select Member';

  @override
  String get triageAlerDialogBoxTitle => 'Select Steps to Redo';

  @override
  String get scannerTitle => 'Scanner';

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

  @override
  String get poweredByText => 'Powered by';

  @override
  String get digitalHealthCard => 'Digital Public Health Stack';

  @override
  String get inviteNowText => 'Invite Now';

  @override
  String get chatBotDefaultQuerySuggestions => 'Start Eye Assessment|Common eye issues|Tips for a better eye sight';

  @override
  String get chatBotWelcomeMessage => 'Hi, How may I help you today?';

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
