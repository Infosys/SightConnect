import 'dart:convert';

ResponseJsonModel responseJsonModelFromJson(String str) =>
    ResponseJsonModel.fromJson(json.decode(str));

String responseJsonModelToJson(ResponseJsonModel data) =>
    json.encode(data.toJson());

class ResponseJsonModel {
  String? name;
  String? version;
  String? logoPosition;
  String? formLayoutType;
  List<PageModel>? pages;

  ResponseJsonModel({
    this.name,
    this.logoPosition,
    this.formLayoutType,
    this.pages,
    this.version,
  });

  factory ResponseJsonModel.fromJson(Map<String, dynamic> json) =>
      ResponseJsonModel(
        name: json["name"],
        logoPosition: json["logoPosition"],
        formLayoutType: json["formLayoutType"],
        pages: json["pages"] == null
            ? []
            : List<PageModel>.from(
                json["pages"]!.map((x) => PageModel.fromJson(x))),
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "logoPosition": logoPosition,
        "formLayoutType": formLayoutType,
        "pages": pages == null
            ? []
            : List<dynamic>.from(pages!.map((x) => x.toJson())),
        "version": version
      };
}

class PageModel {
  String? name;
  List<PageElementModel>? elements;
  String? title;

  PageModel({
    this.name,
    this.elements,
    this.title,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) => PageModel(
        name: json["name"],
        elements: json["elements"] == null
            ? []
            : List<PageElementModel>.from(
                json["elements"]!.map((x) => PageElementModel.fromJson(x))),
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
        "title": title,
      };
}

class PageElementModel {
  String? type;
  dynamic name;
  List<ElementElementClassModel>? elements;
  bool? repeats;
  int? minRepeat;
  int? maxRepeat;

  PageElementModel({
    this.type,
    this.name,
    this.elements,
    this.repeats,
    this.minRepeat,
    this.maxRepeat,
  });

  factory PageElementModel.fromJson(Map<String, dynamic> json) =>
      PageElementModel(
        type: json["type"],
        name: json["name"],
        elements: json["elements"] == null
            ? []
            : List<ElementElementClassModel>.from(json["elements"]!
                .map((x) => ElementElementClassModel.fromJson(x))),
        repeats: json["repeats"],
        minRepeat: json["minRepeat"],
        maxRepeat: json["maxRepeat"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toJson())),
        "repeats": repeats,
        "minRepeat": minRepeat,
        "maxRepeat": maxRepeat,
      };
}

class ElementElementClassModel {
  dynamic name;
  String? type;
  String? prefix;
  String? dependantField;
  String? title;
  String? description;
  bool? repeats;
  int? minRepeat;
  int? maxRepeat;
  bool? isRequired;
  String? requiredErrorText;
  bool? readOnly;
  List<Validator>? validators;
  List<OptionsModel>? options;
  String? placeholder;
  String? inputType;
  int? maxSize;
  int? min;
  int? max;
  int? step;
  List<Conditions>? conditions;
  List<ElementElementClassModel>? elements;

  ElementElementClassModel({
    this.type,
    this.name,
    this.title,
    this.description,
    this.isRequired,
    this.requiredErrorText,
    this.readOnly,
    this.validators,
    this.options,
    this.placeholder,
    this.maxSize,
    this.min,
    this.max,
    this.step,
    this.conditions,
    this.dependantField,
    this.elements,
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
            : List<Validator>.from(
                json["validators"]!.map((x) => Validator.fromJson(x))),
        options: json["options"] == null
            ? []
            : List<OptionsModel>.from(
                json["options"]!.map((x) => OptionsModel.fromJson(x))),
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
        "options": options == null
            ? []
            : List<dynamic>.from(options!.map((x) => x.toJson())),
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

class OptionsModel {
  String? name;
  String? title;

  OptionsModel({
    this.name,
    this.title,
  });

  factory OptionsModel.fromJson(Map<String, dynamic> json) => OptionsModel(
        name: json["name"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
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
