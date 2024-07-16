import 'dart:convert';

ResponseJsonModel responseJsonModelFromJson(String str) =>
    ResponseJsonModel.fromJson(json.decode(str));

String responseJsonModelToJson(ResponseJsonModel data) =>
    json.encode(data.toJson());

class ResponseJsonModel {
  String? title;
  String? logoPosition;
  List<PageModel>? pages;

  ResponseJsonModel({
    this.title,
    this.logoPosition,
    this.pages,
  });

  factory ResponseJsonModel.fromJson(Map<String, dynamic> json) =>
      ResponseJsonModel(
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
  String? name;
  String? title;
  String? description;
  bool? isRequired;
  String? requiredErrorText;
  bool? readOnly;
  List<ValidatorModel>? validators;
  String? inputType;
  List<ChoiceClassModel>? choices;
  String? placeholder;
  int? maxSize;
  int? min;
  int? max;
  int? step;

  ElementElementClassModel({
    this.type,
    this.name,
    this.title,
    this.description,
    this.isRequired,
    this.requiredErrorText,
    this.readOnly,
    this.validators,
    this.inputType,
    this.choices,
    this.placeholder,
    this.maxSize,
    this.min,
    this.max,
    this.step,
  });

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
            : List<ValidatorModel>.from(
                json["validators"]!.map((x) => ValidatorModel.fromJson(x))),
        inputType: json["inputType"],
        choices: json["choices"] == null
            ? []
            : List<ChoiceClassModel>.from(
                json["choices"]!.map((x) => ChoiceClassModel.fromJson(x))),
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
        "validators": validators == null
            ? []
            : List<dynamic>.from(validators!.map((x) => x.toJson())),
        "inputType": inputType,
        "choices": choices == null
            ? []
            : List<dynamic>.from(choices!.map((x) => x.toJson())),
        "placeholder": placeholder,
        "maxSize": maxSize,
        "min": min,
        "max": max,
        "step": step,
      };
}

class ChoiceClassModel {
  String? value;
  String? text;

  ChoiceClassModel({
    this.value,
    this.text,
  });

  factory ChoiceClassModel.fromJson(Map<String, dynamic> json) =>
      ChoiceClassModel(
        value: json["value"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "text": text,
      };
}

class ValidatorModel {
  String? type;
  String? text;
  String? regex;

  ValidatorModel({
    this.type,
    this.text,
    this.regex,
  });

  factory ValidatorModel.fromJson(Map<String, dynamic> json) => ValidatorModel(
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
