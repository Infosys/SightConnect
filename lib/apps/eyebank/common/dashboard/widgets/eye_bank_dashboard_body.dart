import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class EyeBankDashboardBody extends StatelessWidget {
  const EyeBankDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cases',
                    style: applyRobotoFont(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _showForm(context);
                    },
                    child: Text(
                      'Add Case',
                      style: applyRobotoFont(
                        color: AppColor.black,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showForm(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WoltModalSheet.show<void>(
        context: context,
        pageListBuilder: (modalSheetContext) {
          return [
            WoltModalSheetPage(
              navBarHeight: 0,
              child: const SizedBox(
                child: SizedBox(
                  height: 700,
                  child: DynamicFormPage(),
                ),
              ),
            ),
          ];
        },
        modalTypeBuilder: (context) {
          if (Responsive.isMobile(context)) {
            return const WoltBottomSheetType();
          } else {
            return WoltDialogType(
              shapeBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }
        },
      );
    });
  }
}
