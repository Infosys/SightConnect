import 'package:flutter/material.dart';

class LeftCorneaTabView extends StatelessWidget {
  const LeftCorneaTabView({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> data = [
      "assets/images/mask_a_one.png",
      "assets/images/mask_b_one.png",
      "assets/images/mask_c_one.png",
      "assets/images/mask_a_two.png",
      "assets/images/mask_b_two.png",
      "assets/images/mask_c_two.png",
      "assets/images/mask_a_three.png",
      "assets/images/mask_b_three.png",
      "assets/images/mask_c_three.png",
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 16, top: 5, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Input Image"),
              Text("Tangential Map"),
              Text("Axial Map"),
            ],
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.15,
              crossAxisSpacing: 1,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var currentData = data[index];
              return Image.asset(
                currentData,
              );
            }),
      ],
    );
  }
}










































