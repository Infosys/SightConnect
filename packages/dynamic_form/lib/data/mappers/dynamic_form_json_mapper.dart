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
          type: _mapToFormType(element.type).toString(),
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
          inputType: element.inputType ?? '',
          choices: _getChoices(element.choices),
          isRequired: element.isRequired ?? false,
          requiredErrorText: element.requiredErrorText ?? '',
          maxSize: element.maxSize ?? 0,
          validators: _getValidators(element.validators),
          placeholder: element.placeholder ?? '',
          description: element.description ?? '',
          readOnly: element.readOnly ?? false,
          min: element.min ?? 0,
          max: element.max ?? 0,
          step: element.step ?? 0,
        ));
      }
    }
    return elementEntities;
  }

  _getValidators(List<ValidatorModel>? validators) {
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

  List<ChoiceClassEntity> _getChoices(List<ChoiceClassModel>? choices) {
    final List<ChoiceClassEntity> choiceEntities = [];
    if (choices != null) {
      for (final choice in choices) {
        choiceEntities.add(ChoiceClassEntity(
          text: choice.text ?? '',
          value: choice.value ?? '',
        ));
      }
    }
    return choiceEntities;
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
      case 'DATETIME':
        return DynamicFormType.DATETIME;
      case 'CHIPS':
        return DynamicFormType.CHIPS;
      case 'SLIDER':
        return DynamicFormType.SLIDER;
      case 'boolean':
        return DynamicFormType.SWITCH;
      case 'file':
        return DynamicFormType.FILE;
      case 'comment':
        return DynamicFormType.TEXTAREA;

      default:
        return DynamicFormType.DEFAULT;
    }
  }
}
