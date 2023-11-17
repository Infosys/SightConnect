import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivacyPolicyPage extends HookWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<bool>(false);
    return Scaffold(
        appBar: const CustomAppbar(
          title: Text("Privacy Policy"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: SvgPicture.asset(
                      AppImages.privacyPolicy,
                      height: AppSize.height(context) * 0.25,
                      width: AppSize.width(context),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived remaining.',
                    softWrap: true,
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem Ipsum',
                    softWrap: true,
                    textAlign: TextAlign.left,
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived remaining.',
                    softWrap: true,
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem Ipsum',
                    softWrap: true,
                    textAlign: TextAlign.left,
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived remaining.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived remaining.\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived remaining.',
                    softWrap: true,
                    style: applyRobotoFont(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text.rich(
                      const TextSpan(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.blue,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Checkbox(
                      value: selectedValue.value,
                      onChanged: (value) {
                        selectedValue.value = value!;
                      },
                    ),
                    title: Text(
                      'I agree to the terms and conditions',
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("I Agree"),
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.kmheight,
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                            },
                            child: const Text("I Disagree"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const BrandingWidgetH(),
                ]),
          ),
        ));
  }
}
