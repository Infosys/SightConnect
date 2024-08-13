import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseConnector extends StatelessWidget {
  final EBTimeLineCaseModel event;

  const CaseConnector({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return SolidLineConnector(color: _getStatusColor(event.status));
  }

  Color _getStatusColor(EBCaseStatus status) {
    return switch (status) {
      EBCaseStatus.COMPLETED => AppColor.green,
      EBCaseStatus.IN_PROGRESS => AppColor.primary,
      EBCaseStatus.PENDING => AppColor.orange,
      _ => Colors.grey
    };
  }
}

class CompletedCard extends StatelessWidget {
  final EBTimeLineCaseModel event;
  final VoidCallback? onTap;
  final bool isNested;

  const CompletedCard({
    super.key,
    required this.event,
    this.onTap,
    required this.isNested,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 12.0,
        ),
        padding: const EdgeInsets.all(16.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoColumn(
                  icon: Icons.date_range,
                  label: "Start Date",
                  value: event.initiateDate.formateDate,
                ),
                _buildInfoColumn(
                  icon: Icons.update,
                  label: "Last Modified",
                  value: event.recentUpdatedTime.formateDate,
                ),
                _buildInfoColumn(
                  icon: Icons.check_circle,
                  label: "Status",
                  value: event.status.name,
                  valueColor: _getStatusColor(event.status),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14.0, color: Colors.grey),
            const SizedBox(width: 4.0),
            Text(
              label,
              style: applyRobotoFont(
                fontSize: 8,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          value,
          style: applyRobotoFont(
            fontSize: 10,
            color: valueColor ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(EBCaseStatus status) {
    return switch (status) {
      EBCaseStatus.COMPLETED => AppColor.green,
      EBCaseStatus.IN_PROGRESS => AppColor.primary,
      EBCaseStatus.PENDING => AppColor.orange,
      _ => Colors.grey
    };
  }
}

class CaseIndicator extends StatelessWidget {
  final EBTimeLineCaseModel event;

  const CaseIndicator({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return DotIndicator(
      color: _getStatusColor(event.status),
      child: Icon(
        _getStatusIcon(event.status),
        size: 10,
        color: AppColor.white,
      ),
    );
  }

  IconData _getStatusIcon(EBCaseStatus status) {
    return switch (status) {
      EBCaseStatus.COMPLETED => Icons.check_circle,
      EBCaseStatus.IN_PROGRESS => Icons.autorenew,
      EBCaseStatus.PENDING => Icons.hourglass_empty,
      _ => Icons.help_outline,
    };
  }

  Color _getStatusColor(EBCaseStatus status) {
    return switch (status) {
      EBCaseStatus.COMPLETED => AppColor.green,
      EBCaseStatus.IN_PROGRESS => AppColor.primary,
      EBCaseStatus.PENDING => AppColor.orange,
      _ => Colors.grey
    };
  }
}

class CaseHeader extends StatelessWidget {
  final EBTimeLineCaseModel event;
  final int index;
  final List<EBTimeLineCaseModel> caseTimeLine;
  final bool isNested;

  const CaseHeader({
    super.key,
    required this.event,
    required this.index,
    required this.caseTimeLine,
    this.isNested = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            event.stageName.name.toUpperCase(),
            style: applyRobotoFont(
              fontSize: isNested ? 11 : 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
