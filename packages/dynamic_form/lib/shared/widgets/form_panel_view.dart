import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/shared/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormPanelView extends StatefulWidget {
  const FormPanelView({
    super.key,
    required this.name,
    required this.pages,
    required this.formKey,
    required this.onSubmit,
    this.readOnly = false,
  });
  final String name;
  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final VoidCallback? onSubmit;
  final bool readOnly;

  @override
  State<FormPanelView> createState() => _FormPanelViewState();
}

class _FormPanelViewState extends State<FormPanelView> {
  @override
  Widget build(BuildContext context) {
    Log.f("FormPanelView");

    if (widget.pages.isEmpty) {
      return Container();
    }

    if (widget.pages.length == 1) {
      final panel = widget.pages.first;
      if (panel.elements.isEmpty) {
        return Container();
      }
      return Column(
        children: [
          PageWidget(
            elements: panel.elements,
            formKey: widget.formKey,
            name: panel.name,
          ),
          SubmitBtn(
            key: widget.key,
            onPressed: widget.onSubmit,
          ),
          const SizedBox(height: 100),
        ],
      );
    }

    return Column(
      children: [
        ...widget.pages.map((panel) {
          if (panel.elements.isEmpty) {
            return Container();
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              initiallyExpanded: panel.name == widget.pages.first.name,
              maintainState: true,
              title: Text(panel.name),
              children: [
                PageWidget(
                  elements: panel.elements,
                  formKey: widget.formKey,
                  name: panel.name,
                )
              ],
            ),
          );
        }),
        SubmitBtn(
          key: widget.key,
          onPressed: widget.onSubmit,
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
