class TechnicianFakeDataSource {
  static List<Map<String, String>> getAnalyticsData() {
    return [
      {
        "title": "Referral",
        "total": "60",
        "ongoing": "72",
      },
      {
        "title": "Harvest",
        "total": "14",
        "ongoing": "8",
      },
      {
        "title": "Review",
        "total": "12",
        "ongoing": "15",
      }
    ];
  }

  static List<String> filterType = [
    "All",
    "Today",
    "This Week",
    "This Month",
    "This Year",
    "Pending",
    "Completed",
  ];

  static List<Map<String, String>> getSampleData() {
    return [
      {
        "sampleId": "123442",
        "Date": "2022-10-01",
        "Donor": "John Doe",
        "Tissue": "Cornea",
        "Eye": "Left",
        "Category": "Transplant",
        "Status": "Completed"
      },
      {
        "sampleId": "2423423",
        "Date": "2022-10-02",
        "Donor": "Jane Smith",
        "Tissue": "Heart",
        "Eye": "Right",
        "Category": "Research",
        "Status": "Pending"
      },
      {
        "sampleId": "342347",
        "Date": "2022-10-03",
        "Donor": "Mike Johnson",
        "Tissue": "Liver",
        "Eye": "Left",
        "Category": "Transplant",
        "Status": "Completed"
      },
      {
        "sampleId": "234234",
        "Date": "2022-10-04",
        "Donor": "Sarah Williams",
        "Tissue": "Lung",
        "Eye": "Right",
        "Category": "Research",
        "Status": "Pending"
      },
      {
        "sampleId": "542342",
        "Date": "2022-10-05",
        "Donor": "David Brown",
        "Tissue": "Kidney",
        "Eye": "Left",
        "Category": "Transplant",
        "Status": "Completed"
      },
      {
        "sampleId": "623432",
        "Date": "2022-10-06",
        "Donor": "Emily Davis",
        "Tissue": "Pancreas",
        "Eye": "Right",
        "Category": "Research",
        "Status": "Pending"
      },
      {
        "sampleId": "723423",
        "Date": "2022-10-07",
        "Donor": "Michael Wilson",
        "Tissue": "Bone",
        "Eye": "Left",
        "Category": "Transplant",
        "Status": "Completed"
      },
    ];
  }
}
