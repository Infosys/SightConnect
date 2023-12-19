import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessments_and_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assements_cards.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentsAndTestsPage extends HookConsumerWidget {
  const AssessmentsAndTestsPage({super.key});
  
    

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    
    var model = ref.watch(assessmentsAndTestProvider);
    useEffect(() {
      logger.f("use effect called");
      ref.refresh(getEyeTriageReport(model.selectedUser.id));
      return null; // Cleanup function, will be called when widget is disposed
    }, [model.selectedUser]);
    
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Assessments and Tests"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Here is a quick view of the assessments done so far.",
              style: applyRobotoFont(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "All",
                        style: applyRobotoFont(
                          color: AppColor.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.kswidth,
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: AppColor.black.withOpacity(0.6),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                      vertical: 0,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: model.selectedUser.name,
                        onChanged: (newValue) {
                          model.setSelectedUser = newValue;
                        },
                        icon: const Icon(
                          CupertinoIcons.chevron_down,
                          color: AppColor.black,
                        ),
                        iconSize: 18,
                        elevation: 0,
                        dropdownColor: AppColor.white,
                        items: model
                            .getUsers()
                            .map((TriageReportUserEntity person) {
                          return DropdownMenuItem<String>(
                            enabled: true,
                            value: person.name,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                (person.image.isEmpty)
                                    ? const CircleAvatar(
                                        backgroundColor: AppColor.lightGrey,
                                      )
                                    : CachedNetworkImage(
                                        imageUrl: person.image,
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.cover,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                CircleAvatar(
                                          backgroundImage: imageProvider,
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const CircleAvatar(
                                          backgroundColor: AppColor.lightGrey,
                                        ),
                                      ),
                                const SizedBox(width: 8),
                                Text(
                                  person.name,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.kmheight),
            Consumer(
              builder: (context, ref, child) {
              
                return ref
                    .watch(getEyeTriageReport(model.selectedUser.id))
                    .when(
                  data: (data) {
                    return Expanded(
                      child: AssessmentCards(
                        data: data,
                      ),
                    );
                  },
                  error: (error, _) {
                    return  Text("No Data Found $error");
                  },
                  loading: () {
                    return const Center(
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
