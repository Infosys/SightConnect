import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> features = [
      'In-app Eye Testing: The app allows its users to self-assess their eyes by answering few questions and getting appropriate recommendations on the next steps and the doctor to be visited. Even friends and family of users can get benefitted too.',
      'Appointment Booking: Users can book online teleconsultations and in-clinic visits with doctors to get their eyes diagnosed. ',
      'IVR Call Services: Our IVR call services are available in English and local languages and it caters to users with basic feature phones as well. Users can dial our eye care professionals to seek instant help during an emergency or for any eye related issues. They can also call to book appointments or seek any further clarifications. ',
      'Nearby Clinics: Users can locate the eye care clinics near to them.',
      'Prescriptions and Reports: All prescriptions and reports of users can be accessed from one place without much hassle. ',
      'Eye Camps: Users can get information about nearby eye camps to get the eyes of their friends and family tested for free. ',
      'Reminders and Alerts: Users can receive timely alerts and reminders related to their upcoming appointments, medication, reports etc. ',
      'Sharing: Users can share this app and other useful information provided within the app with their friends and family members. '
    ];
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text(
          "About Us",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sightconnect is a user-friendly eye care app that helps with self-assessment and consultation over the call.',
                softWrap: true,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Text(
                'At the heart of our mission is a commitment to make eyecare accessible to all. The app is designed to be inclusive and accessible by users from all walks of life, regardless of their age, technical background, and social or economic background. The app and its content are made available in English and other local languages. It helps users to self-assess their eyes and get timely treatment advice. The app uses the latest technologies and tools to provide personalized eye care solutions to our users. It comes with a variety of features to make their life easier. ',
                softWrap: true,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 20),
              Text(
                'Features',
                softWrap: true,
                textAlign: TextAlign.left,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: features
                    .map(
                      (e) => Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Icon(
                                  Icons.arrow_right,
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: Text(
                                  e,
                                  softWrap: true,
                                  style: applyRobotoFont(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
              Text(
                'The app is developed with the help of leading eye care professionals to serve our user community better. Join us in our mission to create a brighter, healthier world. Download and Share the Sightconnect app today!',
                softWrap: true,
                style:
                    applyRobotoFont(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
