import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class VolunteerApproved extends StatelessWidget {
  const VolunteerApproved({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                        title: 'Check Orientation Videos',
                        description:
                            'Watch videos to understand our mission and processes.',
                      ),
                      const NextStepCard(
                        icon: Icons.book,
                        title: 'Go Through Training Material',
                        description:
                            'Review provided materials to prepare for your role.',
                      ),
                      const NextStepCard(
                        icon: Icons.event_available,
                        title: 'Attend the Live Event',
                        description: 'Participate in the scheduled live event.',
                      ),
                      const NextStepCard(
                        icon: Icons.message,
                        title: 'Start Doing Triages',
                        description:
                            'Begin triaging and contributing to our initiatives.',
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Questions? Need assistance?',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.help_outline,
                              size: 16, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            'sight_connect@infosys.com',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  )
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
