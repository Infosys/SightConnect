import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(CupertinoIcons.chevron_back),
          ),
          title: Text(
            "About Us",
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
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
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const SizedBox(height: 20),
                Text(
                  'Sed',
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut',
                  softWrap: true,
                  style: applyRobotoFont(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                const Spacer(),
                const BrandingWidget(),
              ]),
        ));
  }
}
