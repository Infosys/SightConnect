import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_dynamic_panel.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../utlities/functions.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.elements,
    required this.formKey,
    required this.name,
  });

  final List<PageElementEntity> elements;
  final GlobalKey<FormBuilderState> formKey;
  final String name;

  @override
  Widget build(BuildContext context) {
    if (elements.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: elements.map((panel) {
        if (panel.elements.isEmpty) {
          return Container();
        } else if (panel.type == FormPanelType.REPEATED_PANEL) {
          return AppDynamicPanel(
            name: name,
            panel: panel,
            globalFormKey: formKey,
            minRepeat: panel.minRepeat ?? 1,
            maxRepeat: panel.maxRepeat ?? panel.minRepeat ?? 1,
          );
        } else {
          return AppCard(
            title: name,
            marginBottom: 16,
            child: Wrap(
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: _buildFields(panel.elements, formKey),
            ),
          );
        }
      }).toList(),
    );
  }

  List<Widget> _buildFields(List<ElementElementClassEntity>? fields,
      GlobalKey<FormBuilderState> key) {
    if (fields == null || fields.isEmpty) {
      return [];
    }

    return fields.map((field) {
      // Log.i(field.toJson());

      if (field.type == DynamicFormType.PANEL && field.repeats == true) {
        log("DynamicFormType.PANEL && field.repeats == true");
        return AppDynamicPanel(
          name: field.title,
          globalFormKey: key,
          minRepeat: field.minRepeat ?? 1,
          maxRepeat: field.maxRepeat ?? 1,
          panel: PageElementEntity(
            name: field.name,
            elements: field.elements ?? [],
            repeats: field.repeats,
            type: FormPanelType.REPEATED_PANEL,
            minRepeat: field.minRepeat ?? 1,
            maxRepeat: field.maxRepeat ?? 1,
          ),
        );
      }
      return AppResponsiveWidget(
        widget: getField(field, key),
      );
    }).toList();
  }
}
