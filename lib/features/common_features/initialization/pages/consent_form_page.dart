import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var consentProvider = FutureProvider((ref) async {
  String consent = """
Aliqua reprehenderit qui cillum sint excepteur dolor eiusmod amet laborum proident in velit aliqua ullamco. Laborum nulla enim culpa amet incididunt nostrud non do exercitation mollit magna aliquip. Proident nisi aliqua minim incididunt nulla elit enim veniam occaecat est reprehenderit est culpa eiusmod. Non laborum ea eiusmod commodo. Veniam ipsum culpa id excepteur ad nostrud tempor cillum do irure exercitation sit quis.
Voluptate nulla Lorem commodo duis ea in ea ut. Velit esse est irure officia eiusmod ullamco est. Nisi veniam ea ex qui anim pariatur non est exercitation. Sit consectetur aliquip in amet non non ad enim adipisicing nulla. Exercitation non commodo cillum laboris voluptate excepteur.
Nostrud Lorem veniam magna commodo occaecat ad consectetur enim ad elit cillum pariatur. Tempor deserunt ipsum minim irure eu tempor non commodo fugiat minim pariatur pariatur eiusmod. Nisi irure aliqua occaecat deserunt esse. Adipisicing minim eiusmod enim culpa occaecat anim officia irure commodo. Nostrud excepteur Lorem incididunt nulla commodo nisi aliquip ullamco. Irure adipisicing aute culpa quis amet sunt culpa non incididunt.
""";
  await Future.delayed(const Duration(seconds: 2));
  return consent;
});

class ConsentFormPage extends HookConsumerWidget {
  const ConsentFormPage({required this.role, super.key});

  final Role role;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isConsentGiven = useState<bool>(false);
    return SafeArea(
      child: PopScope(
        canPop: false,
        child: Scaffold(
          body: ref.watch(consentProvider).when(
                data: (consent) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            AppImages.privacyPolicy,
                            height: AppSize.height(context) * 0.25,
                            width: AppSize.width(context),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          consent,
                          style: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          value: isConsentGiven.value,
                          onChanged: (value) {
                            isConsentGiven.value = value!;
                          },
                          title: const Text(
                            'I agree to the terms and conditions',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: isConsentGiven.value
                              ? () {
                                  Navigator.of(context).pop(true);
                                }
                              : null,
                          child: const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
        ),
      ),
    );
  }
}
