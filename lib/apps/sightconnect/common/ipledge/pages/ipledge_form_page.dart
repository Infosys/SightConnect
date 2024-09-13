import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/provider/ipledge_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/additional_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/address_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/city_and_district_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/dob_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/email_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/gender_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/locality_and_town_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/mobile_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/name_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/pincode_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/relationship_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/state_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/widgets/sumbit_button.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IPledgeFormPage extends ConsumerWidget {
  const IPledgeFormPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(ipledgeProvider);
    if (model.isLoading) {
      return const Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('iPledge'),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: model.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppCard(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NameField(nameController: model.fullName),
                    const SizedBox(height: AppSize.km),
                    DOBField(dobController: model.dob),
                    const SizedBox(height: AppSize.km),
                    MobileField(mobileController: model.mobile),
                    const SizedBox(height: AppSize.km),
                    GenderField(genderController: model.gender),
                    const SizedBox(height: AppSize.km),
                    EmailField(emailController: model.email)
                  ],
                ),
              ),
              AppCard(
                title: 'Kin Details',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NameField(nameController: model.kinName),
                    const SizedBox(height: AppSize.km),
                    RelationShipField(
                      onSelected: (value) {
                        model.kinRelationship.text = value;
                      },
                    ),
                    const SizedBox(height: AppSize.km),
                    MobileField(
                      mobileController: model.kinMobile,
                    ),
                  ],
                ),
              ),
              AppCard(
                title: 'Address Details',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AddressField(
                      addressController: model.address,
                    ),
                    const SizedBox(height: AppSize.km),
                    Row(
                      children: [
                        Expanded(
                          child: StateField(
                            initialValue: model.state.text,
                            onSelected: (value) {
                              model.state.text = value;
                            },
                          ),
                        ),
                        const SizedBox(width: AppSize.km),
                        Expanded(
                          child: PincodeField(
                            pincodeController: model.pincode,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.km),
                    Row(
                      children: [
                        Expanded(
                          child: LocalityAndTownField(
                            localityController: model.localityAndTown,
                          ),
                        ),
                        const SizedBox(width: AppSize.km),
                        Expanded(
                          child: CityAndDistrictField(
                            cityController: model.cityAndDistrict,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const AppCard(
                title: "Additional Details",
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AdditionalField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SumbitButton(
        isChecked: model.isIAgreeAndAccepted,
        onCheckPressed: (value) {
          model.setIAgreeAndAccepted(value!);
        },
        onPressed: () async {
          await model.submitPledge();
          if (context.mounted) {
            showIplegeDialog(context);
          }
        },
      ),
    );
  }
}

void showIplegeDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 35),
            const SizedBox(height: 8),
            Text(
              "Thank you!",
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Your kindness has made a real difference.",
              textAlign: TextAlign.center,
              style: applyFiraSansFont(),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                ..pop()
                ..pop();
            },
            child: const Text("Ok"),
          ),
        ],
      );
    },
  );
}
