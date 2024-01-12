import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/pages/vg_member_details_form_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/provider/vg_member_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_date_range_picker.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_search.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';

class VisionGuardianMemberPage extends HookConsumerWidget {
  const VisionGuardianMemberPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<String> filterValue = useState("All");

    List<VisionGuardianEyeAssessmentPatientModel> event =
        ref.watch(visionGuardianMemberDetailsProvider).casesCritical;
    List<String> addMemberFilters =
        ref.watch(visionGuardianMemberDetailsProvider).addMemberFilters;

    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Add Member'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianAddMemberSearch(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
          /* IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcon.filterIcon),
            ), */
        ],
        leadingIcon: InkWell(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VisionGuardianMemberDetailsPage(),
            ),
          );
        },
        child: Container(
          width: AppSize.width(context) * 0.35,
          height: AppSize.height(context) * 0.06,
          padding: const EdgeInsets.only(bottom: AppSize.ksheight - 1),
          margin: const EdgeInsets.only(bottom: AppSize.klheight),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.yellow,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: AppColor.black,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: '+ ',
                      style: applyRobotoFont(
                          fontSize: 21,
                          color: AppColor.black,
                          fontWeight: FontWeight.w300)),
                  TextSpan(
                    text: 'Add Member',
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
     
      body: (event.isEmpty)
          ? const VisionGuardianAddMemberResultCard()
          : Padding(
              padding: const EdgeInsets.all(AppSize.kspadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(context) * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          border: Border.all(color: AppColor.grey),
                          borderRadius:
                              BorderRadius.circular(AppSize.klradius / 2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: filterValue.value,
                            items: addMemberFilters.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              filterValue.value = value.toString();
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.klwidth,
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppSize.kspadding / 2,
                              vertical: AppSize.kspadding / 2),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(context) * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            border: Border.all(color: AppColor.grey),
                            borderRadius:
                                BorderRadius.circular(AppSize.klradius / 2),
                          ),
                          child: const VgAddMemberDateRangePicker(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  VisionGuardianAddMemberPatientsCard(
                    model: event,
                  ),
                ],
              ),
            ),
    );
  }
}
