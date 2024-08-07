import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/widgets/form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/material.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
    this.actions,
    this.backButtonIcon = Icons.arrow_back,
    required this.json,
  });
  final Function(Map<String, dynamic>?)? onSubmit;

  final List<Widget>? actions;
  final String json;
  final IconData backButtonIcon;

  Future<ResponseJsonEntity>? _loadJson() async {
    try {
      return DynamicFormJsonMapper()
          .modeltoEntity(ResponseJsonModel.fromJson(jsonDecode(json)));
    } catch (e) {
      log('Error Converting json: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text('Warning'),
            content: Text('Are you sure you want to exit?'),
          ),
        );
      },
      child: FutureBuilder(
        future: _loadJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pages = snapshot.data?.pages ?? [];
            final title = snapshot.data?.title ?? '';
            final FormLayoutType formLayout =
                snapshot.data?.formLayoutType ?? FormLayoutType.PANEL;
            return Scaffold(
              appBar: AppBar(
                title: Text(title),
                actions: actions,
                leading: IconButton(
                    icon: Icon(backButtonIcon),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              body: FormBuilderPage(
                pages: pages,
                title: title,
                onSubmit: onSubmit,
                layoutType: formLayout,
              ),
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
      ),
    );
  }
}
