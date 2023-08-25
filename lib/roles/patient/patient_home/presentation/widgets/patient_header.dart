import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
          Image.asset(
            AppImages.patientCover,
            fit: BoxFit.cover,
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
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    )
                  ],
                ),
                const SizedBox(height: AppSize.ksheight),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Cataract Prevalence and Its Associated Factors among Adult Aged 40 Years and above",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  child: Text(
                    "Schematic presentation of sampling procedure on prevalence of cataract and associated factors",
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("know more"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
