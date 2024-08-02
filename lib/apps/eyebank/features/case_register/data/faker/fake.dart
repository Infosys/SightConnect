import '../models/table_data.dart';

class TableFaker {
  List<TableData> fetchMockData() {
    List<Map<String, dynamic>> mockData = _getMockData();
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
      },
      {
        "SampleID": "11",
        "Date": "2022-01-01",
        "Donor": "Axel",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "21",
        "Date": "2022-01-02",
        "Donor": "Mason",
        "Tissue": "Whole Globe",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "31",
        "Date": "2022-01-03",
        "Donor": "Ethan",
        "Tissue": "Retina",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "41",
        "Date": "2022-01-04",
        "Donor": "Alexander",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "51",
        "Date": "2022-01-05",
        "Donor": "Michael",
        "Tissue": "Whole Globe",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "61",
        "Date": "2022-01-06",
        "Donor": "Daniel",
        "Tissue": "Retina",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
    ];
  }
}
