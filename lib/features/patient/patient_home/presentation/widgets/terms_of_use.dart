import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TermsOfUsePage extends HookWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<bool>(false);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(CupertinoIcons.chevron_back),
          ),
          title: Text(
            "Terms of Use",
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    AppImages.termsOfUse,
                    height: AppSize.height(context) * 0.25,
                    width: AppSize.width(context),
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
                  const BrandingWidget(),
                ]),
          ),
        ));
  }
}
