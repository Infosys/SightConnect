import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/dropdown_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatelessWidget {
   AddressDetails({super.key});
  static List<String> listOfStates = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa"
  ];

  var doorNoContoller = TextEditingController();
  var streetContoller = TextEditingController();
  var districtContoller = TextEditingController();
  var cityContoller = TextEditingController();
  var stateContoller = TextEditingController();
  var landMarkContoller = TextEditingController();
  var pinCodeContoller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: AppSize.klheight * 20,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.all(AppSize.klpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address Details (Optional)",
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                Wrap(
                  spacing: AppSize.klwidth,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child:  Input(
                              title: "Door Number",
                              keyboardType: TextInputType.name,
                              controller: doorNoContoller,
                              ),
                        ),
                        const SizedBox(
                          width: AppSize.kmwidth,
                        ),
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child:  Input(
                              title: "Street",
                              keyboardType: TextInputType.name,
                              controller: streetContoller,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child:  Input(
                              title: "District",
                              keyboardType: TextInputType.name,
                              controller: districtContoller,),
                        ),
                        const SizedBox(
                          width: AppSize.kmwidth,
                        ),
                        SizedBox(
                            width: AppSize.width(context) * 0.4,
                            child:  Input(
                                title: "City",
                                keyboardType: TextInputType.name,
                                controller: cityContoller,)),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child: DropdownInput(
                              title: "State", listOfOptions: listOfStates),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child:  Input(
                              title: "Landmark",
                              keyboardType: TextInputType.name,
                              controller: landMarkContoller,),
                        ),
                        const SizedBox(
                          width: AppSize.kmwidth,
                        ),
                        SizedBox(
                          width: AppSize.width(context) * 0.4,
                          child:  Input(
                              title: "Pincode",
                              keyboardType: TextInputType.number,
                              controller: pinCodeContoller,),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )));
  }
}
