import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OrgAdminDashBoardPage extends StatelessWidget {
  const OrgAdminDashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision Centre Analytics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.ks),
        child: Column(
          children: [
            Row(
              children: [
                DropdownMenu<String>(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context)
                        : AppSize.width(context) / 2.8,
                    leadingIcon: const Icon(
                      Icons.calendar_today,
                    ),
                    label: const Text('19 Jan 23 - 23 Jan 23'),
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(
                        value: '19 Jan 23 - 23 Jan 23',
                        label: '19 Jan 23 - 23 Jan 23',
                      ),
                      DropdownMenuEntry(
                        value: '19 Jan 23 - 23 Jan 23',
                        label: '19 Jan 23 - 23 Jan 23',
                      ),
                    ]),
                const SizedBox(width: AppSize.ks),
                DropdownMenu<String>(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context)
                        : AppSize.width(context) / 2.7,
                    leadingIcon: const Icon(
                      Icons.location_on,
                    ),
                    label: const Text('Gachibowli, Hyderabad'),
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(
                        value: 'Gachibowli, Hyderabad',
                        label: 'Gachibowli, Hyderabad',
                      ),
                      DropdownMenuEntry(
                        value: 'Gachibowli, Hyderabad',
                        label: 'Gachibowli, Hyderabad',
                      ),
                    ]),
              ],
            ),
            const SizedBox(height: AppSize.km),
            const Row(
              children: [
                StatisticsCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kl),
      width: AppSize.width(context) - AppSize.ks * 2,
      decoration: BoxDecoration(
        color: AppColor.pureBlue,
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: applyFiraSansFont(
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumn('1,58,790', null, 'Patients Attended'),
              _buildColumn('25', null, 'Ongoing cases'),
              _buildColumn('25,000', 'Conjuctivitis', 'Top issue'),
              _buildColumn('1,45,000', 'Spectacles', 'Top solution'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(String number, String? text, String? subText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: applyFiraSansFont(
            fontSize: 32,
            color: AppColor.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (text != null)
          Text(
            text,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        if (subText != null)
          Text(
            subText,
            style: applyRobotoFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
      ],
    );
  }
}
