import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/filter_bottom_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/providers/organ_timeline_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_inventory_timline.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganRequestOverview extends ConsumerWidget {
  const OrganRequestOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: EbInfiniteScrollView<Content>(
        fetchPageData: (pageKey, pageSize, filters) async {
          logger.d({
            "Filters": filters.map((e) => e.value).toList(),
          });
          final filterMap = {
            for (var filter in filters) filter.name: filter.value
          };

          final params = GetOrganTissueRequestParams(
            page: pageKey,
            size: pageSize,
            surgeryType: filterMap['Filter by Surgery Type'],
            stage: filterMap['Filter by Stage'],
            requestDate: filterMap['Request Date'],
          );
          final records =
              await ref.read(organRequestOverviewProvider(params).future);
          return records.content ?? [];
        },
        itemBuilder: (context, item, index) {
          return _OrganRequestCard(
            encounterId: item.encounterId ?? '',
            tissueTypeRequested: item.tissueTypeRequested ?? '',
            requestedBy: item.requestedBy ?? '',
            requestedDate: item.requestedDate == null
                ? null
                : DateTime.parse(item.requestedDate!),
            procedures: item.procedures?.join(', ') ?? '',
            onTimeLine: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => OrganInventoryTimline(
                    encounterID: item.encounterId,
                    timlineVersion: "0.0.1",
                  ),
                ),
              );
            },
            onReject: () {
              Fluttertoast.showToast(msg: 'Soon to be implemented');
            },
          );
        },
        filterOptions: [
          Filter(
            name: 'Filter by Surgery Type',
            type: FilterType.dropdown,
            dropdownOptions: [
              'PK',
              'EK',
              'DALK',
              'K_LAL',
              'K_PRO',
              'OTHERS',
            ],
          ),
          Filter(
            name: 'Filter by Stage',
            type: FilterType.dropdown,
            dropdownOptions: [
              'REQUESTED',
              'ASSIGNED',
              'REJECTED',
              'COMPLETED',
            ],
          ),
          Filter(name: 'Request Date', type: FilterType.date),
        ],
        enableSearch: false,
        enableFilter: false,
        defaultPageSize: 10,
      ),
    );
  }
}

class _OrganRequestCard extends StatelessWidget {
  final String encounterId;
  final String tissueTypeRequested;
  final String requestedBy;
  final DateTime? requestedDate;
  final String? procedures;

  final VoidCallback? onReject;
  final VoidCallback? onTimeLine;

  const _OrganRequestCard({
    Key? key,
    required this.encounterId,
    required this.tissueTypeRequested,
    required this.requestedBy,
    required this.requestedDate,
    required this.procedures,
    this.onReject,
    this.onTimeLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
            children: [
              const CircleAvatar(
                maxRadius: 16,
                backgroundColor: AppColor.pureBlue,
              ),
              const SizedBox(width: 8),
              Text(
                requestedBy.formatTitle(),
                style: applyRobotoFont(fontSize: 12.0),
              ),
              const Spacer(),
              Tooltip(
                message: "Reject Request",
                child: TextButton(
                  onPressed: onReject,
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.red,
                  ),
                  child: const Text('Reject'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 8.0,
            children: [
              _buildDetailColumn('Tissue Type:', tissueTypeRequested),
              _buildDetailColumn('Procedures:', procedures),
              _buildDetailColumn('Requested Date:', requestedDate?.formateDate),
              _buildDetailColumn('Requested By:', requestedBy),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // text button
              Tooltip(
                message: "View Timeline",
                child: InkWell(
                  onTap: onTimeLine,
                  child: Text(
                    'Show Timeline',
                    style: applyRobotoFont(
                      fontSize: 12.0,
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailColumn(String label, dynamic value) {
    if (value == null || value == '') {
      return const SizedBox.shrink();
    }

    return Container(
      constraints: const BoxConstraints(maxWidth: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 10.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            value.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
