import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class EbProfilePage extends StatelessWidget {
  const EbProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 2,
        title: const Text('Profile'),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.grey,
                width: 1,
              ),
              shape: BoxShape.circle,
              color: AppColor.white,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                size: 24,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Container(
        constraints: BoxConstraints(
          maxWidth: Responsive.isMobile(context) ? double.infinity : 600,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: AppColor.grey,
                ),
                const SizedBox(height: 16),
                AppCard(
                  margin: null,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: John Doe',
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Email: john.doe@example.com',
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Phone: +1234567890',
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
