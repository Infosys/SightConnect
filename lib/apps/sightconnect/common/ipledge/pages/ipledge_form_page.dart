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
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
              model.isPledgingDone
                  ? AppCard(
                      title: "Thank you!",
                      child: Text(
                        "Your kindness has made a real difference.",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    )
                  : AppCard(
                      title: "Important",
                      child: Text(
                        "If you wish to update the locked fields, please do so in the profile page.",
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
              const SizedBox(height: AppSize.ks),
              AppCard(
                title: 'Kin Details',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NameField(
                      nameController: model.kinName,
                      enabled: !model.isPledgingDone,
                    ),
                    const SizedBox(height: AppSize.km),
                    RelationShipField(
                      initialValue: model.kinRelationship.text == ''
                          ? null
                          : model.kinRelationship.text,
                      enabled: !model.isPledgingDone,
                      onSelected: (value) {
                        model.kinRelationship.text = value;
                      },
                    ),
                    const SizedBox(height: AppSize.km),
                    MobileField(
                      mobileController: model.kinMobile,
                      enabled: !model.isPledgingDone,
                    ),
                  ],
                ),
              ),
              AppCard(
                title: 'Personal Details',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NameField(
                      nameController: model.fullName,
                      enabled: false,
                    ),
                    const SizedBox(height: AppSize.km),
                    DOBField(dobController: model.dob),
                    const SizedBox(height: AppSize.km),
                    MobileField(
                      mobileController: model.mobile,
                      enabled: false,
                    ),
                    const SizedBox(height: AppSize.km),
                    GenderField(genderController: model.gender),
                    const SizedBox(height: AppSize.km),
                    EmailField(emailController: model.email)
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
                      enabled: false,
                      addressController: model.address,
                    ),
                    const SizedBox(height: AppSize.km),
                    Row(
                      children: [
                        Expanded(
                          child: StateField(
                            enabled: false,
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
                            enabled: false,
                            localityController: model.localityAndTown,
                          ),
                        ),
                        const SizedBox(width: AppSize.km),
                        Expanded(
                          child: CityAndDistrictField(
                            enabled: false,
                            cityController: model.cityAndDistrict,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppCard(
                title: "Additional Details",
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AdditionalField(
                      enabled: !model.isPledgingDone,
                      additionalController: model.additionalInfo,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: model.isPledgingDone
          ? Container(
              height: 50,
              padding: const EdgeInsets.all(12.0),
              child: Center(
                  child: Text(
                      'You Pledged On ${model.pledgeDate?.formatDateTimeMonthNameWithTime}')),
            )
          : SumbitButton(
              isChecked: true,
              onCheckPressed: (value) {
                model.setIAgreeAndAccepted(value!);
              },
              onPressed: () async {
                try {
                  if (model.formKey.currentState!.validate()) {
                    await model.submitPledge();
                    if (context.mounted) {
                      showIplegeDialog(context);
                    }
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please fill all the required fields");
                  }
                } on Failure catch (e) {
                  Fluttertoast.showToast(msg: e.errorMessage);
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
