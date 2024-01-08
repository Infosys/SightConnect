import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<Map<String, dynamic>> getCarouselData(AppLocalizations loc) => [
      {
        "title": loc.homeCarousal1Title,
        "description": loc.homeCarousal1Description,
        "image": AppImages.patientCover,
      },
      {
        "title": loc.homeCarousal2Title,
        "description": loc.homeCarousal2Description,
        "image": AppImages.patientCover2,
      },
      {
        "title": loc.homeCarousal3Title,
        "description": loc.homeCarousal3Description,
        "image": AppImages.patientCover3,
      },
    ];

List<Map<String, dynamic>> getRecentServices(AppLocalizations loc) => [
      {
        "id": "eye_assessment",
        "icon": AppIcon.triage,
        "text": loc.recentServicesEyeAssessment,
        "color": AppColor.paleYellow,
      },
      {
        "id": "visual_acuity_test",
        "icon": AppIcon.acuityTest,
        "text": loc.recentServicesVisualAcuityTest,
        "color": AppColor.lavanderBlue
      },
      // {
      //   "icon": AppIcon.eyeScanner,
      //   "text": "Eye Scanner",
      //   "color": AppColor.bisque,
      // },
    ];

var eyeCampList = [
  {
    "image": AppImages.eyeCampImage,
    "info":
        "LVPEI Vision Centre conducts a Free Vision Screening Camp at Saroor Nagar, Hyderabad, covering residents in the local community.",
    "date": "24 Jul, 2022. 10:00 AM"
  },
  {
    "image": AppImages.eyeCampImage,
    "info":
        "LVPEI Vision Centre conducts a Free Vision Screening Camp at Saroor Nagar, Hyderabad, covering residents in the local community.",
    "date": "24 Jul, 2022. 10:00 AM"
  },
];

var goodToKnow = [
  {
    "image": AppImages.goodToKnowOne,
    "name":
        "The eye is the window to the world, at the same time, it is the window of the soul",
  },
  {
    "image": AppImages.discover,
    "name":
        "Myopia Education Program successfully organized at Kode Venkatadri Chowdary campus, Vijayawada",
  },
];

var campagins = [
  {
    "image": AppImages.campaignBgOne,
    "title": "Impact of LVPEI Eye Health Pyramid",
    "description":
        "It is heart-warming to share the story of Varun, a 7-month-old born with Gl..",
  },
  {
    "image": AppImages.campaignBgTwo,
    "title": "In pursuit of healthy and happy ageing",
    "description":
        "This lovely picture of 72 year old Mrs Premalata Mohapatra is simply heart-…",
  },
];
