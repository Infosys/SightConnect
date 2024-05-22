class AdminFakeDataSource {
  static List<Map<String, String>> getAnalyticsData() {
    return [
      {
        "title": "Requests",
        "total": "60",
        "ongoing": "72",
      },
      {
        "title": "Inventory",
        "total": "14",
        "ongoing": "8",
      },
      {
        "title": "Distribution",
        "total": "12",
        "ongoing": "15",
      },
      {
        "title": "Return Request",
        "total": "12",
        "ongoing": "15",
      },
      {
        "title": "Users",
        "total": "12",
        "ongoing": "15",
      },
    ];
  }

  static List<String> filterTypes = [
    "All",
    "High Priority",
    "Medium Priority",
    "Low Priority",
    "Today",
    "This Week",
    "This Month",
  ];

  static List<Map<String, String>> getSampleData() {
    return [
      {
        "RequestID": "987654",
        "ExpiryDate": "2023-08-15",
        "RequestedBy": "Jane Smith",
        "TransplantationTechnique": "DALK, PKP, DSAEK",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Priority": "High"
      },
      {
        "RequestID": "246810",
        "ExpiryDate": "2023-11-30",
        "RequestedBy": "Michael Johnson",
        "TransplantationTechnique": "ALK, DMEK",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Priority": "Medium"
      },
      {
        "RequestID": "135791",
        "ExpiryDate": "2023-06-10",
        "RequestedBy": "Sarah Anderson",
        "TransplantationTechnique": "EK, PKP",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Priority": "Low"
      },
      {
        "RequestID": "369258",
        "ExpiryDate": "2023-09-25",
        "RequestedBy": "Robert Williams",
        "TransplantationTechnique": "DALK, DMEK",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Priority": "High"
      },
      {
        "RequestID": "575757",
        "ExpiryDate": "2023-07-05",
        "RequestedBy": "Emily Davis",
        "TransplantationTechnique": "ALK, PKP, DMEK",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Priority": "Medium"
      }
    ];
  }
}
