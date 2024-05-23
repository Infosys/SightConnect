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

  static List<Map<String, String>> getDonorData() {
    return [
      {
        "DonorID": "RIEB17-3394 OD-C",
        "TissueExpiry": "04 Dec 2017, 10:43 PM",
        "Delivery": "2 Hrs",
        "Tissue": "Cornea",
        "ApprovedUsages": "PK, EK, KLA, ALK",
        "Match": "90%",
        "Priority": "Recommend"
      },
      {
        "DonorID": "SAMP22-8765 OS-C",
        "TissueExpiry": "16 Jun 2022, 6:30 AM",
        "Delivery": "3 Hrs",
        "Tissue": "Cornea",
        "ApprovedUsages": "DALK, PKP, DSAEK",
        "Match": "70%",
        "Priority": "Urgent"
      },
      {
        "DonorID": "JONE19-2468 OD-C",
        "TissueExpiry": "28 Oct 2019, 11:15 PM",
        "Delivery": "1 Hr",
        "Tissue": "Cornea",
        "ApprovedUsages": "ALK, DMEK",
        "Match": "55%",
        "Priority": "Routine"
      },
      
    ];
  }
}
