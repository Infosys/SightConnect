class TechnicianFakeDataSource {
  static List<Map<String, Map<String, String>>> getTechnicians() {
    return [
      {
        "Referral": {"Total": "60", "Ongoing": "72"}
      },
      {
        "Harvest": {"Total": "14", "Ongoing": "8"}
      },
      {
        "Review": {"Total": "12", "Ongoing": "15"}
      }
    ];
  }

  static List<String> filterType = [
    "All",
    "Today",
    "This Week",
    "This Month",
    "This Year"
    "Pending",
    "Completed",
  ];
}
