import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/widgets/app_card.dart';
import 'package:dynamic_form/widgets/error_widget.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_data_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_area.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:dynamic_form/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({
    super.key,
  });
  Future<ResponseJsonEntity>? _loadJson() async {
    await Future.delayed(const Duration(seconds: 2));
    final json = await rootBundle
        .loadString("packages/dynamic_form/assets/survey_js_final.json");
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
          return FormLayout(pages: pages, title: title);
        } else if (snapshot.hasError) {
          return ErrorDisplayWidget(
              error: snapshot.error,
              stackTrace: snapshot.stackTrace.toString());
        } else {
          return const LoaderWidget();
        }
      },
    );
  }
}

class FormLayout extends StatelessWidget {
  const FormLayout({
    super.key,
    required this.pages,
    required this.title,
  });
  final String title;
  final List<PageEntity> pages;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var page in pages)
                AppCard(
                  title: page.name,
                  child: Column(
                    children: page.elements
                        .map((element) =>
                            _buildFields(element.elements, formKey))
                        .expand((element) => element)
                        .toList(),
                  ),
                ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24.0,
                          horizontal: 32.0,
                        ),
                      ),
                      onPressed: () {
                        log(formKey.currentState!.value.toString());
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          log(formKey.currentState!.value.toString());
                        } else {
                          print('Form validation failed');
                        }
                      },
                      child: const Text('Submit Form'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFields(List<ElementElementClassEntity>? fields,
      GlobalKey<FormBuilderState> key) {
    if (fields == null) {
      return [];
    }

    return fields.map((field) {
      return getField(field, key);
    }).toList();
  }
}

Widget getField(
    ElementElementClassEntity? field, GlobalKey<FormBuilderState> key) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return FormTextField(
        field: field,
        onChanged: (value) {
          debugPrint(value);
        },
      );

    case DynamicFormType.DROPDOWN:
      return FormDropDown(
          field: field,
          onChanged: (value) {
            debugPrint(value);
          });

    case DynamicFormType.DATETIME:
      return FormDataTimePicker(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.RADIO:
      return FormRadio(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.CHECKBOX:
      return FormCheckbox(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.FILE:
      return FormFile(
        field: field,
        onChanged: (value) {
          key.currentState?.setInternalFieldValue(
              field.name, value.map((e) => e.path).toList());
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.SWITCH:
      return FormSwitch(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.CHIPS:
      return FormChip(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.TEXTAREA:
      return FormTextArea(
        field: field,
        onChanged: (value) {
          debugPrint(value);
        },
      );

    case DynamicFormType.SLIDER:
      return FormSlider(field: field);

    default:
      return Container();
  }
}
