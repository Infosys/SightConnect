import 'dart:ui';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_carousel.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/constants/app_size.dart';

var tumblingDialogProvider = StateProvider<bool>((ref) => true);

class TumblingOverlay extends ConsumerStatefulWidget {
  const TumblingOverlay({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  ConsumerState<TumblingOverlay> createState() => _TumblingOverlayState();
}

class _TumblingOverlayState extends ConsumerState<TumblingOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Visibility(
          visible: ref.watch(tumblingDialogProvider),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: AppSize.width(context) * 0.9,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                  ),
                  child: Padding(
                    padding: Responsive.isMobile(context)
                        ? const EdgeInsets.all(AppSize.kmpadding)
                        : const EdgeInsets.all(AppSize.klpadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Direction",
                          style: applyFiraSansFont(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: AppSize.ksheight,
                        ),
                        Text(
                          'Here is how you interpret the directions for each symbol',
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        const SizedBox(height: AppSize.kmheight),
                        const TumblingCarousel(),
                      ],
                    ),
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
