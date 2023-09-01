import 'dart:ui';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:screen_brightness/screen_brightness.dart';

double startfontvalue = 0;
double startcontrastvalue = 0;
double startbrightvalue = 0.0;

// code cleanup needed

Future<double> currentBrightness() async {
  try {
    return await ScreenBrightness().current;
  } catch (e) {
    print(e);
    throw 'Failed to get current brightness';
  }
}

Future<void> setBrightness(double brightness) async {
  try {
    await ScreenBrightness().setScreenBrightness(brightness);
  } catch (e) {
    print(e);
    throw 'Failed to set brightness';
  }
}

void showAccessibilitySettings(BuildContext context, WidgetRef ref) {
  var model = ref.watch(tumblingTestProvider);
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              insetPadding: const EdgeInsets.all(10),
              title: Text(
                'Accessibility Settings',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: model.largeText,
                    ),
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Font Size",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontSize: model.largeText,
                                  color: const Color(0xff333333)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffFAFAFA),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "T",
                                  style: TextStyle(fontSize: model.smallText),
                                ),
                                Flexible(
                                  child: SizedBox(
                                    child: Slider(
                                      value: startfontvalue,
                                      onChanged: (double s) {
                                        setState(() {
                                          model.reSizeDemoText(s);
                                          startfontvalue = s;
                                        });
                                      },
                                      divisions: 4,
                                      min: -2,
                                      max: 2,
                                    ),
                                  ),
                                ),
                                Text(
                                  "T",
                                  style: TextStyle(fontSize: model.largeText),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Turning off auto-brightness or auto-contrast may affect test performance and accuracy. These parameters have been preset for optimal levels. However, you may change these parameters to suit your visual comfort levels.",
                      style: TextStyle(
                        fontSize: model.demoTextSize,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Auto-Brightness",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontSize: model.largeText,
                                  color: const Color(0xff333333)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
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
                                  value: startbrightvalue,
                                  label: '${startbrightvalue.round()}',
                                  onChanged: (double value) async {
                                    if (value >= 0.0 && value <= 1.0) {
                                      startbrightvalue = value;
                                      var brightness =
                                          await currentBrightness();
                                      print("sdfffff");
                                      print(brightness);
                                      setBrightness(value);
                                    }

                                    setState(() {});
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Auto-Contrast",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontSize: model.largeText,
                                  color: const Color(0xff333333)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffFAFAFA),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/autocontrastmin.png",
                                width: 30,
                              ),
                              Flexible(
                                child: Slider(
                                  value: startcontrastvalue,
                                  min: 0.0,
                                  max: 1.0,
                                  divisions: 10,
                                  label: '${startcontrastvalue.round()}',
                                  onChanged: (double value) {
                                    setState(() {
                                      startcontrastvalue = value;
                                    });
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            model.saveChanges();
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
