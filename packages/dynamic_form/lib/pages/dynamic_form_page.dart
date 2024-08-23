import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/material.dart';

class DynamicFormPage extends StatefulWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
    this.backButtonIcon = Icons.arrow_back,
    this.enableDraft = false,
    this.canPop = false,
    this.initialValue,
    required this.json,
  });

  final Function(Map<String, dynamic>? data, DynamicFormSavingType mode)?
      onSubmit;
  final bool enableDraft;
  final dynamic json;
  final dynamic initialValue;
  final IconData backButtonIcon;
  final bool canPop;

  @override
  _DynamicFormPageState createState() => _DynamicFormPageState();
}

class _DynamicFormPageState extends State<DynamicFormPage> {
  late Future<ResponseJsonEntity>? _futureJson;

  @override
  void initState() {
    super.initState();
    _futureJson = _loadJson();
  }

  Future<ResponseJsonEntity>? _loadJson() async {
    try {
      Log.f(widget.json);
      return DynamicFormJsonMapper().modeltoEntity(
        dynamicFormModel: ResponseJsonModel.fromJson(widget.json),
        initialValues: {
          "3501900": [
            {
              "3501901": "IN_SITU",
              "3501902": "2024-08-22 12:00:00.000",
              "3501903": "a",
              "3501904": "12",
              "3501905": "12",
              "3501906": "TRANSPLANT",
              "3501907": "MK_MEDIUM",
              "3501908": "12",
              "3501909": "2024-08-22 12:00:00.000",
              "3501910": "YES"
            },
            {
              "3501901": "ENCLEATION",
              "3501902": "2024-08-29 12:00:00.000",
              "3501903": "23",
              "3501904": "23",
              "3501905": "23",
              "3501906": "RESEARCH",
              "3501907": "MK_MEDIUM",
              "3501908": "23",
              "3501909": "2024-08-30 12:00:00.000",
              "3501910": "YES"
            }
          ],
        },
      );
    } catch (e) {
      log('DF:Error Converting json: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureJson,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final pages = snapshot.data?.pages ?? [];
          final title = snapshot.data?.name ?? '';
          final FormLayoutType formLayout =
              snapshot.data?.formLayoutType ?? FormLayoutType.PANEL;
          return FormBuilderPage(
            pages: pages,
            title: title,
            onSubmit: widget.onSubmit,
            layoutType: formLayout,
            backButtonIcon: widget.backButtonIcon,
            enableDraft: widget.enableDraft,
            canPop: widget.canPop,
          );
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
