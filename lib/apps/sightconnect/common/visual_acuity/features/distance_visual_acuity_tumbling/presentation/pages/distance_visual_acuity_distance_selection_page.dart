/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../shared/constants/app_images.dart';
import '../../../../../../../../shared/widgets/custom_app_bar.dart';
import '../providers/distance_visual_acuity_test_provider.dart';
import '../widgets/distance_visual_acuity_tumbling_test_right_eye_instruction.dart';

class DistanceVisualAcuityDistanceSelectionPage extends HookConsumerWidget {
  const DistanceVisualAcuityDistanceSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentOptoType = useState<double>(4.3633);
    // 2.908766667
    var optoTypeSize = currentOptoType.value * 10 * 160 * 0.03937;
    var isThreeMeters = useState<bool>(true);
    return Scaffold(
      appBar: const CustomAppbar(
        centerTitle: true,
        title: Text("Distance Selection"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Select the distance at which you want to perform the test, Below is a reference Image for the size of the first Optotypes at selected distance (default : 3 meters)",
              style: applyFiraSansFont(fontSize: 16),
            ),
            SizedBox(
              height: AppSize.height(context) * 0.05,
            ),
            SizedBox(
              height: AppSize.height(context) * 0.35,
              child: Center(
                child: SvgPicture.asset(
                  AppImages.tumblingE,
                  width: optoTypeSize,
                  height: optoTypeSize,
                ),
              ),
            ),
            SizedBox(height: AppSize.height(context) * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isThreeMeters.value = false;
                      ref
                          .read(globalVisualAcuityProvider)
                          .setOptoIsThreeMeters(false);
                      if (!isThreeMeters.value) {
                        currentOptoType.value = 2.908766667;
                      } else {
                        currentOptoType.value = 4.3633;
                      }

                      // ref
                      //     .read(distancetumblingLocalSource)
                      //     .setIsThreeMeter(false);
                      // ref.read(distanceTumblingTestProvider).reset();
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         const DistanceVisualAcuityTumblingLeftEyeInstruction(),
                      //   ),
                      // );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: isThreeMeters.value ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "2 meters",
                          style: applyFiraSansFont(
                            color: isThreeMeters.value
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isThreeMeters.value = true;
                      ref
                          .read(globalVisualAcuityProvider)
                          .setOptoIsThreeMeters(true);
                      if (isThreeMeters.value) {
                        currentOptoType.value = 4.3633;
                      } else {
                        currentOptoType.value = 2.908766667;
                      }
                      // ref
                      //     .read(distancetumblingLocalSource)
                      //     .setIsThreeMeter(true);
                      // ref.read(distanceTumblingTestProvider).reset();
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         const DistanceVisualAcuityTumblingLeftEyeInstruction(),
                      //   ),
                      // );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: isThreeMeters.value ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "3 meters",
                          style: applyFiraSansFont(
                            color: isThreeMeters.value
                                ? Colors.white
                                : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.height(context) * 0.02,
            ),
            Text(
              "Note : For Self Testing purpose, currently the distance for AI Detection is set to 40 cm for testing convenience.",
              style: applyRobotoFont(fontSize: 12),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(globalVisualAcuityProvider)
                          .setThreeMeter(isThreeMeters.value);
                      // ref
                      //     .read(distancetumblingLocalSource)
                      //     .setIsThreeMeter(isThreeMeters.value);
                      ref.read(distanceTumblingTestProvider).reset();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>
                              const DistanceVisualAcuityTumblingRightEyeInstruction(),
                        ),
                      );
                    },
                    child: const Text("Confirm and Proceed"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
