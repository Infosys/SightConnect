class DynamicFormJsonModel {
  String? title;
  String? description;
  String? type;
  List<Section>? sections;

  DynamicFormJsonModel(
      {this.title, this.description, this.type, this.sections});

  factory DynamicFormJsonModel.fromJson(Map<String, dynamic> json) {
    return DynamicFormJsonModel(
      title: json['title'],
      description: json['description'],
      type: json['type'],
      sections: json['sections'] != null
          ? (json['sections'] as List).map((i) => Section.fromJson(i)).toList()
          : null,
    );
  }
}

class Section {
  String? sectionTitle;
  List<Field>? fields;

  Section({this.sectionTitle, this.fields});

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      sectionTitle: json['sectionTitle'],
      fields: json['fields'] != null
          ? (json['fields'] as List).map((i) => Field.fromJson(i)).toList()
          : null,
    );
  }
}

class Field {
  String? type;
  String? subType;
  bool? isRequired;
  bool? readOnly;
  bool? obscure;
  String? keyBoardType;
  dynamic initialValue;
  String? label;
  String? hint;
  Validation? validation;
  double? maxLength;
  double? minLength;
  double? maxlines;
  int? divisions;
  List<Option>? options;
  CustomDateTime? dateTime;
  String? direction;
  List<String>? typeSupport;
  bool? initialValueBool;
  List<Map<String, Field>>? optionType;

  Field(
      {this.type,
      this.subType,
      this.isRequired,
      this.readOnly,
      this.obscure,
      this.keyBoardType,
      this.initialValue,
      this.label,
      this.hint,
      this.validation,
      this.maxLength,
      this.minLength,
      this.maxlines,
      this.options,
      this.dateTime,
      this.direction,
      this.typeSupport,
      this.initialValueBool,
      this.optionType});

  factory Field.fromJson(Map<String, dynamic> json) {
    return Field(
      type: json['type'],
      subType: json['subType'],
      isRequired: json['isRequired'],
      readOnly: json['readOnly'],
      obscure: json['obscure'],
      keyBoardType: json['keyBoardType'],
      initialValue: json['initialValue'],
      label: json['label'],
      hint: json['hint'],
      validation: json['validation'] != null
          ? Validation.fromJson(json['validation'])
          : null,
      maxLength: json['maxLength'],
      minLength: json['minLength'],
      maxlines: json['maxlines'],
      options: json['options'] != null
          ? (json['options'] as List).map((i) => Option.fromJson(i)).toList()
          : null,
      dateTime: json['dateTime'] != null
          ? CustomDateTime.fromJson(json['dateTime'])
          : null,
      direction: json['direction'],
      typeSupport: json['typeSupport'] != null
          ? List<String>.from(json['typeSupport'])
          : null,
      initialValueBool: json['initialValueBool'],
      optionType: json['optionType'] != null
          ? (json['optionType'] as List)
              .map((i) => Map<String, Field>.from(i))
              .toList()
          : null,
    );
  }
}

class Validation {
  String? pattern;
  String? errorMessage;

  Validation({this.pattern, this.errorMessage});

  factory Validation.fromJson(Map<String, dynamic> json) {
    return Validation(
      pattern: json['pattern'],
      errorMessage: json['errorMessage'],
    );
  }
}

class Option {
  String? value;
  String? label;

  Option({this.value, this.label});

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      value: json['value'],
      label: json['label'],
    );
  }
}

class CustomDateTime {
  String? type;
  String? start;
  String? end;
  String? format;

  CustomDateTime({this.type, this.start, this.end, this.format});

  factory CustomDateTime.fromJson(Map<String, dynamic> json) {
    return CustomDateTime(
      type: json['type'],
      start: json['start'],
      end: json['end'],
      format: json[''],
    );
  }
}

class CustomTime {
  String? type;
  String? format;
  bool? includeSeconds;

  CustomTime({this.type, this.format, this.includeSeconds});

  factory CustomTime.fromJson(Map<String, dynamic> json) {
    return CustomTime(
      type: json['type'],
      format: json['format'],
      includeSeconds: json['includeSeconds'],
    );
  }
}
