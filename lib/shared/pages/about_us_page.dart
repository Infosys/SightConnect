import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text(
          "About Us",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              AppImages.aboutUs,
            ),
            const SizedBox(height: 20),
            Text(
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut',
              softWrap: true,
              style: applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text(
              'Sed',
              softWrap: true,
              textAlign: TextAlign.left,
              style: applyRobotoFont(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Text(
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut',
              softWrap: true,
              style: applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            const Spacer(),
            const BrandingWidgetH(),
          ],
        ),
      ),
    );
  }
}
