import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientConsentFormPage extends HookWidget {
  const PatientConsentFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<bool>(false);
    var isLoading = useState<bool>(false);
    final loc = context.loc!;
    List<String> privacyPoints =
        loc.privacyPolicyPurposeOfProcessingDescription.split("|");
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppbar(
          title: Text(
            loc.privacyPolicyTitle,
            style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColor.black),
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
        ),
        body: Container(
          height: AppSize.height(context),
          width: AppSize.width(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.scaffoldBg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: LoadingOverlay(
            isLoading: isLoading.value,
            child: SafeArea(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: applyLightShadow(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppSize.kmradius - 5),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.kmpadding,
                      vertical: AppSize.kmpadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          loc.privacyPolicyDescription,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyPersonalDataTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Icon(
                                Icons.circle,
                                size: 6,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                loc.privacyPolicyPersonalDataDescription,
                                softWrap: true,
                                style: applyRobotoFont(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyPurposeOfProcessingTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: [
                            Text(
                              loc.privacyPolicyPurposeOfProcessingSubTitle,
                              style: applyRobotoFont(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                                children: privacyPoints
                                    .map((e) => Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(top: 6),
                                              child: Icon(
                                                Icons.circle,
                                                size: 6,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 11,
                                            ),
                                            Flexible(
                                              child: Text(
                                                e,
                                                softWrap: true,
                                                style: applyRobotoFont(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ))
                                    .toList()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataRecipientsTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          loc.privacyPolicyDataRecipientsDescription,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataTransferTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          loc.privacyPolicyDataTransferDescription,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataSecurityTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataSecurityDescription,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataRetentionTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          loc.privacyPolicyDataRetentionDescription,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyDataSubjectRightsTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            style: const TextStyle(
                                color: AppColor.black), //apply style to all
                            children: [
                              TextSpan(
                                  text: loc
                                      .privacyPolicyDataSubjectRightsDescription,
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              TextSpan(
                                  text: AppText.lvpeiEmail,
                                  style: applyRobotoFont(
                                      color: AppColor.blue,
                                      decoration: TextDecoration.combine(
                                          [TextDecoration.underline]),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          loc.privacyPolicyRightToWithdrawTitle,
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: applyFiraSansFont(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            style: const TextStyle(
                                color: AppColor.black), //apply style to all
                            children: [
                              TextSpan(
                                  text: loc
                                      .privacyPolicyRightToWithdrawDescription,
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14)),
                              TextSpan(
                                text: AppText.lvpeiEmail,
                                style: applyRobotoFont(
                                    color: AppColor.blue,
                                    decoration: TextDecoration.combine(
                                      [TextDecoration.underline],
                                    ),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          loc.privacyPolicyAcknowledgement,
                          softWrap: true,
                          style: applyRobotoFont(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                              },
                            ),
                            Text(
                              loc.consentPageCheckbox,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Consumer(
                                builder: (context, ref, child) {
                                  return Expanded(
                                    child: ElevatedButton(
                                      onPressed: selectedValue.value
                                          ? () async {
                                              final navigator =
                                                  Navigator.of(context);
                                              final model = ref
                                                  .read(initializationProvider);

                                              try {
                                                isLoading.value = true;
                                                await model.sumbitConsent();
                                                navigator.pop(true);
                                              } catch (e) {
                                                logger.e(e);

                                                Fluttertoast.showToast(
                                                  msg: loc.somethingWentWrong,
                                                );
                                              } finally {
                                                isLoading.value = false;
                                              }
                                            }
                                          : null,
                                      child: Text(loc.agreeButton),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
