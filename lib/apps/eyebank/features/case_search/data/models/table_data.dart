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
