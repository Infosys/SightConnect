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
      /*  {
        "title": loc.homeCarousal3Title,
        "description": loc.homeCarousal3Description,
        "image": AppImages.patientCover3,
      }, */
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
