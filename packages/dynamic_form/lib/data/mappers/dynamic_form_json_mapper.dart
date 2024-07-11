import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';

class DynamicFormJsonMapper {
  DynamicFormJsonModel entitytoModel(DynamicFormJsonEntity dynamicFormEntity) {
    return DynamicFormJsonModel();
  }

  DynamicFormJsonEntity modeltoEntity(DynamicFormJsonModel dynamicFormModel) {
    return DynamicFormJsonEntity(
      title: dynamicFormModel.title ?? '',
      description: dynamicFormModel.description ?? '',
      type: dynamicFormModel.type ?? '',
      sections: _mapSectionModelToEntity(dynamicFormModel.sections),
    );
  }

  List<SectionEntity> _mapSectionModelToEntity(List<Section>? sectionModel) {
    if (sectionModel == null) {
      return [];
    }
    return sectionModel.map((section) {
      return SectionEntity(
        sectionTitle: section.sectionTitle ?? '',
        fields: _mapFieldModelToEntity(section.fields),
      );
    }).toList();
  }

  List<FieldEntity> _mapFieldModelToEntity(List<Field>? fieldModel) {
    if (fieldModel == null) {
      return [];
    }
    return fieldModel.map((field) {
      return FieldEntity(
        type: _mapToFormType(field.type),
        subType: _mapToFormType(field.subType),
        isRequired: field.isRequired ?? false,
        readOnly: field.readOnly ?? false,
        obscure: field.obscure ?? false,
        keyBoardType: field.keyBoardType ?? '',
        initialValue: field.initialValue,
        label: field.label ?? '',
        hint: field.hint ?? '',
        validation: ValidationEntity(
          pattern: field.validation?.pattern ?? '',
          errorMessage: field.validation?.errorMessage ?? '',
        ),
        maxLength: field.maxLength,
        minLength: field.minLength,
        maxlines: field.maxlines,
        divisions: field.divisions,
        options: _mapOptionModelToEntity(field.options),
        dateTime: CustomDateTimeEntity(
          format: field.dateTime?.format ?? '',
          type: field.dateTime?.type ?? '',
          start: field.dateTime?.start ?? '',
          end: field.dateTime?.end ?? '',
        ),
        direction: field.direction ?? '',
        typeSupport: field.typeSupport ?? [],
        initialValueBool: field.initialValueBool ?? false,
        optionType: _mapOptionTypeToEntity(field.optionType),

      );
    }).toList();
  }

  List<Map<String, FieldEntity>>? _mapOptionTypeToEntity(
      List<Map<String, Field>>? optionType) {
    if (optionType == null) {
      return [];
    }
    return optionType.map((option) {
      return option.map((key, value) {
        return MapEntry(
            key,
            FieldEntity(
              type: _mapToFormType(value.type),
              subType: _mapToFormType(value.subType),
              isRequired: value.isRequired ?? false,
              readOnly: value.readOnly ?? false,
              obscure: value.obscure ?? false,
              keyBoardType: value.keyBoardType ?? '',
              initialValue: value.initialValue,
              label: value.label ?? '',
              hint: value.hint ?? '',
              validation: ValidationEntity(
                pattern: value.validation?.pattern ?? '',
                errorMessage: value.validation?.errorMessage ?? '',
              ),
              maxLength: value.maxLength,
              minLength: value.minLength,
              maxlines: value.maxlines,
              options: _mapOptionModelToEntity(value.options),
              dateTime: CustomDateTimeEntity(
                format: value.dateTime?.format ?? '',
                type: value.dateTime?.type ?? '',
                start: value.dateTime?.start ?? '',
                end: value.dateTime?.end ?? '',
              ),
              direction: value.direction ?? '',
              typeSupport: value.typeSupport ?? [],
              initialValueBool: value.initialValueBool ?? false,
              optionType: _mapOptionTypeToEntity(value.optionType),
            ));
      });
    }).toList();
  }

  List<OptionEntity> _mapOptionModelToEntity(List<Option>? optionModel) {
    if (optionModel == null) {
      return [];
    }
    return optionModel.map((option) {
      return OptionEntity(
        value: option.value ?? '',
        label: option.label ?? '',
      );
    }).toList();
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
      case 'SLIDER':
        return DynamicFormType.SLIDER;
      case 'SWITCH':
        return DynamicFormType.SWITCH;
      case 'FILE':
        return DynamicFormType.FILE;
      case 'TEXTAREA':
        return DynamicFormType.TEXTAREA;
      case 'CONDITIONAL':
        return DynamicFormType.CONDITIONAL;
      default:
        return DynamicFormType.DEFAULT;
    }
  }
}
