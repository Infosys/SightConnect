import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    Key? key,
    required this.imageUrl,
    this.radius = 20,
    this.shapeCircle = true,
    this.borderRadius = 8,
    this.height,
    this.width,
  }) : super(key: key);

  final String imageUrl;
  final double radius;
  final double borderRadius;
  final double? height;
  final double? width;
  final bool shapeCircle;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: {
        'Authorization':
            'Bearer ${PersistentAuthStateService.authState.accessToken}'
      },
      imageBuilder: (context, imageProvider) {
        if (shapeCircle) {
          return CircleAvatar(
            radius: radius,
            backgroundImage: imageProvider,
          );
        } else {
          return Container(
            height: height ?? radius,
            width: width ?? radius,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      },
      errorWidget: (context, url, error) {
        logger.e('Error loading image: $error');
        if (shapeCircle) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: AppColor.lightGrey,
          );
        } else {
          return Container(
            height: height ?? radius,
            width: width ?? radius,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: AppColor.lightGrey,
            ),
          );
        }
      },
      placeholder: (context, url) {
        if (shapeCircle) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: AppColor.lightGrey,
          );
        } else {
          return Container(
            height: height ?? radius,
            width: width ?? radius,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: AppColor.lightGrey,
            ),
          );
        }
      },
    );
  }
}
