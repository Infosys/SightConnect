import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../utlities/functions.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.name,
    required this.elements,
    required this.formKey,
  });
  final String name;
  final List<PageElementEntity> elements;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    if (elements.isEmpty) {
      return Container();
    }

    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(
        name,
        style: const TextStyle(fontSize: 16.0),
      ),
      children: elements.map((panel) {
        if (panel.elements.isEmpty) {
          return Container();
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppCard(
            title: panel.name,
            child: Wrap(
              runSpacing: 16,
              children: _buildFields(panel.elements, formKey),
            ),
          ),
        );
      }).toList(),
    );
  }

  List<Widget> _buildFields(List<ElementElementClassEntity>? fields,
      GlobalKey<FormBuilderState> key) {
    if (fields == null) {
      return [];
    }

    return fields.map((field) {
      return AppResponsiveWidget(widget: getField(field, key));
    }).toList();
  }
}
