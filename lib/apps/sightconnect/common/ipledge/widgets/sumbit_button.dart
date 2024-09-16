import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/term_and_service_dialog.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SumbitButton extends StatelessWidget {
  const SumbitButton({
    super.key,
    this.onPressed,
    this.onCheckPressed,
    required this.isChecked,
  });
  final VoidCallback? onPressed;
  final Function(bool?)? onCheckPressed;

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF7FAFF),
      ),
      padding: const EdgeInsets.all(AppSize.ks),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CheckboxListTile.adaptive(
            value: true,
            enabled: false,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: onCheckPressed,
            title: InkWell(
              onTap: () {
                showTermAndServiceDialog(context);
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'You have already agreed to the privacy policy & terms of service',
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: ' Read more',
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.ks),
          ElevatedButton(
            onPressed: !isChecked ? null : onPressed,
            child: const Text('Pledge'),
          ),
        ],
      ),
    );
  }
}
