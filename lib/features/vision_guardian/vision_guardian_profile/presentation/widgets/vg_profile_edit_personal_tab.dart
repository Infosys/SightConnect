import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_details_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VgProfileEditPersonalTab extends HookConsumerWidget {
  const VgProfileEditPersonalTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianDetailsProvider);

    int gender = data.gender == "Male"
        ? 1
        : data.gender == "Female"
            ? 2
            : 3;
    var selectedValue = useState<int>(gender);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppSize.km),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile Photo (Optional)",
              style: applyFiraSansFont(fontSize: 18),
            ),
            Card(
              elevation: 1,
              child: Row(
                children: [
                  SizedBox(
                    width: AppSize.width(context) * 0.3,
                    height: 120,
                    child: Container(
                      padding: const EdgeInsets.all(AppSize.km),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColor.darkGrey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: SvgPicture.asset(
                        AppIcon.navProfile,
                        colorFilter: const ColorFilter.mode(
                            AppColor.lightGrey, BlendMode.color),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(AppSize.km),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Click to add your profile photo",
                          style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primary),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.km * 1.5,
            ),
            Text(
              "Personal Details",
              style: applyFiraSansFont(fontSize: 18),
            ),
            const SizedBox(
              height: AppSize.km * 1.5,
            ),
            Card(
              elevation: 1,
              child: Container(
                padding: const EdgeInsets.all(AppSize.kl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: data.name.value.text,
                      onChanged: (value) {
                        data.name.text = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Text(
                          "First Name",
                          style: applyFiraSansFont(),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.middleName.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Middle Name",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.lastName.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Last Name",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Gender",
                          style: applyRobotoFont(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: 100,
                            child: RadioListTile<int>(
                              visualDensity: VisualDensity.compact,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Male",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              value: 1,
                              groupValue: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                                data.setGender = 'Male';
                              },
                            ),
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<int>(
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              "Female",
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                            value: 2,
                            groupValue: selectedValue.value,
                            onChanged: (value) {
                              selectedValue.value = value!;
                              data.setGender = 'Female';
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<int>(
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              "Other",
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                            value: 3,
                            groupValue: selectedValue.value,
                            onChanged: (value) {
                              selectedValue.value = value!;
                              data.setGender = 'Other';
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "HPR ID (Optional)",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.mobileNumber.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Mobile Number",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Email ID",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.name.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Education Qualification",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Text(
              "Address",
              style: applyFiraSansFont(fontSize: 18),
            ),
            Card(
              elevation: 1,
              child: Container(
                padding: const EdgeInsets.all(AppSize.kl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: data.doorNo.text,
                      onChanged: (value) {
                        data.name.text = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Text(
                          "Door Number and Street",
                          style: applyFiraSansFont(),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.subDistrict.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Subdistrict",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.district.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "District",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.city.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "City",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.state.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "State",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.pincode.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Pincode",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Text(
              "Work Location",
              style: applyFiraSansFont(fontSize: 18),
            ),
            Card(
              elevation: 1,
              child: Container(
                padding: const EdgeInsets.all(AppSize.kl),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      initialValue: data.name.text,
                      onChanged: (value) {
                        data.name.text = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Text(
                          "Village Code",
                          style: applyFiraSansFont(),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.name.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Village",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.name.value.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Subdistrict",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "District",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "City",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "State",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.km * 1.5,
                    ),
                    TextFormField(
                      initialValue: data.abhaid.text,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Pincde",
                            style: applyFiraSansFont(),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: applyRobotoFont(
                            fontWeight: FontWeight.w500, color: AppColor.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: applyRobotoFont(
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
