import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientHeader extends StatelessWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 300,
        minHeight: 200,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(AppSize.klradius),
            ),
            child: Image.asset(
              AppImages.patientCover,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.klheight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Eye Care for All",
                      style: applyFiraSansFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                              AuthPage.routeName,
                            );
                          },
                          icon: const Icon(Icons.logout_outlined),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: AppSize.klheight),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Welcome Back",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Anandi Murthy",
                    style: applyFiraSansFont(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Have a nice day",
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                // OutlinedButton(
                //   onPressed: () {},
                //   child: const Text("View Profile"),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
