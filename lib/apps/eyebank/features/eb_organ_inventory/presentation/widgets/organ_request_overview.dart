import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/widgets/organ_inventory_timline.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

final records = List.generate(
  10,
  (index) => TableData(
    eye: "Eye ${index + 1}",
    category: "Category ${index + 1}",
    date: DateTime.now(),
    donor: "Donor ${index + 1}",
    sampleID: "Sample ID ${index + 1}",
    status: "Status ${index + 1}",
    tissue: "Tissue ${index + 1}",
  ),
);

class OrganRequestOverview extends StatelessWidget {
  const OrganRequestOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: EbInfiniteScrollView<TableData>(
        fetchPageData: (pageKey, pageSize, filters) async {
          return [
            TableData(
              eye: "",
              category: "",
              date: DateTime.now(),
              donor: "",
              sampleID: "",
              status: "",
              tissue: "",
            ),
          ];
        },
        itemBuilder: (context, item, index) {
          return _OrganRequestCard(
            doctorName: 'Dr. John Doe',
            priority: 'High',
            tissue: 'Cornea',
            eyeInvolved: 'Right Eye',
            tissueExpiryTime: '2 days 3 hours',
            transplantationTechnique: 'PKP, EK, ALK',
            onTimeLine: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => const OrganInventoryTimline(
                    encounterID: '12',
                  ),
                ),
              );
            },
            onAssignTissue: () {
              // _showAssignmentFlow(context, index);
            },
          );
        },
        filterOptions: const [],
        enableSearch: false,
        enableFilter: true,
        defaultPageSize: 10,
        onSearchTap: () {},
      ),
    );
  }
}

class _OrganRequestCard extends StatelessWidget {
  final String doctorName;
  final String priority;
  final String tissue;
  final String eyeInvolved;
  final String tissueExpiryTime;
  final String transplantationTechnique;
  final VoidCallback? onAssignTissue;
  final VoidCallback? onTimeLine;

  const _OrganRequestCard({
    Key? key,
    required this.doctorName,
    required this.priority,
    required this.tissue,
    required this.eyeInvolved,
    required this.tissueExpiryTime,
    required this.transplantationTechnique,
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
              Expanded(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColor.altGrey,
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorName,
                          style: applyRobotoFont(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "M.D. Ophthalmology",
                          style: applyRobotoFont(
                            fontSize: 12.0,
                            color: AppColor.blackOpacity,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Chip(
              //   padding: const EdgeInsets.all(2),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(8.0),
              //   ),
              //   label: Text(priority),
              //   backgroundColor: AppColor.mediumRed,
              //   labelStyle: applyFiraSansFont(
              //     fontSize: 12.0,
              //     color: Colors.white,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              const SizedBox(width: 8.0),
              ActionChip(
                onPressed: onTimeLine,
                padding: const EdgeInsets.all(2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                label: const Icon(
                  Icons.timeline,
                  color: Colors.white,
                ),
                backgroundColor: AppColor.mediumOrange,
              ),
            ],
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: _buildDetailColumn('Tissue:', tissue),
              ),
              Expanded(
                flex: 1,
                child: _buildDetailColumn('Eye Involved:', eyeInvolved),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child:
                    _buildDetailColumn('Tissue Expiry Time:', tissueExpiryTime),
              ),
              Expanded(
                flex: 1,
                child: _buildDetailColumn(
                    'Transplantation Technique:', transplantationTechnique),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: () {},
                label: const Text('Rejected'),
              ),
              TextButton.icon(
                onPressed: onAssignTissue,
                label: const Text('Accepted'),
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
            fontSize: 12.0,
            color: AppColor.grey,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 12.0,
            color: AppColor.black,
          ),
        ),
      ],
    );
  }
}
