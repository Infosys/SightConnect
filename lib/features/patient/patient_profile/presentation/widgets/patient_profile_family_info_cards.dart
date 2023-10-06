import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientFamilyDetails extends StatelessWidget {
  const PatientFamilyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'name': 'Chunkey Pandey',
        'image': 'assets/images/connection_dp_two.png',
        'about': 'Father,65 years',
        'completion': 'Profile completion 100%',
        'color': AppColor.green,
      },
      {
        'name': 'Mangal Pandey',
        'image': 'assets/images/connections_dp_three.png',
        'about': 'Brother,28 years',
        'completion': 'Profile completion 100%',
        'color': AppColor.green,
      },
      {
        'name': 'Rati Pandey',
        'image': 'assets/images/profile_image.png',
        'about': 'Sister,18 years',
        'completion': 'Profile completion 80%',
        'color': AppColor.orange,
      },
    ];

    return ListTile(
      visualDensity: VisualDensity.compact,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Members",
            style: applyFiraSansFont(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          ...data
              .map(
                (data) => ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  contentPadding: const EdgeInsets.all(0),
                  leading: CircleAvatar(
                    backgroundColor: AppColor.black,
                    child: Image.asset(
                      data["image"],
                    ),
                  ),
                  title: Text(
                    data["name"],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    data["about"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        data["completion"],
                        softWrap: true,
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: data['color'],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  width: 42.0,
                  height: 42.0,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.lightBlue,
                      width: 1.0,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.blue,
                  ),
                ),
              ),
              const SizedBox(width: AppSize.ksheight + 10),
              Text(
                "Add Members",
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
