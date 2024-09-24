import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseConnector extends StatelessWidget {
  final EBTimelineEntity event;

  const CaseConnector({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return SolidLineConnector(color: StatusUtils.getStatusColor(event.status));
  }
}

class CompletedCard extends StatelessWidget {
  final EBTimelineEntity event;
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
    return BaseCard(
      onTap: onTap,
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
              _buildStatusColumn(
                label: "Status",
                value: event.status?.displayValue.toUpperCase() ?? "",
                status: event.status,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusColumn({
    required String label,
    required String value,
    required EBStatus? status,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              StatusUtils.getStatusIcon(status),
              size: 14.0,
              color: StatusUtils.getStatusColor(status),
            ),
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
            color: StatusUtils.getStatusColor(status),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoColumn({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          value.isEmpty ? "-" : value,
          style: applyRobotoFont(
            fontSize: 10,
            color: valueColor ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class CaseIndicator extends StatelessWidget {
  final EBTimelineEntity event;

  const CaseIndicator({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return DotIndicator(
      color: StatusUtils.getStatusColor(event.status),
      child: Icon(
        StatusUtils.getStatusIcon(event.status),
        size: 10,
        color: AppColor.white,
      ),
    );
  }
}

class CaseHeader extends StatelessWidget {
  final EBTimelineEntity event;
  final int index;
  final List<EBTimelineEntity> caseTimeLine;
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
            event.title?.toUpperCase() ?? "",
            style: applyRobotoFont(
              fontSize: isNested ? 11 : 12,
              fontWeight: FontWeight.bold,
              color: event.status == EBStatus.UNKNOWN
                  ? AppColor.grey
                  : AppColor.black,
            ),
          ),
        ],
      ),
    );
  }
}

class BaseCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const BaseCard({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
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
        child: child,
      ),
    );
  }
}

class StatusUtils {
  static Color getStatusColor(EBStatus? status) {
    return switch (status) {
      EBStatus.INITIATED => AppColor.primary,
      EBStatus.PENDING => AppColor.orange,
      EBStatus.UNDER_PROCESS => AppColor.orange,
      EBStatus.SUBMITTED => AppColor.primary,
      EBStatus.VERIFIED => AppColor.lightGreen,
      EBStatus.ACCEPTED => AppColor.green,
      EBStatus.REJECTED => AppColor.red,
      _ => Colors.grey
    };
  }

  static IconData getStatusIcon(EBStatus? status) {
    return switch (status) {
      EBStatus.INITIATED => Icons.info_outline,
      EBStatus.PENDING => Icons.hourglass_empty,
      EBStatus.UNDER_PROCESS => Icons.autorenew,
      EBStatus.SUBMITTED => Icons.send,
      EBStatus.VERIFIED => Icons.verified,
      EBStatus.ACCEPTED => Icons.check_circle,
      EBStatus.REJECTED => Icons.cancel,
      _ => Icons.help_outline,
    };
  }
}
