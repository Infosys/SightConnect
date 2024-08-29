import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stageAnalyticsProvider = FutureProvider((ref) {
  final names =
      EBStageName.values.where((e) => e != EBStageName.UNDEFINED).toList();
  final stages = names.asMap().entries.map((entry) {
    final index = entry.key;
    final e = entry.value;
    return {
      'stageName': e.displayValue.toUpperCase(),
      'count': index * 98345,
    };
  }).toList();
  return Future.value(stages);
});

class EBStageAnalytics extends ConsumerWidget {
  const EBStageAnalytics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    final stagesAsyncValue = ref.watch(stageAnalyticsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'Stage Analytics',
                style: applyFiraSansFont(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 16),
          Container(
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
            child: stagesAsyncValue.when(
              data: (stages) => Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: stages.map((stage) {
                  return EBStageStatsTile(
                    icon: Icons.circle,
                    title: stage['stageName'].toString(),
                    value: formatNumber(stage['count'] as int),
                    color: AppColor.green,
                  );
                }).toList(),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(
                child: Text(
                  'Error: $error',
                  style: applyFiraSansFont(fontSize: 14, color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EBStageStatsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  const EBStageStatsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      padding: const EdgeInsets.all(8),
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
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color.withOpacity(0.3),
            ),
            child: Icon(
              icon,
              color: color,
              size: 18,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: applyFiraSansFont(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: applyFiraSansFont(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
