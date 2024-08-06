import 'package:eye_care_for_all/apps/eyebank/helpers/modals/search_case_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../data/models/table_data.dart';

class CaseRegisterTile extends StatelessWidget {
  final TableData item;
  final bool isCompact;
  final VoidCallback? onTap;

  const CaseRegisterTile(
      {Key? key, required this.item, this.isCompact = false, this.onTap})
      : super(key: key);

  static final SearchCaseModel caseModel = SearchCaseModel(
    caseId: 1945,
    screeningStatus: 'Final',
    donarBrief: const DonarBrief(
      id: 9334,
      name: "George Soros",
      contact: '666 666 666 666',
    ),
    intimateDate: DateTime.parse('2024-08-06T07:00:22.706Z'),
    performerId: 0,
    deathDate: DateTime.parse('2024-08-06T07:00:22.706Z'),
    bodyLocation: const BodyLocation(
      street: '42 Avenue Street',
      city: 'New York City',
      state: 'New York',
      zipCode: '10001',
      country: 'USA',
      landmark: 'Statue of Liberty',
      village: 'string',
      district: 'string',
      latitude: 'string',
      longitude: 'string',
    ),
    organExtracted: ['Brain'],
  );

  @override
  Widget build(BuildContext context) {
    if (isCompact) {
      return _buildCompactRow(context);
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTopRow(context),
            const SizedBox(height: 8),
            _buildDateInfo(context),
            const SizedBox(height: 8),
            _buildOrganInfo(context),
          ]),
        ),
      ),
    );
  }

  Widget _buildCompactRow(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      caseModel.donarBrief?.name ?? "",
                      style: applyRobotoFont(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      caseModel.screeningStatus ?? "",
                      style: applyRobotoFont(
                        color: Theme.of(context).primaryColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  caseModel.donarBrief!.contact!,
                  style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Case ID: ${caseModel.caseId}',
                  style: applyRobotoFont(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                caseModel.donarBrief?.name ?? "",
                style: applyRobotoFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                caseModel.donarBrief?.contact ?? "",
                style: applyRobotoFont(fontSize: 12, color: AppColor.grey),
              ),
              Text(
                '${caseModel.bodyLocation!.street!}, ${caseModel.bodyLocation!.city}, ${caseModel.bodyLocation!.state}',
                style: applyRobotoFont(fontSize: 12, color: AppColor.darkGrey),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Case ID : ${caseModel.caseId}',
            style: TextStyle(
              fontSize: 10,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            caseModel.screeningStatus!,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateInfo(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.calendar_today,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            'Death: ${caseModel.deathDate.formateDate}',
            style: const TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(width: 8),
        Icon(
          Icons.calendar_today,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            'Intimate: ${caseModel.intimateDate.formateDate}',
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildOrganInfo(BuildContext context) {
    return Row(
      children: [
        Text(
          'Organs Extracted:',
          style: applyRobotoFont(fontSize: 12, color: AppColor.primary),
        ),
        const SizedBox(width: 8),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: caseModel.organExtracted!
              .map((organ) => _buildOrganChip(context, organ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildOrganChip(BuildContext context, String organ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).primaryColor, width: 0.5),
      ),
      child: Text(
        organ,
        style: applyFiraSansFont(
          fontSize: 10,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
