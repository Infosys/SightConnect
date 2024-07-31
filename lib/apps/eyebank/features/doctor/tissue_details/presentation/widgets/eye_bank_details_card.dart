import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeBankDetailsCard extends StatelessWidget {
  const EyeBankDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColor.lightBlueOpacity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Eye Bank Details',
            style: applyFiraSansFont(fontSize: 16),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Lion's Eye Bank",
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'REG#123',
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.primary,
              ),
            ),
            leading: const CircleAvatar(
              child: Text('LE'),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.message),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Text(
            'Address',
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Omar Complex, 23 Street, Rayapet, Hyderabad - 500032',
                  style: applyRobotoFont(fontSize: 14),
                ),
              ),
              TextButton(
                child: Text(
                  'View Map',
                  style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
