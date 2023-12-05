import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistoryTableView extends HookConsumerWidget {
  IvrCallHistoryTableView({super.key});

  var tablefilter = [
    {"type": "All", "checked": true},
    {"type": "Completed", "checked": true},
    {"type": "Failed", "checked": true},
    {"type": "No Answer", "checked": true}
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(
            height: AppSize.klheight,
          ),
          Wrap(
            children: [
              for (int index = 0; index < tablefilter.length; index++) ...[
                ChoiceChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(color: AppColor.grey, width: 1),
                  backgroundColor: AppColor.white,
                  padding: const EdgeInsets.all(8),
                  label: Text(tablefilter[index]["type"] as String),
                  selectedColor: tablefilter[index]["checked"] == true
                      ? AppColor.lightBlue
                      : AppColor.white,
                  onSelected: (bool selected) {},
                  selected: true,
                ),
                SizedBox(
                  width: AppSize.klwidth,
                )
              ],
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.kspadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                border: TableBorder.all(color: Colors.green
                ,borderRadius: BorderRadius.circular(20)
                ),
                  dataRowHeight: 100.0,
                  dataRowColor: MaterialStatePropertyAll(Colors.white),
                  // Datatable widget that have the property columns and rows.
                  columns: const [
                    // Set the name of the column
                    DataColumn(
                      label: Text('Patient ID'),
                    ),
                    DataColumn(
                      label: Text('Name'),
                    ),
                    DataColumn(
                      label: Text('Duration'),
                    ),
                    DataColumn(
                      label: Text('Day'),
                    ),
                    DataColumn(
                      label: Text('Time'),
                    ),
                    DataColumn(
                      label: Text('Status'),
                    ),
                  ],
                  rows: const [
                    // Set the values to the columns

                    DataRow(cells: [
                      DataCell(Text("OP 545678")),
                      DataCell(Text("Arun Das")),
                      DataCell(Text("5 min")),
                      DataCell(Text("Today")),
                      DataCell(Text("1:15 pm")),
                      DataCell(Text("COMPLETED")),
                    ]),

                    DataRow(cells: [
                      DataCell(Text("OP 545678")),
                      DataCell(Text("Arun Das")),
                      DataCell(Text("5 min")),
                      DataCell(Text("Today")),
                      DataCell(Text("1:15 pm")),
                      DataCell(Text("COMPLETED")),
                    ]),
                  ]),
            ),
          ),
        ]));
  }
}
