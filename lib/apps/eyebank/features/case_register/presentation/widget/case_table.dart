import 'package:dio/dio.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/pages/custom_table.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TableData {
  final String sampleID;
  final DateTime date;
  final String donor;
  final String tissue;
  final String eye;
  final String category;
  final String status;

  TableData({
    required this.sampleID,
    required this.date,
    required this.donor,
    required this.tissue,
    required this.eye,
    required this.category,
    required this.status,
  });

  factory TableData.fromJson(Map<String, dynamic> json) {
    return TableData(
      sampleID: json['SampleID'],
      date: DateTime.parse(json['Date']),
      donor: json['Donor'],
      tissue: json['Tissue'],
      eye: json['Eye'],
      category: json['Category'],
      status: json['Status'],
    );
  }
}

class CaseTable extends StatelessWidget {
  CaseTable({Key? key}) : super(key: key);

  final ApiService _apiService = ApiService();

  bool searchFunction(TableData item, String query) {
    final lowerCaseQuery = query.toLowerCase();
    return item.sampleID.toLowerCase().contains(lowerCaseQuery) ||
        item.date.toString().toLowerCase().contains(lowerCaseQuery) ||
        item.donor.toLowerCase().contains(lowerCaseQuery) ||
        item.tissue.toLowerCase().contains(lowerCaseQuery) ||
        item.eye.toLowerCase().contains(lowerCaseQuery) ||
        item.category.toLowerCase().contains(lowerCaseQuery) ||
        item.status.toLowerCase().contains(lowerCaseQuery);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TableData>>(
      future: _apiService.fetchMockData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          debugPrint(snapshot.error.toString());
          return const Text('An error occurred, please try again later');
        } else {
          return GenericPaginatedTable<TableData>(
            data: snapshot.data!,
            headers: const [
              'Sample ID',
              'Date',
              'Donor',
              'Tissue',
              'Eye',
              'Category',
              'Status',
            ],
            rowBuilder: (item) => _buildDataRow(item, context),
            filterOptions: const [
              'Completed',
              'Pending',
              'All',
              'None',
            ],
            filterMatcher: (item, filter) => item.status.contains(filter),
            searchMatcher: searchFunction,
          );
        }
      },
    );
  }

  DataRow _buildDataRow(TableData item, BuildContext context) {
    return DataRow(
      // color: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      //   if (states.contains(WidgetState.selected)) {
      //     return Theme.of(context).colorScheme.primary.withOpacity(0.08);
      //   }
      //   if (item.status == 'Completed') return Colors.green[100];
      //   return null; // Use default value for other states
      // }),
      cells: [
        DataCell(Text(item.sampleID)),
        DataCell(Text(item.date.toString())),
        DataCell(Text(item.donor)),
        DataCell(Text(item.tissue)),
        DataCell(Text(item.eye)),
        DataCell(Text(item.category)),
        DataCell(_buildStatusCell(item, context)),
      ],
    );
  }

  Widget _buildStatusCell(TableData item, BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Text(item.status);
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: item.status.toLowerCase() == 'completed'
            ? AppColor.lightGreen
            : AppColor.lightRed,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(item.status,
          style: applyRobotoFont(
            color: Colors.black,
            fontSize: 12,
          )),
    );
  }
}

class ApiService {
  final Dio _dio = Dio();

  Future<List<TableData>> fetchData() async {
    final response = await _dio.get("");

    if (response.statusCode == 200) {
      if (response.data is List) {
        return (response.data as List)
            .map((item) => TableData.fromJson(item))
            .toList();
      } else {
        throw Exception('Invalid data format');
      }
    } else {
      throw Exception(
          'Failed to load data with status: ${response.statusCode}');
    }
  }

  Future<List<TableData>> fetchMockData() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock data
    List<Map<String, dynamic>> mockData = _getMockData();

    // Convert mock data to List<TableData>
    return mockData.map((item) => TableData.fromJson(item)).toList();
  }

  List<Map<String, dynamic>> _getMockData() {
    return [
      {
        "SampleID": "1",
        "Date": "2022-01-01",
        "Donor": "Axel",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "2",
        "Date": "2022-01-02",
        "Donor": "Mason",
        "Tissue": "Whole Globe",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "3",
        "Date": "2022-01-03",
        "Donor": "Ethan",
        "Tissue": "Retina",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "4",
        "Date": "2022-01-04",
        "Donor": "Alexander",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "5",
        "Date": "2022-01-05",
        "Donor": "Michael",
        "Tissue": "Whole Globe",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "6",
        "Date": "2022-01-06",
        "Donor": "Daniel",
        "Tissue": "Retina",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      }
      // Add more data as needed
    ];
  }
}
