import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var consentHtmlProvider =
    FutureProvider.family<String, String>((ref, endpoint) {
  final dio = ref.watch(dioProvider);
  Future<String> getConsentHtml(String endpoint) async {
    try {
      logger.d("consent url is - $endpoint");
      final response = await dio.get(endpoint);
      return response.data.toString();
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  return getConsentHtml(endpoint);
});

class AppWebView extends HookConsumerWidget {
  const AppWebView({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var isLoading = useState<bool>(false);
    var progress = useState<double>(0.0);

    return ref.watch(consentHtmlProvider(url)).when(
      data: (data) {
        return SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                child: HtmlWidget(
                  data,
                ),
              ),
              progress.value < 1.0
                  ? LinearProgressIndicator(value: progress.value)
                  : Container(),
            ],
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('Error: $error'),
        );
      },
    );
  }
}
