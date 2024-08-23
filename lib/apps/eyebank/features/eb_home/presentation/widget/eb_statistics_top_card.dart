import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EbStatisticsTopCard extends ConsumerWidget {
  const EbStatisticsTopCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      width: AppSize.width(context) - AppSize.ks * 2,
      decoration: BoxDecoration(
        color: AppColor.pureBlue,
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              // TODO : Remove this code
              // var response =
              //     await ref.read(caseRegisterRepositoryProvider).postA1Form('84456728922');
              // logger.i('Response: $response');
              // response.fold(
              //   (failure) {
              //     EyeBankErrorCard.showErrorToast(failure, context);
              //   },
              //   (data) {
              //     logger.i('Data: $data');
              //   },
              // );
            },
            child: AutoSizeText(
              'Case Overview',
              style: applyFiraSansFont(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: AppSize.km),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildColumn('7267', 'Overall', context, isSelected: true),
                    _buildColumn('-', 'Today', context),
                    _buildColumn('-', 'Active', context),
                    _buildColumn('-', 'Rejected', context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(String number, String? text, BuildContext context,
      {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: isSelected ? AppColor.primary : AppColor.pureBlue,
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text != null)
            AutoSizeText(
              text,
              style: applyRobotoFont(
                fontSize: 14,
                color: isSelected ? AppColor.white : AppColor.grey,
                fontWeight: FontWeight.w500,
              ),
              minFontSize: 10,
              maxFontSize: 14,
            ),
          AutoSizeText(
            number,
            style: applyFiraSansFont(
              fontSize: 24,
              color: isSelected ? AppColor.white : AppColor.primary,
              fontWeight: FontWeight.w500,
            ),
            minFontSize: 16,
            maxFontSize: 24,
          ),
        ],
      ),
    );
  }
}
