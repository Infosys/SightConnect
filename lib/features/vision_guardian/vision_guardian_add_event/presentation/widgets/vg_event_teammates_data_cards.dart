import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../patient/patient_assessments_and_tests/data/fake_data_source.dart';

class TeammatesDataCards extends HookWidget {
  const TeammatesDataCards({super.key, required this.index, required this.data});

  final int index;
  final List<dynamic> data;

  @override
  Widget build(BuildContext context) {
    var nameController = useTextEditingController();
    var mobileController = useTextEditingController();
    var isEdit = useState<bool>(true);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        color: AppColor.white,
        border: Border.all(
          color: AppColor.grey.withOpacity(0.5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kspadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColor.grey.withOpacity(0.8),
                child: Image.asset(
                  "assets/images/doctor.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Transform.translate(
                offset: const Offset(0, -5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: AppSize.width(context) * 0.7,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              nameController.value.text == ''
                                  ? data[index]["name"]
                                  : nameController.value.text,
                              style: applyFiraSansFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          isEdit.value
                              ? Transform.translate(
                                  offset: const Offset(0, 10),
                                  child: InkWell(
                                    onTap: () {
                                      isEdit.value = !isEdit.value;
                                    },
                                    child: const Icon(
                                      Icons.edit_outlined,
                                      color: AppColor.grey,
                                      size: 30,
                                    ),
                                  ),
                                )
                              : Transform.translate(
                                  offset: const Offset(0, 10),
                                  child: InkWell(
                                    onTap: () {
                                      isEdit.value = !isEdit.value;
                                    },
                                    child: const Icon(
                                      Icons.check_circle_outline,
                                      color: AppColor.grey,
                                      size: 30,
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          Transform.translate(
                            offset: const Offset(0, 10),
                            child: const InkWell(
                              child: Icon(
                                Icons.delete_outline,
                                color: AppColor.red,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Text(
                      mobileController.value.text == ''
                          ? data[index]["mobile"]
                          : mobileController.value.text,
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Visibility(
            visible: !isEdit.value,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextField(
                    controller: nameController,
                    onChanged: (value) {
                      nameController.text = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Name",
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextField(
                    onChanged: (value) {
                      mobileController.text = value;
                    },
                    controller: mobileController,
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
        ],
      ),
    );
  }
}
