import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/widgets.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    this.padding = AppSize.ks,
    this.enableBorder = false,
    this.color = AppColor.lightGrey,
    this.borderThickness = 1,
    this.title,
    this.titleBottomSize = AppSize.km,
    this.margin = const EdgeInsets.symmetric(
      vertical: AppSize.ks,
      horizontal: AppSize.km,
    ),
    super.key,
  });
  final Widget child;
  final double padding;
  final bool enableBorder;
  final Color color;
  final double borderThickness;
  final String? title;
  final double titleBottomSize;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Container(
        margin: margin,
        padding: EdgeInsets.all(padding * 2),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: applycustomShadow(),
          border: enableBorder
              ? Border.all(
                  color: color,
                  width: borderThickness,
                )
              : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.km - 5),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontSize: AppSize.km,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: titleBottomSize),
            child,
          ],
        ),
      );
    }
    return Container(
      margin: margin,
      padding: EdgeInsets.all(padding * 2),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applycustomShadow(),
        border: enableBorder
            ? Border.all(
                color: color,
                width: borderThickness,
              )
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: child,
    );
  }
}
