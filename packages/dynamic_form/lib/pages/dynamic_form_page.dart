import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/widgets/app_card.dart';
import 'package:dynamic_form/widgets/app_responsive_widget.dart';
import 'package:dynamic_form/widgets/error_widget.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_data_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
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
  Future<DynamicFormJsonEntity>? _loadJson() async {
    await Future.delayed(const Duration(seconds: 2));
    final json = await rootBundle
        .loadString("packages/dynamic_form/assets/test_form.json");
    try {
      return DynamicFormJsonMapper()
          .modeltoEntity(DynamicFormJsonModel.fromJson(jsonDecode(json)));
    } catch (e) {
      throw Exception('Error loading form $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final sections = snapshot.data?.sections ?? [];
          final title = snapshot.data?.title ?? '';
          return FormLayout(sections: sections, title: title);
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
    required this.sections,
    required this.title,
  });
  final String title;
  final List<SectionEntity>? sections;

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
              if (sections != null)
                for (var section in sections!)
                  AppCard(
                    title: section.sectionTitle,
                    marginBottom: 16,
                    child: Wrap(
                      runAlignment: WrapAlignment.start,
                      alignment: WrapAlignment.start,
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        ..._buildFields(section.fields, formKey).map(
                          (widget) => AppResponsiveWidget(
                            widget: widget,
                          ),
                        ),
                      ],
                    ),
                  ),
              const SizedBox(height: 20),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFields(
      List<FieldEntity>? fields, GlobalKey<FormBuilderState> key) {
    if (fields == null) {
      return [];
    }
    return fields.map<Widget>((field) {
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
                  field.label, value.map((e) => e.path).toList());
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
        // case DynamicFormType.CONDITIONAL:
        //   return Container(
        //     color: Colors.red,
        //     child: const Column(
        //         // children: _buildFields(field.hint, key),
        //         ),
        //   );
        default:
          return Container();
      }
    }).toList();
  }
}
