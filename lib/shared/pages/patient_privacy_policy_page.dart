import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/constants/app_size.dart';

class PatientPrivacyPolicyPage extends HookWidget {
  const PatientPrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(
        title: Text(loc.privacyPolicyTitle),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            onPressed: null,
            icon: const Icon(Icons.check),
            label: Text(loc.privacyPolicyBottomAppBarLabel),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/base_bg.png"),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(AppSize.kmradius),
            ),
            padding: const EdgeInsets.all(14),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Icon(
                        Icons.arrow_right,
                      ),
                    ),
                    Expanded(
                      flex: 9,
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyPurposeOfProcessingSubTitle,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(height: 20),
                Column(
                    children: loc.privacyPolicyPurposeOfProcessingDescription
                        .split("|")
                        .map((e) => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                  child: Icon(
                                    Icons.arrow_right,
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
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
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyDataRecipientsTitle,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyDataSubjectRightsDescription,
                  softWrap: true,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyRightToWithdrawTitle,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyRightToWithdrawDescription,
                  softWrap: true,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(height: 20),
                Text(
                  loc.privacyPolicyAcknowledgement,
                  softWrap: true,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
