import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EBCaseCard extends StatelessWidget {
  final ContentBriefEntity item;
  final bool isCompact;
  final VoidCallback? onTap;

  const EBCaseCard({
    Key? key,
    required this.item,
    this.isCompact = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.all(8.0),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 4,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                _buildDetailColumn('ID', item.encounterId ?? ''),
                const SizedBox(width: 8),
                _buildDetailColumn(
                    'Intimate Date', item.intimateDate.formateDate),
                const SizedBox(width: 8),
                _buildDetailColumn(
                    'Notifier Contact', item.notifierBrief?.contact ?? ''),
                const SizedBox(width: 8),
                _buildDetailColumn(
                    'Notifier Name', item.notifierBrief?.name ?? ''),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runAlignment: WrapAlignment.spaceBetween,
                    runSpacing: 8,
                    children: [
                      if (item.activeStages.isEmpty)
                        ..._buildActiveStageChips(
                          ["CASE CLOSED"],
                          AppColor.grey,
                        ),
                      ..._buildActiveStageChips(
                        item.activeStages
                            .map((e) => e.displayValue.toUpperCase())
                            .toList(),
                        AppColor.primary,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => _showDetails(context),
                  child: Text(
                    'Details',
                    style: applyRobotoFont(
                      fontSize: 12.0,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            runAlignment: WrapAlignment.spaceBetween,
            children: [
              ..._buildActiveStageChips(
                item.organExtracted ?? [],
                AppColor.red,
              ),
              _buildDetailColumn('Case ID', item.caseId ?? ''),
              _buildDetailColumn('Encounter ID', item.encounterId ?? ''),
              _buildDetailColumn('Intimate Date',
                  item.intimateDate.formatDateTimeWithFullMonthName),
              _buildDetailColumn(
                  'Notifier Name', item.notifierBrief?.name ?? ''),
              _buildDetailColumn(
                  'Notifier Contact', item.notifierBrief?.contact ?? ''),
              _buildDetailColumn('Donor Name', item.donorBrief?.name ?? ''),
              _buildDetailColumn(
                  'Donor Contact', item.donorBrief?.contact ?? ''),
              _buildDetailColumn(
                  'Death Date', item.deathDate.formatDateTimeWithFullMonthName),
              _buildDetailColumn(
                  'Body Location', item.bodyLocation?.addressLine1 ?? ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (item.activeStages.isEmpty)
                    ..._buildActiveStageChips(
                      ["CASE CLOSED"],
                      AppColor.grey,
                    ),
                  ..._buildActiveStageChips(
                    item.activeStages.map((e) {
                      return e.displayValue.toUpperCase();
                    }).toList(),
                    AppColor.primary,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildActiveStageChips(
    List<String> activeStages,
    Color color,
  ) {
    return activeStages.map((stage) {
      return Container(
        margin: const EdgeInsets.only(right: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          stage,
          style: applyRobotoFont(
            fontSize: 10.0,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }).toList();
  }

  Widget _buildDetailColumn(String label, dynamic value) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 120,
        maxHeight: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 10.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4.0),
          Flexible(
            child: Text(
              value.toString(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
