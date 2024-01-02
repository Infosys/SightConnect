import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class NearbyVisionCentersCard extends StatelessWidget {
  const NearbyVisionCentersCard({super.key, required this.data});
  final OrganizationResponseModel data;

  @override
  Widget build(BuildContext context) {
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

    return InkWell(
      onTap: () {},
      child: Container(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.87
            : AppSize.width(context) * 0.35,
        margin: const EdgeInsets.only(
          left: 16,
        ),
        padding: const EdgeInsets.all(
          AppSize.kmpadding,
        ),
        decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(AppSize.ksradius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.facilityInformation?.facilityName ?? "",
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: AppColor.primary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    getLocation(
                      data.facilityInformation?.facilityAddressDetails ??
                          const FacilityAddressModel(),
                    ),
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.call_outlined,
                  color: AppColor.primary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    data.facilityInformation?.facilityContactInformation
                            ?.facilityContactNumber ??
                        "",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.ksheight,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: AppColor.primary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    data.facilityInformation?.facilityContactInformation
                            ?.facilityEmailId ??
                        "",
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: const Color(0xff333333),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
