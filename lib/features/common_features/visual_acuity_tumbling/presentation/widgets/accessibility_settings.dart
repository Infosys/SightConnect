import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';

void showAccessibilitySettings(BuildContext context, WidgetRef ref) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              insetPadding: const EdgeInsets.all(10),
              title: Text(
                'Accessibility Settings',
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _AutoFontSizeWidget(),
                    const SizedBox(height: AppSize.kmheight),
                    const _AutoBrightnessWidget(),
                    const SizedBox(height: AppSize.kmheight),
                    const _AutoContrastWidget(),
                    const SizedBox(height: AppSize.kmheight),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Save Changes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Reset to Default'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

class _AutoBrightnessWidget extends HookWidget {
  const _AutoBrightnessWidget();

  @override
  Widget build(BuildContext context) {
    var brightness = useState<double>(0.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Auto-Brightness",
          style: applyFiraSansFont(),
        ),
        const SizedBox(height: AppSize.kmheight),
        Container(
          decoration: BoxDecoration(
            color: AppColor.lightGrey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/brightnesslow.png",
                width: 30,
              ),
              Flexible(
                child: Slider(
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  value: brightness.value,
                  label: '${brightness.value.round()}',
                  onChanged: (double value) async {
                    brightness.value = value;
                    await _setBrightness(value);
                  },
                ),
              ),
              Image.asset(
                "assets/images/autobrightness.png",
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<double> _currentBrightness() async {
    try {
      return await ScreenBrightness().current;
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to get current brightness';
    }
  }

  Future<void> _setBrightness(double brightness) async {
    try {
      await ScreenBrightness().setScreenBrightness(brightness);
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to set brightness';
    }
  }
}

class _AutoFontSizeWidget extends HookWidget {
  const _AutoFontSizeWidget();

  @override
  Widget build(BuildContext context) {
    var scaleFactor = useState<double>(1);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Font Size",
          style: applyFiraSansFont(),
        ),
        const SizedBox(height: AppSize.kmheight),
        Container(
          decoration: BoxDecoration(
            color: AppColor.lightGrey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "T",
                  textScaleFactor: scaleFactor.value,
                  style: applyRobotoFont(),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    return Flexible(
                      child: SizedBox(
                        child: Slider(
                          value: scaleFactor.value,
                          onChanged: (double s) {
                            scaleFactor.value = s;
                            ref.read(textScaleFactorProvider.notifier).state =
                                s;
                          },
                          divisions: 4,
                          min: 1,
                          max: 1.8,
                        ),
                      ),
                    );
                  },
                ),
                Text(
                  "T",
                  textScaleFactor: scaleFactor.value,
                  style: applyRobotoFont(),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        Text(
          "Turning off auto-brightness or auto-contrast may affect test performance and accuracy. These parameters have been preset for optimal levels. However, you may change these parameters to suit your visual comfort levels.",
          textScaleFactor: scaleFactor.value,
          style: applyRobotoFont(),
        ),
      ],
    );
  }
}

class _AutoContrastWidget extends HookWidget {
  const _AutoContrastWidget();

  @override
  Widget build(BuildContext context) {
    var contrast = useState<double>(0.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Auto-Contrast",
          style: applyFiraSansFont(),
        ),
        const SizedBox(height: AppSize.kmheight),
        Container(
          decoration: BoxDecoration(
            color: AppColor.lightGrey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppSize.kmradius),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/autocontrastmin.png",
                width: 30,
              ),
              Flexible(
                child: Slider(
                  min: 0.0,
                  max: 1.0,
                  divisions: 10,
                  value: contrast.value,
                  label: '${contrast.value.round()}',
                  onChanged: (double value) async {
                    contrast.value = value;
                  },
                ),
              ),
              Image.asset(
                "assets/images/autocontrastmax.png",
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
