import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/input_fields/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OrderDelivery extends StatelessWidget {
  const OrderDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCard(
              title: "Requestor Details",
              titleBottomSize: 16,
              margin: null,
              child: Column(
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Order ID",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: "Date",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Doctor Name",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Hospital",
                        ),
                        onChanged: (value) {},
                      ),
                      const Divider(),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Address",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "City",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "State",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              title: "Recipient Details",
              titleBottomSize: 16,
              margin: null,
              child: Column(
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Recipient Name",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Recipient ID",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Gender & Age",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Eye Involved",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Transplantation Procedure",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Pre-Operative Diagnosis",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              title: "Organ Details",
              titleBottomSize: 16,
              margin: null,
              child: Column(
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Tissue ID",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Tissue Type",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Cell Count",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Ageing of Tissue",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Approved Usages",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Tissue Expiry",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Storage Media",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Death to Preservation",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Primary COD",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 16),
          AppCard(
              title: "Shipment Label",
              titleBottomSize: 16,
              margin: null,
              child: Column(
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Printed In",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Hand Carried by",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Ship Via",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Ageing of Tissue",
                        ),
                        onChanged: (value) {},
                      ),
                      const Divider(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.99,
                        child: AppTextField(
                          decoration: const InputDecoration(
                            labelText: "Ship From",
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Ship From",
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.99,
                        child: AppTextField(
                          decoration: const InputDecoration(
                            labelText: "Comments",
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Airline",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "Flight Number",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "From",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField(
                        decoration: const InputDecoration(
                          labelText: "To",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: "ETD Date&Time",
                        ),
                        onChanged: (value) {},
                      ),
                      AppTextField.date(
                        context: context,
                        decoration: const InputDecoration(
                          labelText: "ETD Date&Time",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Shipment Started",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: AppColor.primary,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                  Navigator.of(context).pop();
                },
                child: const Text("Start Shipment"),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
