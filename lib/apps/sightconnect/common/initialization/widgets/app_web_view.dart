/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:flutter/material.dart';
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
    return ref.watch(consentHtmlProvider(url)).when(
      data: (data) {
        return SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                child: HtmlWidget(data),
              ),
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
