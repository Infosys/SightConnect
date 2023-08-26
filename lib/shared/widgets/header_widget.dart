import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.subtitle, required this.image});

  final String image;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            image,
            height: 100,
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const Icon(
                Icons.copyright,
                size: 14,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
