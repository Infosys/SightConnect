import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OrganTissueSearchDelegate extends SearchDelegate<String> {
  OrganTissueSearchDelegate();

  final List<Map<String, String>> tissues = [
    {
      'name': 'Cornea Tissue 1',
      'expiryDate': '2023-12-01',
      'patientAge': '45',
      'corneaIssue': 'Keratoconus',
      'tissueType': 'OD',
    },
    {
      'name': 'Cornea Tissue 2',
      'expiryDate': '2023-11-15',
      'patientAge': '60',
      'corneaIssue': 'Fuchs\' Dystrophy',
      'tissueType': 'OS',
    },
    {
      'name': 'Cornea Tissue 3',
      'expiryDate': '2023-10-20',
      'patientAge': '30',
      'corneaIssue': 'Corneal Scarring',
      'tissueType': 'OD',
    },
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = tissues
        .where((tissue) =>
            tissue['name']!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: results.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            close(context, results[index]['name']!);
          },
          child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(vertical: 8),
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
              child: Wrap(
                spacing: 16.0,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 16.0,
                children: [
                  _buildDetailColumn('Name', results[index]['name']!),
                  _buildDetailColumn(
                      'Expiry Date', results[index]['expiryDate']!),
                  _buildDetailColumn(
                      'Patient Age', results[index]['patientAge']!),
                  _buildDetailColumn(
                      'Cornea Issue', results[index]['corneaIssue']!),
                  _buildDetailColumn(
                      'Tissue Type', results[index]['tissueType']!),
                ],
              )),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = tissues
        .where((tissue) =>
            tissue['name']!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            query = suggestions[index]['name']!;
            showResults(context);
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(vertical: 8),
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
            child: ListTile(
              onTap: null,
              title: Text(suggestions[index]['name']!),
              subtitle: Text(suggestions[index]['expiryDate']!),
            ),
          ),
        );
      },
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
