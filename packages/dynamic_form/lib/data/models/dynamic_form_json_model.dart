import 'dart:convert';

ResponseJsonModel responseJsonModelFromJson(String str) =>
    ResponseJsonModel.fromJson(json.decode(str));

String responseJsonModelToJson(ResponseJsonModel data) =>
    json.encode(data.toJson());

class ResponseJsonModel {
  String? title;
  String? logoPosition;
  String? formLayoutType;
  List<PageModel>? pages;

  ResponseJsonModel({
    this.title,
    this.logoPosition,
    this.formLayoutType,
    this.pages,
  });

  factory ResponseJsonModel.fromJson(Map<String, dynamic> json) =>
      ResponseJsonModel(
        title: json["title"],
        logoPosition: json["logoPosition"],
        formLayoutType: json["formLayoutType"],
        pages: json["pages"] == null
            ? []
            : List<PageModel>.from(
                json["pages"]!.map((x) => PageModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "logoPosition": logoPosition,
        "formLayoutType": formLayoutType,
        "pages": pages == null
            ? []
            : List<dynamic>.from(pages!.map((x) => x.toJson())),
      };
}

class PageModel {
  String? name;
  List<PageElementModel>? elements;

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
  String? type;
  String? name;
  List<ElementElementClassModel>? elements;

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
            : List<ElementElementClassModel>.from(json["elements"]!
                .map((x) => ElementElementClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
      };
}

class ElementElementClassModel {
  String? type;
  String? dependantField;
  String? name;
  String? title;
  String? description;
  bool? isRequired;
  String? requiredErrorText;
  bool? readOnly;
  List<Validator>? validators;
  List<dynamic>? choices;
  String? placeholder;
  int? maxSize;
  int? min;
  int? max;
  int? step;
  List<Conditions>? conditions;
  List<ElementElementClassModel>? elements;

  ElementElementClassModel(
      {this.type,
      this.name,
      this.title,
      this.description,
      this.isRequired,
      this.requiredErrorText,
      this.readOnly,
      this.validators,
      this.choices,
      this.placeholder,
      this.maxSize,
      this.min,
      this.max,
      this.step,
      this.conditions,
      this.dependantField,
      this.elements});

  factory ElementElementClassModel.fromJson(Map<String, dynamic> json) =>
      ElementElementClassModel(
        type: json["type"],
        name: json["name"],
        title: json["title"],
        description: json["description"],
        isRequired: json["isRequired"],
        requiredErrorText: json["requiredErrorText"],
        readOnly: json["readOnly"],
        validators: json["validators"] == null
            ? []
            : List<Validator>.from(
                json["validators"]!.map((x) => Validator.fromJson(x))),
        choices: json["choices"] == null
            ? []
            : List<dynamic>.from(json["choices"]!.map((x) => x)),
        placeholder: json["placeholder"],
        maxSize: json["maxSize"],
        min: json["min"],
        max: json["max"],
        step: json["step"],
        conditions: json["conditions"] == null
            ? []
            : List<Conditions>.from(
                json["conditions"]!.map((x) => Conditions.fromJson(x))),
        dependantField: json["dependantField"],
        elements: json["elements"] == null
            ? []
            : List<ElementElementClassModel>.from(json["elements"]!
                .map((x) => ElementElementClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "description": description,
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "readOnly": readOnly,
        "validators": validators == null
            ? []
            : List<dynamic>.from(validators!.map((x) => x.toJson())),
        "choices":
            choices == null ? [] : List<dynamic>.from(choices!.map((x) => x)),
        "placeholder": placeholder,
        "maxSize": maxSize,
        "min": min,
        "max": max,
        "step": step,
        "conditions": conditions == null
            ? []
            : List<dynamic>.from(conditions!.map((x) => x.toJson())),
        "dependantField": dependantField,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
      };
}

class Conditions {
  String? value;
  List<ElementElementClassModel>? fields;

  Conditions({
    this.value,
    this.fields,
  });

  factory Conditions.fromJson(Map<String, dynamic> json) => Conditions(
        value: json["value"],
        fields: json["fields"] == null
            ? []
            : List<ElementElementClassModel>.from(json["fields"]!
                .map((x) => ElementElementClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "fields": fields == null
            ? []
            : List<dynamic>.from(fields!.map((x) => x.toJson())),
      };
}

class Validator {
  String? type;
  String? text;
  String? regex;

  Validator({
    this.type,
    this.text,
    this.regex,
  });

  factory Validator.fromJson(Map<String, dynamic> json) => Validator(
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
