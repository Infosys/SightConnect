import 'dart:ui';

import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/widgets/tumbling_direction_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_size.dart';

class TumblingOverlay extends StatefulWidget {
  const TumblingOverlay({
    super.key,
    required this.child,
    this.isLoading = false,
  });
  final Widget child;
  final bool isLoading;
  @override
  State<TumblingOverlay> createState() => _TumblingOverlayState();
}

class _TumblingOverlayState extends State<TumblingOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (widget.isLoading)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: AppSize.height * 0.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.kmpadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text("Direction"),
                        SizedBox(
                          height: AppSize.height * 0.3,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return const TumblingDirectionCard(
                                symbolImage: "assets/images/doctor.png",
                                handImage: "assets/images/doctor.png",
                                direction:
                                    "Ullamco tempor aliquip est nostrud in aliquip ea cupidatat ad.",
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back,
                              ),
                            ),
                            ////dots
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
