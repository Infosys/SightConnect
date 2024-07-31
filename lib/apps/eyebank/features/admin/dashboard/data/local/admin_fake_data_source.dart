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

  static List<Map<String, String>> getDistributionData() {
    return [
      {
        "Sample ID": "ABC123",
        "Tissue Expiry": "2025-12-31",
        "Donor Name": "John Doe",
        "Tissue": "Cornea",
        "Approved Usages": "Transplantation",
        "Eye": "Left",
        "Status":"In Transit"
      },
      {
        "Sample ID": "XYZ456",
        "Tissue Expiry": "2024-06-30",
        "Donor Name": "Jane Smith",
        "Tissue": "Bone",
        "Approved Usages": "Orthopedic Surgery",
        "Eye": "Right",
        "Status":"Delivered"
      },
      {
        "Sample ID": "DEF789",
        "Tissue Expiry": "2026-03-15",
        "Donor Name": "Michael Johnson",
        "Tissue": "Skin",
        "Approved Usages": "Burn Treatment",
        "Eye": "Left",
        "Status":"Pending"
      },
      {
        "Sample ID": "GHI012",
        "Tissue Expiry": "2024-11-20",
        "Donor Name": "Sarah Lee",
        "Tissue": "Heart Valve",
        "Approved Usages": "Cardiac Surgery",
        "Eye": "Right",
        "Status":"In Transit"
      },
      {
        "Sample ID": "JKL345",
        "Tissue Expiry": "2025-08-01",
        "Donor Name": "David Kim",
        "Tissue": "Tendon",
        "Approved Usages": "Research",
        "Eye": "Right",
        "Status":"Delivered"
      }
    ];
  }

 
  static List<Map<String, String>> getDonorData() {
    return [
      {
        "Sample ID": "123542",
        "TissueExpiry": "04 Dec 2017, 10:43 PM",
        "Delivery": "2 Hrs",
        "Tissue": "Cornea",
        "ApprovedUsages": "PK, EK, KLA, ALK",
        "Match": "90%",
        "Priority": "Recommend"
      },
      {
        "Sample ID": "476897",
        "TissueExpiry": "16 Jun 2022, 6:30 AM",
        "Delivery": "3 Hrs",
        "Tissue": "Cornea",
        "ApprovedUsages": "DALK, PKP, DSAEK",
        "Match": "70%",
        "Priority": "Recommend"
      },
      {
        "Sample ID": "234532",
        "TissueExpiry": "28 Oct 2019, 11:15 PM",
        "Delivery": "1 Hr",
        "Tissue": "Cornea",
        "ApprovedUsages": "ALK, DMEK",
        "Match": "55%",
        "Priority": "Recommend"
      },
    ];
  }


  static List<Map<String, String>> getReturnRequestData() {
    return [
      {
"TR ID": "TR001",
"Tissue ID": "ABC123",
"Return Reason": "Damaged during transport",
"Tissue Sent To": "University Hospital",
"Return Date": "2024-05-15",
"Re-distribution Possible": "false"
},
{
"TR ID": "TR002",
"Tissue ID": "XYZ456",
"Return Reason": "Expired before delivery",
"Tissue Sent To": "Regional Medical Center",
"Return Date": "2024-07-01",
"Re-distribution Possible": "false"
},
{
"TR ID": "TR003",
"Tissue ID": "DEF789",
"Return Reason": "Requested by recipient",
"Tissue Sent To": "St. Mary's Hospital",
"Return Date": "2024-09-20",
"Re-distribution Possible": "true"
},
{
"TR ID": "TR004",
"Tissue ID": "GHI012",
"Return Reason": "Incorrect tissue type",
"Tissue Sent To": "City Trauma Center",
"Return Date": "2024-11-10",
"Re-distribution Possible": "false"
},
{
"TR ID": "TR005",
"Tissue ID": "JKL345",
"Return Reason": "Tissue quality issue",
"Tissue Sent To": "Regional Organ Bank",
"Return Date": "2024-12-31",
"Re-distribution Possible": "true"
}
    ];
  }

  static List<Map<String, String>> getInventoryData() {
    return [
      {
        "Sample ID": "ABC123",
        "Tissue Expiry": "2025-12-31",
        "Donor Name": "John Doe",
        "Tissue": "Cornea",
        "Approved Usages": "Transplantation",
        "Eye": "Left",
       
      },
      {
        "Sample ID": "XYZ456",
        "Tissue Expiry": "2024-06-30",
        "Donor Name": "Jane Smith",
        "Tissue": "Bone",
        "Approved Usages": "Orthopedic Surgery",
        "Eye": "Right",
        
      },
      {
        "Sample ID": "DEF789",
        "Tissue Expiry": "2026-03-15",
        "Donor Name": "Michael Johnson",
        "Tissue": "Skin",
        "Approved Usages": "Burn Treatment",
        "Eye": "Left",
        
      },
      {
        "Sample ID": "GHI012",
        "Tissue Expiry": "2024-11-20",
        "Donor Name": "Sarah Lee",
        "Tissue": "Heart Valve",
        "Approved Usages": "Cardiac Surgery",
        "Eye": "Right",
       
      },
      {
        "Sample ID": "JKL345",
        "Tissue Expiry": "2025-08-01",
        "Donor Name": "David Kim",
        "Tissue": "Tendon",
        "Approved Usages": "Research",
        "Eye": "Right",
       
      }
    ];
  }
}
