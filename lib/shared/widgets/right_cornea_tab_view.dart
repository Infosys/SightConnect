import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RightCorneaTabView extends ConsumerWidget {
  const RightCorneaTabView({
    required this.rightEyeImage,
    super.key,
  });

  final List<String> rightEyeImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 16, top: 5, bottom: 20),
        ),
        Flexible(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: rightEyeImage.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.15,
              crossAxisSpacing: 1,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl:rightEyeImage[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
    );
  }
}
