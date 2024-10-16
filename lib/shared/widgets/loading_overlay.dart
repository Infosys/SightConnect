/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    this.isLoading = false,
    required this.child,
    this.progressMessage = "Loading...",
    this.overlayColor = Colors.black,
    this.overlayOpacity = 0.45,
    this.ignoreOverlayColor = false,
  });
  final bool isLoading;
  final Widget child;
  final String progressMessage;
  final Color overlayColor;
  final double overlayOpacity;
  final bool ignoreOverlayColor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: Scaffold(
        body: Stack(
          children: [
            child,
            Visibility(
              visible: isLoading,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  color: ignoreOverlayColor
                      ? null
                      : overlayColor.withOpacity(overlayOpacity),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        progressMessage,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
