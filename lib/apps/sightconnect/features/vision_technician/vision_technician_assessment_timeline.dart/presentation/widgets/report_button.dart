import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReportButton extends HookWidget {
  const ReportButton({
    super.key,
    required this.fileName,
    required this.onTap,
  });

  final String fileName;
  final Future<void> Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: isLoading.value
          ? null
          : () async {
              isLoading.value = true;
              await onTap();
              isLoading.value = false;
            },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.file_open,
            color: AppColor.primary,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            fileName,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.primary,
              decoration: TextDecoration.underline,
            ),
          ),
          if (isLoading.value)
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
        ],
      ),
    );
  }
}
