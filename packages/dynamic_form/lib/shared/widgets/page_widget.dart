import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.elements,
    required this.formKey,
    required this.name,
    this.readOnly = false,
  });

  final List<ElementClassEntity> elements;
  final GlobalKey<FormBuilderState> formKey;
  final String name;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    if (elements.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: elements.map((panel) {
        if (panel.elements == null) {
          return Container();
        } else {
          return AppCard(
            title: name,
            marginBottom: 16,
            child: Wrap(
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: elements.map((field) {
                return getField(field, formKey);
              }).toList(),
            ),
          );
        }
      }).toList(),
    );
  }
}
