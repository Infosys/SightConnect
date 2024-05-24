import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/widgets.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    this.padding = AppSize.ks,
    this.enableBorder = false,
    this.color = AppColor.lightGrey,
    this.borderThickness = 1,
    super.key,
  });
  final Widget child;
  final double padding;
  final bool enableBorder;
  final Color color;
  final double borderThickness;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
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
