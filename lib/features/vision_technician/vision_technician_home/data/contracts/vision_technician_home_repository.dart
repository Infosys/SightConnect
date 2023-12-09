abstract class VisionTechnicianHomeRepository {
  List<dynamic> listOfPatients();
  List<dynamic> searchUsers(String query);
  void closeAssessment(int index);
  void toggleSolutions(int index, String solution);
}
