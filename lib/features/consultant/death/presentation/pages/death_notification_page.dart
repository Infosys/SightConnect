import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/dob_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DeathNotificationPage extends HookWidget {
  const DeathNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Death Notification"),
      ),
      body: Form(
        key: formKey.value,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              AppCard(
                title: 'Donar Information',
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: DOBField(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
