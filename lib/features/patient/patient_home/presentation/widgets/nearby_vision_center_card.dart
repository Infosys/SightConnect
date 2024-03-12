import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class NearbyVisionCentersCard extends StatelessWidget {
  const NearbyVisionCentersCard({super.key, required this.data});
  final OrganizationResponseModel data;

  @override
  Widget build(BuildContext context) {
    final email =
        data.facilityInformation?.facilityContactInformation?.facilityEmailId ??
            "";

    final contact = data.facilityInformation?.facilityContactInformation
            ?.facilityContactNumber ??
        "";
    String getLocation(FacilityAddressModel address) {
      String location = "";
      if (address.addressLine1 != null) {
        location += address.addressLine1!;
      }
      if (address.addressLine2 != null) {
        location += ", ${address.addressLine2!}";
      }
      if (address.facilityRegion != null) {
        location += ", ${address.facilityRegion!}";
      }
      if (address.country != null) {
        location += ", ${address.country!}";
      }
      if (address.pincode != null) {
        location += ", ${address.pincode!}";
      }
      return location;
    }

    (String, String) getCoordinates(FacilityAddressModel address) {
      if (address.latitude != null) {
        return (address.latitude!, address.longitude!);
      }
      return ("", "");
    }

    return InkWell(
      onTap: () {},
      child: Container(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.87
            : AppSize.width(context) * 0.35,
        height: AppSize.height(context) * 0.2,
        margin: const EdgeInsets.only(right: AppSize.ks),
        padding: const EdgeInsets.all(AppSize.km),
        decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.7),
          border: Border.all(
            color: AppColor.lightGrey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppSize.ks),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    data.facilityInformation?.facilityName ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final coordinates = getCoordinates(
                        data.facilityInformation?.facilityAddressDetails ??
                            const FacilityAddressModel());

                    logger.d({
                      "latitude": coordinates.$1,
                      "longitude": coordinates.$2,
                    });

                    if (coordinates.$1.isNotEmpty &&
                        coordinates.$2.isNotEmpty) {
                      try {
                        final url =
                            "https://www.google.com/maps/search/?api=1&query=${coordinates.$1},${coordinates.$2}";
                        await _launchUrl(url);
                      } catch (e) {
                        logger.e(e);
                      }
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppIcon.location,
                        width: 13,
                        height: 13,
                        colorFilter: const ColorFilter.mode(
                          AppColor.primary,
                          BlendMode.srcATop,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Show on Map",
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.ks),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcon.location,
                  width: 18,
                  height: 18,
                  colorFilter: const ColorFilter.mode(
                    AppColor.grey,
                    BlendMode.srcATop,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    getLocation(
                      data.facilityInformation?.facilityAddressDetails ??
                          const FacilityAddressModel(),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.ks),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AppIcon.call,
                    width: 18,
                    height: 18,
                    colorFilter: const ColorFilter.mode(
                      AppColor.grey,
                      BlendMode.srcATop,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "$email, $contact",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: const Color(0xff333333),
                      ),
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

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  String getLocation(FacilityAddressModel address) {
    String location = "";
    if (address.addressLine1 != null) {
      location += address.addressLine1!;
    }
    if (address.addressLine2 != null) {
      location += ", ${address.addressLine2!}";
    }
    if (address.facilityRegion != null) {
      location += ", ${address.facilityRegion!}";
    }
    if (address.country != null) {
      location += ", ${address.country!}";
    }
    if (address.pincode != null) {
      location += ", ${address.pincode!}";
    }
    return location;
  }

  String getSpeciality(GeneralInformationModel specialities) {
    String speciality = "";
    if (specialities.hasBloodBank != null) {
      if (specialities.hasBloodBank == "true") {
        speciality += "Blood Bank";
      }
    }
    if (specialities.hasCathLab != null) {
      if (specialities.hasCathLab == "true") {
        speciality += "| Cath Lab";
      }
    }
    if (specialities.hasDiagnosticLab != null) {
      if (specialities.hasDiagnosticLab == "true") {
        speciality += "| Diagnostic Lab";
      }
    }
    if (specialities.hasDialysisCenter != null) {
      if (specialities.hasDialysisCenter == "true") {
        speciality += "| Dialysis Center";
      }
    }
    if (specialities.hasImagingCenter != null) {
      if (specialities.hasImagingCenter == "true") {
        speciality += "| Imaging Center";
      }
    }
    if (specialities.hasPharmacy != null) {
      if (specialities.hasPharmacy == "true") {
        speciality += "| Pharmacy";
      }
    }
    return speciality;
  }
}
