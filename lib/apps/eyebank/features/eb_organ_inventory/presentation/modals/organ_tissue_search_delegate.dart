import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

Future<Map<String, dynamic>> fetchTissues(int pageKey, int pageSize) async {
  await Future.delayed(const Duration(seconds: 2));
  return {
    "content": [
      {
        "id": 2101,
        "identifier": "OD-000001",
        "productCategory": "ORGAN",
        "productCode": "CORNEA_OD",
        "productStatus": null,
        "expiryDate": null,
        "lotNumber": null,
        "storageMedium": null,
        "properties": null,
        "storageTemp": null,
        "document": null,
        "recoveryInformation": {
          "id": 2151,
          "extractionMethod": "IN_SITU",
          "extractionDateTime": "2024-08-27T06:30:00Z",
          "lotNumber": "12",
          "storageMedium": "MK_MEDIUM",
          "expirationDate": "2024-08-27T06:30:00Z",
          "intent": "RESEARCH",
          "performedBy": "12",
          "performerRole": null,
          "assistedBy": "12",
          "assistedRole": null,
          "properties": {"comments": "12", "scleraRecovered": 0},
          "storageTemp": null,
          "documents": null,
          "productCategory": "ORGAN",
          "productCode": "CORNEA_OD",
          "productIdentifier": "OD-000001"
        },
        "encounterId": 1001
      },
    ],
    "totalElements": 1,
    "totalPages": 1,
    "size": pageSize,
    "number": pageKey,
    "numberOfElements": 1,
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
  const OrganTissueSearchScreen({this.onAssign, Key? key}) : super(key: key);
  final Function(dynamic)? onAssign;

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
            return Container(
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
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 16.0,
                    runAlignment: WrapAlignment.spaceBetween,
                    runSpacing: 16.0,
                    children: [
                      _buildDetailColumn('ID', item['id'].toString()),
                      _buildDetailColumn('Identifier', item['identifier']),
                      _buildDetailColumn(
                          'Product Category', item['productCategory']),
                      _buildDetailColumn('Product Code', item['productCode']),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _showDetailsBottomSheet(context, item);
                        },
                        child: const Text('Details'),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {
                            _assignToRequest(item);
                          },
                          label: const Text('Assign Tissue'),
                          icon: const Icon(Icons.chevron_left),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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

  void _showDetailsBottomSheet(
      BuildContext context, Map<String, dynamic> item) {
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
              _buildDetailColumn('ID', item['id'].toString()),
              _buildDetailColumn('Identifier', item['identifier']),
              _buildDetailColumn('Product Category', item['productCategory']),
              _buildDetailColumn('Product Code', item['productCode']),
              _buildDetailColumn('Extraction Method',
                  item['recoveryInformation']['extractionMethod']),
              _buildDetailColumn('Extraction DateTime',
                  item['recoveryInformation']['extractionDateTime']),
              _buildDetailColumn(
                  'Lot Number', item['recoveryInformation']['lotNumber']),
              _buildDetailColumn('Storage Medium',
                  item['recoveryInformation']['storageMedium']),
              _buildDetailColumn('Expiration Date',
                  item['recoveryInformation']['expirationDate']),
              _buildDetailColumn(
                  'Intent', item['recoveryInformation']['intent']),
              _buildDetailColumn(
                  'Performed By', item['recoveryInformation']['performedBy']),
              _buildDetailColumn('Comments',
                  item['recoveryInformation']['properties']['comments']),
            ],
          ),
        );
      },
    );
  }

  void _assignToRequest(Map<String, dynamic> item) {
    // Implement the logic to assign the tissue to a request
    // For example, you can navigate to another screen or show a dialog
    print('Assigning tissue with ID ${item['id']} to a request');
  }
}
