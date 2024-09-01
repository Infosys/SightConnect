import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_search_deligate_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/repository/eb_organ_inventory_repo.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

final tissuesProvider = FutureProvider.family
    .autoDispose<OrganTissueSearchDeligateModel, int>((ref, pageKey) async {
  final repo = ref.read(ebOrganInventoryRepositoryProvider);
  final response = await repo.getOrganTissueSearchDelegate(
    page: pageKey,
    size: 10,
  );
  return response.fold(
    (e) => throw e,
    (data) => data,
  );
});

class OrganTissueSearchScreen extends ConsumerStatefulWidget {
  const OrganTissueSearchScreen({
    Key? key,
    this.onAssignToRequest,
  }) : super(key: key);
  final Function(Content)? onAssignToRequest;
  @override
  _OrganTissueSearchScreenState createState() =>
      _OrganTissueSearchScreenState();
}

class _OrganTissueSearchScreenState
    extends ConsumerState<OrganTissueSearchScreen> {
  final PagingController<int, Content> _pagingController =
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
      final isLastPage = (newItems.content as List).length < 10;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.content ?? []);
      } else {
        final nextPageKey = pageKey + (newItems.content as List).length;
        _pagingController.appendPage(newItems.content ?? [], nextPageKey);
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
    return RefreshIndicator(
      onRefresh: () {
        _pagingController.refresh();
        return Future<void>.value();
      },
      child: Scaffold(
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
        body: PagedListView<int, Content>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Content>(
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
                        _buildDetailColumn('Tissue ID', item.tissueId ?? ''),
                        _buildDetailColumn('Identifier', item.identifier ?? ''),
                        _buildDetailColumn(
                            'Product Category', item.productCategory ?? ''),
                        _buildDetailColumn(
                            'Product Code', item.productCode ?? ''),
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
                              widget.onAssignToRequest?.call(item);
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
      ),
    );
  }

  Widget _buildDetailColumn(String label, dynamic value) {
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
          value.toString(),
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

  void _showDetailsBottomSheet(BuildContext context, Content item) {
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
              _buildDetailColumn('ID', item.id ?? ''),
              _buildDetailColumn('Identifier', item.identifier ?? ''),
              _buildDetailColumn(
                  'Product Category', item.productCategory ?? ''),
              _buildDetailColumn('Product Code', item.productCode ?? ''),
              _buildDetailColumn('Extraction Method',
                  item.recoveryInformation?.extractionMethod ?? ''),
              _buildDetailColumn(
                  'Extraction DateTime',
                  item.recoveryInformation?.extractionDateTime.toString() ??
                      ''),
              _buildDetailColumn(
                  'Lot Number', item.recoveryInformation?.lotNumber ?? ''),
              _buildDetailColumn('Storage Medium',
                  item.recoveryInformation?.storageMedium ?? ''),
              _buildDetailColumn('Expiration Date',
                  item.recoveryInformation?.expirationDate.toString() ?? ''),
              _buildDetailColumn(
                  'Intent', item.recoveryInformation?.intent ?? ''),
              _buildDetailColumn(
                  'Performed By', item.recoveryInformation?.performedBy ?? ''),
              _buildDetailColumn('Comments',
                  item.recoveryInformation?.properties?.comments ?? ''),
            ],
          ),
        );
      },
    );
  }
}
