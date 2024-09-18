import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/utlities/arithmetic_expression_eval.dart';
import 'package:dynamic_form/shared/utlities/bool_expression_eval.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/widgets/form_auto_complete.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_date_picker.dart';
import 'package:dynamic_form/widgets/form_date_time_picker.dart';
import 'package:dynamic_form/widgets/form_display.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_duration.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_panel_widget.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_signature.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_text_area.dart';

Widget getField(
  ElementClassEntity? field,
  GlobalKey<FormBuilderState> key,
  bool readOnly, {
  Function(Object?)? callBack,
}) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormTextField(
          field: _getInitialValue(field, key),
          onChanged: callBack,
          formKey: key,
        ),
      );
    case DynamicFormType.AUTOCOMPLETE:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormAutoComplete(
          field: field,
          onChanged: (value) {
            // globalRebuildNotifier.value = !globalRebuildNotifier.value;
            // key.currentState?.setInternalFieldValue(field.name, value);
            callBack?.call(value);
          },
        ),
      );
    case DynamicFormType.DROPDOWN:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormDropDown(
            field: field,
            onChanged: (value) {
              globalRebuildNotifier.value = !globalRebuildNotifier.value;
              key.currentState?.setInternalFieldValue(field.name, value);
              callBack?.call(value);
            }),
      );

    case DynamicFormType.RADIO:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormRadio(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.CHECKBOX:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormCheckbox(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.FILE:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormFile(
          readOnly: readOnly,
          field: field,
          onChanged: (docs) {
            if (docs.isEmpty) {
              key.currentState?.setInternalFieldValue(field.name, null);
            } else if (docs.length == 1) {
              key.currentState?.setInternalFieldValue(field.name, docs.first);
            } else {
              key.currentState?.setInternalFieldValue(
                  field.name, docs.map((e) => e).toList());
            }

            debugPrint(docs.toString());
          },
        ),
      );
    case DynamicFormType.SWITCH:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormSwitch(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.CHIPS:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormChip(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );

    case DynamicFormType.TEXTAREA:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormTextArea(
          field: field,
          formKey: key,
          onChanged: (value) {
            debugPrint(value);
          },
        ),
      );
    case DynamicFormType.DATETIME:
      return VisibiltyWrapper(
        field: _getInitialValue(field, key),
        formKey: key,
        child: FormDateTimePicker(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.SLIDER:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormSlider(field: field),
      );

    case DynamicFormType.PANEL:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormPanelWidget(
          readOnly: readOnly,
          field: field,
          formKey: key,
        ),
      );

    case DynamicFormType.DATE:
      return VisibiltyWrapper(
        field: _getInitialValue(field, key),
        formKey: key,
        child: FormDatePicker(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );

    case DynamicFormType.DISPLAY:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormDisplay(field: field),
      );

    case DynamicFormType.DURATION:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: FormDuration(
          field: field,
          onChanged: (value) {
            key.currentState?.setInternalFieldValue(field.name, value);
          },
        ),
      );
    case DynamicFormType.SIGNATURE:
      return VisibiltyWrapper(
        field: field,
        formKey: key,
        child: SignatureFormField(
          field: field,
          formKey: key,
          onChanged: (signaturePng) {
            if (signaturePng == null) {
              key.currentState?.setInternalFieldValue(field.name, null);
              return;
            }
            key.currentState?.setInternalFieldValue(field.name, signaturePng);

            debugPrint(signaturePng.toString());
          },
        ),
      );

    default:
      return const SizedBox.shrink();
  }
}

_getInitialValue(
    ElementClassEntity? field, GlobalKey<FormBuilderState> formKey) {
  if (field == null ||
      field.setValueExpression == null ||
      field.setValueExpression == 'null' ||
      field.setValueExpression!.isEmpty) {
    return field;
  }

  Log.f('Field: ${field.name} setValueExpression: ${field.setValueExpression}');
  final value = field.lookUp != null
      ? _getlookUpValue(field, formKey)
      : ArithmeticExpressionEvaluator.evaluate(
          field.setValueExpression!,
          formKey.currentState?.instantValue ?? {},
        );

  Log.i('Initial Value: $value');
  field = field.copyWith(
    initialValue: value.toString(),
    readOnly: value != null && value.toString().isNotEmpty,
  );

  Future.microtask(() {
    final currentField = formKey.currentState?.fields[field?.name];
    if (currentField != null && currentField.value != value.toString()) {
      currentField.didChange(value.toString());
      globalRebuildNotifier.value = !globalRebuildNotifier.value;
    }
  });

  return field;
}

dynamic _getlookUpValue(
    ElementClassEntity field, GlobalKey<FormBuilderState> formKey) {
  Log.f({
    'Field': field.name,
    'LookUp': field.lookUp,
    'LookUp Key': formKey.currentState?.instantValue[field.setValueExpression],
  });
  final key = formKey.currentState?.instantValue[field.setValueExpression];
  final value = field.lookUp?[key];
  Log.f('LookUp Value: $value');
  return value;
}

class VisibiltyWrapper extends StatefulWidget {
  const VisibiltyWrapper({
    super.key,
    required this.child,
    required this.field,
    required this.formKey,
  });
  final Widget child;
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;

  @override
  State<VisibiltyWrapper> createState() => _VisibiltyWrapperState();
}

class _VisibiltyWrapperState extends State<VisibiltyWrapper> {
  @override
  Widget build(BuildContext context) {
    final isVisible = computeExp(
        widget.field.visibleIf, widget.formKey.currentState?.instantValue);

    if (!isVisible) {
      widget.formKey.currentState
          ?.setInternalFieldValue(widget.field.name, null);
    }
    return isVisible ? widget.child : const SizedBox.shrink();
  }
}
