import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/data/models/eb_profile_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EBProfilePage extends ConsumerWidget {
  const EBProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: const Text('Profile'),
        actions: [
          if (PersistentAuthStateService.authState.roles?.length != 1)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: () async {
                  final navigator = Navigator.of(context);
                  await ref.read(initializationProvider).resetProfile();
                  navigator.pushNamedAndRemoveUntil(
                      InitializationPage.routeName, (route) => false);
                },
                child: const Text("Switch Role"),
              ),
            ),
        ],
      ),
      body: ref.watch(getEBProfileProvider).when(
            data: (profile) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildProfileCard(profile),
                      const SizedBox(height: 16),
                      _buildSectionCard(
                        title: 'Communication Address',
                        child: _buildCommunicationAddress(
                            profile.communicationAddress),
                      ),
                      const SizedBox(height: 16),
                      _buildSectionCard(
                        title: 'Contact Information',
                        child: _buildContactInformation(
                            profile.contactInformation),
                      ),
                      const SizedBox(height: 16),
                      _buildSectionCard(
                        title: 'Registration Details',
                        child: _buildRegistrationAcademic(
                            profile.registrationAcademic),
                      ),
                      const SizedBox(height: 24),
                      _buildLogoutButton(context, ref, loc),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "App Version: ${AppInfoService.appVersion}",
                            style: applyRobotoFont(
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16 * 4),
                    ],
                  ),
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => _buildErrorState(),
          ),
    );
  }

  Widget _buildProfileCard(EBProfileModel profile) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Chip(
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: AppColor.pureBlue,
            label: Text(
                "${profile.personalInformation?.firstName ?? ''} ${profile.personalInformation?.lastName ?? ''}",
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                )),
          ),
          const SizedBox(height: 8),
          _buildPersonalInfo(profile),
        ],
      ),
    );
  }

  Widget _buildSectionCard({required String title, required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: applyFiraSansFont(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }

  Widget _buildPersonalInfo(EBProfileModel profile) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        _columnListTile(
          title: 'Health Professional Type',
          subtitle: profile.healthProfessionalType ?? 'N/A',
        ),
        _columnListTile(
          title: 'Official Mobile',
          subtitle: profile.officialMobile ?? 'N/A',
        ),
        _columnListTile(
          title: 'Official Email',
          subtitle: profile.officialEmail ?? 'N/A',
        ),
      ],
    );
  }

  Widget _buildCommunicationAddress(CommunicationAddress? address) {
    if (address == null) {
      return const Text('No communication address available.');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rowListTile(
          title: 'Address',
          subtitle: address.address ?? 'N/A',
        ),
        _rowListTile(
          title: 'Country',
          subtitle: address.country ?? 'N/A',
        ),
        _rowListTile(
          title: 'State',
          subtitle: address.state ?? 'N/A',
        ),
        _rowListTile(
          title: 'City',
          subtitle: address.city ?? 'N/A',
        ),
        _rowListTile(
          title: 'Postal Code',
          subtitle: address.postalCode ?? 'N/A',
        ),
      ],
    );
  }

  Widget _buildContactInformation(ContactInformation? contact) {
    if (contact == null) return const Text('No contact information available.');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rowListTile(
          title: 'Contact Number',
          subtitle: contact.publicMobileNumber ?? 'N/A',
        ),
        _rowListTile(
          title: 'Email',
          subtitle: contact.publicEmail ?? 'N/A',
        ),
      ],
    );
  }

  Widget _buildRegistrationAcademic(RegistrationAcademic? registration) {
    if (registration == null) {
      return const Text('No registration academic details available.');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...registration.registrationData
                ?.map((data) => _buildRegistrationDatum(data)) ??
            [],
      ],
    );
  }

  Widget _buildRegistrationDatum(RegistrationDatum data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rowListTile(
          title: 'Registration Number',
          subtitle: data.registrationNumber ?? 'N/A',
        ),
      ],
    );
  }

  Widget _rowListTile({
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: applyFiraSansFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
          Expanded(
            child: Text(
              subtitle,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _columnListTile({
    required String title,
    required String subtitle,
  }) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 200),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
          Text(
            subtitle,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.darkGrey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context, WidgetRef ref, dynamic loc) {
    return OutlinedButton(
      onPressed: () {
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: loc.loggedOutMessage);
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e("Logout error: $e");
          Fluttertoast.showToast(msg: loc.optoLogoutError);
        });
      },
      child: const Text('Logout'),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Error in fetching profile',
            style: applyFiraSansFont(
              fontSize: 16,
              color: AppColor.black,
            ),
          ),
        ],
      ),
    );
  }
}
