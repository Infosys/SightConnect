import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/modals/organ_tissue_search_delegate.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OrganRequestWidget extends StatefulWidget {
  const OrganRequestWidget({super.key});

  @override
  _OrganRequestWidgetState createState() => _OrganRequestWidgetState();
}

class _OrganRequestWidgetState extends State<OrganRequestWidget> {
  final List<String> _filters = ['All', 'Pending', 'Completed'];
  String _selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildFilterChips(),
          Expanded(
            child: _buildRequestList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    return Wrap(
      spacing: 8.0,
      children: _filters.map((filter) {
        final bool isSelected = _selectedFilter == filter;
        return FilterChip(
          backgroundColor:
              isSelected ? AppColor.primary.withOpacity(0.1) : AppColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color:
                  isSelected ? AppColor.primary : Colors.grey.withOpacity(0.5),
            ),
          ),
          label: Text(
            filter,
            style: applyFiraSansFont(
              fontSize: 12.0,
              color: isSelected ? AppColor.primary : Colors.black,
            ),
          ),
          selected: isSelected,
          selectedColor: AppColor.primary.withOpacity(0.2),
          onSelected: (bool selected) {
            setState(() {
              _selectedFilter = selected ? filter : 'All';
            });
          },
          checkmarkColor: AppColor.primary,
        );
      }).toList(),
    );
  }

  Widget _buildRequestList() {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (_selectedFilter != 'All' && _selectedFilter != 'Pending') {
                return Container();
              }
              return InkWell(
                onTap: () {
                  _showAssignmentFlow(context, index);
                },
                child: const OrganRequestCard(
                  doctorName: 'Dr. John Doe',
                  priority: 'High',
                  tissue: 'Cornea',
                  eyeInvolved: 'Right Eye',
                  tissueExpiryTime: '2 days 3 hours',
                  transplantationTechnique: 'PKP, EK, ALK',
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }

  void _showAssignmentFlow(BuildContext context, int requestIndex) async {
    final tissues = ['Tissue 1', 'Tissue 2', 'Tissue 3']; // Example tissue list
    final selectedTissue = await showSearch<String>(
      context: context,
      delegate: OrganTissueSearchDelegate(tissues),
    );

    if (selectedTissue != null) {
      // Handle the selected tissue assignment
      logger.f('Assigned $selectedTissue to request #$requestIndex');
    }
  }
}

class OrganRequestCard extends StatelessWidget {
  final String doctorName;
  final String priority;
  final String tissue;
  final String eyeInvolved;
  final String tissueExpiryTime;
  final String transplantationTechnique;

  const OrganRequestCard({
    Key? key,
    required this.doctorName,
    required this.priority,
    required this.tissue,
    required this.eyeInvolved,
    required this.tissueExpiryTime,
    required this.transplantationTechnique,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8),
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
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Chip(
                        padding: const EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        label: Text(priority),
                        backgroundColor: AppColor.mediumRed,
                        labelStyle: applyFiraSansFont(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ActionChip(
                        onPressed: () {
                          final navigator = Navigator.of(context);
                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const EbCaseTimeLinePage(caseID: "1234"),
                            ),
                          );
                        },
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
                    ),
                  ],
                ),
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
