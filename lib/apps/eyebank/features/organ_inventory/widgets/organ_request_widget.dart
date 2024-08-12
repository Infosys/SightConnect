import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/modals/organ_tissue_search_delegate.dart';
import 'package:eye_care_for_all/main.dart';
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
    return Column(
      children: [
        const SizedBox(height: 8),
        Wrap(
          spacing: 8.0,
          children: _filters.map((filter) {
            return FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
              label: Text(filter),
              selected: _selectedFilter == filter,
              onSelected: (bool selected) {
                setState(() {
                  _selectedFilter = selected ? filter : 'All';
                });
              },
            );
          }).toList(),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    // Filter logic based on _selectedFilter
                    if (_selectedFilter != 'All' &&
                        _selectedFilter != 'Pending') {
                      return Container(); // Example filter logic
                    }
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding: const EdgeInsets.all(10.0),
                        title: Text('Cornea Request #$index'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Doctor: Dr. Smith'),
                            const SizedBox(height: 8),
                            Text('Details about cornea request #$index'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            _showAssignmentFlow(context, index);
                          },
                        ),
                      ),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ],
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
