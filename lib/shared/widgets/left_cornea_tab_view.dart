import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LeftCorneaTabView extends ConsumerWidget {
  const LeftCorneaTabView({
    required this.leftEyeImage,
    super.key,
  });
  final List<String> leftEyeImage;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 16, top: 5, bottom: 20),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: leftEyeImage.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.15,
            crossAxisSpacing: 1,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: leftEyeImage[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ],
    );
  }
}
