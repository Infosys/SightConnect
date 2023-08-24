import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/local/fake_data_source.dart';

class PatientFamilyDetails extends StatelessWidget {
  const PatientFamilyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Family Details",
            style: applyFiraSansFont(fontSize: 18.sp, fontWeight: FontWeight.w800),
          ),
          AppSize.ksheight.verticalSpace,
          ...hospital
              .map(
                (hospital) => ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      hospital["name"]![0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    hospital["name"] ?? "",
                  ),
                  subtitle: Text(
                    hospital["address"] ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.lightTheme.textTheme.bodySmall,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
