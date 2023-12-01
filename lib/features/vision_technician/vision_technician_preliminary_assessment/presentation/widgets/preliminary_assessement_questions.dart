import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/filter_checkbox.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentQuestions extends HookConsumerWidget {
  const PreliminaryAssessmentQuestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    var eyeSightProblem1 = useState([]);
    var eyeSightProblem2 = useState([]);
    var eyeIssueType = useState([]);
    var eyeSpecialistDeals = useState([]);

    useEffect(() {
      eyeIssueType.value = [
        {"type": "Loss of Vision", "checked": true},
        {"type": "Power Problem", "checked": true},
        {"type": "Neurological Problem", "checked": true},
        {"type": "Allergy", "checked": false},
        {"type": "No Eye Problem", "checked": true},
      ];

      eyeSpecialistDeals.value = [
        {"type": "Emergency consultation", "checked": true},
        {"type": "Urgent consultation", "checked": true},
        {"type": "Regular consultation", "checked": true},
        {"type": "Early consultation", "checked": false},
        {"type": "Corneal disorder", "checked": true},
        {"type": "Regular consultation", "checked": true},
        {"type": "Squint disorder", "checked": true},
        {"type": "Neurophthalmology", "checked": true},
        {"type": "Conditions of eyelids", "checked": true},
        {"type": "Conditions of retina", "checked": true},
        {"type": "Cornea and Anterior segment", "checked": true},
        {"type": "General ophthalmology", "checked": true},
        {"type": "Eye plasty", "checked": true},
        {"type": "Oculoplasty", "checked": true},
        {"type": "Children", "checked": true},
      ];

      eyeSightProblem1.value = [
        {"type": "Colored halos", "checked": true},
        {"type": "Curtain-like appearances", "checked": true},
        {"type": "Double vision", "checked": true},
        {"type": "Difficulty looking at light", "checked": false},
        {"type": "Waviness of vision", "checked": true},
        {"type": "Flashes of light", "checked": true},
        {"type": "Floaters", "checked": true},
        {"type": "Loss of field of vision", "checked": false}
      ];

      eyeSightProblem2.value = [
        {"type": "Watering of eyes", "checked": true},
        {"type": "Redness of eyes", "checked": true},
        {"type": "Sticky discharge in eyes", "checked": true},
        {"type": "White spots in black part of the eye", "checked": false},
        {"type": "Itching burning or pain in eyes", "checked": true},
        {"type": "Twitching of eyes", "checked": true},
        {"type": "Foreign body in eyes", "checked": true},
        {"type": "Frequent blinking of eyes", "checked": false},
        {"type": "Deviation of eyes", "checked": true},
        {"type": "Squeezing of eyes", "checked": false},
        {"type": "Drooping  of eyes", "checked": true},
        {"type": "Bulging of eyes", "checked": false},
        {"type": "Difference in sizes of eyes", "checked": false}
      ];

      return null;
    }, []);
    return Column(children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppSize.kmpadding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assessment Questions",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: AppSize.ksheight),
            Wrap(
              runSpacing: AppSize.klheight,
              children: [
                FilterCheckBox(
                  items: eyeSightProblem1,
                  name: "Patient has following eyesight releated problems",
                  includeInputBox: 1,
                ),
                FilterCheckBox(
                  items: eyeSightProblem2,
                  name: "Patient has following eyesight releated problems",
                  includeInputBox: 1,
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(height: AppSize.klheight),
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppSize.kmpadding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Wrap(runSpacing: AppSize.klheight, children: [
          FilterCheckBox(
            items: eyeIssueType,
            name: "Eye Issue Type",
            includeInputBox: 0,
          ),
          FilterCheckBox(
            items: eyeSpecialistDeals,
            name: "Refer To Eye Specailist Who Deals With",
            includeInputBox: 0,
          ),
          const Input(
              title: "Recommendations", keyboardType: TextInputType.multiline),
        ]),
      ),
    ]);
  }
}
