import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LeftCorneaTabView extends ConsumerWidget {
  const LeftCorneaTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final XFile? imageFile = ref.read(triageEyeScanProvider).leftEyeImage;
    // List<String> data = [
    //   "assets/images/mask_a_one.png",
    //   "assets/images/mask_b_one.png",
    //   "assets/images/mask_c_one.png",
    //   "assets/images/mask_a_two.png",
    //   "assets/images/mask_b_two.png",
    //   "assets/images/mask_c_two.png",
    //   "assets/images/mask_a_three.png",
    //   "assets/images/mask_b_three.png",
    //   "assets/images/mask_c_three.png",
    // ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 16, top: 5, bottom: 20),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("Input Image"),
          //     Text("Tangential Map"),
          //     Text("Axial Map"),
          //   ],
          // ),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 1,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.15,
              crossAxisSpacing: 1,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              // var currentData = data[index];
              return Image.file(
                File(imageFile!.path),
                fit: BoxFit.cover,
              );
            }),
      ],
    );
  }
}
