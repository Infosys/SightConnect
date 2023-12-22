import 'package:flutter/material.dart';

class EmptyResultCard extends StatelessWidget {
  const EmptyResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Start searching for patients to view their details .. ",
        textAlign: TextAlign.center,
      ),
    );
  }
}
