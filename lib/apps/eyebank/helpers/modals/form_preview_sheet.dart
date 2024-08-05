import 'dart:math';

import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

showCustomWoltSheet(BuildContext context, Widget child) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    WoltModalSheet.show<void>(
      context: context,
      pageListBuilder: (modalSheetContext) {
        return [
          WoltModalSheetPage(
            scrollController: null,
            useSafeArea: true,
            trailingNavBarWidget: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(modalSheetContext).pop();
              },
            ),
            child: SizedBox(
              height: MediaQuery.of(modalSheetContext).size.height,
              child: child,
            ),
          ),
        ];
      },
      modalTypeBuilder: (context) {
        if (Responsive.isMobile(context)) {
          return WoltModalType.bottomSheet();
        } else {
          return const FormPreviewSheet();
        }
      },
    );
  });
}

class FormPreviewSheet extends WoltModalType {
  final EdgeInsetsDirectional padding;

  const FormPreviewSheet({
    this.padding = const EdgeInsetsDirectional.all(32.0),
  }) : super(
          shapeBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          )),
          dismissDirection: WoltModalDismissDirection.up,
          showDragHandle: false,
          closeProgressThreshold: 0.8,
          barrierDismissible: false,
        );

  @override
  String routeLabel(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    return localizations.dialogLabel;
  }

  @override
  BoxConstraints layoutModal(Size availableSize) {
    final availableWidth = availableSize.width;
    double width = availableWidth > 523.0
        ? availableWidth * (kIsWeb ? 0.55 : 0.9)
        : availableWidth - padding.end;
    return BoxConstraints(
      minWidth: width,
      maxWidth: width,
      minHeight: availableSize.height,
      maxHeight: availableSize.height,
    );
  }

  @override
  Offset positionModal(
    Size availableSize,
    Size modalContentSize,
    TextDirection textDirection,
  ) {
    final xOffset = textDirection == TextDirection.rtl
        ? 0.0
        : max(0.0, availableSize.width - modalContentSize.width);
    return Offset(xOffset, 0);
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    final isClosing = animation.status == AnimationStatus.reverse;

    const enteringInterval = Interval(0.0, 100.0 / 300.0, curve: Curves.linear);
    const exitingInterval = Interval(100.0 / 250.0, 1.0, curve: Curves.linear);

    const enteringCubic = Cubic(0.2, 0.6, 0.4, 1.0);
    const exitingCubic = Cubic(0.5, 0, 0.7, 0.2);

    final interval = isClosing ? exitingInterval : enteringInterval;
    final reverseInterval = isClosing ? enteringInterval : exitingInterval;

    final cubic = isClosing ? exitingCubic : enteringCubic;
    final reverseCubic = isClosing ? enteringCubic : exitingCubic;

    // Define the alpha animation for entering
    final alphaAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: interval,
        reverseCurve: reverseInterval,
      ),
    );

    // Define the position animation for entering
    final positionAnimation = Tween<Offset>(
      begin: isRtl ? const Offset(-1.0, 0.0) : const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: cubic,
        reverseCurve: reverseCubic,
      ),
    );

    return FadeTransition(
      opacity: alphaAnimation,
      child: SlideTransition(
        position: positionAnimation,
        child: child,
      ),
    );
  }
}
