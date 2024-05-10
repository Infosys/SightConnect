import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/triage_test_counter_indicator.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/helpers/show_triage_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TriageInstructionPage extends StatelessWidget {
  const TriageInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (value) {
        Future.delayed(Duration.zero, () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        });
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Text('Eye Test'),
                SizedBox(width: AppSize.kl * 2),
                TriageTestCounterIndicator(currentStep: 1)
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcon.accessability,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(AppSize.kl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What you would be doing',
                  style: applyFiraSansFont(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: AppSize.km),
                const IconListTile(
                  title: 'You will need to place your device at eye level.',
                ),
                const IconListTile(
                  title: 'You will need to select responses to questions.',
                ),
                const IconListTile(
                  title: 'You will need to take clear pictures of your eyes.',
                ),
                const SizedBox(height: AppSize.km),
                Text(
                  'If you are comfortable with doing the test by yourself, you can proceed directly.',
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.km),
                Text(
                  'If you need assistance, please get someone who can help you and start.',
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.kl),
                SvgPicture.asset(
                  AppImages.whatYouWouldBeDoing,
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.kl,
              vertical: AppSize.km,
            ),
            child: ElevatedButton(
              onPressed: () {
                showTriageBottomSheet(context: context);
              },
              child: const Text('I am ready'),
            ),
          )),
    );
  }
}

class IconListTile extends StatelessWidget {
  final String title;

  const IconListTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              const Icon(
                Icons.circle,
                size: 8,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
