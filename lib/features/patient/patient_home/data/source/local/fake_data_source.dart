import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';

List<Map<String, dynamic>> getCarouselData(AppLocalizations loc) => [
      {
        "title": 'Doctor says',
        "description": 'Early detection can save your eyes',
        "image": AppImages.patientCover4,
        "doctor": 'Dr. Mohana R',
        "designation": 'Eye Specialist, LVPEI',
      },
      // {
      //   "title": loc.homeCarousal2Title,
      //   "description": loc.homeCarousal2Description,
      //   "image": AppImages.patientCover2,
      // },
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
