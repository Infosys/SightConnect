import 'dart:convert';

import 'package:dynamic_form/data/enums/enums.dart';

ResponseJsonEntity responseJsonEntityFromJson(String str) =>
    ResponseJsonEntity.fromJson(json.decode(str));

String responseJsonEntityToJson(ResponseJsonEntity data) =>
    json.encode(data.toJson());

class ResponseJsonEntity {
  final String name;
  final String version;
  final String logoPosition;
  final FormLayoutType formLayoutType;
  final List<PageEntity> pages;

  ResponseJsonEntity({
    required this.name,
    required this.version,
    required this.logoPosition,
    required this.formLayoutType,
    required this.pages,
  });

  factory ResponseJsonEntity.fromJson(Map<String, dynamic> json) =>
      ResponseJsonEntity(
        name: json["name"],
        version: json["version"],
        logoPosition: json["logoPosition"],
        formLayoutType: json["formLayoutType"],
        pages: List<PageEntity>.from(
            json["pages"].map((x) => PageEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": name,
        "version": version,
        "logoPosition": logoPosition,
        "formLayoutType": formLayoutType,
        "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
      };
}

class PageEntity {
  final String name;
  final List<PageElementEntity> elements;
  final String title;

  PageEntity({
    required this.name,
    required this.elements,
    required this.title,
  });

  factory PageEntity.fromJson(Map<String, dynamic> json) => PageEntity(
        name: json["name"],
        elements: List<PageElementEntity>.from(
          json["elements"].map((x) => PageElementEntity.fromJson(x)),
        ),
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
        "title": title,
      };
}

class PageElementEntity {
  final FormPanelType type;
  final String name;
  final List<ElementElementClassEntity> elements;

  PageElementEntity({
    required this.type,
    required this.name,
    required this.elements,
  });

  factory PageElementEntity.fromJson(Map<String, dynamic> json) =>
      PageElementEntity(
        type: json["type"],
        name: json["name"],
        elements: List<ElementElementClassEntity>.from(
            json["elements"].map((x) => ElementElementClassEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
      };
}

class ElementElementClassEntity {
  final DynamicFormType type;
  final String name;
  final String? prefix;
  final String title;
  final String description;
  final bool isRequired;
  final String requiredErrorText;
  final bool readOnly;
  final List<ValidatorEntity> validators;
  final List<ChoiceElementEntity>? choices;
  final String placeholder;
  final int maxSize;
  final int min;
  final int max;
  final int step;
  final List<ConditionsEntity>? conditions;
  final String? dependantField;
  final List<ElementElementClassEntity>? elements;
  final bool repeats;
  final int? minRepeat;
  final int? maxRepeat;
  final String? inputType;

  ElementElementClassEntity({
    required this.type,
    required this.name,
    required this.title,
    required this.description,
    required this.isRequired,
    required this.requiredErrorText,
    required this.readOnly,
    required this.validators,
    required this.choices,
    required this.placeholder,
    required this.maxSize,
    required this.min,
    required this.max,
    required this.step,
    required this.repeats,
    this.conditions,
    this.dependantField,
    this.elements,
    this.prefix,
    this.minRepeat,
    this.maxRepeat,
    this.inputType,
  });

  factory ElementElementClassEntity.fromJson(Map<String, dynamic> json) =>
      ElementElementClassEntity(
        type: json["type"],
        name: json["name"],
        title: json["title"],
        description: json["description"],
        isRequired: json["isRequired"],
        requiredErrorText: json["requiredErrorText"],
        readOnly: json["readOnly"],
        validators: List<ValidatorEntity>.from(
            json["validators"].map((x) => ValidatorEntity.fromJson(x))),
        choices: List<ChoiceElementEntity>.from(
            json["choices"].map((x) => ChoiceElementEntity.fromJson(x))),
        placeholder: json["placeholder"],
        maxSize: json["maxSize"],
        min: json["min"],
        max: json["max"],
        step: json["step"],
        repeats: json["repeats"],
        conditions: json["conditions"] == null
            ? null
            : List<ConditionsEntity>.from(
                json["conditions"].map((x) => ConditionsEntity.fromJson(x))),
        dependantField: json["dependantField"],
        elements: json["elements"] == null
            ? null
            : List<ElementElementClassEntity>.from(json["elements"]
                .map((x) => ElementElementClassEntity.fromJson(x))),
        prefix: json["prefix"],
        minRepeat: json["minRepeat"],
        maxRepeat: json["maxRepeat"],
        inputType: json["inputType"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "description": description,
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "readOnly": readOnly,
        "validators": List<dynamic>.from(validators.map((x) => x.toJson())),
        "choices": List<dynamic>.from(choices!.map((x) => x.toJson())),
        "placeholder": placeholder,
        "maxSize": maxSize,
        "min": min,
        "max": max,
        "step": step,
        "repeats": repeats,
        "conditions": conditions == null
            ? null
            : List<dynamic>.from(conditions!.map((x) => x.toJson())),
        "dependantField": dependantField,
        "elements": elements == null
            ? null
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
        "prefix": prefix,
        "minRepeat": minRepeat,
        "maxRepeat": maxRepeat,
        "inputType": inputType,
      };

  @override
  String toString() {
    return 'ElementElementClassEntity{type: $type, name: $name, title: $title, description: $description, isRequired: $isRequired, requiredErrorText: $requiredErrorText, readOnly: $readOnly, validators: $validators, choices: $choices, placeholder: $placeholder, maxSize: $maxSize, min: $min, max: $max, step: $step, conditions: $conditions, dependantField: $dependantField, elements: $elements, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, inputType: $inputType}';
  }

  ElementElementClassEntity copyWith({
    DynamicFormType? type,
    String? name,
    String? title,
    String? description,
    bool? isRequired,
    String? requiredErrorText,
    bool? readOnly,
    List<ValidatorEntity>? validators,
    List<ChoiceElementEntity>? choices,
    String? placeholder,
    int? maxSize,
    int? min,
    int? max,
    int? step,
    List<ConditionsEntity>? conditions,
    String? dependantField,
    List<ElementElementClassEntity>? elements,
    bool? repeats,
    int? minRepeat,
    int? maxRepeat,
    String? inputType,
  }) {
    return ElementElementClassEntity(
      type: type ?? this.type,
      name: name ?? this.name,
      title: title ?? this.title,
      description: description ?? this.description,
      isRequired: isRequired ?? this.isRequired,
      requiredErrorText: requiredErrorText ?? this.requiredErrorText,
      readOnly: readOnly ?? this.readOnly,
      validators: validators ?? this.validators,
      choices: choices ?? this.choices,
      placeholder: placeholder ?? this.placeholder,
      maxSize: maxSize ?? this.maxSize,
      min: min ?? this.min,
      max: max ?? this.max,
      step: step ?? this.step,
      conditions: conditions ?? this.conditions,
      dependantField: dependantField ?? this.dependantField,
      elements: elements ?? this.elements,
      repeats: repeats ?? this.repeats,
      minRepeat: minRepeat ?? this.minRepeat,
      maxRepeat: maxRepeat ?? this.maxRepeat,
      inputType: inputType ?? this.inputType,
    );
  }
}

class ChoiceElementEntity {
  final String name;
  final String title;

  ChoiceElementEntity({
    required this.name,
    required this.title,
  });

  factory ChoiceElementEntity.fromJson(Map<String, dynamic> json) =>
      ChoiceElementEntity(
        name: json["name"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
      };
}

class ConditionsEntity {
  final String value;
  final List<ElementElementClassEntity> fields;

  ConditionsEntity({
    required this.value,
    required this.fields,
  });

  factory ConditionsEntity.fromJson(Map<String, dynamic> json) =>
      ConditionsEntity(
        value: json["value"],
        fields: List<ElementElementClassEntity>.from(
            json["fields"].map((x) => ElementElementClassEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
      };
}

class ValidatorEntity {
  final String type;
  final String text;
  final String regex;

  ValidatorEntity({
    required this.type,
    required this.text,
    required this.regex,
  });

  factory ValidatorEntity.fromJson(Map<String, dynamic> json) =>
      ValidatorEntity(
        type: json["type"],
        text: json["text"],
        regex: json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "text": text,
        "regex": regex,
      };
}
