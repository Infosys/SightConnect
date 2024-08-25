import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:flutter/material.dart';

class DynamicFormJsonMapper {
  ResponseJsonModel entitytoModel(ResponseJsonEntity dynamicFormEntity) {
    return ResponseJsonModel();
  }

  Map<String, dynamic>? initialValues;

  ResponseJsonEntity modeltoEntity({
    required ResponseJsonModel dynamicFormModel,
    required Map<String, dynamic>? initialValues,
  }) {
    try {
      this.initialValues = initialValues;
      return ResponseJsonEntity(
        name: _formatTitle(dynamicFormModel.name),
        version: dynamicFormModel.version ?? '',
        logoPosition: dynamicFormModel.logoPosition ?? '',
        formLayoutType: _mapToFormLayoutType(dynamicFormModel.formLayoutType),
        pages: _getPages(dynamicFormModel.pages),
      );
    } catch (e) {
      debugPrint('DynamicFormJsonMapper $e');
      rethrow;
    }
  }

  _formatTitle(String? title) {
    if (title == null) {
      return '';
    }
    return title.contains('_') ? title.replaceAll('_', ' ') : title;
  }

  List<PageEntity> _getPages(List<PageModel>? pages) {
    final List<PageEntity> pageEntities = [];
    if (pages != null) {
      for (final page in pages) {
        pageEntities.add(PageEntity(
          name: page.name.toString(),
          title: page.title ?? '',
          elements: _getPageElements(
            page.elements,
          ),
        ));
      }
    }
    return pageEntities;
  }

  List<PageElementEntity> _getPageElements(List<PageElementModel>? elements) {
    final List<PageElementEntity> pageElementEntities = [];
    if (elements != null) {
      for (final element in elements) {
        pageElementEntities.add(PageElementEntity(
          type: _getPanelType(element.repeats),
          name: element.name.toString(),
          elements: _getElements(
            element.elements,
          ),
          repeats: element.repeats ?? false,
          maxRepeat: element.maxRepeat,
          minRepeat: element.minRepeat,
          initialValue: initialValues?[element.name.toString()],
        ));
      }
    }
    return pageElementEntities;
  }

  List<ElementElementClassEntity> _getElements(
    List<ElementElementClassModel>? elements,
  ) {
    final List<ElementElementClassEntity> elementEntities = [];
    if (elements != null) {
      for (final element in elements) {
        elementEntities.add(
          ElementElementClassEntity(
            initialValue: initialValues?[element.name.toString()],
            type: _mapToFormType(element.type),
            name: element.name.toString(),
            title: element.title ?? '',
            isRequired: element.isRequired ?? false,
            requiredErrorText: element.requiredErrorText ?? '',
            maxSize: element.maxSize ?? 0,
            placeholder: element.placeholder ?? '',
            description: element.description ?? '',
            readOnly: element.readOnly ?? false,
            min: element.min ?? 0,
            max: element.max ?? 3,
            step: element.step ?? 0,
            choices: _getChoices(element.options),
            validators: _getValidators(element.validators),
            dependantField: element.dependantField,
            conditions: _getConditions(element.conditions),
            elements: _getElements(element.elements),
            repeats: element.repeats ?? false,
            minRepeat: element.minRepeat,
            maxRepeat: element.maxRepeat,
            inputType: element.inputType,
            prefix: element.prefix,
          ),
        );
      }
    }
    return elementEntities;
  }

  _getConditions(List<Conditions>? conditions) {
    final List<ConditionsEntity> conditionsEntities = [];
    if (conditions != null) {
      for (final condition in conditions) {
        conditionsEntities.add(ConditionsEntity(
          value: condition.value ?? '',
          fields: _getElements(condition.fields),
        ));
      }
    }
    return conditionsEntities;
  }

  _getChoices(List<OptionsModel>? choices) {
    final List<ChoiceElementEntity> choiceEntities = [];
    if (choices != null) {
      for (final choice in choices) {
        choiceEntities.add(ChoiceElementEntity(
          name: choice.name ?? '',
          title: choice.title ?? '',
        ));
      }
    }
    return choiceEntities;
  }

  List<ValidatorEntity> _getValidators(List<Validator>? validators) {
    final List<ValidatorEntity> validatorEntities = [];
    if (validators != null) {
      for (final validator in validators) {
        validatorEntities.add(ValidatorEntity(
          type: validator.type ?? '',
          text: validator.text ?? '',
          regex: validator.regex ?? '',
          size: validator.size ?? "",
          unit: validator.unit ?? "",
          types: validator.types ?? [],
          uploadUrl: validator.uploadUrl ?? "",
          downloadUrl: validator.downloadUrl ?? "",
        ));
      }
    }
    return validatorEntities;
  }

  DynamicFormType _mapToFormType(String? value) {
    switch (value) {
      case 'TEXTFIELD':
        return DynamicFormType.TEXTFIELD;
      case 'RADIO':
        return DynamicFormType.RADIO;
      case 'CHECKBOX':
        return DynamicFormType.CHECKBOX;
      case 'DROPDOWN':
        return DynamicFormType.DROPDOWN;
      case 'DATETIME':
        return DynamicFormType.DATETIME;
      case 'CHIPS':
        return DynamicFormType.CHIPS;
      case 'RANGE':
        return DynamicFormType.SLIDER;
      case 'SWITCH':
        return DynamicFormType.SWITCH;
      case 'FILE':
        return DynamicFormType.FILE;
      case 'TEXTAREA':
        return DynamicFormType.TEXTAREA;
      case 'conditional':
        return DynamicFormType.CONDITIONAL;
      case 'PANEL':
        return DynamicFormType.PANEL;
      case 'DATE':
        return DynamicFormType.DATE;
      case 'DISPLAY':
        return DynamicFormType.DISPLAY;
      default:
        return DynamicFormType.DEFAULT;
    }
  }
}

FormLayoutType _mapToFormLayoutType(String? value) {
  switch (value) {
    case 'stepper':
      return FormLayoutType.STEPPER;
    case 'expansion-panel':
      return FormLayoutType.PANEL;
    default:
      return FormLayoutType.PANEL;
  }
}

FormPanelType _getPanelType(bool? repeats) {
  if (repeats == true) {
    return FormPanelType.REPEATED_PANEL;
  } else {
    return FormPanelType.PANEL;
  }
}
