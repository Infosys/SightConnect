// To parse this JSON data, do
//
//     final dynamicFormJsonModel = dynamicFormJsonModelFromJson(jsonString);

import 'dart:convert';

DynamicFormJsonModel dynamicFormJsonModelFromJson(String str) =>
    DynamicFormJsonModel.fromJson(json.decode(str));

String dynamicFormJsonModelToJson(DynamicFormJsonModel data) =>
    json.encode(data.toJson());

class DynamicFormJsonModel {
  final String? title;
  final String? logoPosition;
  final List<PageModel>? pages;

  DynamicFormJsonModel({
    this.title,
    this.logoPosition,
    this.pages,
  });

  factory DynamicFormJsonModel.fromJson(Map<String, dynamic> json) =>
      DynamicFormJsonModel(
        title: json["title"],
        logoPosition: json["logoPosition"],
        pages: json["pages"] == null
            ? []
            : List<PageModel>.from(
                json["pages"]!.map((x) => PageModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "logoPosition": logoPosition,
        "pages": pages == null
            ? []
            : List<dynamic>.from(pages!.map((x) => x.toJson())),
      };
}

class PageModel {
  final String? name;
  final List<PageElementModel>? elements;

  PageModel({
    this.name,
    this.elements,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) => PageModel(
        name: json["name"],
        elements: json["elements"] == null
            ? []
            : List<PageElementModel>.from(
                json["elements"]!.map((x) => PageElementModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
      };
}

class PageElementModel {
  final String? type;
  final String? name;
  final List<ElementClassModel>? elements;

  PageElementModel({
    this.type,
    this.name,
    this.elements,
  });

  factory PageElementModel.fromJson(Map<String, dynamic> json) =>
      PageElementModel(
        type: json["type"],
        name: json["name"],
        elements: json["elements"] == null
            ? []
            : List<ElementClassModel>.from(
                json["elements"]!.map((x) => ElementClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
      };
}

class ElementClassModel {
  final String? type;
  final String? name;
  final String? title;
  final String? inputType;
  final List<ChoiceModel>? choices;
  final bool? isRequired;
  final String? requiredErrorText;
  final int? maxSize;
  final List<ValidatorModel>? validators;

  ElementClassModel({
    this.type,
    this.name,
    this.title,
    this.inputType,
    this.choices,
    this.isRequired,
    this.requiredErrorText,
    this.maxSize,
    this.validators,
  });

  factory ElementClassModel.fromJson(Map<String, dynamic> json) =>
      ElementClassModel(
        type: json["type"],
        name: json["name"],
        title: json["title"],
        inputType: json["inputType"],
        choices: json["choices"] == null
            ? []
            : List<ChoiceModel>.from(
                json["choices"]!.map((x) => ChoiceModel.fromJson(x))),
        isRequired: json["isRequired"],
        requiredErrorText: json["requiredErrorText"],
        maxSize: json["maxSize"],
        validators: json["validators"] == null
            ? []
            : List<ValidatorModel>.from(
                json["validators"]!.map((x) => ValidatorModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "inputType": inputType,
        "choices": choices == null
            ? []
            : List<dynamic>.from(choices!.map((x) => x.toJson())),
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "maxSize": maxSize,
        "validators": validators == null
            ? []
            : List<dynamic>.from(validators!.map((x) => x.toJson())),
      };
}

class ChoiceModel {
  final String? value;
  final String? text;

  ChoiceModel({
    this.value,
    this.text,
  });

  factory ChoiceModel.fromJson(Map<String, dynamic> json) => ChoiceModel(
        value: json["value"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "text": text,
      };
}

class ValidatorModel {
  final String? type;

  ValidatorModel({
    this.type,
  });

  factory ValidatorModel.fromJson(Map<String, dynamic> json) => ValidatorModel(
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
      };
}
