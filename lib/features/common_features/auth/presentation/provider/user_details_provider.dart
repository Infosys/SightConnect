import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/user_profile.dart';

var userDetailsProvider = Provider((ref) => UserDetailsProvider());

class UserDetailsProvider {
  UserProfile? userProfile;
  List<RelatedParty> familyMembers = [];
  UserDetailsProvider() {
    _getProfile();
  }
  Future<void> _getProfile() async {
    userProfile = const UserProfile(
      profile: Profile(
        patient: Patient(
          name: "Raghavi Pandey",
          parentPatientId: "PID 123456",
          profilePhoto: 'assets/images/connection_dp_one.png',
          address: [
            PatientAddress(
              state: "Karnataka",
              pincode: "560068",
              district: "Bangalore",
              line: "Koramangala 1st Block 1st Cross",
              label: "Home",
            ),
          ],
          relatedParty: [
            RelatedParty(
              name: "Chunkey Pandey",
              relationship: "Father",
              age: "65 years",
              profilePhoto: 'assets/images/connection_dp_two.png',
            ),
            RelatedParty(
              name: "Mangal Pandey",
              relationship: "Brother",
              age: "28 years",
              profilePhoto: 'assets/images/connections_dp_three.png',
            ),
            RelatedParty(
              name: "Rati Pandey",
              relationship: "Sister",
              age: "18 years",
              profilePhoto: 'assets/images/profile_image.png',
            ),
          ],
        ),
      ),
    );

    familyMembers = userProfile!.profile!.patient!.relatedParty!;
  }
}
