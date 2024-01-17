import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    this.radius = 20,
    this.shapeCircle = true,
    this.borderRadius = 8,
  });
  final String imageUrl;
  final double radius;
  final double borderRadius;

  final bool shapeCircle;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) {
        if (shapeCircle) {
          return CircleAvatar(
            radius: radius,
            backgroundImage: imageProvider,
          );
        } else {
          return Container(
            height: radius,
            width: radius,
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
        if (shapeCircle) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: AppColor.lightGrey,
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: AppColor.lightGrey,
            ),
          );
        }
      },
    );
  }
}
