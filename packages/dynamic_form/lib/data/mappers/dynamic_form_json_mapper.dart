import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:flutter/material.dart';

class DynamicFormJsonMapper {
  ResponseJsonModel entitytoModel(ResponseJsonEntity dynamicFormEntity) {
    return ResponseJsonModel();
  }

  ResponseJsonEntity modeltoEntity(ResponseJsonModel dynamicFormModel) {
    try {
      return ResponseJsonEntity(
        title: dynamicFormModel.title ?? '',
        logoPosition: dynamicFormModel.logoPosition ?? '',
        formLayoutType: _mapToFormLayoutType(dynamicFormModel.formLayoutType),
        pages: _getPages(dynamicFormModel.pages),
      );
    } catch (e) {
      debugPrint('DynamicFormJsonMapper $e');
      rethrow;
    }
  }

  List<PageEntity> _getPages(List<PageModel>? pages) {
    final List<PageEntity> pageEntities = [];
    if (pages != null) {
      for (final page in pages) {
        pageEntities.add(PageEntity(
          name: page.name ?? '',
          elements: _getPageElements(page.elements),
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
          type: _getPanelType(element.type),
          name: element.name ?? '',
          elements: _getElements(element.elements),
        ));
      }
    }
    return pageElementEntities;
  }

  List<ElementElementClassEntity> _getElements(
      List<ElementElementClassModel>? elements) {
    final List<ElementElementClassEntity> elementEntities = [];
    if (elements != null) {
      for (final element in elements) {
        elementEntities.add(ElementElementClassEntity(
          type: _mapToFormType(element.type),
          name: element.name ?? '',
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
          mapValueChoices:
              _getChoices(_mapToFormType(element.type), element.choices, "map"),
          stringValueChoices: _getChoices(
              _mapToFormType(element.type), element.choices, "string"),
          validators: _getValidators(element.validators),
          choices: element.choices ?? [],
          dependantField: element.dependantField,
          conditions: _getConditions(element.conditions),
          elements: _getElements(element.elements),
        ));
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

  _getChoices(
      DynamicFormType type, List<dynamic>? choices, String currentChoiceType) {
    if (choices == null) {
      return null;
    }
    if (type == DynamicFormType.RADIO || type == DynamicFormType.CHECKBOX) {
      if (currentChoiceType == "map") {
        return choices
            .map((e) => RadioChoiceElementEntity.fromJson(e))
            .toList();
      } else {
        return null;
      }
    } else if (type == DynamicFormType.DROPDOWN) {
      if (currentChoiceType == "string") {
        return choices.map((e) => e.toString()).toList();
      } else {
        return null;
      }
    }
  }

  List<ValidatorEntity> _getValidators(List<Validator>? validators) {
    final List<ValidatorEntity> validatorEntities = [];
    if (validators != null) {
      for (final validator in validators) {
        validatorEntities.add(ValidatorEntity(
          type: validator.type ?? '',
          text: validator.text ?? '',
          regex: validator.regex ?? '',
        ));
      }
    }
    return validatorEntities;
  }

  DynamicFormType _mapToFormType(String? value) {
    switch (value) {
      case 'text':
        return DynamicFormType.TEXTFIELD;
      case 'radiogroup':
        return DynamicFormType.RADIO;
      case 'checkbox':
        return DynamicFormType.CHECKBOX;
      case 'dropdown':
        return DynamicFormType.DROPDOWN;
      case 'datetime-local':
        return DynamicFormType.DATETIME;
      case 'CHIPS':
        return DynamicFormType.CHIPS;
      case 'range':
        return DynamicFormType.SLIDER;
      case 'boolean':
        return DynamicFormType.SWITCH;
      case 'file':
        return DynamicFormType.FILE;
      case 'comment':
        return DynamicFormType.TEXTAREA;
      case 'conditional':
        return DynamicFormType.CONDITIONAL;
      case 'panel':
        return DynamicFormType.PANEL;
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

FormPanelType _getPanelType(String? value) {
  switch (value) {
    case 'panel':
      return FormPanelType.PANEL;
    case 'repeated-panel':
      return FormPanelType.REPEATED_PANEL;
    default:
      return FormPanelType.PANEL;
  }
}
