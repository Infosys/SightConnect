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
  List<ElementClassModel>? elements;
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
            : List<ElementClassModel>.from(
                json["elements"]!.map((x) => ElementClassModel.fromJson(x))),
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

class ElementClassModel {
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
  List<ElementClassModel>? elements;

  ElementClassModel({
    this.type,
    this.name,
    this.title,
    this.repeats,
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
    this.maxRepeat,
    this.minRepeat,
    this.step,
    this.conditions,
    this.dependantField,
    this.elements,
  });

  factory ElementClassModel.fromJson(Map<String, dynamic> json) =>
      ElementClassModel(
        type: json["type"],
        name: json["name"],
        title: json["title"],
        repeats: json["repeats"],
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
        maxRepeat: json["maxRepeat"],
        minRepeat: json["minRepeat"],
        step: json["step"],
        conditions: json["conditions"] == null
            ? []
            : List<Conditions>.from(
                json["conditions"]!.map((x) => Conditions.fromJson(x))),
        dependantField: json["dependantField"],
        elements: json["elements"] == null
            ? []
            : List<ElementClassModel>.from(
                json["elements"]!.map((x) => ElementClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "title": title,
        "description": description,
        "isRequired": isRequired,
        "requiredErrorText": requiredErrorText,
        "readOnly": readOnly,
        "repeats": repeats,
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
        "maxRepeat": maxRepeat,
        "minRepeat": minRepeat,
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
  dynamic name;
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
  List<ElementClassModel>? fields;

  Conditions({
    this.value,
    this.fields,
  });

  factory Conditions.fromJson(Map<String, dynamic> json) => Conditions(
        value: json["value"],
        fields: json["fields"] == null
            ? []
            : List<ElementClassModel>.from(
                json["fields"]!.map((x) => ElementClassModel.fromJson(x))),
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
  String? size;
  String? unit;
  List<String>? types;
  String? uploadUrl;
  String? downloadUrl;

  Validator({
    this.type,
    this.text,
    this.regex,
    this.size,
    this.unit,
    this.types,
    this.uploadUrl,
    this.downloadUrl,
  });

  factory Validator.fromJson(Map<String, dynamic> json) => Validator(
        type: json["type"],
        text: json["text"],
        regex: json["regex"],
        size: json["size"],
        unit: json["unit"],
        types: json["types"] == null
            ? []
            : List<String>.from(json["types"].map((x) => x)),
        uploadUrl: json["uploadUrl"],
        downloadUrl: json["downloadUrl"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "text": text,
        "regex": regex,
        "size": size,
        "unit": unit,
        "types": types == null ? [] : List<dynamic>.from(types!.map((x) => x)),
        "uploadUrl": uploadUrl,
        "downloadUrl": downloadUrl,
      };
}
