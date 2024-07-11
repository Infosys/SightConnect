import 'package:dynamic_form/data/enums/enums.dart';

class DynamicFormJsonEntity {
  final String title;
  final String description;
  final String type;
  final List<SectionEntity> sections;

  DynamicFormJsonEntity({
    required this.title,
    required this.description,
    required this.type,
    required this.sections,
  });
}

class SectionEntity {
  final String sectionTitle;
  final List<FieldEntity>? fields;

  SectionEntity({
    required this.sectionTitle,
    required this.fields,
  });
}

class FieldEntity {
  final DynamicFormType type;
  final DynamicFormType? subType;
  final bool isRequired;
  final bool readOnly;
  final bool obscure;
  final String keyBoardType;
  final dynamic initialValue;
  final String label;
  final String hint;
  final ValidationEntity validation;
  final double? maxLength;
  final double? minLength;
  final double? maxlines;
  final int? divisions;
  final List<OptionEntity> options;
  final CustomDateTimeEntity dateTime;
  final String direction;
  final List<String> typeSupport;
  final bool initialValueBool;
  Map<String, FieldEntity>? optionType;

  FieldEntity({
    required this.type,
    required this.subType,
    required this.isRequired,
    required this.readOnly,
    required this.obscure,
    required this.keyBoardType,
    required this.initialValue,
    required this.label,
    required this.hint,
    required this.validation,
    required this.maxLength,
    required this.minLength,
    required this.maxlines,
    required this.divisions,
    required this.options,
    required this.dateTime,
    required this.direction,
    required this.typeSupport,
    required this.initialValueBool,
    required this.optionType,
  });
}

class ValidationEntity {
  final String pattern;
  final String errorMessage;

  ValidationEntity({
    required this.pattern,
    required this.errorMessage,
  });
}

class OptionEntity {
  final String value;
  final String label;

  OptionEntity({
    required this.value,
    required this.label,
  });
}

class CustomDateTimeEntity {
  final String type;
  final String start;
  final String end;
  final String format;

  CustomDateTimeEntity({
    required this.type,
    required this.start,
    required this.end,
    required this.format,
  });
}

class CustomTimeEntity {
  final String type;
  final String format;
  final bool includeSeconds;

  CustomTimeEntity({
    required this.type,
    required this.format,
    required this.includeSeconds,
  });
}
