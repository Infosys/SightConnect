// Update TableData model
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/filter_bottom_sheet.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/repository/eb_organ_inventory_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_inventory_timline.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganRequestOverviewProviderParam {
  final int pageKey;
  final int pageSize;
  final List<Filter>? filters;

  OrganRequestOverviewProviderParam({
    required this.pageKey,
    required this.pageSize,
    this.filters,
  });
}

final organRequestOverviewProvider = FutureProvider.family<
    OrganTissueRequestModel,
    OrganRequestOverviewProviderParam>((ref, param) async {
  final repo = ref.read(ebOrganInventoryRepositoryProvider);
  final response = await repo.getOrganTissueRequest(
    page: param.pageKey,
    size: param.pageSize,
  );
  return response.fold((e) => throw e, (data) => data);
});

Future<List<Content>> fetchPageData(
    int pageKey, int pageSize, List<Filter> filters, WidgetRef ref) async {
  final repo = ref.read(ebOrganInventoryRepositoryProvider);
  final response = await repo.getOrganTissueRequest(
    page: pageKey,
    size: pageSize,
  );
  return response.fold((e) => throw e, (data) => data.content ?? []);
}

class OrganRequestOverview extends ConsumerWidget {
  const OrganRequestOverview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: EbInfiniteScrollView<Content>(
        fetchPageData: (pageKey, pageSize, filters) =>
            fetchPageData(pageKey, pageSize, filters, ref),
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
            onAssignTissue: () {
              // _showAssignmentFlow(context, index);
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
        enableFilter: true,
        defaultPageSize: 10,
        onSearchTap: () {},
      ),
    );
  }
}

class _OrganRequestCard extends StatelessWidget {
  final String encounterId;
  final String tissueTypeRequested;
  final String requestedBy;
  final DateTime? requestedDate;
  final String procedures;
  final VoidCallback? onAssignTissue;
  final VoidCallback? onTimeLine;

  const _OrganRequestCard({
    Key? key,
    required this.encounterId,
    required this.tissueTypeRequested,
    required this.requestedBy,
    required this.requestedDate,
    required this.procedures,
    this.onAssignTissue,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: AppColor.altGrey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      requestedBy,
                      style: applyRobotoFont(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Requested Date: ${requestedDate.formateDate}",
                      style: applyRobotoFont(
                        fontSize: 14.0,
                        color: AppColor.blackOpacity,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8.0),
              Tooltip(
                message: "View Timeline",
                child: TextButton(
                  onPressed: onTimeLine,
                  child: const Text("View Timeline"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: _buildDetailColumn('Tissue Type:', tissueTypeRequested),
              ),
              Expanded(
                flex: 1,
                child: _buildDetailColumn('Procedures:', procedures),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Tooltip(
                message: "Reject Request",
                child: TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.red,
                  ),
                  label: const Text('Reject'),
                  icon: const Icon(
                    Icons.close,
                    size: 18,
                  ),
                ),
              ),
              Tooltip(
                message: "Accept Request",
                child: TextButton.icon(
                  onPressed: onAssignTissue,
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.green,
                  ),
                  label: const Text('Accept'),
                  icon: const Icon(
                    Icons.check,
                    size: 18,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyFiraSansFont(
            fontSize: 14.0,
            color: AppColor.grey,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 14.0,
            color: AppColor.black,
          ),
        ),
      ],
    );
  }
}
