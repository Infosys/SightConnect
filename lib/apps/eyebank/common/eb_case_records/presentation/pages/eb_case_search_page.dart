import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EBCaseSearchPage extends StatefulWidget {
  const EBCaseSearchPage({super.key});

  @override
  _EBCaseSearchPageState createState() => _EBCaseSearchPageState();
}

class _EBCaseSearchPageState extends State<EBCaseSearchPage> {
  String query = '';
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus when the page is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(
          onSubmitted: (value) {
            setState(() {
              query = value;
            });
          },
        ),
        body: GestureDetector(
          onTap: () {
            _focusNode.unfocus();
          },
          child: Consumer(
            builder: (context, ref, child) {
              if (query.isEmpty) {
                return const Center(
                  child: Text('Enter a search query to see results'),
                );
              }

              final searchResults = ref.watch(ebSearchRecordProvider(query));
              return searchResults.when(
                data: (results) {
                  if (results.isEmpty) {
                    return const Center(
                      child: Text('No results found'),
                    );
                  }
                  return ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      return EBCaseCard(
                        item: results[index],
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) {
                  logger.d('Error: $error');
                  return Center(child: Text('Error: $error'));
                },
              );
            },
          ),
        ),
      ),
    );
  }

  _buildAppBar({
    required Function(String) onSubmitted,
  }) {
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
        child: TextField(
          focusNode: _focusNode,
          decoration: InputDecoration(
            hintText: 'Search for a case record',
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
    );
  }
}
