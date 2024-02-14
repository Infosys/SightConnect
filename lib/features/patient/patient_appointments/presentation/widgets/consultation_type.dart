import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsultationType extends StatelessWidget {
  const ConsultationType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Consultation Type",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.kmheight),
        const Row(
          children: [
            ConsultationChip(
              title: "Telephone Consultation",
            ),
            ConsultationChip(title: "In Clinic Consultation"),
          ],
        )
      ],
    );
  }
}

class ConsultationChip extends ConsumerWidget {
  const ConsultationChip({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? type = ref.watch(bookAppointmentHelperProvider).consultationType;

    bool isSelected = title == type;

    return Flexible(
      child: InkWell(
        onTap: () {
          ref.read(bookAppointmentHelperProvider).updateConsultationType(title);
        },
        child: Container(
          margin: const EdgeInsets.all(AppSize.kspadding),
          // height: AppSize.height(context) * 0.06,
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.kspadding, vertical: AppSize.kspadding - 2),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected ? AppColor.blue : AppColor.white,
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
                  color: isSelected ? AppColor.blue : AppColor.grey,
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
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: isSelected ? AppColor.black : AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
