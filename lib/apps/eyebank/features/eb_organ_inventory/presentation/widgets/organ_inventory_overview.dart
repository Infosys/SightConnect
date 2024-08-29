import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final organInventoryStatsProvider = FutureProvider((ref) async {
  return {
    "day": {"in": 82, "out": 129},
    "week": {"in": 582, "out": 429},
    "month": {"in": 1582, "out": 1429},
  };
});

class OrganInventoryOverview extends ConsumerWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final organInventoryStatsAsyncValue =
        ref.watch(organInventoryStatsProvider);

    return Scaffold(
      body: organInventoryStatsAsyncValue.when(
        data: (stats) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Organ Inventory Overview',
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
                  _buildStatCard(context, 'Day', stats['day']),
                  _buildStatCard(context, 'Week', stats['week']),
                  _buildStatCard(context, 'Month', stats['month']),
                ],
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text(
            'Error: $error',
            style: const TextStyle(color: AppColor.red),
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(
      BuildContext context, String period, Map<String, int>? stats) {
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
                        'In: ${formatNumber(stats!['in']!)}',
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
                        'Out: ${formatNumber(stats['out']!)}',
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

  String formatNumber(int number) {
    if (number >= 1000000000) {
      return '${(number / 1000000000).toStringAsFixed(1)}B';
    } else if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    } else {
      return number.toString();
    }
  }
}
