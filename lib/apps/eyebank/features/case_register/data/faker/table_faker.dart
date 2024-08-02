import '../models/table_data.dart';

class TableFaker {
  List<TableData> fetchMockData({int page = 0, int pageSize = 10}) {
    List<Map<String, dynamic>> mockData = _getMockData();
    // Apply pagination
    // int start = page * pageSize;
    // int end =
    //     start + pageSize > mockData.length ? mockData.length : start + pageSize;
    // List<Map<String, dynamic>> paginatedData = mockData.sublist(start, end);
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
        "Tissue": "Sclera",
        "Eye": "Right Eye",
        "Category": "Referrals",
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
        "Tissue": "Sclera",
        "Eye": "Left Eye",
        "Category": "Referrals",
        "Status": "Pending"
      },
      {
        "SampleID": "7",
        "Date": "2022-01-01",
        "Donor": "Axel",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "8",
        "Date": "2022-01-02",
        "Donor": "Mason",
        "Tissue": "Whole Globe",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "9",
        "Date": "2022-01-03",
        "Donor": "Ethan",
        "Tissue": "Sclera",
        "Eye": "Right Eye",
        "Category": "Referrals",
        "Status": "Completed"
      },
      {
        "SampleID": "10",
        "Date": "2022-01-04",
        "Donor": "Alexander",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "11",
        "Date": "2022-01-05",
        "Donor": "Michael",
        "Tissue": "Whole Globe",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "12",
        "Date": "2022-01-06",
        "Donor": "Daniel",
        "Tissue": "Sclera",
        "Eye": "Left Eye",
        "Category": "Referrals",
        "Status": "Pending"
      },
    ];
  }
}
