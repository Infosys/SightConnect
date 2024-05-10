import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TumblingEClickPad extends StatelessWidget {
  final bool isLeftSelected;
  final bool isRightSelected;
  final bool isTopSelected;
  final bool isBottomSelected;
  final void Function()? onLeftClicked;
  final void Function()? onRightClicked;
  final void Function()? onTopClicked;
  final void Function()? onBottomClicked;

  const TumblingEClickPad({
    super.key,
    this.isLeftSelected = false,
    this.isRightSelected = false,
    this.isBottomSelected = false,
    this.isTopSelected = false,
    this.onBottomClicked,
    this.onLeftClicked,
    this.onRightClicked,
    this.onTopClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context) * 0.45,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ETile(
                quater: 3,
                onTap: onTopClicked,
                isSelected: isTopSelected,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ETile(
                quater: 2,
                onTap: onLeftClicked,
                isSelected: isLeftSelected,
              ),
              const SizedBox(),
              ETile(
                isSelected: isRightSelected,
                onTap: onRightClicked,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ETile(
                quater: 1,
                isSelected: isBottomSelected,
                onTap: onBottomClicked,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ETile extends StatelessWidget {
  final int quater;
  final bool isSelected;
  final void Function()? onTap;

  const ETile({
    super.key,
    this.quater = 0,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppSize.height(context) * 0.13,
        width: AppSize.width(context) * 0.30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColor.blue.withOpacity(0.7) : null,
        ),
        child: Container(
          padding: const EdgeInsets.all(AppSize.kl),
          height: 80,
          child: RotatedBox(
              quarterTurns: quater,
              child: SvgPicture.asset(AppImages.tumblingE)),
        ),
      ),
    );
  }
}
