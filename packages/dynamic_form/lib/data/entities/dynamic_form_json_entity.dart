import 'dart:convert';

import 'package:dynamic_form/data/enums/enums.dart';

DynamicFormJsonEntity dynamicFormJsonEntityFromJson(String str) =>
    DynamicFormJsonEntity.fromJson(json.decode(str));

String dynamicFormJsonEntityToJson(DynamicFormJsonEntity data) =>
    json.encode(data.toJson());

class DynamicFormJsonEntity {
  final String title;
  final String logoPosition;
  final List<PageEntity> pages;

  DynamicFormJsonEntity({
    required this.title,
    required this.logoPosition,
    required this.pages,
  });

  factory DynamicFormJsonEntity.fromJson(Map<String, dynamic> json) =>
      DynamicFormJsonEntity(
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
  final List<ElementEntity> elements;

  PageElementEntity({
    required this.type,
    required this.name,
    required this.elements,
  });

  factory PageElementEntity.fromJson(Map<String, dynamic> json) =>
      PageElementEntity(
        type: json["type"],
        name: json["name"],
        elements: List<ElementEntity>.from(
            json["elements"].map((x) => ElementEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
      };
}

class ElementEntity {
  final DynamicFormType type;
  final String name;
  final String title;
  final String inputType;
  final List<ChoiceEntity> choices;
  final bool isRequired;
  final String requiredErrorText;
  final int maxSize;
  final List<ValidatorEntity> validators;

  ElementEntity({
    required this.type,
    required this.name,
    required this.title,
    required this.inputType,
    required this.choices,
    required this.isRequired,
    required this.requiredErrorText,
    required this.maxSize,
    required this.validators,
  });

  factory ElementEntity.fromJson(Map<String, dynamic> json) => ElementEntity(
        type: json["type"],
        name: json["name"],
        title: json["title"],
        inputType: json["inputType"],
        choices: List<ChoiceEntity>.from(
            json["choices"].map((x) => ChoiceEntity.fromJson(x))),
        isRequired: json["isRequired"],
        requiredErrorText: json["requiredErrorText"],
        maxSize: json["maxSize"],
        validators: List<ValidatorEntity>.from(
            json["validators"].map((x) => ValidatorEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "inputType": inputType,
        "choices": List<dynamic>.from(choices.map((x) => x.toJson())),
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "maxSize": maxSize,
        "validators": List<dynamic>.from(validators.map((x) => x.toJson())),
      };
}

class ChoiceEntity {
  final String value;
  final String text;

  ChoiceEntity({
    required this.value,
    required this.text,
  });

  factory ChoiceEntity.fromJson(Map<String, dynamic> json) => ChoiceEntity(
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

  ValidatorEntity({
    required this.type,
  });

  factory ValidatorEntity.fromJson(Map<String, dynamic> json) =>
      ValidatorEntity(
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
      };
}
