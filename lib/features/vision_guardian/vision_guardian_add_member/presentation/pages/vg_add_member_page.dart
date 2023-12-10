import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/pages/vg_member_details_form_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_icon.dart';
import '../../../../../core/constants/app_size.dart';

class VisionGuardianMemberPage extends StatelessWidget {
  const VisionGuardianMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Add Member'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcon.filterIcon),
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSize.height(context) * 0.2,
            ),
            Center(
              child: Image(
                width: AppSize.width(context) * 0.55,
                image: const AssetImage(
                  "assets/images/search empty.png",
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: AppSize.width(context) * 0.7,
              ),
              child:
                  Text('There are no patients at present. Tap on “Add Member”',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: applyRobotoFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      )),
            ),
            const Spacer(),
            const BrandingWidgetH(),
          ],
        ),
      ),
    );
  }
}
