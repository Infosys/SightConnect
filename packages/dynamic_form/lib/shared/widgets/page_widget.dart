import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_dynamic_panel.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../utlities/functions.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({
    super.key,
    required this.elements,
    required this.formKey,
  });

  final List<PageElementEntity> elements;
  final GlobalKey<FormBuilderState> formKey;

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.elements.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: widget.elements.map((panel) {
        if (panel.elements.isEmpty) {
          return Container();
        }
        return panel.type == FormPanelType.REPEATED_PANEL
            ? AppDynamicPanel(
                panel: panel,
                formKey: widget.formKey,
              )
            : AppCard(
                title: panel.name,
                marginBottom: 16,
                child: Wrap(
                  runSpacing: 16,
                  alignment: WrapAlignment.start,
                  children: _buildFields(panel.elements, widget.formKey),
                ),
              );
      }).toList(),
    );
  }

  List<Widget> _buildFields(List<ElementElementClassEntity>? fields,
      GlobalKey<FormBuilderState> key) {
    if (fields == null || fields.isEmpty) {
      return [];
    }

    return fields.map((field) {
      return AppResponsiveWidget(
        widget: getField(field, key),
      );
    }).toList();
  }
}
