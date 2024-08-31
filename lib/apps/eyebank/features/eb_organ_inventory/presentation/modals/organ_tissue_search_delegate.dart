import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

Future<Map<String, dynamic>> fetchTissues(int pageKey, int pageSize) async {
  await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
  return {
    "content": [
      {
        "tissueId": "1",
        "cellCount": 1000,
        "harvestDate": "2023-01-01",
        "suitableProcedures": ["PK"],
        "clearZone": "Clear",
        "lensType": "Type A",
        "Pachemetry": 500,
        "tissueExpiry": "2024-08-30T14:02:54.118Z"
      },
      {
        "tissueId": "2",
        "cellCount": 1200,
        "harvestDate": "2023-02-01",
        "suitableProcedures": ["PK", "DMEK"],
        "clearZone": "Clear",
        "lensType": "Type B",
        "Pachemetry": 520,
        "tissueExpiry": "2024-09-30T14:02:54.118Z"
      },
    ],
    "totalElements": 2,
    "totalPages": 1,
    "size": pageSize,
    "number": pageKey,
    "numberOfElements": 2,
    "empty": false,
    "first": true,
    "last": true
  };
}

final tissuesProvider =
    FutureProvider.family<Map<String, dynamic>, int>((ref, pageKey) async {
  const pageSize = 10;
  return fetchTissues(pageKey, pageSize);
});

class OrganTissueSearchScreen extends ConsumerStatefulWidget {
  const OrganTissueSearchScreen({Key? key}) : super(key: key);

  @override
  _OrganTissueSearchScreenState createState() =>
      _OrganTissueSearchScreenState();
}

class _OrganTissueSearchScreenState
    extends ConsumerState<OrganTissueSearchScreen> {
  final PagingController<int, Map<String, dynamic>> _pagingController =
      PagingController(firstPageKey: 0);
  String query = '';

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await ref.read(tissuesProvider(pageKey).future);
      final isLastPage = (newItems['content'] as List).length < 10;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems['content']);
      } else {
        final nextPageKey = pageKey + (newItems['content'] as List).length;
        _pagingController.appendPage(newItems['content'], nextPageKey);
      }
    } on EBFailure catch (error) {
      _pagingController.error = error;
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              query = value;
              _pagingController.refresh();
            });
          },
        ),
      ),
      body: PagedListView<int, Map<String, dynamic>>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Map<String, dynamic>>(
          itemBuilder: (context, item, index) {
            return Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(10.0),
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Wrap(
                        spacing: 16.0,
                        runAlignment: WrapAlignment.spaceBetween,
                        runSpacing: 16.0,
                        children: [
                          _buildDetailColumn('Tissue ID', item['tissueId']),
                          _buildDetailColumn(
                              'Cell Count', item['cellCount'].toString()),
                          _buildDetailColumn(
                              'Harvest Date', item['harvestDate']),
                          _buildDetailColumn('Suitable Procedures',
                              item['suitableProcedures'].join(', ')),
                          _buildDetailColumn('Clear Zone', item['clearZone']),
                          _buildDetailColumn('Lens Type', item['lensType']),
                          _buildDetailColumn(
                              'Pachemetry', item['Pachemetry'].toString()),
                          _buildDetailColumn(
                              'Tissue Expiry', item['tissueExpiry']),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: TextButton.icon(
                    onPressed: () {},
                    label: const Text('Assign Tissue'),
                    icon: const Icon(Icons.add),
                  ),
                ),
              ],
            );
          },
          firstPageErrorIndicatorBuilder: (context) =>
              const Center(child: Text('Error loading tissues')),
          noItemsFoundIndicatorBuilder: (context) =>
              const Center(child: Text('No tissues found')),
        ),
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
