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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ETile(
                quater: 3,
                onTap: onTopClicked,
                isSelected: isTopSelected,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
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
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ETile(
                quater: 1,
                isSelected: isBottomSelected,
                onTap: onBottomClicked,
              ),
            ],
          ),
        )
      ],
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
        constraints: BoxConstraints(
          maxHeight: AppSize.height(context) * 0.1,
          maxWidth: AppSize.height(context) * 0.1,
        ),
        height: double.infinity,
        width: AppSize.width(context) / 4,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColor.blue.withOpacity(0.7) : null,
        ),
        child: Container(
          padding: const EdgeInsets.all(4),
          child: RotatedBox(
              quarterTurns: quater,
              child: SvgPicture.asset(AppImages.tumblingE)),
        ),
      ),
    );
  }
}
