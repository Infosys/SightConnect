import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_color.dart';

class EventTeammatesTab extends HookWidget {
  const EventTeammatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    var isEdit = useState<bool>(true);
    var nameController = useTextEditingController();
    var mobileController = useTextEditingController();
    var isEdit1 = useState<bool>(true);
    var nameController1 = useTextEditingController();
    var mobileController1 = useTextEditingController();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            Container(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameController.value.text == ''
                                ? "Ritu Gupta"
                                : nameController.value.text,
                            style: applyFiraSansFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: AppSize.width(context) * 0.7,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "ID 344456",
                                    style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ),
                                isEdit.value
                                    ? InkWell(
                                        onTap: () {
                                          isEdit.value = !isEdit.value;
                                        },
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: AppColor.grey,
                                          size: 30,
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          isEdit.value = !isEdit.value;
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
                                    Icons.delete_outline,
                                    color: AppColor.red,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            mobileController.value.text == ''
                                ? "+91 8876543321"
                                : mobileController.value.text,
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
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
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Container(
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
                          AppImages.raghavi,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameController1.value.text == ''
                                ? "Neema Sengupta"
                                : nameController1.value.text,
                            style: applyFiraSansFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: AppSize.width(context) * 0.7,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "ID 568799",
                                    style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ),
                                isEdit.value
                                    ? InkWell(
                                        onTap: () {
                                          isEdit1.value = !isEdit1.value;
                                        },
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: AppColor.grey,
                                          size: 30,
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          isEdit1.value = !isEdit1.value;
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
                                    Icons.delete_outline,
                                    color: AppColor.red,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            mobileController1.value.text == ''
                                ? "+91 8876543321"
                                : mobileController1.value.text,
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  Visibility(
                    visible: !isEdit1.value,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: TextField(
                            controller: nameController1,
                            onChanged: (value) {
                              nameController1.text = value;
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
