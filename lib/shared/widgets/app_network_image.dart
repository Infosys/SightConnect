import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({super.key, required this.imageUrl, this.radius = 20});
  final String imageUrl;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
        backgroundColor: AppColor.lightGrey,
        radius: radius,
      ),
      errorWidget: (context, url, error) => CircleAvatar(
        radius: radius,
        backgroundColor: AppColor.lightGrey,
      ),
      placeholder: (context, url) => CircleAvatar(
        radius: radius,
        backgroundColor: AppColor.lightGrey,
      ),
    );
  }
}
