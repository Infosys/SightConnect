import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';

class AppWebView extends HookWidget {
  const AppWebView({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    var isLoading = useState<bool>(false);
    var progress = useState<double>(0.0);
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(url),
          ),
          initialSettings: InAppWebViewSettings(
            preferredContentMode: UserPreferredContentMode.MOBILE,
            textZoom: AppSize.width(context) ~/ 2,
          ),
          onProgressChanged: (controller, p) {
            progress.value = p / 100;
            if (progress.value == 100) {
              isLoading.value = false;
            } else {
              isLoading.value = true;
            }
          },
        ),
        progress.value < 1.0
            ? LinearProgressIndicator(value: progress.value)
            : Container(),
      ],
    );
  }
}
