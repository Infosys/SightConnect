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
                  query = value.trim();
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

                  final searchResults =
                      ref.watch(ebSearchRecordProvider(query));

                  return searchResults.when(
                    data: (results) {
                      return ListView.builder(
                        itemCount: results.length,
                        itemBuilder: (context, index) {
                          return EBCaseCard(
                            item: results[index],
                          );
                        },
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error, stack) {
                      logger.f('Error: $error'); // Debug print
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
