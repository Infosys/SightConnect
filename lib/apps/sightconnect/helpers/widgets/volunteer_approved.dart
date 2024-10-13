/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/services/token_refresh_service.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VolunteerApproved extends HookConsumerWidget {
  const VolunteerApproved({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState<bool>(false);

    return isLoading.value
        ? const Center(child: CircularProgressIndicator.adaptive())
        : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome, Volunteer!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: AppSize.km,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: AppSize.height(context) * 0.4,
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/thank_you_volunteer.png",
                        ),
                        Positioned(
                          bottom: 10,
                          child: SizedBox(
                            width: AppSize.width(context) * 0.9,
                            child: const Text(
                              "Your application to volunteer with us has been approved. We are excited to have you as a valuable member of our team.",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppSize.km,
                        ),
                        const Text("Next Steps:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: AppSize.km,
                        ),
                        Column(
                          children: [
                            const NextStepCard(
                              icon: Icons.event,
                              title: 'Create or Join an Event',
                              description:
                                  'Create an event or join an existing one as a team member.',
                            ),
                            const NextStepCard(
                              icon: Icons.video_library,
                              title: 'Add Teammates',
                              description:
                                  'Invite other volunteers to join your team.',
                            ),
                            const NextStepCard(
                              icon: Icons.message,
                              title: 'Start Doing Triages',
                              description:
                                  'Begin triaging and contributing to our initiatives.',
                            ),
                            const NextStepCard(
                              icon: Icons.book,
                              title: 'Get Reports',
                              description:
                                  'View reports of the triages done by you and you teammates.',
                            ),
                            // const NextStepCard(
                            //   icon: Icons.event_available,
                            //   title: 'Attend the Live Event',
                            //   description:
                            //       'Participate in the scheduled live event.',
                            // ),

                            const SizedBox(height: 24),
                            ElevatedButton(
                                onPressed: () async {
                                  isLoading.value = true;
                                  try {
                                    await ref
                                        .watch(dioRefreshTokenProvider)
                                        .then((value) async {
                                      logger.f("refresh token new");
                                      logger.f(
                                          "roles : ${PersistentAuthStateService.authState.roles}");

                                      if (PersistentAuthStateService
                                          .authState.roles!
                                          .contains("ROLE_VOLUNTEER")) {
                                        await PersistentAuthStateService
                                            .authState
                                            .setActiveRole("ROLE_VOLUNTEER");
                                        ref
                                            .read(dioProvider.notifier)
                                            .updateHeaders(
                                                activeRole: "ROLE_VOLUNTEER");
                                        if (context.mounted) {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const InitializationPage()),
                                              (route) => false);
                                        }
                                      } else {
                                        isLoading.value = false;
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  duration:
                                                      Duration(seconds: 3),
                                                  content: Text(
                                                      "Something went wrong. Please try again later.")));
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const InitializationPage()),
                                              (route) => false);
                                        }
                                      }

                                      // await PersistentAuthStateService.authState
                                      //     .setActiveRole(null);
                                    });
                                  } on Exception catch (e) {
                                    logger.e("error : $e");
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              duration: Duration(seconds: 3),
                                              content: Text(
                                                  "Something went wrong. Please try again later.")));
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const InitializationPage()),
                                          (route) => false);
                                    }
                                  }
                                  isLoading.value = false;
                                },
                                child: const Text("Switch to Volunteer")),
                            const SizedBox(height: 24),
                            Text(
                              'Questions? Need assistance?',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.help_outline,
                                    size: 16, color: Colors.blue),
                                const SizedBox(width: 8),
                                Text(
                                  Env.appEmail,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

class NextStepCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const NextStepCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: Colors.blue),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
