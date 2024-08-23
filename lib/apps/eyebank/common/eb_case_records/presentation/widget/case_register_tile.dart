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
    if (isCompact) {
      return _CompactCard(
        item: item,
        onTap: onTap,
      );
    }
    return _DetailedCard(
      item: item,
      onTap: onTap,
    );
  }
}

class _CompactCard extends StatelessWidget {
  const _CompactCard({
    super.key,
    this.onTap,
    this.item,
  });
  final Function()? onTap;
  final ContentBriefEntity? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
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
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopRow(context, item),
          ],
        ),
      ),
    );
  }
}

class _DetailedCard extends StatelessWidget {
  const _DetailedCard({
    super.key,
    this.onTap,
    this.item,
  });

  final Function()? onTap;
  final ContentBriefEntity? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, top: 8),
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
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopRow(context, item),
            const SizedBox(height: 8),
            _buildDateInfo(context, item),
            const SizedBox(height: 8),
            _buildOrganInfo(context, item),
          ],
        ),
      ),
    );
  }
}

Widget _buildTopRow(BuildContext context, ContentBriefEntity? item) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        item?.notifierBrief?.name.capitalizeFirstOfEach() ?? "",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: " | ",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  TextSpan(
                    text: item?.notifierBrief?.contact ?? "",
                    style:
                        applyRobotoFont(fontSize: 12, color: AppColor.darkGrey),
                  ),
                ],
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              item?.organExtracted?.join(", ") ?? "",
              // _getAddress(item?.bodyLocation),
              style: applyRobotoFont(
                fontSize: 10,
                color: AppColor.red,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Case ID: ${item?.caseId ?? ""}',
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    ],
  );
}

_getAddress(BodyLocationEntity? bodyLocation) {
  return '${bodyLocation?.street ?? ""}, ${bodyLocation?.city ?? ""}, ${bodyLocation?.state ?? ""}';
}

Widget _buildDateInfo(BuildContext context, ContentBriefEntity? item) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildDateColumn(context, 'Death', item?.deathDate?.formateDate),
      _buildDateColumn(
          context, 'Intimated On ', item?.intimateDate?.formateDate),
    ],
  );
}

Widget _buildDateColumn(BuildContext context, String label, String? date) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        children: [
          Icon(
            Icons.calendar_today,
            size: 14,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: applyRobotoFont(
              fontSize: 12,
              color: AppColor.darkGrey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      const SizedBox(height: 4),
      Text(
        date ?? "",
        style: applyRobotoFont(fontSize: 12, color: AppColor.darkGrey),
      ),
    ],
  );
}

Widget _buildOrganInfo(BuildContext context, ContentBriefEntity? item) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Active Stages: ',
        style: applyRobotoFont(fontSize: 12, color: AppColor.darkGrey),
      ),
      const SizedBox(height: 4),
      Wrap(
        spacing: 4,
        runSpacing: 4,
        children: item?.activeStages
                .map((stage) =>
                    _buildOrganChip(context, stage.displayValue.toUpperCase()))
                .toList() ??
            [],
      ),
    ],
  );
}

Widget _buildOrganChip(BuildContext context, String organ) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Theme.of(context).primaryColor, width: 0.5),
    ),
    child: Text(
      organ,
      style: applyFiraSansFont(
        fontSize: 10,
        color: Theme.of(context).primaryColor,
      ),
    ),
  );
}
