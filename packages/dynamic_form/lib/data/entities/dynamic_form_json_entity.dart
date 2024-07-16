import 'dart:convert';

import 'package:dynamic_form/data/enums/enums.dart';

ResponseJsonEntity responseJsonEntityFromJson(String str) =>
    ResponseJsonEntity.fromJson(json.decode(str));

String responseJsonEntityToJson(ResponseJsonEntity data) =>
    json.encode(data.toJson());

class ResponseJsonEntity {
  final String title;
  final String logoPosition;
  final List<PageEntity> pages;

  ResponseJsonEntity({
    required this.title,
    required this.logoPosition,
    required this.pages,
  });

  factory ResponseJsonEntity.fromJson(Map<String, dynamic> json) =>
      ResponseJsonEntity(
        title: json["title"],
        logoPosition: json["logoPosition"],
        pages: List<PageEntity>.from(
            json["pages"].map((x) => PageEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "logoPosition": logoPosition,
        "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
      };
}

class PageEntity {
  final String name;
  final List<PageElementEntity> elements;

  PageEntity({
    required this.name,
    required this.elements,
  });

  factory PageEntity.fromJson(Map<String, dynamic> json) => PageEntity(
        name: json["name"],
        elements: List<PageElementEntity>.from(
            json["elements"].map((x) => PageElementEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
      };
}

class PageElementEntity {
  final String type;
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
  final String title;
  final String description;
  final bool isRequired;
  final String requiredErrorText;
  final bool readOnly;
  final List<ValidatorEntity> validators;
  final String inputType;
  final List<ChoiceClassEntity> choices;
  final String placeholder;
  final int maxSize;
  final int min;
  final int max;
  final int step;

  ElementElementClassEntity({
    required this.type,
    required this.name,
    required this.title,
    required this.description,
    required this.isRequired,
    required this.requiredErrorText,
    required this.readOnly,
    required this.validators,
    required this.inputType,
    required this.choices,
    required this.placeholder,
    required this.maxSize,
    required this.min,
    required this.max,
    required this.step,
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
        inputType: json["inputType"],
        choices: List<ChoiceClassEntity>.from(
            json["choices"].map((x) => ChoiceClassEntity.fromJson(x))),
        placeholder: json["placeholder"],
        maxSize: json["maxSize"],
        min: json["min"],
        max: json["max"],
        step: json["step"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "description": description,
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "readOnly": readOnly,
        "validators":
            List<ValidatorEntity>.from(validators.map((x) => x.toJson())),
        "inputType": inputType,
        "choices": List<ChoiceClassEntity>.from(choices.map((x) => x)),
        "placeholder": placeholder,
        "maxSize": maxSize,
        "min": min,
        "max": max,
        "step": step,
      };
}

class ChoiceClassEntity {
  final String value;
  final String text;

  ChoiceClassEntity({
    required this.value,
    required this.text,
  });

  factory ChoiceClassEntity.fromJson(Map<String, dynamic> json) =>
      ChoiceClassEntity(
        value: json["value"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "text": text,
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
