import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsultationType extends HookConsumerWidget {
  const ConsultationType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(0);
    var model = ref.watch(bookAppointmentProvider);
    if (isSelected.value == 0) {
      model.setConsultationType("Telephone Consultation");
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 2,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              childAspectRatio: 2.5),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (isSelected.value != index) {
                  isSelected.value = index;
                  if (index == 0) {
                    model.setConsultationType("Telephone Consultation");
                  } else {
                    model.setConsultationType("In Clinic Consultation");
                  }
                }
              },
              child: Container(
                // height: AppSize.height(context) * 0.06,
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kspadding,
                    vertical: AppSize.kspadding - 2),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isSelected.value == index
                        ? AppColor.blue
                        : AppColor.white,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: isSelected.value == index
                            ? AppColor.blue
                            : AppColor.grey,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: AppSize.kspadding - 2),
                    Flexible(
                      child: Text(
                        index == 0
                            ? "Telephone Consultation"
                            : "In Clinic Consultation",
                        softWrap: true,
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: isSelected.value == index
                              ? AppColor.black
                              : AppColor.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
