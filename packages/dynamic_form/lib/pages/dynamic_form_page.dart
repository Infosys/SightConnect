import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DynamicFormPage extends StatefulWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
    this.backButtonIcon = Icons.arrow_back,
    this.enableDraft = false,
    this.canPop = false,
    this.readOnly = false,
    this.initialValue,
    this.subTitle,
    required this.title,
    required this.json,
  });

  final Function(Map<String, dynamic>? data, DynamicFormSavingType mode)?
      onSubmit;
  final bool enableDraft;
  final dynamic json;
  final dynamic initialValue;
  final IconData backButtonIcon;
  final bool canPop;
  final bool readOnly;
  final String title;
  final String? subTitle;

  @override
  State<DynamicFormPage> createState() => _DynamicFormPageState();
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
      return await compute(_parseJsonInIsolate, {
        'json': widget.json,
        'initialValue': widget.initialValue,
      });
    } catch (e) {
      Log.e('$e');
      rethrow;
    }
  }

  static Future<ResponseJsonEntity> _parseJsonInIsolate(
      Map<String, dynamic> params) async {
    final json = params['json'];
    final initialValue = params['initialValue'] as Map<String, dynamic>?;
    return DynamicFormJsonMapper().modeltoEntity(
      dynamicFormModel: ResponseJsonModel.fromJson(json),
      initialValues: initialValue,
    );
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
            readOnly: widget.readOnly,
            pages: pages,
            title: title,
            subTitle: widget.subTitle,
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
