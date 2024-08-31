import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/eb_profile_repository_impl.dart';

class EBProfilePage extends ConsumerWidget {
  const EBProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: kIsWeb ? 2 : 0,
        title: const Text('Profile'),
      ),
      body: ref.watch(ebProfileProvider).when(
            data: (data) {
              var profile = data.fold((l) => null, (r) => r);
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //top card starts here
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _squareAvatar(),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                PersistentAuthStateService.authState.userId ??
                                    "John Doe",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "${profile?.personalInformation?.firstName} ${profile?.personalInformation?.lastName}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              _rowListTile(
                                title: "Gender",
                                subtitle: "Male",
                                title2: "Mobile",
                                subtitle2: PersistentAuthStateService
                                        .authState.username ??
                                    "+1234567890",
                                isSpaceBetween: false,
                                titleColor: AppColor.grey,
                                subtitleColor: AppColor.black,
                                titleSize: 12,
                                subtitleSize: 16,
                                // widthConstraint: AppSize.width(context) * 0.08,
                                spaceBetween: 30,
                                // widthConstraint2: AppSize.width(context) * 0.26,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //top card ends here

                      //personal info card starts here
                      const SizedBox(height: 16),
                      const Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AppCard(
                        margin: null,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _rowListTile(
                                title: "OSID",
                                subtitle: profile?.osid ?? "123456",
                                title2: "Email ID",
                                subtitle2: "priyarajarajan_r01@abcde.com",
                                isSpaceBetween: false,
                                titleColor: AppColor.grey,
                                subtitleColor: AppColor.black,
                                titleSize: 12,
                                subtitleSize: 16,
                                widthConstraint: AppSize.width(context) * 0.38,
                                spaceBetween: 30
                                // widthConstraint2: AppSize.width(context) * 0.26,
                                ),
                            const SizedBox(height: 16),
                            _rowListTile(
                                title: "Address",
                                subtitle:
                                    profile?.communicationAddress?.address ??
                                        "not available",
                                title2: "State",
                                subtitle2:
                                    profile?.communicationAddress?.state ??
                                        "not available",
                                isSpaceBetween: false,
                                titleColor: AppColor.grey,
                                subtitleColor: AppColor.black,
                                titleSize: 12,
                                subtitleSize: 16,
                                widthConstraint: AppSize.width(context) * 0.38,
                                spaceBetween: 30
                                // widthConstraint2: AppSize.width(context) * 0.26,
                                ),
                            const SizedBox(height: 16),
                            _rowListTile(
                              title: "Pincode",
                              subtitle: "N/A",
                              title2: "Country",
                              subtitle2: "India",
                              isSpaceBetween: false,
                              titleColor: AppColor.grey,
                              subtitleColor: AppColor.black,
                              titleSize: 12,
                              subtitleSize: 16,
                              // widthConstraint: AppSize.width(context) * 0.2,
                              spaceBetween: 30,
                              widthConstraint2: AppSize.width(context) * 0.26,
                            ),
                          ],
                        ),
                      ),
                      //personal info card ends here

                      SizedBox(height: AppSize.height(context) * 0.1),
                      OutlinedButton(
                        onPressed: () {
                          ref
                              .read(initializationProvider)
                              .logout()
                              .then((value) {
                            Fluttertoast.showToast(msg: loc.loggedOutMessage);
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              LoginPage.routeName,
                              (route) => false,
                            );
                          }).catchError((e) {
                            logger.e(
                                "Apologies, we encountered a logout error in the mobile app. from OptometritianDashboardPage : $e");
                            Fluttertoast.showToast(msg: loc.optoLogoutError);
                          });
                        },
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Error in fetching profile',
                    style: applyFiraSansFont(
                      fontSize: 16,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget _rowListTile({
    String? title,
    String? subtitle,
    String? title2,
    String? subtitle2,
    Function()? onTap,
    Function()? onTap2,
    bool isSpaceBetween = false,
    double spaceBetween = 16,
    double titleSize = 16,
    double subtitleSize = 16,
    Color titleColor = AppColor.black,
    Color subtitleColor = AppColor.black,
    double? widthConstraint,
    double? widthConstraint2,
  }) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: isSpaceBetween
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: onTap,
              child: SizedBox(
                width: widthConstraint,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? '',
                      style: applyFiraSansFont(
                        fontSize: titleSize,
                        color: titleColor,
                      ),
                    ),
                    Text(
                      subtitle ?? "",
                      style: applyRobotoFont(
                        fontSize: subtitleSize,
                        color: subtitleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!isSpaceBetween) SizedBox(width: spaceBetween),
          Flexible(
            child: GestureDetector(
              onTap: onTap2,
              child: SizedBox(
                width: widthConstraint2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title2 ?? "s",
                      style: applyFiraSansFont(
                        fontSize: titleSize,
                        color: titleColor,
                      ),
                    ),
                    Text(
                      subtitle2 ?? "",
                      style: applyRobotoFont(
                        fontSize: subtitleSize,
                        color: subtitleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _squareAvatar([
    double? height,
    double? width,
    BoxFit? fit,
    Image? image,
  ]) {
    return Container(
      height: height ?? 100,
      width: width ?? 100,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.black,
          width: 1,
        ),
      ),
      child: image != null
          ? Image(
              image: image.image,
              fit: fit ?? BoxFit.cover,
            )
          : const Icon(
              Icons.person,
              color: AppColor.grey,
              size: 50,
            ),
    );
  }
}


            //  const CircleAvatar(
            //       maxRadius: 50,
            //       backgroundColor: AppColor.grey,
            //     ),
            //     const SizedBox(height: 16),
            //     AppCard(
            //       margin: null,
            //       child: Padding(
            //         padding: const EdgeInsets.all(16.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Name: John Doe',
            //               style: applyFiraSansFont(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16,
            //               ),
            //             ),
            //             const SizedBox(height: 8),
            //             Text(
            //               'Email: john.doe@example.com',
            //               style: applyFiraSansFont(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16,
            //               ),
            //             ),
            //             const SizedBox(height: 8),
            //             Text(
            //               'Phone: +1234567890',
            //               style: applyFiraSansFont(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     const SizedBox(height: 16),