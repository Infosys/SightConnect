import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentCard extends ConsumerWidget {
  const PreliminaryAssessmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel patient =
    //     ref.read(registerNewPatientHelperProvider).patientDetails!;
    // var model = ref.watch(globalVTProvider).user;
    // var dateYear = DateTime.now().year;

    // int giveAge() {
    //   var age = int.parse(model?.patient?.yearOfBirth ?? "");
    //   return (dateYear - age).toInt();
    // }

    // String genderString =
    //     model?.patient?.gender.toString().split('.').last ?? "";
    // final address = _formateAddress(
    //   line: model?.patient?.address?.first.line ?? "",
    //   ward: model?.patient?.address?.first.ward ?? "",
    //   district: model?.patient?.address?.first.district ?? "",
    //   state: model?.patient?.address?.first.state ?? "",
    // );

    // String profileImage = model?.patient?.profilePhoto ?? "";
    String genderString = "MALE";
    const address = "";

    String profileImage = "";
    final loc = context.loc!;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kl),
      child: Wrap(
        runSpacing: AppSize.ks,
        direction: Axis.horizontal,
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              CircleAvatar(
                radius: AppSize.kl,
                // child: Imag,
                child: Image.network(
                  profileImage,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: AppSize.ks),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    "",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: AppSize.ks * 3),
          Wrap(direction: Axis.vertical, spacing: AppSize.ks, children: [
            Wrap(spacing: AppSize.km * 5, children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    loc.vtAge,
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    "",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    loc.vtGender,
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ks),
                  Text(
                    genderString,
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ]),
            Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  loc.vtAddress,
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ks),
                Text(
                  address,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
