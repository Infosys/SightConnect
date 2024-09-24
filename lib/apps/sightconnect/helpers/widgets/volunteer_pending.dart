import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/services/token_refresh_service.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VolunteerPending extends ConsumerWidget {
  const VolunteerPending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/pending_volunteer.png",
            fit: BoxFit.cover,
            height: AppSize.height(context) * 0.45,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Volunteer Registration Pending Approval",
                    style: applyFiraSansFont(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.km,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Thank you ",
                      style: applyRobotoFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "for registering as a volunteer with us. Your application is currently under review.",
                          style: applyRobotoFont(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'We appreciate your willingness to contribute to our events and initiatives. Our team will evaluate your application and notify you of the approval status within the next few days.',
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "In the meantime, if you have any questions or need further assistance, please don't hesitate to contact us at : ",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.email, size: 16, color: Colors.blue),
                      const SizedBox(width: 8),
                      Text(
                        Env.appEmail,
                        style: applyRobotoFont(color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: Text(
                      'We look forward to having you on our team!',
                      style: applyRobotoFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                        onPressed: () async {
                          try {
                            await ref
                                .watch(dioRefreshTokenProvider)
                                .then((value) async {
                              logger.f("refresh token new");
                              logger.f(
                                  "roles : ${PersistentAuthStateService.authState.roles}");
                            });

                            if (PersistentAuthStateService.authState.roles!
                                .contains("ROLE_VOLUNTEER")) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "You have received volunteer approval"),
                                  ),
                                );
                              }
                            } else {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "You have not received volunteer approval"),
                                  ),
                                );
                              }
                            }

                            if (context.mounted) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InitializationPage()),
                                  (route) => false);
                            }
                          } catch (e) {
                            logger.e(e);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Something went wrong"),
                                ),
                              );
                            }
                            if (context.mounted) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InitializationPage()),
                                  (route) => false);
                            }
                          }
                        },
                        child: const Text("Check Approval Status")),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
