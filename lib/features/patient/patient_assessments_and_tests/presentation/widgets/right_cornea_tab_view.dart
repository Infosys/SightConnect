import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class RightCorneaTabView extends StatelessWidget {
  const RightCorneaTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text("Input Image"),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/mask_a_one.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_a_two.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_a_three.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("Tangential Map"),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/mask_b_one.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_b_two.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_b_three.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text("Axial Map"),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/mask_c_one.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_c_two.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                  Image.asset(
                    'assets/images/mask_c_three.png',
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.width(context) * 0.23,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
