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
      debugPrint('DynamicFormJsonMapper modeltoEntity: $e');
      rethrow;
    }
  }

  _formatTitle(String? title) {
    try {
      if (title == null) {
        return '';
      }
      return title.contains('_') ? title.replaceAll('_', ' ') : title;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _formatTitle: $e');
      rethrow;
    }
  }

  List<PageEntity> _getPages(List<PageModel>? pages) {
    try {
      final List<PageEntity> pageEntities = [];
      if (pages != null) {
        for (final page in pages) {
          try {
            pageEntities.add(PageEntity(
              name: page.name.toString(),
              title: page.title ?? '',
              elements: _getElements(page.elements),
            ));
          } catch (e) {
            debugPrint('DynamicFormJsonMapper _getPages: $e');
            rethrow;
          }
        }
      }
      return pageEntities;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getPages: $e');
      rethrow;
    }
  }

  List<ElementClassEntity> _getElements(List<ElementClassModel>? elements) {
    try {
      final List<ElementClassEntity> elementEntities = [];
      if (elements != null) {
        for (final element in elements) {
          try {
            if (element.type != DynamicFormType.HIDDEN.name) {
              elementEntities.add(
                ElementClassEntity(
                  initialValue:
                      _getInitialValType(_mapToFormType(element.type), element),
                  type: _mapToFormType(element.type),
                  name: element.name.toString().trim(),
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
                  minRepeat: element.minRepeat ?? 1,
                  maxRepeat: element.maxRepeat ?? 1,
                  inputType: element.inputType,
                  prefix: element.prefix,
                  visibleIf: element.visibleIf,
                  setValueExpression: _getdummysetValueExpression(element.name),
                  ensureUnique: element.ensureUnique ?? false,
                  lookUp: _getdummyLookUp(element.name.toString().trim()),
                ),
              );
            }
          } catch (e) {
            debugPrint('DynamicFormJsonMapper _getElements: $e');
            rethrow;
          }
        }
      }
      return elementEntities;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getElements: $e');
      rethrow;
    }
  }

  String? _getdummysetValueExpression(String name) {
    if (name == 'corneaRetrievalRequest.recoveryInformation.expirationDate') {
      return 'corneaRetrievalRequest.recoveryInformation.storageMedium';
    }
    return null;
  }

  Map? _getdummyLookUp(String name) {
    if (name == 'corneaRetrievalRequest.recoveryInformation.expirationDate') {
      return {
        'MK': DateTime.now().add(const Duration(days: 14)).toIso8601String(),
        'Cornisol': '14 days',
        'Optisol-GS': '14 days',
        'Eusol-C': '14 days',
        'Life 4-C': '14 days',
        '100% ETOH': 'One year',
        '95% ETOH': 'One year',
        '70% EOH': 'One year',
        'Moist Chamber': '24 hrs',
        'Glycerin': 'One year',
      };
    }
    return null;
  }

  _getInitialValType(DynamicFormType type, ElementClassModel element) {
    try {
      if (type == DynamicFormType.TEXTFIELD ||
          type == DynamicFormType.TEXTAREA) {
        if (initialValues?[element.name.toString().trim()] == null) {
          return null;
        }
        return initialValues?[element.name.toString().trim()].toString();
      } else {
        return initialValues?[element.name.toString().trim()];
      }
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getInitialValType: $e');
      rethrow;
    }
  }

  _getConditions(List<Conditions>? conditions) {
    try {
      final List<ConditionsEntity> conditionsEntities = [];
      if (conditions != null) {
        for (final condition in conditions) {
          try {
            conditionsEntities.add(ConditionsEntity(
              value: condition.value ?? '',
              fields: _getElements(condition.fields),
            ));
          } catch (e) {
            debugPrint('DynamicFormJsonMapper _getConditions: $e');
            rethrow;
          }
        }
      }
      return conditionsEntities;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getConditions: $e');
      rethrow;
    }
  }

  _getChoices(List<OptionsModel>? choices) {
    try {
      final List<ChoiceElementEntity> choiceEntities = [];
      if (choices != null) {
        for (final choice in choices) {
          try {
            choiceEntities.add(ChoiceElementEntity(
              name: choice.name ?? '',
              title: choice.title ?? '',
            ));
          } catch (e) {
            debugPrint('DynamicFormJsonMapper _getChoices: $e');
            rethrow;
          }
        }
      }
      return choiceEntities;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getChoices: $e');
      rethrow;
    }
  }

  List<ValidatorEntity> _getValidators(List<Validator>? validators) {
    try {
      final List<ValidatorEntity> validatorEntities = [];
      if (validators != null) {
        for (final validator in validators) {
          try {
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
          } catch (e) {
            debugPrint('DynamicFormJsonMapper _getValidators: $e');
            rethrow;
          }
        }
      }
      return validatorEntities;
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _getValidators: $e');
      rethrow;
    }
  }

  DynamicFormType _mapToFormType(String? value) {
    try {
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
        case 'PANEL':
          return DynamicFormType.PANEL;
        case 'DATE':
          return DynamicFormType.DATE;
        case 'DISPLAY':
          return DynamicFormType.DISPLAY;
        case 'HIDDEN':
          return DynamicFormType.HIDDEN;
        case 'DURATION':
          return DynamicFormType.DURATION;
        case 'SIGNATURE':
          return DynamicFormType.SIGNATURE;
        case 'AUTOCOMPLETE':
          return DynamicFormType.AUTOCOMPLETE;
        default:
          return DynamicFormType.DEFAULT;
      }
    } catch (e) {
      debugPrint('DynamicFormJsonMapper _mapToFormType: $e');
      rethrow;
    }
  }
}

FormLayoutType _mapToFormLayoutType(String? value) {
  try {
    switch (value) {
      case 'stepper':
        return FormLayoutType.STEPPER;
      case 'expansion-panel':
        return FormLayoutType.PANEL;
      default:
        return FormLayoutType.PANEL;
    }
  } catch (e) {
    debugPrint('DynamicFormJsonMapper _mapToFormLayoutType: $e');
    rethrow;
  }
}
