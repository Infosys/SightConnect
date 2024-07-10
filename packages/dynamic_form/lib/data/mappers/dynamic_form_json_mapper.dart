import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';

class DynamicFormJsonMapper {
  // convert model to entity and convert entity to model

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
      );
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
      default:
        return DynamicFormType.DEFAULT;
    }
  }
}
