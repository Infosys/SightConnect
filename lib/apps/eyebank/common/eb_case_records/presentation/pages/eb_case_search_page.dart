import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EBCaseSearchPage extends StatefulWidget {
  const EBCaseSearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EBCaseSearchPageState createState() => _EBCaseSearchPageState();
}

class _EBCaseSearchPageState extends State<EBCaseSearchPage> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EB Case Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                  print('Query updated: $query'); // Debug print
                });
              },
            ),
            const SizedBox(height: 26),
            Expanded(
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
                      print('Search results: $results'); // Debug print
                      return ListView.builder(
                        itemCount: results.length,
                        itemBuilder: (context, index) {
                          return EBCaseCard(
                            item: TableData(
                              eye: 'Eye ${index + 1}',
                              category: 'Category ${index + 1}',
                              date: DateTime.now(),
                              donor: 'Donor ${index + 1}',
                              sampleID: 'Sample ID ${index + 1}',
                              status: 'Status ${index + 1}',
                              tissue: 'Tissue ${index + 1}',
                            ),
                          );
                        },
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) {
                      print('Error: $error'); // Debug print
                      return Center(child: Text('Error: $error'));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}