import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/eb_organ_inventory_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/providers/organ_timeline_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganInventoryOverview extends ConsumerWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final organInventoryStatsAsyncValue =
        ref.watch(ebOrganInventoryAnalyticsProvder);

    return Scaffold(
      body: organInventoryStatsAsyncValue.when(
        data: (stats) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Organ Inventory Summary',
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    _buildStatCard(context, 'Day', stats.day),
                    _buildStatCard(context, 'Week', stats.week),
                    _buildStatCard(context, 'Month', stats.month),
                  ],
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          logger.e(error);
          String msg = "";
          if (error is EBFailure) {
            msg = error.errorMessage;
          } else {
            msg = "An error occurred. Please try again later.";
          }
          return Center(child: Text(msg));
        },
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String period, Day? stats) {
    return Container(
      width: AppSize.width(context) * 0.7,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            period,
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Icons.arrow_downward, color: Colors.green),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        'In: ${stats?.dayIn?.toString().formatNumber() ?? '0'}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.green),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Icon(Icons.arrow_upward, color: AppColor.red),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        'Out: ${stats?.out?.toString().formatNumber() ?? '0'}',
                        style:
                            const TextStyle(fontSize: 16, color: AppColor.red),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
