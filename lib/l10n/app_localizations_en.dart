import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String stepNumber(String current, String total) {
    return '${current} of ${total}';
  }

  @override
  String referralSmsContent(String referral) {
    return 'Hey! I\'m using SightConnect App to take care of my eyes, and you should too! Assess your eyes and get timely treatment with the SightConnect App. It\'s a unique app that brings preventive eyecare to your hands. Use my referral code ${referral} when you sign up. Get it now: https://healthconnecttech.org/install';
  }

  @override
  String loginEnterOTP(String mobileNumber) {
    return 'Please enter the OTP sent to ${mobileNumber}';
  }

  @override
  String loginResendOTPIn(String time) {
    return 'Resend in ${time}';
  }

  @override
  String patientHasAnAppointment(String patient) {
    return '${patient} has an appointment';
  }

  @override
  String vgEmptyResults(String type) {
    return 'There are no ${type}s at present. Tap on "Add ${type}"';
  }

  @override
  String vgSearchByIdName(String searchType) {
    return 'Search by ${searchType} ID, Name';
  }

  @override
  String emergencyTollFreeNumberText(String tollFreeNumber) {
    return 'In case of emergency, please call ${tollFreeNumber}';
  }

  @override
  String referralCollectSheetReferredBy(String referredBy) {
    return 'You have been referred by ${referredBy}';
  }

  @override
  String vaDistanceToFaceInstruction(int distance) {
    return 'Please ensure that the camera is ${distance} cm away from your face.';
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
  String get bothEyesString => 'Both Eyes';

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
  String get homeCarousal2Description => '\r\n\r\n7 eye problems to get tested for:\r\n\r\n \r\n\r\n• Redness of eye\r\n\r\n• Watering of eyes\r\n\r\n• White spots on eyes';

  @override
  String get homeCarousal3Title => 'Eye problems. There are many that you can\'t see';

  @override
  String get homeCarousal3Description => 'But a vision care expert can.\r\n\r\nGet eye problems identified\r\n\r\nand treated in time to avoid\r\n\r\ncomplications later';

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
  String get aboutUsDescription => 'Sightconnect is a user-friendly eye care app that helps with self-assessment and consultation over the call.\r\n\r\n\r\n\r\nAt the heart of our mission is a commitment to make eyecare accessible to all. The app is designed to be inclusive and accessible by users from all walks of life, regardless of their age, technical background, and social or economic background. The app and its content are made available in English and other local languages. It helps users to self-assess their eyes and get timely treatment advice. The app uses the latest technologies and tools to provide personalized eye care solutions to our users. It comes with a variety of features to make their life easier. ';

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
  String get eyeAssessmentStepTwo => 'Step 2 - Visual Acuity Test';

  @override
  String get eyeAssessmentStepThree => 'Step 3 - Eye Scan';

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
  String get consentPageCheckbox => 'I agree';

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
  String get assessmentResultCardAssessmentQuestions => 'Assessment\r\n\r\nQuestions';

  @override
  String get assessmentResultCardAcuityTest => 'Acuity\r\n\r\nTest';

  @override
  String get assessmentResultCardEyeScan => 'Eye\r\n\r\nScan';

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
  String get privacyPolicyTitle => 'Privacy & Data Protection Statement';

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
  String get chatBotDefaultQuerySuggestions => 'Start Eye Assessment|Common eye issues|Tips for a better eye sight';

  @override
  String get chatBotWelcomeMessage => 'Hi, How may I help you today?';

  @override
  String get poweredByText => 'Powered by';

  @override
  String get digitalHealthCard => 'Digital Public Health Stack';

  @override
  String get inviteNowText => 'Invite Now';

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
  String get triageReportInstructions => 'If you are an individual having eye related problems, you could self-declare and mention your problems here to get appropriate guidance. You could also mention the eye problems of your friends or family members here and get appropriate guidance.\r\n\r\n\r\n\r\nYou will be asked a set of questions in the following sections to understand the nature and severity of the eye problem. You will be recommended and guided with the tests to be performed and steps to follow after answering all the questions.';

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
  String get vaDistanceToFace => 'Distance to Face';

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

  @override
  String get roleChooseYourRole => 'Choose Your Role';

  @override
  String get roleNote => 'Note: You cannot change your role inside the app.';

  @override
  String get roleConfirm => 'Confirm';

  @override
  String get roleEyeCareProfessional => 'EYE CARE PROFESSIONAL';

  @override
  String get roleVisionTechnician => 'VISION TECHNICIAN';

  @override
  String get rolePatient => 'PATIENT';

  @override
  String get roleVisionGuardian => 'VISION GUARDIAN';

  @override
  String get vtSearchText => 'Search by Patient ID, Mobile No or Name';

  @override
  String get emptyPatientsInfo => 'Start searching for patients to view their details .. ';

  @override
  String get vtPersonalDetails => 'Personal Details';

  @override
  String get vtHprId => 'HPR ID';

  @override
  String get vtEmailId => 'Email ID';

  @override
  String get vtEducationalQualification => 'Educational Qualification';

  @override
  String get vtAddressAndDoorNumber => 'Address and Door Number';

  @override
  String get vtCity => 'City';

  @override
  String get vtState => 'State';

  @override
  String get vtPincode => 'Pincode';

  @override
  String get vtOrganisationDetails => 'Organisation Details';

  @override
  String get vtOrgId => 'Org ID';

  @override
  String get vtFacilityType => 'Facility Type';

  @override
  String get vtAssessments => 'Assessments';

  @override
  String get vtNoAssessmentsFound => 'No Assessments Found';

  @override
  String get vtAnalytics => 'Analytics';

  @override
  String get vtTotalCases => 'Total Cases';

  @override
  String get vtIvrCalls => 'IVR Calls';

  @override
  String get vtClinicVisits => 'Clinic Visits';

  @override
  String get vtCasesClosed => 'Cases Closed';

  @override
  String get vtCritical => 'Critical';

  @override
  String get vtRegular => 'Regular';

  @override
  String get vtAvgClosureTime => 'Avg. Closure Time';

  @override
  String get vtByAge => 'By Age';

  @override
  String get vtByGender => 'By Gender';

  @override
  String get vtSymptoms => 'Symptoms';

  @override
  String get vtSearchByMobileNo => 'Search by Mobile No.';

  @override
  String get vtInvalidMobileNo => 'Invalid Mobile No.';

  @override
  String get vtCallLogEmpty => 'Call Log is Empty.. No Calls made yet!!';

  @override
  String get vtNoDataAvailable => 'No Data available';

  @override
  String get vtToday => 'TODAY';

  @override
  String get vtYesterday => 'YESTERDAY';

  @override
  String get vtIvrCallNotAvailable => 'IVR call not available.. Try Again!!';

  @override
  String get vtMarkUnavailable => 'Mark as Unavailable';

  @override
  String get vtStartDate => 'Start Date';

  @override
  String get vtEndDate => 'End Date';

  @override
  String get vtStartTime => 'Start Time';

  @override
  String get vtEndTime => 'End Time';

  @override
  String get vtAddRemarksOptional => 'Add Remarks (Optional)';

  @override
  String get vtSave => 'Save';

  @override
  String get vtCancel => 'Cancel';

  @override
  String get vtPleaseEnterRemark => 'Please enter Remark';

  @override
  String get vtAssessment => 'Assessment';

  @override
  String get vtIvrSelections => 'IVR Selections';

  @override
  String get vtLanguageSelection => 'Language Selection';

  @override
  String get vtEnglish => 'English';

  @override
  String get vtPatientType => 'Patient Type';

  @override
  String get vtProblem => 'Problem';

  @override
  String get vtEyeSight => 'Eye Sight';

  @override
  String get vtVisionTechnician => 'Vision Technician';

  @override
  String get vtRecommendedCenter => 'Recommended Center';

  @override
  String get vtAssessmentIDEA => 'Assessment ID: EA';

  @override
  String get vtPid => 'PID: OP';

  @override
  String get vtAssessmentTimeline => 'Assessment Timeline';

  @override
  String get vtPleaseSelectEncounter => 'Please select an encounter';

  @override
  String get vtTimelineEA => 'Timeline: EA';

  @override
  String get vtGeneralInformation => 'General Information';

  @override
  String get vtDateOfBirth => 'Date of Birth';

  @override
  String get vtAssessmentEA => 'Assessment EA';

  @override
  String get vtNotRegistered => 'You are not registered in the system. Please give a missed call to';

  @override
  String get vtOkay => 'Okay';

  @override
  String get vtTakePicture => 'Take Picture';

  @override
  String get vtEye => 'Eye';

  @override
  String get vtRetakePicture => 'Retake Picture';

  @override
  String get vtNext => 'Next';

  @override
  String get vtMrCode => 'MR Code';

  @override
  String get vtEnterMrCode => 'Enter MR Code Here';

  @override
  String get vtPleaseEnterMrCode => 'Please enter MR Code';

  @override
  String get vtNote => 'Note';

  @override
  String get vtEnterRecommendations => 'Enter Recommendations Here';

  @override
  String get vtSolutions => 'Solutions(s)';

  @override
  String get vtLeftEye => 'Left Eye';

  @override
  String get vtRightEye => 'Right Eye';

  @override
  String get vtBothEyes => 'Both Eyes';

  @override
  String get vtFilterBy => 'Filter by';

  @override
  String get vtLocation => 'Location';

  @override
  String get vtEnterTime => 'Please enter Time';

  @override
  String get vtEnterDate => 'Please enter Date';

  @override
  String get vtRecommendation => 'Recommendation';

  @override
  String get vtVisitPrimaryCenter => 'Visit Primary Center';

  @override
  String get vtVisitSecondaryCenter => 'Visit Secondary Center';

  @override
  String get vtVisitTertiaryCenter => 'Visit Tertiary Center';

  @override
  String get vtVisitCenterOfExcellence => 'Visit Center of Excellence';

  @override
  String get vtIvrCallQuestion => 'Are you on IVR Call?';

  @override
  String get vtYes => 'Yes';

  @override
  String get vtNo => 'No';

  @override
  String get vtRetry => 'Retry';

  @override
  String get vtAssessmentQuestions => 'Assessment Questions';

  @override
  String get vtVisionCenter => 'Vision Center';

  @override
  String get vtVisualAcuity => 'Visual Acuity';

  @override
  String get vtInvalidValue => 'Invalid value';

  @override
  String get vtSeverity => 'Severity';

  @override
  String get vtNoVisionCentersFound => 'No Vision Centers Found';

  @override
  String get vtRequestLocationPermission => 'Request Location Permission';

  @override
  String get vtAppSettings => 'App Settings';

  @override
  String get vtEnterSomeText => 'Please enter some text';

  @override
  String get vtPrimary => 'Primary';

  @override
  String get vtDependent => 'Dependent';

  @override
  String get vtAddMember => 'Add Member';

  @override
  String get vtCompleteProfile => 'Complete Profile';

  @override
  String get vtPatientNotRegistered => 'Patient not registered';

  @override
  String get vtPatientRegistered => 'Patient registered';

  @override
  String get vtDependentNotAdded => 'Dependent not added';

  @override
  String get vtDependentAdded => 'Dependent added';

  @override
  String get vtServiceNotAvailable => 'Service Not Available';

  @override
  String get vgEyeAssessments => 'Eye Assessments';

  @override
  String get vgTotal => 'Total';

  @override
  String get vgCamps => 'Camps';

  @override
  String get vgDoorToDoor => 'Door to Door';

  @override
  String get vgByGender => 'By Gender';

  @override
  String get vgMale => 'Male';

  @override
  String get vgFemale => 'Female';

  @override
  String get vgOthers => 'Others';

  @override
  String get vgByAge => 'By Age';

  @override
  String get vgSlideAge => 'Yrs';

  @override
  String get vgSymptoms => 'Symptoms';

  @override
  String get vgRefractive => 'Refractive';

  @override
  String get vgCataract => 'Cataract';

  @override
  String get vgGlaucoma => 'Glaucoma';

  @override
  String get vgKeratitis => 'Keratitis';

  @override
  String get vgBlepharitis => 'Blepharitis';

  @override
  String get vgConjunctivitis => 'Conjunctivitis';

  @override
  String get vgServicesCreateEvent => 'Create\r\n\r\nEvent';

  @override
  String get vgServicesEyeAssessment => 'Eye\r\n\r\nAssessment';

  @override
  String get vgServicesRegisterPatient => 'Register\r\n\r\nNew Patient';

  @override
  String get vgAddPatients => 'Add Patients';

  @override
  String get vgEvent => 'Event';

  @override
  String get vgAddEventPhoto => 'Add Event Photo';

  @override
  String get vgUploadImage => 'Upload Image';

  @override
  String get vgAddPhotoInstruction => 'Add a photo of the Event which\r\n\r\nwill be shown as thumbnail';

  @override
  String get vgAddressDetails => 'Address Details';

  @override
  String get vgVenueName => 'Venue Name';

  @override
  String get vgVenueNameError => 'Please enter Venue name';

  @override
  String get vgVenueNameSpecialCharError => 'Should not contain any special character';

  @override
  String get vgPincode => 'Pincode';

  @override
  String get vgPincodeError => 'Only 6 digit pincode allowed';

  @override
  String get vgCityTownVillage => 'City/Town/Village';

  @override
  String get vgCityTownVillageError => 'Please enter City/Town/Village name';

  @override
  String get vgCityTownVillageSpecialCharError => 'Should not contain any special character';

  @override
  String get vgCancel => 'Cancel';

  @override
  String get vgSave => 'Save';

  @override
  String get vgAddEventImage => 'Add Event Image';

  @override
  String get vgEventAdded => 'Event added';

  @override
  String get vgEventNotAdded => 'Event not added';

  @override
  String get vgDateTime => 'Date & Time';

  @override
  String get vgStartDate => 'Start Date';

  @override
  String get vgStartTime => 'Start Time';

  @override
  String get vgLocation => 'Location';

  @override
  String get vgViewOnMap => 'View On Map';

  @override
  String get vgAddressAndDoorNumber => 'Address and Door Number';

  @override
  String get vgSubDistrictName => 'Sub District Name';

  @override
  String get vgVillageName => 'Village Name';

  @override
  String get vgDistrictName => 'District Name';

  @override
  String get vgAbout => 'About';

  @override
  String get vgEditEvent => 'Edit Event';

  @override
  String get vgDeleteEvent => 'Delete Event';

  @override
  String get vgErrorFetchingEventDetails => 'Error fetching event details';

  @override
  String get vgNoPatientRegistered => 'No Patient with Name is registered. Click on the  Register Patient.';

  @override
  String get vgRegisterPatient => 'Register Patient';

  @override
  String get vgPrimary => 'Primary';

  @override
  String get vgDependent => 'Dependent';

  @override
  String get vgAddMember => 'Add Member';

  @override
  String get vgCompleteProfile => 'Complete Profile';

  @override
  String get vgStartAssessment => 'Start Assessment';

  @override
  String get vgSearchPatientByPhoneNumber => 'Search Patient by Phone Number';

  @override
  String get vgInvalidPhoneNumber => 'Please enter a valid phone number';

  @override
  String get vgServerError => 'Server Error';

  @override
  String get vgPatient => 'Patient';

  @override
  String get vgReportId => 'Report ID';

  @override
  String get vgNoEventFound => 'No Event Found';

  @override
  String get vgTeamMateDeletedSuccessfully => 'TeamMate Deleted Successfully';

  @override
  String get vgSomethingWentWrong => 'Something went wrong';

  @override
  String get vgName => 'Name';

  @override
  String get vgPhoneNumber => 'Phone Number';

  @override
  String get vgErrorFetchingTeammatesDetails => 'Error fetching teammates details';

  @override
  String get vgTeamMateAddedSuccessfully => 'TeamMate Added Successfully';

  @override
  String get vgAddTeammate => 'Add Teammate';

  @override
  String get vgPleaseEnter => 'Please enter';

  @override
  String get vgPleaseEnterField => 'Please enter field';

  @override
  String get vgOr => 'Or';

  @override
  String get vgSearch => 'Search';

  @override
  String get vgEventDeletedSuccessfully => 'Event Deleted Successfully';

  @override
  String get vgEventDeletionFailed => 'Event Deletion Failed';

  @override
  String get vgEndTimeGreaterThanStartTime => 'End time should be greater than start time';

  @override
  String get vgNoPatientsPresent => 'There are no patients at present. Tap on "Add Patient"';

  @override
  String get textSize => 'Text Size';

  @override
  String get increase => 'Increase';

  @override
  String get decrease => 'Decrease';

  @override
  String get reset => 'Reset';

  @override
  String get minimumTextSizeReached => 'Minimum text size reached';

  @override
  String get maximumTextSizeReached => 'Maximum text size reached';

  @override
  String get chatClearChat => 'Clear Chat';

  @override
  String get chatEyeAssessmentRecommended => 'Eye assessment is recommended for you.';

  @override
  String get chatDoYouWantToTakeTheTriageEyeAssessment => 'Do you want to take the triage eye assessment?';

  @override
  String get chatChatbotNotAvailable => 'Chatbot is not available at the moment. Please try again later.';

  @override
  String get chatTypeHere => 'Type here...';

  @override
  String get switchProfile => 'Switch Profile';

  @override
  String get switchRole => 'Switch Role';

  @override
  String get switchTenant => 'Switch Tenant';

  @override
  String get patientHeaderWelcomeText => 'Welcome to SightConnect! Taking care of your vision is important, and we are here for you every step of the way.';

  @override
  String get triageTestCardHeader => 'Your eye test is free…';

  @override
  String get triageTestCardBody1 => 'Quickly analyse your eye symptoms';

  @override
  String get triageTestCardBody2 => 'Identify if you may have an eye problem';

  @override
  String get triageTestCardBody3 => 'Know when to visit your doctor';

  @override
  String get triageTestCardButton => 'Start Free Eye Test';

  @override
  String get myConnectionListAddMembersDescription => 'Click the Add Members button to add your family and friends.';

  @override
  String get showTriageHowToProceedBottomSheetHeader => 'How do you want to proceed?';

  @override
  String get showTriageHowToProceedBottomSheetBody1 => 'I have a problem and want to validate';

  @override
  String get showTriageHowToProceedBottomSheetBody2 => 'I am not sure if I have a problem';

  @override
  String get showTriageHowToProceedBottomSheetBody3 => 'I have no eye issues – just want to check';

  @override
  String get appDrawerToastMessageText => 'Apologies, we encountered a logout error in the mobile app.';

  @override
  String get myConnectionListAddMembers => 'Add Member';

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
}
