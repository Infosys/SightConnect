import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/search_bar_vt.dart';
import 'package:flutter/material.dart';

class VisionTechnicianSearchPage extends StatelessWidget {
  const VisionTechnicianSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        // backgroundColor: Colors.red,
        title: const SearchBarVT(readOnly: false),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: AppSize.width(context) * 0.5,
              child: Image.asset(AppImages.searchEmpty),
            ),
            const SizedBox(height: AppSize.klheight),
            const Text(
              "Sorry we couldn’t find any matches.\nPlease try searching with another Patient ID or Mobile No.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
