import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../providers/vg_add_member_provider.dart';
import 'vg_event_teammates_data_cards.dart';

class EventTeammatesTab extends HookConsumerWidget {
  const EventTeammatesTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionGuadianAddMemberProvider);

    // var addNewTeammate = useState<bool>(false);
    var addMember = useState<bool>(false);

    // var isEdit1 = useState<bool>(true);
    var nameController1 = useTextEditingController();
    var mobileController1 = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Teammates(2)",
            style: applyRobotoFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColor.black,
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),

          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: model.getMemberData.length,
              itemBuilder: (context, index) {
                var data = model.getMemberData;
                return TeammatesDataCards(index:index, data: data);
              },
            ),
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(AppSize.ksradius),
          //     color: AppColor.white,
          //     border: Border.all(
          //       color: AppColor.grey.withOpacity(0.5),
          //     ),
          //   ),
          //   padding: const EdgeInsets.all(AppSize.kspadding),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisSize: MainAxisSize.max,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           CircleAvatar(
          //             radius: 20,
          //             backgroundColor: AppColor.grey.withOpacity(0.8),
          //             child: Image.asset(
          //               AppImages.raghavi,
          //               fit: BoxFit.contain,
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 10,
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 nameController1.value.text == ''
          //                     ? "Neema Sengupta"
          //                     : nameController1.value.text,
          //                 style: applyFiraSansFont(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w500,
          //                   color: AppColor.black,
          //                 ),
          //               ),
          //               SizedBox(
          //                 width: AppSize.width(context) * 0.7,
          //                 child: Row(
          //                   children: [
          //                     Expanded(
          //                       child: Text(
          //                         "ID 568799",
          //                         style: applyRobotoFont(
          //                           fontSize: 12,
          //                           fontWeight: FontWeight.w500,
          //                           color: AppColor.grey,
          //                         ),
          //                       ),
          //                     ),
          //                     isEdit.value
          //                         ? InkWell(
          //                             onTap: () {
          //                               isEdit1.value = !isEdit1.value;
          //                             },
          //                             child: const Icon(
          //                               Icons.edit_outlined,
          //                               color: AppColor.grey,
          //                               size: 30,
          //                             ),
          //                           )
          //                         : InkWell(
          //                             onTap: () {
          //                               isEdit1.value = !isEdit1.value;
          //                             },
          //                             child: const Icon(
          //                               Icons.check_circle_outline,
          //                               color: AppColor.grey,
          //                               size: 30,
          //                             ),
          //                           ),
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                     const InkWell(
          //                       child: Icon(
          //                         Icons.delete_outline,
          //                         color: AppColor.red,
          //                         size: 30,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Text(
          //                 mobileController1.value.text == ''
          //                     ? "+91 8876543321"
          //                     : mobileController1.value.text,
          //                 style: applyRobotoFont(
          //                   fontSize: 12,
          //                   fontWeight: FontWeight.w500,
          //                   color: AppColor.black,
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //       const SizedBox(
          //         height: AppSize.ksheight,
          //       ),
          //       Visibility(
          //         visible: !isEdit1.value,
          //         child: Column(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //               child: TextField(
          //                 controller: nameController1,
          //                 onChanged: (value) {
          //                   nameController1.text = value;
          //                 },
          //                 decoration: InputDecoration(
          //                   hintText: "Name",
          //                   hintStyle: applyRobotoFont(
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w500,
          //                     color: AppColor.grey,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(
          //               height: AppSize.klheight,
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //               child: TextField(
          //                 onChanged: (value) {
          //                   mobileController1.text = value;
          //                 },
          //                 controller: mobileController1,
          //                 decoration: InputDecoration(
          //                   hintText: "Phone Number",
          //                   hintStyle: applyRobotoFont(
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w500,
          //                     color: AppColor.grey,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(
          //               height: AppSize.klheight,
          //             ),
          //           ],
          //         ),
          //       ),

          //     ],
          //   ),
          // ),

          //Add teammate buttom with an add button in a circle before the text.

          // const SizedBox(
          //   height: AppSize.klheight,
          // ),

          Visibility(
            visible: addMember.value,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.grey.withOpacity(0.5),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      onChanged: (value) {
                        nameController1.text = value;
                      },
                      controller: nameController1,
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                        suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  model.addMemberData(nameController1.text,
                                      mobileController1.text);
                                  nameController1.clear();
                                  mobileController1.clear();
                                  addMember.value = false;
                                },
                                child: const Icon(
                                  Icons.check_circle_outline,
                                  color: AppColor.grey,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const InkWell(
                                child: Icon(
                                  Icons.delete,
                                  color: AppColor.red,
                                  size: 30,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      onChanged: (value) {
                        mobileController1.text = value;
                      },
                      controller: mobileController1,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: () {
              addMember.value = !addMember.value;
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.add_circle_outline,
                  color: AppColor.primary,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Add Teammate",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
