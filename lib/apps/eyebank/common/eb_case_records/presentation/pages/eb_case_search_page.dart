import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EBCaseSearchPage extends ConsumerStatefulWidget {
  const EBCaseSearchPage({super.key});

  @override
  EBCaseSearchPageState createState() => EBCaseSearchPageState();
}

class EBCaseSearchPageState extends ConsumerState<EBCaseSearchPage> {
  final FocusNode _focusNode = FocusNode();
  static const _pageSize = 10;
  String query = '';
  String identifier = '';
  String identifierType = '';
  SearchRecordParams param = SearchRecordParams(
    searchKey: '',
    pageNumber: 0,
    pageSize: _pageSize,
    identifier: '',
    identifierType: '',
  );

  final PagingController<int, ContentBriefEntity> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });

    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      param = SearchRecordParams(
        searchKey: query,
        pageNumber: pageKey,
        pageSize: _pageSize,
        identifier: identifier,
        identifierType: identifierType,
      );
      final newItems = await ref.read(ebSearchRecordProvider(param).future);
      final isLastPage = (newItems.content?.length ?? 0) < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.content ?? []);
      } else {
        final nextPageKey = pageKey + (newItems.content?.length ?? 0);
        _pagingController.appendPage(newItems.content ?? [], nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _EBSearchAppBar(
          onSubmitted: (value) {
            if (identifierType == "mobile" || identifierType.isEmpty) {
              query = value;
              _pagingController.refresh();
            } else {
              identifier = value;
              logger.f("identifier: $identifier");
              query = '';
              _pagingController.refresh();
            }
          },
          focusNode: _focusNode,
          onFilter: (identifierType) {
            logger.f(identifierType);
            if (identifierType != null && identifierType.isNotEmpty) {
              if (identifierType == "mobile") {
                this.identifierType = '';
                identifier = '';
              }
              this.identifierType = identifierType;
            }
            logger.f(this.identifierType);
          },
        ),
        body: GestureDetector(
          onTap: () {
            _focusNode.unfocus();
          },
          child: Consumer(
            builder: (context, ref, child) {
              return PagedListView<int, ContentBriefEntity>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<ContentBriefEntity>(
                  itemBuilder: (context, item, index) => EBCaseCard(
                    item: item,
                    onTap: () {},
                  ),
                  firstPageErrorIndicatorBuilder: (context) => const Center(
                    child: Text('Error loading cases'),
                  ),
                  noItemsFoundIndicatorBuilder: (context) => const Center(
                    child: Text('No cases found'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _EBSearchAppBar extends HookWidget implements PreferredSizeWidget {
  const _EBSearchAppBar({
    required this.onSubmitted,
    required this.focusNode,
    this.onFilter,
  });
  final Function(String) onSubmitted;
  final Function(String? identifierType)? onFilter;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    var selectedFilter = useState<String>("mobile");
    final List<PopupMenuEntry> filterOptions = [
      PopupMenuItem(
        value: "mobile",
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            color: selectedFilter.value == "mobile"
                ? AppColor.primary
                : Colors.white,
            child: Text(
              'Mobile Number',
              style: applyRobotoFont(
                color: selectedFilter.value == "mobile"
                    ? Colors.white
                    : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            )),
      ),
      PopupMenuItem(
        value: "ENCOUNTER",
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            width: double.infinity,
            color: selectedFilter.value == "ENCOUNTER"
                ? AppColor.primary
                : Colors.white,
            child: Text(
              'Encounter ID',
              style: applyRobotoFont(
                color: selectedFilter.value == "ENCOUNTER"
                    ? Colors.white
                    : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            )),
      ),
      PopupMenuItem(
        value: "SERVICE_REQUEST",
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            width: double.infinity,
            color: selectedFilter.value == "SERVICE_REQUEST"
                ? AppColor.primary
                : Colors.white,
            child: Text(
              'Service Request ID',
              style: applyRobotoFont(
                color: selectedFilter.value == "SERVICE_REQUEST"
                    ? Colors.white
                    : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            )),
      ),
      PopupMenuItem(
        value: "BDP",
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            width: double.infinity,
            color:
                selectedFilter.value == "BDP" ? AppColor.primary : Colors.white,
            child: Text(
              'BDP ID',
              style: applyRobotoFont(
                color:
                    selectedFilter.value == "BDP" ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            )),
      ),
    ];

    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: getHintText(selectedFilter.value), 
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
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
                onSubmitted: (value) {
                  onSubmitted(value.trim());
                },
              ),
            ),
            const SizedBox(width: 8),
            PopupMenuButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.filter_list),
                itemBuilder: (context) {
                  return filterOptions;
                },
                onSelected: (value) {
                  if (value == 'mobile') {
                    selectedFilter.value = 'mobile';
                    onFilter?.call('mobile');
                  }
                  if (value == 'ENCOUNTER') {
                    selectedFilter.value = 'ENCOUNTER';
                    onFilter?.call('ENCOUNTER');
                  }
                  if (value == 'SERVICE_REQUEST') {
                    selectedFilter.value = 'SERVICE_REQUEST';
                    onFilter?.call('SERVICE_REQUEST');
                  }
                  if (value == 'BDP') {
                    selectedFilter.value = 'BDP';
                    onFilter?.call('BDP');
                  }
                }),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);

  String getHintText(String selectedFilter) {
    if (selectedFilter == 'mobile') {
      return 'Search by Mobile Number';
    }
    if (selectedFilter == 'ENCOUNTER') {
      return 'Search by Encounter ID';
    }
    if (selectedFilter == 'SERVICE_REQUEST') {
      return 'Search by Service Request ID';
    }
    if (selectedFilter == 'BDP') {
      return 'Search by BDP ID';
    }
    return '';
  }
}
