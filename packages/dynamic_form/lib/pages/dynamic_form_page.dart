import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/widgets/dynamic_form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
  });
  final Function(Map<String, dynamic>?)? onSubmit;

  Future<ResponseJsonEntity>? _loadJson() async {
    const path = "packages/dynamic_form/assets/survey_js_final.json";
    final json = await rootBundle.loadString(path);
    try {
      return DynamicFormJsonMapper()
          .modeltoEntity(ResponseJsonModel.fromJson(jsonDecode(json)));
    } catch (e) {
      log('Error loading form $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final pages = snapshot.data?.pages ?? [];
          final title = snapshot.data?.title ?? '';
          return FormBuilderPage(
              pages: pages, title: title, onSubmit: onSubmit);
        } else if (snapshot.hasError) {
          return FormErrorWidget(
            error: snapshot.error,
            stackTrace: snapshot.stackTrace.toString(),
          );
        } else {
          return const LoaderWidget();
        }
      },
    );
  }
}
