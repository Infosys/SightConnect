import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    this.isLoading = false,
    required this.child,
    this.progressMessage = "Loading...",
    this.overlayColor = Colors.black,
  });
  final bool isLoading;
  final Widget child;
  final String progressMessage;
  final Color overlayColor;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: Stack(
        children: [
          child,
          Visibility(
            visible: isLoading,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                color: overlayColor.withOpacity(0.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: CircularProgressIndicator(),
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
    );
  }
}
