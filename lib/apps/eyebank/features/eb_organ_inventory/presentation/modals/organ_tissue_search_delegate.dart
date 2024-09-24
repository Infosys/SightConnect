import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/organ_tissue_search_deligate_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/repository/eb_organ_inventory_repo.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  String query = '--';

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
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search by Tissue ID, Cell Count, Donor Age",
                      hintStyle: applyRobotoFont(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(8),
                    ),
                    onSubmitted: (value) {
                      query = value;
                      _pagingController.refresh();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        body: PagedListView<int, Content>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Content>(
            itemBuilder: (context, item, index) {
              return InkWell(
                onTap: () => _showDetailsBottomSheet(context, item),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0,
                  ),
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
                          _buildDetailColumn(
                              'Cell Count', item.cellCount ?? ''),
                          _buildDetailColumn(
                            'Donor Age',
                            item.donorAge != null
                                ? item.donorAge.toString()
                                : "",
                          ),
                          _buildDetailColumn(
                            'Tissue Expiry',
                            item.tissueExpiry != null
                                ? DateTime.tryParse(item.tissueExpiry!)
                                    .formateDate
                                : "",
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      if (widget.onAssignToRequest != null) const Divider(),
                      if (widget.onAssignToRequest != null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
    final isVisible = label == "Tissue ID";
    return Row(
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
        const Spacer(),
        InkWell(
          onTap: !isVisible
              ? null
              : () {
                  if (value != null && value != '') {
                    Clipboard.setData(ClipboardData(text: value.toString()));
                  }
                },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: !isVisible
                ? null
                : BoxDecoration(
                    color: AppColor.pureBlue,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
            child: Text(
              value.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 12.0,
                color: AppColor.black,
              ),
            ),
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
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 16.0,
            runAlignment: WrapAlignment.spaceBetween,
            runSpacing: 16.0,
            children: [
              _buildDetailColumn('Tissue ID', item.tissueId ?? '--'),
              _buildDetailColumn('Cell Count', item.cellCount ?? '--'),
              _buildDetailColumn(
                'Donor Age',
                item.donorAge != null ? item.donorAge.toString() : "--",
              ),
              _buildDetailColumn(
                'Harvest Date',
                item.harvestDate != null
                    ? DateTime.tryParse(item.harvestDate!).formateDate
                    : "",
              ),
              _buildDetailColumn('Suitable Procedures',
                  item.suitableProcedures?.join(', ') ?? '--'),
              _buildDetailColumn('Clear Zone', item.clearZone ?? '--'),
              _buildDetailColumn('Lens Type', item.lensType ?? '--'),
              _buildDetailColumn('Pachemetry', item.pachemetry ?? '--'),
              _buildDetailColumn(
                'Tissue Expiry',
                item.tissueExpiry != null
                    ? DateTime.tryParse(item.tissueExpiry!).formateDate
                    : "",
              ),
              _buildDetailColumn(
                  'Extraction Method', item.extractionMethod ?? '--'),
              _buildDetailColumn('Storage Medium', item.storageMedium ?? '--'),
              // _buildDetailColumn('Encounter ID', item.encounterId ?? '--'),
            ],
          ),
        );
      },
    );
  }
}
