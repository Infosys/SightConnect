// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_diagnostic_report_template_FHIR_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosticReportTemplateFHIRModel _$DiagnosticReportTemplateFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _DiagnosticReportTemplateFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticReportTemplateFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  TestCode? get code => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  ImagingStudyFHIRModel? get study => throw _privateConstructorUsedError;
  ObservationDefinitionFHIRModel? get observations =>
      throw _privateConstructorUsedError;
  QuestionnaireFHIRModel? get questionnaire =>
      throw _privateConstructorUsedError;
  List<ObservationValueWeightModel>? get observationValueWeight =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosticReportTemplateFHIRModelCopyWith<DiagnosticReportTemplateFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticReportTemplateFHIRModelCopyWith<$Res> {
  factory $DiagnosticReportTemplateFHIRModelCopyWith(
          DiagnosticReportTemplateFHIRModel value,
          $Res Function(DiagnosticReportTemplateFHIRModel) then) =
      _$DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res,
          DiagnosticReportTemplateFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? organizationCode,
      Category? category,
      BodySite? bodySite,
      TestCode? code,
      String? version,
      ImagingStudyFHIRModel? study,
      ObservationDefinitionFHIRModel? observations,
      QuestionnaireFHIRModel? questionnaire,
      List<ObservationValueWeightModel>? observationValueWeight});

  $ImagingStudyFHIRModelCopyWith<$Res>? get study;
  $ObservationDefinitionFHIRModelCopyWith<$Res>? get observations;
  $QuestionnaireFHIRModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class _$DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res,
        $Val extends DiagnosticReportTemplateFHIRModel>
    implements $DiagnosticReportTemplateFHIRModelCopyWith<$Res> {
  _$DiagnosticReportTemplateFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? category = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? study = freezed,
    Object? observations = freezed,
    Object? questionnaire = freezed,
    Object? observationValueWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as TestCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as ImagingStudyFHIRModel?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionFHIRModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFHIRModel?,
      observationValueWeight: freezed == observationValueWeight
          ? _value.observationValueWeight
          : observationValueWeight // ignore: cast_nullable_to_non_nullable
              as List<ObservationValueWeightModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImagingStudyFHIRModelCopyWith<$Res>? get study {
    if (_value.study == null) {
      return null;
    }

    return $ImagingStudyFHIRModelCopyWith<$Res>(_value.study!, (value) {
      return _then(_value.copyWith(study: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationDefinitionFHIRModelCopyWith<$Res>? get observations {
    if (_value.observations == null) {
      return null;
    }

    return $ObservationDefinitionFHIRModelCopyWith<$Res>(_value.observations!,
        (value) {
      return _then(_value.copyWith(observations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireFHIRModelCopyWith<$Res>? get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }

    return $QuestionnaireFHIRModelCopyWith<$Res>(_value.questionnaire!,
        (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiagnosticReportTemplateFHIRModelCopyWith<$Res>
    implements $DiagnosticReportTemplateFHIRModelCopyWith<$Res> {
  factory _$$_DiagnosticReportTemplateFHIRModelCopyWith(
          _$_DiagnosticReportTemplateFHIRModel value,
          $Res Function(_$_DiagnosticReportTemplateFHIRModel) then) =
      __$$_DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? organizationCode,
      Category? category,
      BodySite? bodySite,
      TestCode? code,
      String? version,
      ImagingStudyFHIRModel? study,
      ObservationDefinitionFHIRModel? observations,
      QuestionnaireFHIRModel? questionnaire,
      List<ObservationValueWeightModel>? observationValueWeight});

  @override
  $ImagingStudyFHIRModelCopyWith<$Res>? get study;
  @override
  $ObservationDefinitionFHIRModelCopyWith<$Res>? get observations;
  @override
  $QuestionnaireFHIRModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class __$$_DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res>
    extends _$DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res,
        _$_DiagnosticReportTemplateFHIRModel>
    implements _$$_DiagnosticReportTemplateFHIRModelCopyWith<$Res> {
  __$$_DiagnosticReportTemplateFHIRModelCopyWithImpl(
      _$_DiagnosticReportTemplateFHIRModel _value,
      $Res Function(_$_DiagnosticReportTemplateFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? category = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? study = freezed,
    Object? observations = freezed,
    Object? questionnaire = freezed,
    Object? observationValueWeight = freezed,
  }) {
    return _then(_$_DiagnosticReportTemplateFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as TestCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      study: freezed == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as ImagingStudyFHIRModel?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionFHIRModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFHIRModel?,
      observationValueWeight: freezed == observationValueWeight
          ? _value._observationValueWeight
          : observationValueWeight // ignore: cast_nullable_to_non_nullable
              as List<ObservationValueWeightModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiagnosticReportTemplateFHIRModel
    implements _DiagnosticReportTemplateFHIRModel {
  const _$_DiagnosticReportTemplateFHIRModel(
      {this.id,
      this.name,
      this.organizationCode,
      this.category,
      this.bodySite,
      this.code,
      this.version,
      this.study,
      this.observations,
      this.questionnaire,
      final List<ObservationValueWeightModel>? observationValueWeight})
      : _observationValueWeight = observationValueWeight;

  factory _$_DiagnosticReportTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_DiagnosticReportTemplateFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? organizationCode;
  @override
  final Category? category;
  @override
  final BodySite? bodySite;
  @override
  final TestCode? code;
  @override
  final String? version;
  @override
  final ImagingStudyFHIRModel? study;
  @override
  final ObservationDefinitionFHIRModel? observations;
  @override
  final QuestionnaireFHIRModel? questionnaire;
  final List<ObservationValueWeightModel>? _observationValueWeight;
  @override
  List<ObservationValueWeightModel>? get observationValueWeight {
    final value = _observationValueWeight;
    if (value == null) return null;
    if (_observationValueWeight is EqualUnmodifiableListView)
      return _observationValueWeight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiagnosticReportTemplateFHIRModel(id: $id, name: $name, organizationCode: $organizationCode, category: $category, bodySite: $bodySite, code: $code, version: $version, study: $study, observations: $observations, questionnaire: $questionnaire, observationValueWeight: $observationValueWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiagnosticReportTemplateFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.study, study) || other.study == study) &&
            (identical(other.observations, observations) ||
                other.observations == observations) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            const DeepCollectionEquality().equals(
                other._observationValueWeight, _observationValueWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      organizationCode,
      category,
      bodySite,
      code,
      version,
      study,
      observations,
      questionnaire,
      const DeepCollectionEquality().hash(_observationValueWeight));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiagnosticReportTemplateFHIRModelCopyWith<
          _$_DiagnosticReportTemplateFHIRModel>
      get copyWith => __$$_DiagnosticReportTemplateFHIRModelCopyWithImpl<
          _$_DiagnosticReportTemplateFHIRModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiagnosticReportTemplateFHIRModelToJson(
      this,
    );
  }
}

abstract class _DiagnosticReportTemplateFHIRModel
    implements DiagnosticReportTemplateFHIRModel {
  const factory _DiagnosticReportTemplateFHIRModel(
          {final int? id,
          final String? name,
          final int? organizationCode,
          final Category? category,
          final BodySite? bodySite,
          final TestCode? code,
          final String? version,
          final ImagingStudyFHIRModel? study,
          final ObservationDefinitionFHIRModel? observations,
          final QuestionnaireFHIRModel? questionnaire,
          final List<ObservationValueWeightModel>? observationValueWeight}) =
      _$_DiagnosticReportTemplateFHIRModel;

  factory _DiagnosticReportTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =
      _$_DiagnosticReportTemplateFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get organizationCode;
  @override
  Category? get category;
  @override
  BodySite? get bodySite;
  @override
  TestCode? get code;
  @override
  String? get version;
  @override
  ImagingStudyFHIRModel? get study;
  @override
  ObservationDefinitionFHIRModel? get observations;
  @override
  QuestionnaireFHIRModel? get questionnaire;
  @override
  List<ObservationValueWeightModel>? get observationValueWeight;
  @override
  @JsonKey(ignore: true)
  _$$_DiagnosticReportTemplateFHIRModelCopyWith<
          _$_DiagnosticReportTemplateFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

ImagingStudyFHIRModel _$ImagingStudyFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _ImagingStudyFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$ImagingStudyFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ImagingSelectionTemplateFHIRModel>? get imagingSelectionTemplate =>
      throw _privateConstructorUsedError;
  List<LanguageBasedTextModel>? get languageBasedText =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagingStudyFHIRModelCopyWith<ImagingStudyFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagingStudyFHIRModelCopyWith<$Res> {
  factory $ImagingStudyFHIRModelCopyWith(ImagingStudyFHIRModel value,
          $Res Function(ImagingStudyFHIRModel) then) =
      _$ImagingStudyFHIRModelCopyWithImpl<$Res, ImagingStudyFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? description,
      List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      List<LanguageBasedTextModel>? languageBasedText});
}

/// @nodoc
class _$ImagingStudyFHIRModelCopyWithImpl<$Res,
        $Val extends ImagingStudyFHIRModel>
    implements $ImagingStudyFHIRModelCopyWith<$Res> {
  _$ImagingStudyFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? imagingSelectionTemplate = freezed,
    Object? languageBasedText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imagingSelectionTemplate: freezed == imagingSelectionTemplate
          ? _value.imagingSelectionTemplate
          : imagingSelectionTemplate // ignore: cast_nullable_to_non_nullable
              as List<ImagingSelectionTemplateFHIRModel>?,
      languageBasedText: freezed == languageBasedText
          ? _value.languageBasedText
          : languageBasedText // ignore: cast_nullable_to_non_nullable
              as List<LanguageBasedTextModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagingStudyFHIRModelCopyWith<$Res>
    implements $ImagingStudyFHIRModelCopyWith<$Res> {
  factory _$$_ImagingStudyFHIRModelCopyWith(_$_ImagingStudyFHIRModel value,
          $Res Function(_$_ImagingStudyFHIRModel) then) =
      __$$_ImagingStudyFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? description,
      List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      List<LanguageBasedTextModel>? languageBasedText});
}

/// @nodoc
class __$$_ImagingStudyFHIRModelCopyWithImpl<$Res>
    extends _$ImagingStudyFHIRModelCopyWithImpl<$Res, _$_ImagingStudyFHIRModel>
    implements _$$_ImagingStudyFHIRModelCopyWith<$Res> {
  __$$_ImagingStudyFHIRModelCopyWithImpl(_$_ImagingStudyFHIRModel _value,
      $Res Function(_$_ImagingStudyFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? imagingSelectionTemplate = freezed,
    Object? languageBasedText = freezed,
  }) {
    return _then(_$_ImagingStudyFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imagingSelectionTemplate: freezed == imagingSelectionTemplate
          ? _value._imagingSelectionTemplate
          : imagingSelectionTemplate // ignore: cast_nullable_to_non_nullable
              as List<ImagingSelectionTemplateFHIRModel>?,
      languageBasedText: freezed == languageBasedText
          ? _value._languageBasedText
          : languageBasedText // ignore: cast_nullable_to_non_nullable
              as List<LanguageBasedTextModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagingStudyFHIRModel implements _ImagingStudyFHIRModel {
  const _$_ImagingStudyFHIRModel(
      {this.id,
      this.description,
      final List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      final List<LanguageBasedTextModel>? languageBasedText})
      : _imagingSelectionTemplate = imagingSelectionTemplate,
        _languageBasedText = languageBasedText;

  factory _$_ImagingStudyFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImagingStudyFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? description;
  final List<ImagingSelectionTemplateFHIRModel>? _imagingSelectionTemplate;
  @override
  List<ImagingSelectionTemplateFHIRModel>? get imagingSelectionTemplate {
    final value = _imagingSelectionTemplate;
    if (value == null) return null;
    if (_imagingSelectionTemplate is EqualUnmodifiableListView)
      return _imagingSelectionTemplate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguageBasedTextModel>? _languageBasedText;
  @override
  List<LanguageBasedTextModel>? get languageBasedText {
    final value = _languageBasedText;
    if (value == null) return null;
    if (_languageBasedText is EqualUnmodifiableListView)
      return _languageBasedText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImagingStudyFHIRModel(id: $id, description: $description, imagingSelectionTemplate: $imagingSelectionTemplate, languageBasedText: $languageBasedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagingStudyFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
                other._imagingSelectionTemplate, _imagingSelectionTemplate) &&
            const DeepCollectionEquality()
                .equals(other._languageBasedText, _languageBasedText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      const DeepCollectionEquality().hash(_imagingSelectionTemplate),
      const DeepCollectionEquality().hash(_languageBasedText));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagingStudyFHIRModelCopyWith<_$_ImagingStudyFHIRModel> get copyWith =>
      __$$_ImagingStudyFHIRModelCopyWithImpl<_$_ImagingStudyFHIRModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagingStudyFHIRModelToJson(
      this,
    );
  }
}

abstract class _ImagingStudyFHIRModel implements ImagingStudyFHIRModel {
  const factory _ImagingStudyFHIRModel(
      {final int? id,
      final String? description,
      final List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      final List<LanguageBasedTextModel>?
          languageBasedText}) = _$_ImagingStudyFHIRModel;

  factory _ImagingStudyFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_ImagingStudyFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get description;
  @override
  List<ImagingSelectionTemplateFHIRModel>? get imagingSelectionTemplate;
  @override
  List<LanguageBasedTextModel>? get languageBasedText;
  @override
  @JsonKey(ignore: true)
  _$$_ImagingStudyFHIRModelCopyWith<_$_ImagingStudyFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagingSelectionTemplateFHIRModel _$ImagingSelectionTemplateFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _ImagingSelectionTemplateFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$ImagingSelectionTemplateFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaType? get type => throw _privateConstructorUsedError;
  int? get maxSize => throw _privateConstructorUsedError;
  FileType? get fileType => throw _privateConstructorUsedError;
  List<RelatedImageFHIRModel>? get relatedImage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagingSelectionTemplateFHIRModelCopyWith<ImagingSelectionTemplateFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagingSelectionTemplateFHIRModelCopyWith<$Res> {
  factory $ImagingSelectionTemplateFHIRModelCopyWith(
          ImagingSelectionTemplateFHIRModel value,
          $Res Function(ImagingSelectionTemplateFHIRModel) then) =
      _$ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res,
          ImagingSelectionTemplateFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      FileType? fileType,
      List<RelatedImageFHIRModel>? relatedImage});
}

/// @nodoc
class _$ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res,
        $Val extends ImagingSelectionTemplateFHIRModel>
    implements $ImagingSelectionTemplateFHIRModelCopyWith<$Res> {
  _$ImagingSelectionTemplateFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
    Object? relatedImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType?,
      relatedImage: freezed == relatedImage
          ? _value.relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagingSelectionTemplateFHIRModelCopyWith<$Res>
    implements $ImagingSelectionTemplateFHIRModelCopyWith<$Res> {
  factory _$$_ImagingSelectionTemplateFHIRModelCopyWith(
          _$_ImagingSelectionTemplateFHIRModel value,
          $Res Function(_$_ImagingSelectionTemplateFHIRModel) then) =
      __$$_ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      FileType? fileType,
      List<RelatedImageFHIRModel>? relatedImage});
}

/// @nodoc
class __$$_ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res>
    extends _$ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res,
        _$_ImagingSelectionTemplateFHIRModel>
    implements _$$_ImagingSelectionTemplateFHIRModelCopyWith<$Res> {
  __$$_ImagingSelectionTemplateFHIRModelCopyWithImpl(
      _$_ImagingSelectionTemplateFHIRModel _value,
      $Res Function(_$_ImagingSelectionTemplateFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
    Object? relatedImage = freezed,
  }) {
    return _then(_$_ImagingSelectionTemplateFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType?,
      relatedImage: freezed == relatedImage
          ? _value._relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagingSelectionTemplateFHIRModel
    implements _ImagingSelectionTemplateFHIRModel {
  const _$_ImagingSelectionTemplateFHIRModel(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.maxSize,
      this.fileType,
      final List<RelatedImageFHIRModel>? relatedImage})
      : _relatedImage = relatedImage;

  factory _$_ImagingSelectionTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ImagingSelectionTemplateFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final MediaType? type;
  @override
  final int? maxSize;
  @override
  final FileType? fileType;
  final List<RelatedImageFHIRModel>? _relatedImage;
  @override
  List<RelatedImageFHIRModel>? get relatedImage {
    final value = _relatedImage;
    if (value == null) return null;
    if (_relatedImage is EqualUnmodifiableListView) return _relatedImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImagingSelectionTemplateFHIRModel(id: $id, name: $name, description: $description, type: $type, maxSize: $maxSize, fileType: $fileType, relatedImage: $relatedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagingSelectionTemplateFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            const DeepCollectionEquality()
                .equals(other._relatedImage, _relatedImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type,
      maxSize, fileType, const DeepCollectionEquality().hash(_relatedImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagingSelectionTemplateFHIRModelCopyWith<
          _$_ImagingSelectionTemplateFHIRModel>
      get copyWith => __$$_ImagingSelectionTemplateFHIRModelCopyWithImpl<
          _$_ImagingSelectionTemplateFHIRModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagingSelectionTemplateFHIRModelToJson(
      this,
    );
  }
}

abstract class _ImagingSelectionTemplateFHIRModel
    implements ImagingSelectionTemplateFHIRModel {
  const factory _ImagingSelectionTemplateFHIRModel(
          {final int? id,
          final String? name,
          final String? description,
          final MediaType? type,
          final int? maxSize,
          final FileType? fileType,
          final List<RelatedImageFHIRModel>? relatedImage}) =
      _$_ImagingSelectionTemplateFHIRModel;

  factory _ImagingSelectionTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =
      _$_ImagingSelectionTemplateFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  MediaType? get type;
  @override
  int? get maxSize;
  @override
  FileType? get fileType;
  @override
  List<RelatedImageFHIRModel>? get relatedImage;
  @override
  @JsonKey(ignore: true)
  _$$_ImagingSelectionTemplateFHIRModelCopyWith<
          _$_ImagingSelectionTemplateFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

RelatedImageFHIRModel _$RelatedImageFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _RelatedImageFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$RelatedImageFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imageTitle => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  FileType? get filetype => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedImageFHIRModelCopyWith<RelatedImageFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedImageFHIRModelCopyWith<$Res> {
  factory $RelatedImageFHIRModelCopyWith(RelatedImageFHIRModel value,
          $Res Function(RelatedImageFHIRModel) then) =
      _$RelatedImageFHIRModelCopyWithImpl<$Res, RelatedImageFHIRModel>;
  @useResult
  $Res call({int? id, String? imageTitle, String? url, FileType? filetype});
}

/// @nodoc
class _$RelatedImageFHIRModelCopyWithImpl<$Res,
        $Val extends RelatedImageFHIRModel>
    implements $RelatedImageFHIRModelCopyWith<$Res> {
  _$RelatedImageFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageTitle = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageTitle: freezed == imageTitle
          ? _value.imageTitle
          : imageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filetype: freezed == filetype
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as FileType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedImageFHIRModelCopyWith<$Res>
    implements $RelatedImageFHIRModelCopyWith<$Res> {
  factory _$$_RelatedImageFHIRModelCopyWith(_$_RelatedImageFHIRModel value,
          $Res Function(_$_RelatedImageFHIRModel) then) =
      __$$_RelatedImageFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? imageTitle, String? url, FileType? filetype});
}

/// @nodoc
class __$$_RelatedImageFHIRModelCopyWithImpl<$Res>
    extends _$RelatedImageFHIRModelCopyWithImpl<$Res, _$_RelatedImageFHIRModel>
    implements _$$_RelatedImageFHIRModelCopyWith<$Res> {
  __$$_RelatedImageFHIRModelCopyWithImpl(_$_RelatedImageFHIRModel _value,
      $Res Function(_$_RelatedImageFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageTitle = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_$_RelatedImageFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageTitle: freezed == imageTitle
          ? _value.imageTitle
          : imageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filetype: freezed == filetype
          ? _value.filetype
          : filetype // ignore: cast_nullable_to_non_nullable
              as FileType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedImageFHIRModel implements _RelatedImageFHIRModel {
  const _$_RelatedImageFHIRModel(
      {this.id, this.imageTitle, this.url, this.filetype});

  factory _$_RelatedImageFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedImageFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? imageTitle;
  @override
  final String? url;
  @override
  final FileType? filetype;

  @override
  String toString() {
    return 'RelatedImageFHIRModel(id: $id, imageTitle: $imageTitle, url: $url, filetype: $filetype)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedImageFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageTitle, imageTitle) ||
                other.imageTitle == imageTitle) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filetype, filetype) ||
                other.filetype == filetype));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageTitle, url, filetype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedImageFHIRModelCopyWith<_$_RelatedImageFHIRModel> get copyWith =>
      __$$_RelatedImageFHIRModelCopyWithImpl<_$_RelatedImageFHIRModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedImageFHIRModelToJson(
      this,
    );
  }
}

abstract class _RelatedImageFHIRModel implements RelatedImageFHIRModel {
  const factory _RelatedImageFHIRModel(
      {final int? id,
      final String? imageTitle,
      final String? url,
      final FileType? filetype}) = _$_RelatedImageFHIRModel;

  factory _RelatedImageFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_RelatedImageFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get imageTitle;
  @override
  String? get url;
  @override
  FileType? get filetype;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedImageFHIRModelCopyWith<_$_RelatedImageFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ObservationDefinitionFHIRModel _$ObservationDefinitionFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationDefinitionFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationDefinitionFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  ObservationCategory? get category => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  ObservationCode? get code => throw _privateConstructorUsedError;
  ObservationMethod? get method => throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;
  List<ObservationDefinitionModel>? get observationDefinition =>
      throw _privateConstructorUsedError;
  List<DataComponentFHIRModel>? get dataComponent =>
      throw _privateConstructorUsedError;
  List<RelatedImageFHIRModel>? get relatedImage =>
      throw _privateConstructorUsedError;
  List<QualifiedValueModel>? get qualifiedValue =>
      throw _privateConstructorUsedError;
  List<LanguageBasedTextModel>? get languageBasedText =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationDefinitionFHIRModelCopyWith<ObservationDefinitionFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationDefinitionFHIRModelCopyWith<$Res> {
  factory $ObservationDefinitionFHIRModelCopyWith(
          ObservationDefinitionFHIRModel value,
          $Res Function(ObservationDefinitionFHIRModel) then) =
      _$ObservationDefinitionFHIRModelCopyWithImpl<$Res,
          ObservationDefinitionFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      ObservationCategory? category,
      BodySite? bodySite,
      ObservationCode? code,
      ObservationMethod? method,
      Jurisdiction? jurisdiction,
      List<ObservationDefinitionModel>? observationDefinition,
      List<DataComponentFHIRModel>? dataComponent,
      List<RelatedImageFHIRModel>? relatedImage,
      List<QualifiedValueModel>? qualifiedValue,
      List<LanguageBasedTextModel>? languageBasedText});
}

/// @nodoc
class _$ObservationDefinitionFHIRModelCopyWithImpl<$Res,
        $Val extends ObservationDefinitionFHIRModel>
    implements $ObservationDefinitionFHIRModelCopyWith<$Res> {
  _$ObservationDefinitionFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? method = freezed,
    Object? jurisdiction = freezed,
    Object? observationDefinition = freezed,
    Object? dataComponent = freezed,
    Object? relatedImage = freezed,
    Object? qualifiedValue = freezed,
    Object? languageBasedText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ObservationMethod?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      observationDefinition: freezed == observationDefinition
          ? _value.observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as List<ObservationDefinitionModel>?,
      dataComponent: freezed == dataComponent
          ? _value.dataComponent
          : dataComponent // ignore: cast_nullable_to_non_nullable
              as List<DataComponentFHIRModel>?,
      relatedImage: freezed == relatedImage
          ? _value.relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
      qualifiedValue: freezed == qualifiedValue
          ? _value.qualifiedValue
          : qualifiedValue // ignore: cast_nullable_to_non_nullable
              as List<QualifiedValueModel>?,
      languageBasedText: freezed == languageBasedText
          ? _value.languageBasedText
          : languageBasedText // ignore: cast_nullable_to_non_nullable
              as List<LanguageBasedTextModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationDefinitionFHIRModelCopyWith<$Res>
    implements $ObservationDefinitionFHIRModelCopyWith<$Res> {
  factory _$$_ObservationDefinitionFHIRModelCopyWith(
          _$_ObservationDefinitionFHIRModel value,
          $Res Function(_$_ObservationDefinitionFHIRModel) then) =
      __$$_ObservationDefinitionFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      ObservationCategory? category,
      BodySite? bodySite,
      ObservationCode? code,
      ObservationMethod? method,
      Jurisdiction? jurisdiction,
      List<ObservationDefinitionModel>? observationDefinition,
      List<DataComponentFHIRModel>? dataComponent,
      List<RelatedImageFHIRModel>? relatedImage,
      List<QualifiedValueModel>? qualifiedValue,
      List<LanguageBasedTextModel>? languageBasedText});
}

/// @nodoc
class __$$_ObservationDefinitionFHIRModelCopyWithImpl<$Res>
    extends _$ObservationDefinitionFHIRModelCopyWithImpl<$Res,
        _$_ObservationDefinitionFHIRModel>
    implements _$$_ObservationDefinitionFHIRModelCopyWith<$Res> {
  __$$_ObservationDefinitionFHIRModelCopyWithImpl(
      _$_ObservationDefinitionFHIRModel _value,
      $Res Function(_$_ObservationDefinitionFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? method = freezed,
    Object? jurisdiction = freezed,
    Object? observationDefinition = freezed,
    Object? dataComponent = freezed,
    Object? relatedImage = freezed,
    Object? qualifiedValue = freezed,
    Object? languageBasedText = freezed,
  }) {
    return _then(_$_ObservationDefinitionFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ObservationMethod?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      observationDefinition: freezed == observationDefinition
          ? _value._observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as List<ObservationDefinitionModel>?,
      dataComponent: freezed == dataComponent
          ? _value._dataComponent
          : dataComponent // ignore: cast_nullable_to_non_nullable
              as List<DataComponentFHIRModel>?,
      relatedImage: freezed == relatedImage
          ? _value._relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
      qualifiedValue: freezed == qualifiedValue
          ? _value._qualifiedValue
          : qualifiedValue // ignore: cast_nullable_to_non_nullable
              as List<QualifiedValueModel>?,
      languageBasedText: freezed == languageBasedText
          ? _value._languageBasedText
          : languageBasedText // ignore: cast_nullable_to_non_nullable
              as List<LanguageBasedTextModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationDefinitionFHIRModel
    implements _ObservationDefinitionFHIRModel {
  const _$_ObservationDefinitionFHIRModel(
      {this.id,
      this.name,
      this.category,
      this.bodySite,
      this.code,
      this.method,
      this.jurisdiction,
      final List<ObservationDefinitionModel>? observationDefinition,
      final List<DataComponentFHIRModel>? dataComponent,
      final List<RelatedImageFHIRModel>? relatedImage,
      final List<QualifiedValueModel>? qualifiedValue,
      final List<LanguageBasedTextModel>? languageBasedText})
      : _observationDefinition = observationDefinition,
        _dataComponent = dataComponent,
        _relatedImage = relatedImage,
        _qualifiedValue = qualifiedValue,
        _languageBasedText = languageBasedText;

  factory _$_ObservationDefinitionFHIRModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ObservationDefinitionFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final ObservationCategory? category;
  @override
  final BodySite? bodySite;
  @override
  final ObservationCode? code;
  @override
  final ObservationMethod? method;
  @override
  final Jurisdiction? jurisdiction;
  final List<ObservationDefinitionModel>? _observationDefinition;
  @override
  List<ObservationDefinitionModel>? get observationDefinition {
    final value = _observationDefinition;
    if (value == null) return null;
    if (_observationDefinition is EqualUnmodifiableListView)
      return _observationDefinition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DataComponentFHIRModel>? _dataComponent;
  @override
  List<DataComponentFHIRModel>? get dataComponent {
    final value = _dataComponent;
    if (value == null) return null;
    if (_dataComponent is EqualUnmodifiableListView) return _dataComponent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedImageFHIRModel>? _relatedImage;
  @override
  List<RelatedImageFHIRModel>? get relatedImage {
    final value = _relatedImage;
    if (value == null) return null;
    if (_relatedImage is EqualUnmodifiableListView) return _relatedImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QualifiedValueModel>? _qualifiedValue;
  @override
  List<QualifiedValueModel>? get qualifiedValue {
    final value = _qualifiedValue;
    if (value == null) return null;
    if (_qualifiedValue is EqualUnmodifiableListView) return _qualifiedValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguageBasedTextModel>? _languageBasedText;
  @override
  List<LanguageBasedTextModel>? get languageBasedText {
    final value = _languageBasedText;
    if (value == null) return null;
    if (_languageBasedText is EqualUnmodifiableListView)
      return _languageBasedText;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObservationDefinitionFHIRModel(id: $id, name: $name, category: $category, bodySite: $bodySite, code: $code, method: $method, jurisdiction: $jurisdiction, observationDefinition: $observationDefinition, dataComponent: $dataComponent, relatedImage: $relatedImage, qualifiedValue: $qualifiedValue, languageBasedText: $languageBasedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationDefinitionFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            const DeepCollectionEquality()
                .equals(other._observationDefinition, _observationDefinition) &&
            const DeepCollectionEquality()
                .equals(other._dataComponent, _dataComponent) &&
            const DeepCollectionEquality()
                .equals(other._relatedImage, _relatedImage) &&
            const DeepCollectionEquality()
                .equals(other._qualifiedValue, _qualifiedValue) &&
            const DeepCollectionEquality()
                .equals(other._languageBasedText, _languageBasedText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      bodySite,
      code,
      method,
      jurisdiction,
      const DeepCollectionEquality().hash(_observationDefinition),
      const DeepCollectionEquality().hash(_dataComponent),
      const DeepCollectionEquality().hash(_relatedImage),
      const DeepCollectionEquality().hash(_qualifiedValue),
      const DeepCollectionEquality().hash(_languageBasedText));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationDefinitionFHIRModelCopyWith<_$_ObservationDefinitionFHIRModel>
      get copyWith => __$$_ObservationDefinitionFHIRModelCopyWithImpl<
          _$_ObservationDefinitionFHIRModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationDefinitionFHIRModelToJson(
      this,
    );
  }
}

abstract class _ObservationDefinitionFHIRModel
    implements ObservationDefinitionFHIRModel {
  const factory _ObservationDefinitionFHIRModel(
          {final int? id,
          final String? name,
          final ObservationCategory? category,
          final BodySite? bodySite,
          final ObservationCode? code,
          final ObservationMethod? method,
          final Jurisdiction? jurisdiction,
          final List<ObservationDefinitionModel>? observationDefinition,
          final List<DataComponentFHIRModel>? dataComponent,
          final List<RelatedImageFHIRModel>? relatedImage,
          final List<QualifiedValueModel>? qualifiedValue,
          final List<LanguageBasedTextModel>? languageBasedText}) =
      _$_ObservationDefinitionFHIRModel;

  factory _ObservationDefinitionFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationDefinitionFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  ObservationCategory? get category;
  @override
  BodySite? get bodySite;
  @override
  ObservationCode? get code;
  @override
  ObservationMethod? get method;
  @override
  Jurisdiction? get jurisdiction;
  @override
  List<ObservationDefinitionModel>? get observationDefinition;
  @override
  List<DataComponentFHIRModel>? get dataComponent;
  @override
  List<RelatedImageFHIRModel>? get relatedImage;
  @override
  List<QualifiedValueModel>? get qualifiedValue;
  @override
  List<LanguageBasedTextModel>? get languageBasedText;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationDefinitionFHIRModelCopyWith<_$_ObservationDefinitionFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationDefinitionModel _$ObservationDefinitionModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationDefinitionModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationDefinitionModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ObservationCategory? get category => throw _privateConstructorUsedError;
  ObservationCode? get code => throw _privateConstructorUsedError;
  BodySite? get bodySite => throw _privateConstructorUsedError;
  ObservationMethod? get method => throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationDefinitionModelCopyWith<ObservationDefinitionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationDefinitionModelCopyWith<$Res> {
  factory $ObservationDefinitionModelCopyWith(ObservationDefinitionModel value,
          $Res Function(ObservationDefinitionModel) then) =
      _$ObservationDefinitionModelCopyWithImpl<$Res,
          ObservationDefinitionModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      ObservationCategory? category,
      ObservationCode? code,
      BodySite? bodySite,
      ObservationMethod? method,
      Jurisdiction? jurisdiction});
}

/// @nodoc
class _$ObservationDefinitionModelCopyWithImpl<$Res,
        $Val extends ObservationDefinitionModel>
    implements $ObservationDefinitionModelCopyWith<$Res> {
  _$ObservationDefinitionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? bodySite = freezed,
    Object? method = freezed,
    Object? jurisdiction = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ObservationMethod?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationDefinitionModelCopyWith<$Res>
    implements $ObservationDefinitionModelCopyWith<$Res> {
  factory _$$_ObservationDefinitionModelCopyWith(
          _$_ObservationDefinitionModel value,
          $Res Function(_$_ObservationDefinitionModel) then) =
      __$$_ObservationDefinitionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      ObservationCategory? category,
      ObservationCode? code,
      BodySite? bodySite,
      ObservationMethod? method,
      Jurisdiction? jurisdiction});
}

/// @nodoc
class __$$_ObservationDefinitionModelCopyWithImpl<$Res>
    extends _$ObservationDefinitionModelCopyWithImpl<$Res,
        _$_ObservationDefinitionModel>
    implements _$$_ObservationDefinitionModelCopyWith<$Res> {
  __$$_ObservationDefinitionModelCopyWithImpl(
      _$_ObservationDefinitionModel _value,
      $Res Function(_$_ObservationDefinitionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? code = freezed,
    Object? bodySite = freezed,
    Object? method = freezed,
    Object? jurisdiction = freezed,
  }) {
    return _then(_$_ObservationDefinitionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ObservationCategory?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ObservationCode?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as BodySite?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as ObservationMethod?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationDefinitionModel implements _ObservationDefinitionModel {
  const _$_ObservationDefinitionModel(
      {this.id,
      this.name,
      this.description,
      this.category,
      this.code,
      this.bodySite,
      this.method,
      this.jurisdiction});

  factory _$_ObservationDefinitionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationDefinitionModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final ObservationCategory? category;
  @override
  final ObservationCode? code;
  @override
  final BodySite? bodySite;
  @override
  final ObservationMethod? method;
  @override
  final Jurisdiction? jurisdiction;

  @override
  String toString() {
    return 'ObservationDefinitionModel(id: $id, name: $name, description: $description, category: $category, code: $code, bodySite: $bodySite, method: $method, jurisdiction: $jurisdiction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationDefinitionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, category,
      code, bodySite, method, jurisdiction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationDefinitionModelCopyWith<_$_ObservationDefinitionModel>
      get copyWith => __$$_ObservationDefinitionModelCopyWithImpl<
          _$_ObservationDefinitionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationDefinitionModelToJson(
      this,
    );
  }
}

abstract class _ObservationDefinitionModel
    implements ObservationDefinitionModel {
  const factory _ObservationDefinitionModel(
      {final int? id,
      final String? name,
      final String? description,
      final ObservationCategory? category,
      final ObservationCode? code,
      final BodySite? bodySite,
      final ObservationMethod? method,
      final Jurisdiction? jurisdiction}) = _$_ObservationDefinitionModel;

  factory _ObservationDefinitionModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationDefinitionModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  ObservationCategory? get category;
  @override
  ObservationCode? get code;
  @override
  BodySite? get bodySite;
  @override
  ObservationMethod? get method;
  @override
  Jurisdiction? get jurisdiction;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationDefinitionModelCopyWith<_$_ObservationDefinitionModel>
      get copyWith => throw _privateConstructorUsedError;
}

DataComponentFHIRModel _$DataComponentFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _DataComponentFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$DataComponentFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  PermittedDataType? get permittedDataType =>
      throw _privateConstructorUsedError;
  PermittedUnit? get permittedUnit => throw _privateConstructorUsedError;
  List<QualifiedValueModel>? get qualifiedValue =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataComponentFHIRModelCopyWith<DataComponentFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataComponentFHIRModelCopyWith<$Res> {
  factory $DataComponentFHIRModelCopyWith(DataComponentFHIRModel value,
          $Res Function(DataComponentFHIRModel) then) =
      _$DataComponentFHIRModelCopyWithImpl<$Res, DataComponentFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      PermittedDataType? permittedDataType,
      PermittedUnit? permittedUnit,
      List<QualifiedValueModel>? qualifiedValue});
}

/// @nodoc
class _$DataComponentFHIRModelCopyWithImpl<$Res,
        $Val extends DataComponentFHIRModel>
    implements $DataComponentFHIRModelCopyWith<$Res> {
  _$DataComponentFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? qualifiedValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permittedDataType: freezed == permittedDataType
          ? _value.permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as PermittedDataType?,
      permittedUnit: freezed == permittedUnit
          ? _value.permittedUnit
          : permittedUnit // ignore: cast_nullable_to_non_nullable
              as PermittedUnit?,
      qualifiedValue: freezed == qualifiedValue
          ? _value.qualifiedValue
          : qualifiedValue // ignore: cast_nullable_to_non_nullable
              as List<QualifiedValueModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataComponentFHIRModelCopyWith<$Res>
    implements $DataComponentFHIRModelCopyWith<$Res> {
  factory _$$_DataComponentFHIRModelCopyWith(_$_DataComponentFHIRModel value,
          $Res Function(_$_DataComponentFHIRModel) then) =
      __$$_DataComponentFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      PermittedDataType? permittedDataType,
      PermittedUnit? permittedUnit,
      List<QualifiedValueModel>? qualifiedValue});
}

/// @nodoc
class __$$_DataComponentFHIRModelCopyWithImpl<$Res>
    extends _$DataComponentFHIRModelCopyWithImpl<$Res,
        _$_DataComponentFHIRModel>
    implements _$$_DataComponentFHIRModelCopyWith<$Res> {
  __$$_DataComponentFHIRModelCopyWithImpl(_$_DataComponentFHIRModel _value,
      $Res Function(_$_DataComponentFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? qualifiedValue = freezed,
  }) {
    return _then(_$_DataComponentFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permittedDataType: freezed == permittedDataType
          ? _value.permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as PermittedDataType?,
      permittedUnit: freezed == permittedUnit
          ? _value.permittedUnit
          : permittedUnit // ignore: cast_nullable_to_non_nullable
              as PermittedUnit?,
      qualifiedValue: freezed == qualifiedValue
          ? _value._qualifiedValue
          : qualifiedValue // ignore: cast_nullable_to_non_nullable
              as List<QualifiedValueModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataComponentFHIRModel implements _DataComponentFHIRModel {
  const _$_DataComponentFHIRModel(
      {this.id,
      this.permittedDataType,
      this.permittedUnit,
      final List<QualifiedValueModel>? qualifiedValue})
      : _qualifiedValue = qualifiedValue;

  factory _$_DataComponentFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataComponentFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final PermittedDataType? permittedDataType;
  @override
  final PermittedUnit? permittedUnit;
  final List<QualifiedValueModel>? _qualifiedValue;
  @override
  List<QualifiedValueModel>? get qualifiedValue {
    final value = _qualifiedValue;
    if (value == null) return null;
    if (_qualifiedValue is EqualUnmodifiableListView) return _qualifiedValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataComponentFHIRModel(id: $id, permittedDataType: $permittedDataType, permittedUnit: $permittedUnit, qualifiedValue: $qualifiedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataComponentFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.permittedDataType, permittedDataType) ||
                other.permittedDataType == permittedDataType) &&
            (identical(other.permittedUnit, permittedUnit) ||
                other.permittedUnit == permittedUnit) &&
            const DeepCollectionEquality()
                .equals(other._qualifiedValue, _qualifiedValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, permittedDataType,
      permittedUnit, const DeepCollectionEquality().hash(_qualifiedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataComponentFHIRModelCopyWith<_$_DataComponentFHIRModel> get copyWith =>
      __$$_DataComponentFHIRModelCopyWithImpl<_$_DataComponentFHIRModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataComponentFHIRModelToJson(
      this,
    );
  }
}

abstract class _DataComponentFHIRModel implements DataComponentFHIRModel {
  const factory _DataComponentFHIRModel(
          {final int? id,
          final PermittedDataType? permittedDataType,
          final PermittedUnit? permittedUnit,
          final List<QualifiedValueModel>? qualifiedValue}) =
      _$_DataComponentFHIRModel;

  factory _DataComponentFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_DataComponentFHIRModel.fromJson;

  @override
  int? get id;
  @override
  PermittedDataType? get permittedDataType;
  @override
  PermittedUnit? get permittedUnit;
  @override
  List<QualifiedValueModel>? get qualifiedValue;
  @override
  @JsonKey(ignore: true)
  _$$_DataComponentFHIRModelCopyWith<_$_DataComponentFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QualifiedValueModel _$QualifiedValueModelFromJson(Map<String, dynamic> json) {
  return _QualifiedValueModel.fromJson(json);
}

/// @nodoc
mixin _$QualifiedValueModel {
  int? get id => throw _privateConstructorUsedError;
  bool? get isRange => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  RangeCategory? get rangeCategory => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  RangeModel? get range => throw _privateConstructorUsedError;
  ObservationDefinitionModel? get observationDefinition =>
      throw _privateConstructorUsedError;
  DataComponentModel? get dataComponent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualifiedValueModelCopyWith<QualifiedValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualifiedValueModelCopyWith<$Res> {
  factory $QualifiedValueModelCopyWith(
          QualifiedValueModel value, $Res Function(QualifiedValueModel) then) =
      _$QualifiedValueModelCopyWithImpl<$Res, QualifiedValueModel>;
  @useResult
  $Res call(
      {int? id,
      bool? isRange,
      String? value,
      RangeCategory? rangeCategory,
      Gender? gender,
      RangeModel? range,
      ObservationDefinitionModel? observationDefinition,
      DataComponentModel? dataComponent});

  $RangeModelCopyWith<$Res>? get range;
  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition;
  $DataComponentModelCopyWith<$Res>? get dataComponent;
}

/// @nodoc
class _$QualifiedValueModelCopyWithImpl<$Res, $Val extends QualifiedValueModel>
    implements $QualifiedValueModelCopyWith<$Res> {
  _$QualifiedValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isRange = freezed,
    Object? value = freezed,
    Object? rangeCategory = freezed,
    Object? gender = freezed,
    Object? range = freezed,
    Object? observationDefinition = freezed,
    Object? dataComponent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isRange: freezed == isRange
          ? _value.isRange
          : isRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      rangeCategory: freezed == rangeCategory
          ? _value.rangeCategory
          : rangeCategory // ignore: cast_nullable_to_non_nullable
              as RangeCategory?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeModel?,
      observationDefinition: freezed == observationDefinition
          ? _value.observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionModel?,
      dataComponent: freezed == dataComponent
          ? _value.dataComponent
          : dataComponent // ignore: cast_nullable_to_non_nullable
              as DataComponentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeModelCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeModelCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition {
    if (_value.observationDefinition == null) {
      return null;
    }

    return $ObservationDefinitionModelCopyWith<$Res>(
        _value.observationDefinition!, (value) {
      return _then(_value.copyWith(observationDefinition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataComponentModelCopyWith<$Res>? get dataComponent {
    if (_value.dataComponent == null) {
      return null;
    }

    return $DataComponentModelCopyWith<$Res>(_value.dataComponent!, (value) {
      return _then(_value.copyWith(dataComponent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QualifiedValueModelCopyWith<$Res>
    implements $QualifiedValueModelCopyWith<$Res> {
  factory _$$_QualifiedValueModelCopyWith(_$_QualifiedValueModel value,
          $Res Function(_$_QualifiedValueModel) then) =
      __$$_QualifiedValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? isRange,
      String? value,
      RangeCategory? rangeCategory,
      Gender? gender,
      RangeModel? range,
      ObservationDefinitionModel? observationDefinition,
      DataComponentModel? dataComponent});

  @override
  $RangeModelCopyWith<$Res>? get range;
  @override
  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition;
  @override
  $DataComponentModelCopyWith<$Res>? get dataComponent;
}

/// @nodoc
class __$$_QualifiedValueModelCopyWithImpl<$Res>
    extends _$QualifiedValueModelCopyWithImpl<$Res, _$_QualifiedValueModel>
    implements _$$_QualifiedValueModelCopyWith<$Res> {
  __$$_QualifiedValueModelCopyWithImpl(_$_QualifiedValueModel _value,
      $Res Function(_$_QualifiedValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isRange = freezed,
    Object? value = freezed,
    Object? rangeCategory = freezed,
    Object? gender = freezed,
    Object? range = freezed,
    Object? observationDefinition = freezed,
    Object? dataComponent = freezed,
  }) {
    return _then(_$_QualifiedValueModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isRange: freezed == isRange
          ? _value.isRange
          : isRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      rangeCategory: freezed == rangeCategory
          ? _value.rangeCategory
          : rangeCategory // ignore: cast_nullable_to_non_nullable
              as RangeCategory?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RangeModel?,
      observationDefinition: freezed == observationDefinition
          ? _value.observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionModel?,
      dataComponent: freezed == dataComponent
          ? _value.dataComponent
          : dataComponent // ignore: cast_nullable_to_non_nullable
              as DataComponentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QualifiedValueModel implements _QualifiedValueModel {
  const _$_QualifiedValueModel(
      {this.id,
      this.isRange,
      this.value,
      this.rangeCategory,
      this.gender,
      this.range,
      this.observationDefinition,
      this.dataComponent});

  factory _$_QualifiedValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_QualifiedValueModelFromJson(json);

  @override
  final int? id;
  @override
  final bool? isRange;
  @override
  final String? value;
  @override
  final RangeCategory? rangeCategory;
  @override
  final Gender? gender;
  @override
  final RangeModel? range;
  @override
  final ObservationDefinitionModel? observationDefinition;
  @override
  final DataComponentModel? dataComponent;

  @override
  String toString() {
    return 'QualifiedValueModel(id: $id, isRange: $isRange, value: $value, rangeCategory: $rangeCategory, gender: $gender, range: $range, observationDefinition: $observationDefinition, dataComponent: $dataComponent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QualifiedValueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isRange, isRange) || other.isRange == isRange) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.rangeCategory, rangeCategory) ||
                other.rangeCategory == rangeCategory) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.observationDefinition, observationDefinition) ||
                other.observationDefinition == observationDefinition) &&
            (identical(other.dataComponent, dataComponent) ||
                other.dataComponent == dataComponent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isRange, value,
      rangeCategory, gender, range, observationDefinition, dataComponent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QualifiedValueModelCopyWith<_$_QualifiedValueModel> get copyWith =>
      __$$_QualifiedValueModelCopyWithImpl<_$_QualifiedValueModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QualifiedValueModelToJson(
      this,
    );
  }
}

abstract class _QualifiedValueModel implements QualifiedValueModel {
  const factory _QualifiedValueModel(
      {final int? id,
      final bool? isRange,
      final String? value,
      final RangeCategory? rangeCategory,
      final Gender? gender,
      final RangeModel? range,
      final ObservationDefinitionModel? observationDefinition,
      final DataComponentModel? dataComponent}) = _$_QualifiedValueModel;

  factory _QualifiedValueModel.fromJson(Map<String, dynamic> json) =
      _$_QualifiedValueModel.fromJson;

  @override
  int? get id;
  @override
  bool? get isRange;
  @override
  String? get value;
  @override
  RangeCategory? get rangeCategory;
  @override
  Gender? get gender;
  @override
  RangeModel? get range;
  @override
  ObservationDefinitionModel? get observationDefinition;
  @override
  DataComponentModel? get dataComponent;
  @override
  @JsonKey(ignore: true)
  _$$_QualifiedValueModelCopyWith<_$_QualifiedValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RangeModel _$RangeModelFromJson(Map<String, dynamic> json) {
  return _RangeModel.fromJson(json);
}

/// @nodoc
mixin _$RangeModel {
  int? get id => throw _privateConstructorUsedError;
  double? get low => throw _privateConstructorUsedError;
  double? get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RangeModelCopyWith<RangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeModelCopyWith<$Res> {
  factory $RangeModelCopyWith(
          RangeModel value, $Res Function(RangeModel) then) =
      _$RangeModelCopyWithImpl<$Res, RangeModel>;
  @useResult
  $Res call({int? id, double? low, double? high});
}

/// @nodoc
class _$RangeModelCopyWithImpl<$Res, $Val extends RangeModel>
    implements $RangeModelCopyWith<$Res> {
  _$RangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? low = freezed,
    Object? high = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RangeModelCopyWith<$Res>
    implements $RangeModelCopyWith<$Res> {
  factory _$$_RangeModelCopyWith(
          _$_RangeModel value, $Res Function(_$_RangeModel) then) =
      __$$_RangeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, double? low, double? high});
}

/// @nodoc
class __$$_RangeModelCopyWithImpl<$Res>
    extends _$RangeModelCopyWithImpl<$Res, _$_RangeModel>
    implements _$$_RangeModelCopyWith<$Res> {
  __$$_RangeModelCopyWithImpl(
      _$_RangeModel _value, $Res Function(_$_RangeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? low = freezed,
    Object? high = freezed,
  }) {
    return _then(_$_RangeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RangeModel implements _RangeModel {
  const _$_RangeModel({this.id, this.low, this.high});

  factory _$_RangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RangeModelFromJson(json);

  @override
  final int? id;
  @override
  final double? low;
  @override
  final double? high;

  @override
  String toString() {
    return 'RangeModel(id: $id, low: $low, high: $high)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RangeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, low, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RangeModelCopyWith<_$_RangeModel> get copyWith =>
      __$$_RangeModelCopyWithImpl<_$_RangeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RangeModelToJson(
      this,
    );
  }
}

abstract class _RangeModel implements RangeModel {
  const factory _RangeModel(
      {final int? id, final double? low, final double? high}) = _$_RangeModel;

  factory _RangeModel.fromJson(Map<String, dynamic> json) =
      _$_RangeModel.fromJson;

  @override
  int? get id;
  @override
  double? get low;
  @override
  double? get high;
  @override
  @JsonKey(ignore: true)
  _$$_RangeModelCopyWith<_$_RangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataComponentModel _$DataComponentModelFromJson(Map<String, dynamic> json) {
  return _DataComponentModel.fromJson(json);
}

/// @nodoc
mixin _$DataComponentModel {
  int? get id => throw _privateConstructorUsedError;
  PermittedDataType? get permittedDataType =>
      throw _privateConstructorUsedError;
  PermittedUnit? get permittedUnit => throw _privateConstructorUsedError;
  ObservationDefinitionModel? get observationDefinition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataComponentModelCopyWith<DataComponentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataComponentModelCopyWith<$Res> {
  factory $DataComponentModelCopyWith(
          DataComponentModel value, $Res Function(DataComponentModel) then) =
      _$DataComponentModelCopyWithImpl<$Res, DataComponentModel>;
  @useResult
  $Res call(
      {int? id,
      PermittedDataType? permittedDataType,
      PermittedUnit? permittedUnit,
      ObservationDefinitionModel? observationDefinition});

  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition;
}

/// @nodoc
class _$DataComponentModelCopyWithImpl<$Res, $Val extends DataComponentModel>
    implements $DataComponentModelCopyWith<$Res> {
  _$DataComponentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? observationDefinition = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permittedDataType: freezed == permittedDataType
          ? _value.permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as PermittedDataType?,
      permittedUnit: freezed == permittedUnit
          ? _value.permittedUnit
          : permittedUnit // ignore: cast_nullable_to_non_nullable
              as PermittedUnit?,
      observationDefinition: freezed == observationDefinition
          ? _value.observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition {
    if (_value.observationDefinition == null) {
      return null;
    }

    return $ObservationDefinitionModelCopyWith<$Res>(
        _value.observationDefinition!, (value) {
      return _then(_value.copyWith(observationDefinition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataComponentModelCopyWith<$Res>
    implements $DataComponentModelCopyWith<$Res> {
  factory _$$_DataComponentModelCopyWith(_$_DataComponentModel value,
          $Res Function(_$_DataComponentModel) then) =
      __$$_DataComponentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      PermittedDataType? permittedDataType,
      PermittedUnit? permittedUnit,
      ObservationDefinitionModel? observationDefinition});

  @override
  $ObservationDefinitionModelCopyWith<$Res>? get observationDefinition;
}

/// @nodoc
class __$$_DataComponentModelCopyWithImpl<$Res>
    extends _$DataComponentModelCopyWithImpl<$Res, _$_DataComponentModel>
    implements _$$_DataComponentModelCopyWith<$Res> {
  __$$_DataComponentModelCopyWithImpl(
      _$_DataComponentModel _value, $Res Function(_$_DataComponentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? observationDefinition = freezed,
  }) {
    return _then(_$_DataComponentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      permittedDataType: freezed == permittedDataType
          ? _value.permittedDataType
          : permittedDataType // ignore: cast_nullable_to_non_nullable
              as PermittedDataType?,
      permittedUnit: freezed == permittedUnit
          ? _value.permittedUnit
          : permittedUnit // ignore: cast_nullable_to_non_nullable
              as PermittedUnit?,
      observationDefinition: freezed == observationDefinition
          ? _value.observationDefinition
          : observationDefinition // ignore: cast_nullable_to_non_nullable
              as ObservationDefinitionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataComponentModel implements _DataComponentModel {
  const _$_DataComponentModel(
      {this.id,
      this.permittedDataType,
      this.permittedUnit,
      this.observationDefinition});

  factory _$_DataComponentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataComponentModelFromJson(json);

  @override
  final int? id;
  @override
  final PermittedDataType? permittedDataType;
  @override
  final PermittedUnit? permittedUnit;
  @override
  final ObservationDefinitionModel? observationDefinition;

  @override
  String toString() {
    return 'DataComponentModel(id: $id, permittedDataType: $permittedDataType, permittedUnit: $permittedUnit, observationDefinition: $observationDefinition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataComponentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.permittedDataType, permittedDataType) ||
                other.permittedDataType == permittedDataType) &&
            (identical(other.permittedUnit, permittedUnit) ||
                other.permittedUnit == permittedUnit) &&
            (identical(other.observationDefinition, observationDefinition) ||
                other.observationDefinition == observationDefinition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, permittedDataType, permittedUnit, observationDefinition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataComponentModelCopyWith<_$_DataComponentModel> get copyWith =>
      __$$_DataComponentModelCopyWithImpl<_$_DataComponentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataComponentModelToJson(
      this,
    );
  }
}

abstract class _DataComponentModel implements DataComponentModel {
  const factory _DataComponentModel(
          {final int? id,
          final PermittedDataType? permittedDataType,
          final PermittedUnit? permittedUnit,
          final ObservationDefinitionModel? observationDefinition}) =
      _$_DataComponentModel;

  factory _DataComponentModel.fromJson(Map<String, dynamic> json) =
      _$_DataComponentModel.fromJson;

  @override
  int? get id;
  @override
  PermittedDataType? get permittedDataType;
  @override
  PermittedUnit? get permittedUnit;
  @override
  ObservationDefinitionModel? get observationDefinition;
  @override
  @JsonKey(ignore: true)
  _$$_DataComponentModelCopyWith<_$_DataComponentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireFHIRModel _$QuestionnaireFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  QuestionnaireStatus? get status => throw _privateConstructorUsedError;
  bool? get experimental => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  QuestionnaireCode? get code => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastReviewDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvalDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get publisherCode => throw _privateConstructorUsedError;
  String? get publisherType => throw _privateConstructorUsedError;
  QuestionnaireModel? get questionnaire => throw _privateConstructorUsedError;
  List<QuestionnaireItemFHIRModel>? get questionnaireItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireFHIRModelCopyWith<QuestionnaireFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireFHIRModelCopyWith<$Res> {
  factory $QuestionnaireFHIRModelCopyWith(QuestionnaireFHIRModel value,
          $Res Function(QuestionnaireFHIRModel) then) =
      _$QuestionnaireFHIRModelCopyWithImpl<$Res, QuestionnaireFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      QuestionnaireStatus? status,
      bool? experimental,
      @TimestampConverter() DateTime? date,
      String? description,
      Jurisdiction? jurisdiction,
      String? publisher,
      String? purpose,
      QuestionnaireCode? code,
      String? version,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      @TimestampConverter() DateTime? publisherCode,
      String? publisherType,
      QuestionnaireModel? questionnaire,
      List<QuestionnaireItemFHIRModel>? questionnaireItem});

  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class _$QuestionnaireFHIRModelCopyWithImpl<$Res,
        $Val extends QuestionnaireFHIRModel>
    implements $QuestionnaireFHIRModelCopyWith<$Res> {
  _$QuestionnaireFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? experimental = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? jurisdiction = freezed,
    Object? publisher = freezed,
    Object? purpose = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? lastReviewDate = freezed,
    Object? approvalDate = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QuestionnaireCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItemFHIRModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res>? get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }

    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaire!, (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireFHIRModelCopyWith<$Res>
    implements $QuestionnaireFHIRModelCopyWith<$Res> {
  factory _$$_QuestionnaireFHIRModelCopyWith(_$_QuestionnaireFHIRModel value,
          $Res Function(_$_QuestionnaireFHIRModel) then) =
      __$$_QuestionnaireFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      QuestionnaireStatus? status,
      bool? experimental,
      @TimestampConverter() DateTime? date,
      String? description,
      Jurisdiction? jurisdiction,
      String? publisher,
      String? purpose,
      QuestionnaireCode? code,
      String? version,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      @TimestampConverter() DateTime? publisherCode,
      String? publisherType,
      QuestionnaireModel? questionnaire,
      List<QuestionnaireItemFHIRModel>? questionnaireItem});

  @override
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class __$$_QuestionnaireFHIRModelCopyWithImpl<$Res>
    extends _$QuestionnaireFHIRModelCopyWithImpl<$Res,
        _$_QuestionnaireFHIRModel>
    implements _$$_QuestionnaireFHIRModelCopyWith<$Res> {
  __$$_QuestionnaireFHIRModelCopyWithImpl(_$_QuestionnaireFHIRModel _value,
      $Res Function(_$_QuestionnaireFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? experimental = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? jurisdiction = freezed,
    Object? publisher = freezed,
    Object? purpose = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? lastReviewDate = freezed,
    Object? approvalDate = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_$_QuestionnaireFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QuestionnaireCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value._questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireItemFHIRModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireFHIRModel implements _QuestionnaireFHIRModel {
  const _$_QuestionnaireFHIRModel(
      {this.id,
      this.name,
      this.title,
      this.status,
      this.experimental,
      @TimestampConverter() this.date,
      this.description,
      this.jurisdiction,
      this.publisher,
      this.purpose,
      this.code,
      this.version,
      @TimestampConverter() this.lastReviewDate,
      @TimestampConverter() this.approvalDate,
      @TimestampConverter() this.creationDate,
      @TimestampConverter() this.lastModifiedDate,
      @TimestampConverter() this.publisherCode,
      this.publisherType,
      this.questionnaire,
      final List<QuestionnaireItemFHIRModel>? questionnaireItem})
      : _questionnaireItem = questionnaireItem;

  factory _$_QuestionnaireFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final QuestionnaireStatus? status;
  @override
  final bool? experimental;
  @override
  @TimestampConverter()
  final DateTime? date;
  @override
  final String? description;
  @override
  final Jurisdiction? jurisdiction;
  @override
  final String? publisher;
  @override
  final String? purpose;
  @override
  final QuestionnaireCode? code;
  @override
  final String? version;
  @override
  @TimestampConverter()
  final DateTime? lastReviewDate;
  @override
  @TimestampConverter()
  final DateTime? approvalDate;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  final DateTime? lastModifiedDate;
  @override
  @TimestampConverter()
  final DateTime? publisherCode;
  @override
  final String? publisherType;
  @override
  final QuestionnaireModel? questionnaire;
  final List<QuestionnaireItemFHIRModel>? _questionnaireItem;
  @override
  List<QuestionnaireItemFHIRModel>? get questionnaireItem {
    final value = _questionnaireItem;
    if (value == null) return null;
    if (_questionnaireItem is EqualUnmodifiableListView)
      return _questionnaireItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireFHIRModel(id: $id, name: $name, title: $title, status: $status, experimental: $experimental, date: $date, description: $description, jurisdiction: $jurisdiction, publisher: $publisher, purpose: $purpose, code: $code, version: $version, lastReviewDate: $lastReviewDate, approvalDate: $approvalDate, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType, questionnaire: $questionnaire, questionnaireItem: $questionnaireItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.experimental, experimental) ||
                other.experimental == experimental) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.publisherCode, publisherCode) ||
                other.publisherCode == publisherCode) &&
            (identical(other.publisherType, publisherType) ||
                other.publisherType == publisherType) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            const DeepCollectionEquality()
                .equals(other._questionnaireItem, _questionnaireItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        title,
        status,
        experimental,
        date,
        description,
        jurisdiction,
        publisher,
        purpose,
        code,
        version,
        lastReviewDate,
        approvalDate,
        creationDate,
        lastModifiedDate,
        publisherCode,
        publisherType,
        questionnaire,
        const DeepCollectionEquality().hash(_questionnaireItem)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireFHIRModelCopyWith<_$_QuestionnaireFHIRModel> get copyWith =>
      __$$_QuestionnaireFHIRModelCopyWithImpl<_$_QuestionnaireFHIRModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireFHIRModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireFHIRModel implements QuestionnaireFHIRModel {
  const factory _QuestionnaireFHIRModel(
          {final int? id,
          final String? name,
          final String? title,
          final QuestionnaireStatus? status,
          final bool? experimental,
          @TimestampConverter() final DateTime? date,
          final String? description,
          final Jurisdiction? jurisdiction,
          final String? publisher,
          final String? purpose,
          final QuestionnaireCode? code,
          final String? version,
          @TimestampConverter() final DateTime? lastReviewDate,
          @TimestampConverter() final DateTime? approvalDate,
          @TimestampConverter() final DateTime? creationDate,
          @TimestampConverter() final DateTime? lastModifiedDate,
          @TimestampConverter() final DateTime? publisherCode,
          final String? publisherType,
          final QuestionnaireModel? questionnaire,
          final List<QuestionnaireItemFHIRModel>? questionnaireItem}) =
      _$_QuestionnaireFHIRModel;

  factory _QuestionnaireFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get title;
  @override
  QuestionnaireStatus? get status;
  @override
  bool? get experimental;
  @override
  @TimestampConverter()
  DateTime? get date;
  @override
  String? get description;
  @override
  Jurisdiction? get jurisdiction;
  @override
  String? get publisher;
  @override
  String? get purpose;
  @override
  QuestionnaireCode? get code;
  @override
  String? get version;
  @override
  @TimestampConverter()
  DateTime? get lastReviewDate;
  @override
  @TimestampConverter()
  DateTime? get approvalDate;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @TimestampConverter()
  DateTime? get lastModifiedDate;
  @override
  @TimestampConverter()
  DateTime? get publisherCode;
  @override
  String? get publisherType;
  @override
  QuestionnaireModel? get questionnaire;
  @override
  List<QuestionnaireItemFHIRModel>? get questionnaireItem;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireFHIRModelCopyWith<_$_QuestionnaireFHIRModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  QuestionnaireStatus? get status => throw _privateConstructorUsedError;
  bool? get experimental => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Jurisdiction? get jurisdiction => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  QuestionnaireCode? get code => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastReviewDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvalDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get publisherCode => throw _privateConstructorUsedError;
  String? get publisherType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      QuestionnaireStatus? status,
      bool? experimental,
      @TimestampConverter() DateTime? date,
      String? description,
      Jurisdiction? jurisdiction,
      String? publisher,
      String? purpose,
      QuestionnaireCode? code,
      String? version,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      @TimestampConverter() DateTime? publisherCode,
      String? publisherType});
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? experimental = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? jurisdiction = freezed,
    Object? publisher = freezed,
    Object? purpose = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? lastReviewDate = freezed,
    Object? approvalDate = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QuestionnaireCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireModelCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$_QuestionnaireModelCopyWith(_$_QuestionnaireModel value,
          $Res Function(_$_QuestionnaireModel) then) =
      __$$_QuestionnaireModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? title,
      QuestionnaireStatus? status,
      bool? experimental,
      @TimestampConverter() DateTime? date,
      String? description,
      Jurisdiction? jurisdiction,
      String? publisher,
      String? purpose,
      QuestionnaireCode? code,
      String? version,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      @TimestampConverter() DateTime? publisherCode,
      String? publisherType});
}

/// @nodoc
class __$$_QuestionnaireModelCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$_QuestionnaireModel>
    implements _$$_QuestionnaireModelCopyWith<$Res> {
  __$$_QuestionnaireModelCopyWithImpl(
      _$_QuestionnaireModel _value, $Res Function(_$_QuestionnaireModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? experimental = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? jurisdiction = freezed,
    Object? publisher = freezed,
    Object? purpose = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? lastReviewDate = freezed,
    Object? approvalDate = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
  }) {
    return _then(_$_QuestionnaireModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as Jurisdiction?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as QuestionnaireCode?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireModel implements _QuestionnaireModel {
  const _$_QuestionnaireModel(
      {this.id,
      this.name,
      this.title,
      this.status,
      this.experimental,
      @TimestampConverter() this.date,
      this.description,
      this.jurisdiction,
      this.publisher,
      this.purpose,
      this.code,
      this.version,
      @TimestampConverter() this.lastReviewDate,
      @TimestampConverter() this.approvalDate,
      @TimestampConverter() this.creationDate,
      @TimestampConverter() this.lastModifiedDate,
      @TimestampConverter() this.publisherCode,
      this.publisherType});

  factory _$_QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final QuestionnaireStatus? status;
  @override
  final bool? experimental;
  @override
  @TimestampConverter()
  final DateTime? date;
  @override
  final String? description;
  @override
  final Jurisdiction? jurisdiction;
  @override
  final String? publisher;
  @override
  final String? purpose;
  @override
  final QuestionnaireCode? code;
  @override
  final String? version;
  @override
  @TimestampConverter()
  final DateTime? lastReviewDate;
  @override
  @TimestampConverter()
  final DateTime? approvalDate;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  final DateTime? lastModifiedDate;
  @override
  @TimestampConverter()
  final DateTime? publisherCode;
  @override
  final String? publisherType;

  @override
  String toString() {
    return 'QuestionnaireModel(id: $id, name: $name, title: $title, status: $status, experimental: $experimental, date: $date, description: $description, jurisdiction: $jurisdiction, publisher: $publisher, purpose: $purpose, code: $code, version: $version, lastReviewDate: $lastReviewDate, approvalDate: $approvalDate, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.experimental, experimental) ||
                other.experimental == experimental) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.publisherCode, publisherCode) ||
                other.publisherCode == publisherCode) &&
            (identical(other.publisherType, publisherType) ||
                other.publisherType == publisherType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      title,
      status,
      experimental,
      date,
      description,
      jurisdiction,
      publisher,
      purpose,
      code,
      version,
      lastReviewDate,
      approvalDate,
      creationDate,
      lastModifiedDate,
      publisherCode,
      publisherType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireModelCopyWith<_$_QuestionnaireModel> get copyWith =>
      __$$_QuestionnaireModelCopyWithImpl<_$_QuestionnaireModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireModel implements QuestionnaireModel {
  const factory _QuestionnaireModel(
      {final int? id,
      final String? name,
      final String? title,
      final QuestionnaireStatus? status,
      final bool? experimental,
      @TimestampConverter() final DateTime? date,
      final String? description,
      final Jurisdiction? jurisdiction,
      final String? publisher,
      final String? purpose,
      final QuestionnaireCode? code,
      final String? version,
      @TimestampConverter() final DateTime? lastReviewDate,
      @TimestampConverter() final DateTime? approvalDate,
      @TimestampConverter() final DateTime? creationDate,
      @TimestampConverter() final DateTime? lastModifiedDate,
      @TimestampConverter() final DateTime? publisherCode,
      final String? publisherType}) = _$_QuestionnaireModel;

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get title;
  @override
  QuestionnaireStatus? get status;
  @override
  bool? get experimental;
  @override
  @TimestampConverter()
  DateTime? get date;
  @override
  String? get description;
  @override
  Jurisdiction? get jurisdiction;
  @override
  String? get publisher;
  @override
  String? get purpose;
  @override
  QuestionnaireCode? get code;
  @override
  String? get version;
  @override
  @TimestampConverter()
  DateTime? get lastReviewDate;
  @override
  @TimestampConverter()
  DateTime? get approvalDate;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @TimestampConverter()
  DateTime? get lastModifiedDate;
  @override
  @TimestampConverter()
  DateTime? get publisherCode;
  @override
  String? get publisherType;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireModelCopyWith<_$_QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireItemFHIRModel _$QuestionnaireItemFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireItemFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireItemFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get linkId => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  QuestionnaireType? get type => throw _privateConstructorUsedError;
  EnableBehaviour? get enableBehaviour => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;
  bool? get repeats => throw _privateConstructorUsedError;
  bool? get readOnly => throw _privateConstructorUsedError;
  int? get maxlength => throw _privateConstructorUsedError;
  DisabledDisplay? get disabledDisplay => throw _privateConstructorUsedError;
  AnswerConstraint? get answerConstraint => throw _privateConstructorUsedError;
  AnswerValueSetModel? get ansewrValueSet => throw _privateConstructorUsedError;
  AnswerModel? get initial => throw _privateConstructorUsedError;
  QuestionnaireModel? get questionnaire => throw _privateConstructorUsedError;
  QuestionnaireItemModel? get questionnaireItem =>
      throw _privateConstructorUsedError;
  List<ActionOnModel>? get actionOn => throw _privateConstructorUsedError;
  List<AnswerOptionModel>? get answerOption =>
      throw _privateConstructorUsedError;
  List<EnableWhenModel>? get enableWhen => throw _privateConstructorUsedError;
  List<AnswerItemWeightModel>? get answerItemWeight =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireItemFHIRModelCopyWith<QuestionnaireItemFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireItemFHIRModelCopyWith<$Res> {
  factory $QuestionnaireItemFHIRModelCopyWith(QuestionnaireItemFHIRModel value,
          $Res Function(QuestionnaireItemFHIRModel) then) =
      _$QuestionnaireItemFHIRModelCopyWithImpl<$Res,
          QuestionnaireItemFHIRModel>;
  @useResult
  $Res call(
      {int? id,
      String? linkId,
      String? prefix,
      String? text,
      QuestionnaireType? type,
      EnableBehaviour? enableBehaviour,
      bool? required,
      bool? repeats,
      bool? readOnly,
      int? maxlength,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      QuestionnaireModel? questionnaire,
      QuestionnaireItemModel? questionnaireItem,
      List<ActionOnModel>? actionOn,
      List<AnswerOptionModel>? answerOption,
      List<EnableWhenModel>? enableWhen,
      List<AnswerItemWeightModel>? answerItemWeight});

  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet;
  $AnswerModelCopyWith<$Res>? get initial;
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class _$QuestionnaireItemFHIRModelCopyWithImpl<$Res,
        $Val extends QuestionnaireItemFHIRModel>
    implements $QuestionnaireItemFHIRModelCopyWith<$Res> {
  _$QuestionnaireItemFHIRModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? prefix = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? enableBehaviour = freezed,
    Object? required = freezed,
    Object? repeats = freezed,
    Object? readOnly = freezed,
    Object? maxlength = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
    Object? actionOn = freezed,
    Object? answerOption = freezed,
    Object? enableWhen = freezed,
    Object? answerItemWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionnaireType?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxlength: freezed == maxlength
          ? _value.maxlength
          : maxlength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      answerConstraint: freezed == answerConstraint
          ? _value.answerConstraint
          : answerConstraint // ignore: cast_nullable_to_non_nullable
              as AnswerConstraint?,
      ansewrValueSet: freezed == ansewrValueSet
          ? _value.ansewrValueSet
          : ansewrValueSet // ignore: cast_nullable_to_non_nullable
              as AnswerValueSetModel?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
      actionOn: freezed == actionOn
          ? _value.actionOn
          : actionOn // ignore: cast_nullable_to_non_nullable
              as List<ActionOnModel>?,
      answerOption: freezed == answerOption
          ? _value.answerOption
          : answerOption // ignore: cast_nullable_to_non_nullable
              as List<AnswerOptionModel>?,
      enableWhen: freezed == enableWhen
          ? _value.enableWhen
          : enableWhen // ignore: cast_nullable_to_non_nullable
              as List<EnableWhenModel>?,
      answerItemWeight: freezed == answerItemWeight
          ? _value.answerItemWeight
          : answerItemWeight // ignore: cast_nullable_to_non_nullable
              as List<AnswerItemWeightModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet {
    if (_value.ansewrValueSet == null) {
      return null;
    }

    return $AnswerValueSetModelCopyWith<$Res>(_value.ansewrValueSet!, (value) {
      return _then(_value.copyWith(ansewrValueSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get initial {
    if (_value.initial == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.initial!, (value) {
      return _then(_value.copyWith(initial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res>? get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }

    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaire!, (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem {
    if (_value.questionnaireItem == null) {
      return null;
    }

    return $QuestionnaireItemModelCopyWith<$Res>(_value.questionnaireItem!,
        (value) {
      return _then(_value.copyWith(questionnaireItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireItemFHIRModelCopyWith<$Res>
    implements $QuestionnaireItemFHIRModelCopyWith<$Res> {
  factory _$$_QuestionnaireItemFHIRModelCopyWith(
          _$_QuestionnaireItemFHIRModel value,
          $Res Function(_$_QuestionnaireItemFHIRModel) then) =
      __$$_QuestionnaireItemFHIRModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? linkId,
      String? prefix,
      String? text,
      QuestionnaireType? type,
      EnableBehaviour? enableBehaviour,
      bool? required,
      bool? repeats,
      bool? readOnly,
      int? maxlength,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      QuestionnaireModel? questionnaire,
      QuestionnaireItemModel? questionnaireItem,
      List<ActionOnModel>? actionOn,
      List<AnswerOptionModel>? answerOption,
      List<EnableWhenModel>? enableWhen,
      List<AnswerItemWeightModel>? answerItemWeight});

  @override
  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet;
  @override
  $AnswerModelCopyWith<$Res>? get initial;
  @override
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
  @override
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class __$$_QuestionnaireItemFHIRModelCopyWithImpl<$Res>
    extends _$QuestionnaireItemFHIRModelCopyWithImpl<$Res,
        _$_QuestionnaireItemFHIRModel>
    implements _$$_QuestionnaireItemFHIRModelCopyWith<$Res> {
  __$$_QuestionnaireItemFHIRModelCopyWithImpl(
      _$_QuestionnaireItemFHIRModel _value,
      $Res Function(_$_QuestionnaireItemFHIRModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? prefix = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? enableBehaviour = freezed,
    Object? required = freezed,
    Object? repeats = freezed,
    Object? readOnly = freezed,
    Object? maxlength = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
    Object? actionOn = freezed,
    Object? answerOption = freezed,
    Object? enableWhen = freezed,
    Object? answerItemWeight = freezed,
  }) {
    return _then(_$_QuestionnaireItemFHIRModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionnaireType?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxlength: freezed == maxlength
          ? _value.maxlength
          : maxlength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      answerConstraint: freezed == answerConstraint
          ? _value.answerConstraint
          : answerConstraint // ignore: cast_nullable_to_non_nullable
              as AnswerConstraint?,
      ansewrValueSet: freezed == ansewrValueSet
          ? _value.ansewrValueSet
          : ansewrValueSet // ignore: cast_nullable_to_non_nullable
              as AnswerValueSetModel?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
      actionOn: freezed == actionOn
          ? _value._actionOn
          : actionOn // ignore: cast_nullable_to_non_nullable
              as List<ActionOnModel>?,
      answerOption: freezed == answerOption
          ? _value._answerOption
          : answerOption // ignore: cast_nullable_to_non_nullable
              as List<AnswerOptionModel>?,
      enableWhen: freezed == enableWhen
          ? _value._enableWhen
          : enableWhen // ignore: cast_nullable_to_non_nullable
              as List<EnableWhenModel>?,
      answerItemWeight: freezed == answerItemWeight
          ? _value._answerItemWeight
          : answerItemWeight // ignore: cast_nullable_to_non_nullable
              as List<AnswerItemWeightModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireItemFHIRModel implements _QuestionnaireItemFHIRModel {
  const _$_QuestionnaireItemFHIRModel(
      {this.id,
      this.linkId,
      this.prefix,
      this.text,
      this.type,
      this.enableBehaviour,
      this.required,
      this.repeats,
      this.readOnly,
      this.maxlength,
      this.disabledDisplay,
      this.answerConstraint,
      this.ansewrValueSet,
      this.initial,
      this.questionnaire,
      this.questionnaireItem,
      final List<ActionOnModel>? actionOn,
      final List<AnswerOptionModel>? answerOption,
      final List<EnableWhenModel>? enableWhen,
      final List<AnswerItemWeightModel>? answerItemWeight})
      : _actionOn = actionOn,
        _answerOption = answerOption,
        _enableWhen = enableWhen,
        _answerItemWeight = answerItemWeight;

  factory _$_QuestionnaireItemFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireItemFHIRModelFromJson(json);

  @override
  final int? id;
  @override
  final String? linkId;
  @override
  final String? prefix;
  @override
  final String? text;
  @override
  final QuestionnaireType? type;
  @override
  final EnableBehaviour? enableBehaviour;
  @override
  final bool? required;
  @override
  final bool? repeats;
  @override
  final bool? readOnly;
  @override
  final int? maxlength;
  @override
  final DisabledDisplay? disabledDisplay;
  @override
  final AnswerConstraint? answerConstraint;
  @override
  final AnswerValueSetModel? ansewrValueSet;
  @override
  final AnswerModel? initial;
  @override
  final QuestionnaireModel? questionnaire;
  @override
  final QuestionnaireItemModel? questionnaireItem;
  final List<ActionOnModel>? _actionOn;
  @override
  List<ActionOnModel>? get actionOn {
    final value = _actionOn;
    if (value == null) return null;
    if (_actionOn is EqualUnmodifiableListView) return _actionOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AnswerOptionModel>? _answerOption;
  @override
  List<AnswerOptionModel>? get answerOption {
    final value = _answerOption;
    if (value == null) return null;
    if (_answerOption is EqualUnmodifiableListView) return _answerOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EnableWhenModel>? _enableWhen;
  @override
  List<EnableWhenModel>? get enableWhen {
    final value = _enableWhen;
    if (value == null) return null;
    if (_enableWhen is EqualUnmodifiableListView) return _enableWhen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AnswerItemWeightModel>? _answerItemWeight;
  @override
  List<AnswerItemWeightModel>? get answerItemWeight {
    final value = _answerItemWeight;
    if (value == null) return null;
    if (_answerItemWeight is EqualUnmodifiableListView)
      return _answerItemWeight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireItemFHIRModel(id: $id, linkId: $linkId, prefix: $prefix, text: $text, type: $type, enableBehaviour: $enableBehaviour, required: $required, repeats: $repeats, readOnly: $readOnly, maxlength: $maxlength, disabledDisplay: $disabledDisplay, answerConstraint: $answerConstraint, ansewrValueSet: $ansewrValueSet, initial: $initial, questionnaire: $questionnaire, questionnaireItem: $questionnaireItem, actionOn: $actionOn, answerOption: $answerOption, enableWhen: $enableWhen, answerItemWeight: $answerItemWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireItemFHIRModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableBehaviour, enableBehaviour) ||
                other.enableBehaviour == enableBehaviour) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.maxlength, maxlength) ||
                other.maxlength == maxlength) &&
            (identical(other.disabledDisplay, disabledDisplay) ||
                other.disabledDisplay == disabledDisplay) &&
            (identical(other.answerConstraint, answerConstraint) ||
                other.answerConstraint == answerConstraint) &&
            (identical(other.ansewrValueSet, ansewrValueSet) ||
                other.ansewrValueSet == ansewrValueSet) &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            (identical(other.questionnaireItem, questionnaireItem) ||
                other.questionnaireItem == questionnaireItem) &&
            const DeepCollectionEquality().equals(other._actionOn, _actionOn) &&
            const DeepCollectionEquality()
                .equals(other._answerOption, _answerOption) &&
            const DeepCollectionEquality()
                .equals(other._enableWhen, _enableWhen) &&
            const DeepCollectionEquality()
                .equals(other._answerItemWeight, _answerItemWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        linkId,
        prefix,
        text,
        type,
        enableBehaviour,
        required,
        repeats,
        readOnly,
        maxlength,
        disabledDisplay,
        answerConstraint,
        ansewrValueSet,
        initial,
        questionnaire,
        questionnaireItem,
        const DeepCollectionEquality().hash(_actionOn),
        const DeepCollectionEquality().hash(_answerOption),
        const DeepCollectionEquality().hash(_enableWhen),
        const DeepCollectionEquality().hash(_answerItemWeight)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireItemFHIRModelCopyWith<_$_QuestionnaireItemFHIRModel>
      get copyWith => __$$_QuestionnaireItemFHIRModelCopyWithImpl<
          _$_QuestionnaireItemFHIRModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireItemFHIRModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireItemFHIRModel
    implements QuestionnaireItemFHIRModel {
  const factory _QuestionnaireItemFHIRModel(
          {final int? id,
          final String? linkId,
          final String? prefix,
          final String? text,
          final QuestionnaireType? type,
          final EnableBehaviour? enableBehaviour,
          final bool? required,
          final bool? repeats,
          final bool? readOnly,
          final int? maxlength,
          final DisabledDisplay? disabledDisplay,
          final AnswerConstraint? answerConstraint,
          final AnswerValueSetModel? ansewrValueSet,
          final AnswerModel? initial,
          final QuestionnaireModel? questionnaire,
          final QuestionnaireItemModel? questionnaireItem,
          final List<ActionOnModel>? actionOn,
          final List<AnswerOptionModel>? answerOption,
          final List<EnableWhenModel>? enableWhen,
          final List<AnswerItemWeightModel>? answerItemWeight}) =
      _$_QuestionnaireItemFHIRModel;

  factory _QuestionnaireItemFHIRModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireItemFHIRModel.fromJson;

  @override
  int? get id;
  @override
  String? get linkId;
  @override
  String? get prefix;
  @override
  String? get text;
  @override
  QuestionnaireType? get type;
  @override
  EnableBehaviour? get enableBehaviour;
  @override
  bool? get required;
  @override
  bool? get repeats;
  @override
  bool? get readOnly;
  @override
  int? get maxlength;
  @override
  DisabledDisplay? get disabledDisplay;
  @override
  AnswerConstraint? get answerConstraint;
  @override
  AnswerValueSetModel? get ansewrValueSet;
  @override
  AnswerModel? get initial;
  @override
  QuestionnaireModel? get questionnaire;
  @override
  QuestionnaireItemModel? get questionnaireItem;
  @override
  List<ActionOnModel>? get actionOn;
  @override
  List<AnswerOptionModel>? get answerOption;
  @override
  List<EnableWhenModel>? get enableWhen;
  @override
  List<AnswerItemWeightModel>? get answerItemWeight;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireItemFHIRModelCopyWith<_$_QuestionnaireItemFHIRModel>
      get copyWith => throw _privateConstructorUsedError;
}

AnswerOptionModel _$AnswerOptionModelFromJson(Map<String, dynamic> json) {
  return _AnswerOptionModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerOptionModel {
  int? get id => throw _privateConstructorUsedError;
  bool? get initialSelected => throw _privateConstructorUsedError;
  AnswerModel? get answer => throw _privateConstructorUsedError;
  QuestionnaireItemModel? get questionnaireItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerOptionModelCopyWith<AnswerOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerOptionModelCopyWith<$Res> {
  factory $AnswerOptionModelCopyWith(
          AnswerOptionModel value, $Res Function(AnswerOptionModel) then) =
      _$AnswerOptionModelCopyWithImpl<$Res, AnswerOptionModel>;
  @useResult
  $Res call(
      {int? id,
      bool? initialSelected,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  $AnswerModelCopyWith<$Res>? get answer;
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class _$AnswerOptionModelCopyWithImpl<$Res, $Val extends AnswerOptionModel>
    implements $AnswerOptionModelCopyWith<$Res> {
  _$AnswerOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? initialSelected = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      initialSelected: freezed == initialSelected
          ? _value.initialSelected
          : initialSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get answer {
    if (_value.answer == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.answer!, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem {
    if (_value.questionnaireItem == null) {
      return null;
    }

    return $QuestionnaireItemModelCopyWith<$Res>(_value.questionnaireItem!,
        (value) {
      return _then(_value.copyWith(questionnaireItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnswerOptionModelCopyWith<$Res>
    implements $AnswerOptionModelCopyWith<$Res> {
  factory _$$_AnswerOptionModelCopyWith(_$_AnswerOptionModel value,
          $Res Function(_$_AnswerOptionModel) then) =
      __$$_AnswerOptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? initialSelected,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  @override
  $AnswerModelCopyWith<$Res>? get answer;
  @override
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class __$$_AnswerOptionModelCopyWithImpl<$Res>
    extends _$AnswerOptionModelCopyWithImpl<$Res, _$_AnswerOptionModel>
    implements _$$_AnswerOptionModelCopyWith<$Res> {
  __$$_AnswerOptionModelCopyWithImpl(
      _$_AnswerOptionModel _value, $Res Function(_$_AnswerOptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? initialSelected = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_$_AnswerOptionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      initialSelected: freezed == initialSelected
          ? _value.initialSelected
          : initialSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerOptionModel implements _AnswerOptionModel {
  const _$_AnswerOptionModel(
      {this.id, this.initialSelected, this.answer, this.questionnaireItem});

  factory _$_AnswerOptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerOptionModelFromJson(json);

  @override
  final int? id;
  @override
  final bool? initialSelected;
  @override
  final AnswerModel? answer;
  @override
  final QuestionnaireItemModel? questionnaireItem;

  @override
  String toString() {
    return 'AnswerOptionModel(id: $id, initialSelected: $initialSelected, answer: $answer, questionnaireItem: $questionnaireItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerOptionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.initialSelected, initialSelected) ||
                other.initialSelected == initialSelected) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.questionnaireItem, questionnaireItem) ||
                other.questionnaireItem == questionnaireItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, initialSelected, answer, questionnaireItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerOptionModelCopyWith<_$_AnswerOptionModel> get copyWith =>
      __$$_AnswerOptionModelCopyWithImpl<_$_AnswerOptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerOptionModelToJson(
      this,
    );
  }
}

abstract class _AnswerOptionModel implements AnswerOptionModel {
  const factory _AnswerOptionModel(
      {final int? id,
      final bool? initialSelected,
      final AnswerModel? answer,
      final QuestionnaireItemModel? questionnaireItem}) = _$_AnswerOptionModel;

  factory _AnswerOptionModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerOptionModel.fromJson;

  @override
  int? get id;
  @override
  bool? get initialSelected;
  @override
  AnswerModel? get answer;
  @override
  QuestionnaireItemModel? get questionnaireItem;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerOptionModelCopyWith<_$_AnswerOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerValueSetModel _$AnswerValueSetModelFromJson(Map<String, dynamic> json) {
  return _AnswerValueSetModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerValueSetModel {
  int? get id => throw _privateConstructorUsedError;
  int? get valueId => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerValueSetModelCopyWith<AnswerValueSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerValueSetModelCopyWith<$Res> {
  factory $AnswerValueSetModelCopyWith(
          AnswerValueSetModel value, $Res Function(AnswerValueSetModel) then) =
      _$AnswerValueSetModelCopyWithImpl<$Res, AnswerValueSetModel>;
  @useResult
  $Res call({int? id, int? valueId, String? value});
}

/// @nodoc
class _$AnswerValueSetModelCopyWithImpl<$Res, $Val extends AnswerValueSetModel>
    implements $AnswerValueSetModelCopyWith<$Res> {
  _$AnswerValueSetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? valueId = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerValueSetModelCopyWith<$Res>
    implements $AnswerValueSetModelCopyWith<$Res> {
  factory _$$_AnswerValueSetModelCopyWith(_$_AnswerValueSetModel value,
          $Res Function(_$_AnswerValueSetModel) then) =
      __$$_AnswerValueSetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? valueId, String? value});
}

/// @nodoc
class __$$_AnswerValueSetModelCopyWithImpl<$Res>
    extends _$AnswerValueSetModelCopyWithImpl<$Res, _$_AnswerValueSetModel>
    implements _$$_AnswerValueSetModelCopyWith<$Res> {
  __$$_AnswerValueSetModelCopyWithImpl(_$_AnswerValueSetModel _value,
      $Res Function(_$_AnswerValueSetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? valueId = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_AnswerValueSetModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      valueId: freezed == valueId
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerValueSetModel implements _AnswerValueSetModel {
  const _$_AnswerValueSetModel({this.id, this.valueId, this.value});

  factory _$_AnswerValueSetModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerValueSetModelFromJson(json);

  @override
  final int? id;
  @override
  final int? valueId;
  @override
  final String? value;

  @override
  String toString() {
    return 'AnswerValueSetModel(id: $id, valueId: $valueId, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerValueSetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.valueId, valueId) || other.valueId == valueId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, valueId, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerValueSetModelCopyWith<_$_AnswerValueSetModel> get copyWith =>
      __$$_AnswerValueSetModelCopyWithImpl<_$_AnswerValueSetModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerValueSetModelToJson(
      this,
    );
  }
}

abstract class _AnswerValueSetModel implements AnswerValueSetModel {
  const factory _AnswerValueSetModel(
      {final int? id,
      final int? valueId,
      final String? value}) = _$_AnswerValueSetModel;

  factory _AnswerValueSetModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerValueSetModel.fromJson;

  @override
  int? get id;
  @override
  int? get valueId;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerValueSetModelCopyWith<_$_AnswerValueSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
  int? get id => throw _privateConstructorUsedError;
  bool? get answerBoolean => throw _privateConstructorUsedError;
  double? get answerDecimal => throw _privateConstructorUsedError;
  int? get answerInteger => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get answerDateTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get answerTime => throw _privateConstructorUsedError;
  String? get answerString => throw _privateConstructorUsedError;
  AnswerItemWeightModel? get answerItemWeight =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res, AnswerModel>;
  @useResult
  $Res call(
      {int? id,
      bool? answerBoolean,
      double? answerDecimal,
      int? answerInteger,
      @TimestampConverter() DateTime? answerDateTime,
      @TimestampConverter() DateTime? answerTime,
      String? answerString,
      AnswerItemWeightModel? answerItemWeight});

  $AnswerItemWeightModelCopyWith<$Res>? get answerItemWeight;
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res, $Val extends AnswerModel>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answerBoolean = freezed,
    Object? answerDecimal = freezed,
    Object? answerInteger = freezed,
    Object? answerDateTime = freezed,
    Object? answerTime = freezed,
    Object? answerString = freezed,
    Object? answerItemWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answerBoolean: freezed == answerBoolean
          ? _value.answerBoolean
          : answerBoolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      answerDecimal: freezed == answerDecimal
          ? _value.answerDecimal
          : answerDecimal // ignore: cast_nullable_to_non_nullable
              as double?,
      answerInteger: freezed == answerInteger
          ? _value.answerInteger
          : answerInteger // ignore: cast_nullable_to_non_nullable
              as int?,
      answerDateTime: freezed == answerDateTime
          ? _value.answerDateTime
          : answerDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      answerTime: freezed == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      answerString: freezed == answerString
          ? _value.answerString
          : answerString // ignore: cast_nullable_to_non_nullable
              as String?,
      answerItemWeight: freezed == answerItemWeight
          ? _value.answerItemWeight
          : answerItemWeight // ignore: cast_nullable_to_non_nullable
              as AnswerItemWeightModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerItemWeightModelCopyWith<$Res>? get answerItemWeight {
    if (_value.answerItemWeight == null) {
      return null;
    }

    return $AnswerItemWeightModelCopyWith<$Res>(_value.answerItemWeight!,
        (value) {
      return _then(_value.copyWith(answerItemWeight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnswerModelCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$_AnswerModelCopyWith(
          _$_AnswerModel value, $Res Function(_$_AnswerModel) then) =
      __$$_AnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? answerBoolean,
      double? answerDecimal,
      int? answerInteger,
      @TimestampConverter() DateTime? answerDateTime,
      @TimestampConverter() DateTime? answerTime,
      String? answerString,
      AnswerItemWeightModel? answerItemWeight});

  @override
  $AnswerItemWeightModelCopyWith<$Res>? get answerItemWeight;
}

/// @nodoc
class __$$_AnswerModelCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$_AnswerModel>
    implements _$$_AnswerModelCopyWith<$Res> {
  __$$_AnswerModelCopyWithImpl(
      _$_AnswerModel _value, $Res Function(_$_AnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answerBoolean = freezed,
    Object? answerDecimal = freezed,
    Object? answerInteger = freezed,
    Object? answerDateTime = freezed,
    Object? answerTime = freezed,
    Object? answerString = freezed,
    Object? answerItemWeight = freezed,
  }) {
    return _then(_$_AnswerModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      answerBoolean: freezed == answerBoolean
          ? _value.answerBoolean
          : answerBoolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      answerDecimal: freezed == answerDecimal
          ? _value.answerDecimal
          : answerDecimal // ignore: cast_nullable_to_non_nullable
              as double?,
      answerInteger: freezed == answerInteger
          ? _value.answerInteger
          : answerInteger // ignore: cast_nullable_to_non_nullable
              as int?,
      answerDateTime: freezed == answerDateTime
          ? _value.answerDateTime
          : answerDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      answerTime: freezed == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      answerString: freezed == answerString
          ? _value.answerString
          : answerString // ignore: cast_nullable_to_non_nullable
              as String?,
      answerItemWeight: freezed == answerItemWeight
          ? _value.answerItemWeight
          : answerItemWeight // ignore: cast_nullable_to_non_nullable
              as AnswerItemWeightModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerModel implements _AnswerModel {
  const _$_AnswerModel(
      {this.id,
      this.answerBoolean,
      this.answerDecimal,
      this.answerInteger,
      @TimestampConverter() this.answerDateTime,
      @TimestampConverter() this.answerTime,
      this.answerString,
      this.answerItemWeight});

  factory _$_AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerModelFromJson(json);

  @override
  final int? id;
  @override
  final bool? answerBoolean;
  @override
  final double? answerDecimal;
  @override
  final int? answerInteger;
  @override
  @TimestampConverter()
  final DateTime? answerDateTime;
  @override
  @TimestampConverter()
  final DateTime? answerTime;
  @override
  final String? answerString;
  @override
  final AnswerItemWeightModel? answerItemWeight;

  @override
  String toString() {
    return 'AnswerModel(id: $id, answerBoolean: $answerBoolean, answerDecimal: $answerDecimal, answerInteger: $answerInteger, answerDateTime: $answerDateTime, answerTime: $answerTime, answerString: $answerString, answerItemWeight: $answerItemWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answerBoolean, answerBoolean) ||
                other.answerBoolean == answerBoolean) &&
            (identical(other.answerDecimal, answerDecimal) ||
                other.answerDecimal == answerDecimal) &&
            (identical(other.answerInteger, answerInteger) ||
                other.answerInteger == answerInteger) &&
            (identical(other.answerDateTime, answerDateTime) ||
                other.answerDateTime == answerDateTime) &&
            (identical(other.answerTime, answerTime) ||
                other.answerTime == answerTime) &&
            (identical(other.answerString, answerString) ||
                other.answerString == answerString) &&
            (identical(other.answerItemWeight, answerItemWeight) ||
                other.answerItemWeight == answerItemWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      answerBoolean,
      answerDecimal,
      answerInteger,
      answerDateTime,
      answerTime,
      answerString,
      answerItemWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerModelCopyWith<_$_AnswerModel> get copyWith =>
      __$$_AnswerModelCopyWithImpl<_$_AnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerModelToJson(
      this,
    );
  }
}

abstract class _AnswerModel implements AnswerModel {
  const factory _AnswerModel(
      {final int? id,
      final bool? answerBoolean,
      final double? answerDecimal,
      final int? answerInteger,
      @TimestampConverter() final DateTime? answerDateTime,
      @TimestampConverter() final DateTime? answerTime,
      final String? answerString,
      final AnswerItemWeightModel? answerItemWeight}) = _$_AnswerModel;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerModel.fromJson;

  @override
  int? get id;
  @override
  bool? get answerBoolean;
  @override
  double? get answerDecimal;
  @override
  int? get answerInteger;
  @override
  @TimestampConverter()
  DateTime? get answerDateTime;
  @override
  @TimestampConverter()
  DateTime? get answerTime;
  @override
  String? get answerString;
  @override
  AnswerItemWeightModel? get answerItemWeight;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerModelCopyWith<_$_AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerItemWeightModel _$AnswerItemWeightModelFromJson(
    Map<String, dynamic> json) {
  return _AnswerItemWeightModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerItemWeightModel {
  int? get id => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;
  int? get answerId => throw _privateConstructorUsedError;
  QuestionResponseWeightModel? get questionResponseWeight =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerItemWeightModelCopyWith<AnswerItemWeightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerItemWeightModelCopyWith<$Res> {
  factory $AnswerItemWeightModelCopyWith(AnswerItemWeightModel value,
          $Res Function(AnswerItemWeightModel) then) =
      _$AnswerItemWeightModelCopyWithImpl<$Res, AnswerItemWeightModel>;
  @useResult
  $Res call(
      {int? id,
      double? value,
      int? answerId,
      QuestionResponseWeightModel? questionResponseWeight});

  $QuestionResponseWeightModelCopyWith<$Res>? get questionResponseWeight;
}

/// @nodoc
class _$AnswerItemWeightModelCopyWithImpl<$Res,
        $Val extends AnswerItemWeightModel>
    implements $AnswerItemWeightModelCopyWith<$Res> {
  _$AnswerItemWeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? answerId = freezed,
    Object? questionResponseWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionResponseWeight: freezed == questionResponseWeight
          ? _value.questionResponseWeight
          : questionResponseWeight // ignore: cast_nullable_to_non_nullable
              as QuestionResponseWeightModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionResponseWeightModelCopyWith<$Res>? get questionResponseWeight {
    if (_value.questionResponseWeight == null) {
      return null;
    }

    return $QuestionResponseWeightModelCopyWith<$Res>(
        _value.questionResponseWeight!, (value) {
      return _then(_value.copyWith(questionResponseWeight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnswerItemWeightModelCopyWith<$Res>
    implements $AnswerItemWeightModelCopyWith<$Res> {
  factory _$$_AnswerItemWeightModelCopyWith(_$_AnswerItemWeightModel value,
          $Res Function(_$_AnswerItemWeightModel) then) =
      __$$_AnswerItemWeightModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? value,
      int? answerId,
      QuestionResponseWeightModel? questionResponseWeight});

  @override
  $QuestionResponseWeightModelCopyWith<$Res>? get questionResponseWeight;
}

/// @nodoc
class __$$_AnswerItemWeightModelCopyWithImpl<$Res>
    extends _$AnswerItemWeightModelCopyWithImpl<$Res, _$_AnswerItemWeightModel>
    implements _$$_AnswerItemWeightModelCopyWith<$Res> {
  __$$_AnswerItemWeightModelCopyWithImpl(_$_AnswerItemWeightModel _value,
      $Res Function(_$_AnswerItemWeightModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? answerId = freezed,
    Object? questionResponseWeight = freezed,
  }) {
    return _then(_$_AnswerItemWeightModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionResponseWeight: freezed == questionResponseWeight
          ? _value.questionResponseWeight
          : questionResponseWeight // ignore: cast_nullable_to_non_nullable
              as QuestionResponseWeightModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerItemWeightModel implements _AnswerItemWeightModel {
  const _$_AnswerItemWeightModel(
      {this.id, this.value, this.answerId, this.questionResponseWeight});

  factory _$_AnswerItemWeightModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerItemWeightModelFromJson(json);

  @override
  final int? id;
  @override
  final double? value;
  @override
  final int? answerId;
  @override
  final QuestionResponseWeightModel? questionResponseWeight;

  @override
  String toString() {
    return 'AnswerItemWeightModel(id: $id, value: $value, answerId: $answerId, questionResponseWeight: $questionResponseWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerItemWeightModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.questionResponseWeight, questionResponseWeight) ||
                other.questionResponseWeight == questionResponseWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, answerId, questionResponseWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerItemWeightModelCopyWith<_$_AnswerItemWeightModel> get copyWith =>
      __$$_AnswerItemWeightModelCopyWithImpl<_$_AnswerItemWeightModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerItemWeightModelToJson(
      this,
    );
  }
}

abstract class _AnswerItemWeightModel implements AnswerItemWeightModel {
  const factory _AnswerItemWeightModel(
          {final int? id,
          final double? value,
          final int? answerId,
          final QuestionResponseWeightModel? questionResponseWeight}) =
      _$_AnswerItemWeightModel;

  factory _AnswerItemWeightModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerItemWeightModel.fromJson;

  @override
  int? get id;
  @override
  double? get value;
  @override
  int? get answerId;
  @override
  QuestionResponseWeightModel? get questionResponseWeight;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerItemWeightModelCopyWith<_$_AnswerItemWeightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionResponseWeightModel _$QuestionResponseWeightModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionResponseWeightModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseWeightModel {
  int? get id => throw _privateConstructorUsedError;
  int? get quesId => throw _privateConstructorUsedError;
  bool? get isRange => throw _privateConstructorUsedError;
  bool? get isCompare => throw _privateConstructorUsedError;
  bool? get isAbsolute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseWeightModelCopyWith<QuestionResponseWeightModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseWeightModelCopyWith<$Res> {
  factory $QuestionResponseWeightModelCopyWith(
          QuestionResponseWeightModel value,
          $Res Function(QuestionResponseWeightModel) then) =
      _$QuestionResponseWeightModelCopyWithImpl<$Res,
          QuestionResponseWeightModel>;
  @useResult
  $Res call(
      {int? id, int? quesId, bool? isRange, bool? isCompare, bool? isAbsolute});
}

/// @nodoc
class _$QuestionResponseWeightModelCopyWithImpl<$Res,
        $Val extends QuestionResponseWeightModel>
    implements $QuestionResponseWeightModelCopyWith<$Res> {
  _$QuestionResponseWeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quesId = freezed,
    Object? isRange = freezed,
    Object? isCompare = freezed,
    Object? isAbsolute = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quesId: freezed == quesId
          ? _value.quesId
          : quesId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRange: freezed == isRange
          ? _value.isRange
          : isRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompare: freezed == isCompare
          ? _value.isCompare
          : isCompare // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAbsolute: freezed == isAbsolute
          ? _value.isAbsolute
          : isAbsolute // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResponseWeightModelCopyWith<$Res>
    implements $QuestionResponseWeightModelCopyWith<$Res> {
  factory _$$_QuestionResponseWeightModelCopyWith(
          _$_QuestionResponseWeightModel value,
          $Res Function(_$_QuestionResponseWeightModel) then) =
      __$$_QuestionResponseWeightModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int? quesId, bool? isRange, bool? isCompare, bool? isAbsolute});
}

/// @nodoc
class __$$_QuestionResponseWeightModelCopyWithImpl<$Res>
    extends _$QuestionResponseWeightModelCopyWithImpl<$Res,
        _$_QuestionResponseWeightModel>
    implements _$$_QuestionResponseWeightModelCopyWith<$Res> {
  __$$_QuestionResponseWeightModelCopyWithImpl(
      _$_QuestionResponseWeightModel _value,
      $Res Function(_$_QuestionResponseWeightModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quesId = freezed,
    Object? isRange = freezed,
    Object? isCompare = freezed,
    Object? isAbsolute = freezed,
  }) {
    return _then(_$_QuestionResponseWeightModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quesId: freezed == quesId
          ? _value.quesId
          : quesId // ignore: cast_nullable_to_non_nullable
              as int?,
      isRange: freezed == isRange
          ? _value.isRange
          : isRange // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompare: freezed == isCompare
          ? _value.isCompare
          : isCompare // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAbsolute: freezed == isAbsolute
          ? _value.isAbsolute
          : isAbsolute // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionResponseWeightModel implements _QuestionResponseWeightModel {
  const _$_QuestionResponseWeightModel(
      {this.id, this.quesId, this.isRange, this.isCompare, this.isAbsolute});

  factory _$_QuestionResponseWeightModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionResponseWeightModelFromJson(json);

  @override
  final int? id;
  @override
  final int? quesId;
  @override
  final bool? isRange;
  @override
  final bool? isCompare;
  @override
  final bool? isAbsolute;

  @override
  String toString() {
    return 'QuestionResponseWeightModel(id: $id, quesId: $quesId, isRange: $isRange, isCompare: $isCompare, isAbsolute: $isAbsolute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponseWeightModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quesId, quesId) || other.quesId == quesId) &&
            (identical(other.isRange, isRange) || other.isRange == isRange) &&
            (identical(other.isCompare, isCompare) ||
                other.isCompare == isCompare) &&
            (identical(other.isAbsolute, isAbsolute) ||
                other.isAbsolute == isAbsolute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quesId, isRange, isCompare, isAbsolute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseWeightModelCopyWith<_$_QuestionResponseWeightModel>
      get copyWith => __$$_QuestionResponseWeightModelCopyWithImpl<
          _$_QuestionResponseWeightModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResponseWeightModelToJson(
      this,
    );
  }
}

abstract class _QuestionResponseWeightModel
    implements QuestionResponseWeightModel {
  const factory _QuestionResponseWeightModel(
      {final int? id,
      final int? quesId,
      final bool? isRange,
      final bool? isCompare,
      final bool? isAbsolute}) = _$_QuestionResponseWeightModel;

  factory _QuestionResponseWeightModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionResponseWeightModel.fromJson;

  @override
  int? get id;
  @override
  int? get quesId;
  @override
  bool? get isRange;
  @override
  bool? get isCompare;
  @override
  bool? get isAbsolute;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseWeightModelCopyWith<_$_QuestionResponseWeightModel>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionnaireItemModel _$QuestionnaireItemModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireItemModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get linkId => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  QuestionnaireType? get type => throw _privateConstructorUsedError;
  EnableBehaviour? get enableBehaviour => throw _privateConstructorUsedError;
  bool? get isRequired => throw _privateConstructorUsedError;
  bool? get repeats => throw _privateConstructorUsedError;
  bool? get readOnly => throw _privateConstructorUsedError;
  int? get maxlength => throw _privateConstructorUsedError;
  DisabledDisplay? get disabledDisplay => throw _privateConstructorUsedError;
  AnswerConstraint? get answerConstraint => throw _privateConstructorUsedError;
  AnswerValueSetModel? get ansewrValueSet => throw _privateConstructorUsedError;
  AnswerModel? get initial => throw _privateConstructorUsedError;
  QuestionnaireModel? get questionnaire => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireItemModelCopyWith<QuestionnaireItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireItemModelCopyWith<$Res> {
  factory $QuestionnaireItemModelCopyWith(QuestionnaireItemModel value,
          $Res Function(QuestionnaireItemModel) then) =
      _$QuestionnaireItemModelCopyWithImpl<$Res, QuestionnaireItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? linkId,
      String? prefix,
      String? text,
      QuestionnaireType? type,
      EnableBehaviour? enableBehaviour,
      bool? isRequired,
      bool? repeats,
      bool? readOnly,
      int? maxlength,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      QuestionnaireModel? questionnaire});

  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet;
  $AnswerModelCopyWith<$Res>? get initial;
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class _$QuestionnaireItemModelCopyWithImpl<$Res,
        $Val extends QuestionnaireItemModel>
    implements $QuestionnaireItemModelCopyWith<$Res> {
  _$QuestionnaireItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? prefix = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? enableBehaviour = freezed,
    Object? isRequired = freezed,
    Object? repeats = freezed,
    Object? readOnly = freezed,
    Object? maxlength = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? questionnaire = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionnaireType?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxlength: freezed == maxlength
          ? _value.maxlength
          : maxlength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      answerConstraint: freezed == answerConstraint
          ? _value.answerConstraint
          : answerConstraint // ignore: cast_nullable_to_non_nullable
              as AnswerConstraint?,
      ansewrValueSet: freezed == ansewrValueSet
          ? _value.ansewrValueSet
          : ansewrValueSet // ignore: cast_nullable_to_non_nullable
              as AnswerValueSetModel?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet {
    if (_value.ansewrValueSet == null) {
      return null;
    }

    return $AnswerValueSetModelCopyWith<$Res>(_value.ansewrValueSet!, (value) {
      return _then(_value.copyWith(ansewrValueSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get initial {
    if (_value.initial == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.initial!, (value) {
      return _then(_value.copyWith(initial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res>? get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }

    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaire!, (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireItemModelCopyWith<$Res>
    implements $QuestionnaireItemModelCopyWith<$Res> {
  factory _$$_QuestionnaireItemModelCopyWith(_$_QuestionnaireItemModel value,
          $Res Function(_$_QuestionnaireItemModel) then) =
      __$$_QuestionnaireItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? linkId,
      String? prefix,
      String? text,
      QuestionnaireType? type,
      EnableBehaviour? enableBehaviour,
      bool? isRequired,
      bool? repeats,
      bool? readOnly,
      int? maxlength,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      QuestionnaireModel? questionnaire});

  @override
  $AnswerValueSetModelCopyWith<$Res>? get ansewrValueSet;
  @override
  $AnswerModelCopyWith<$Res>? get initial;
  @override
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
}

/// @nodoc
class __$$_QuestionnaireItemModelCopyWithImpl<$Res>
    extends _$QuestionnaireItemModelCopyWithImpl<$Res,
        _$_QuestionnaireItemModel>
    implements _$$_QuestionnaireItemModelCopyWith<$Res> {
  __$$_QuestionnaireItemModelCopyWithImpl(_$_QuestionnaireItemModel _value,
      $Res Function(_$_QuestionnaireItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linkId = freezed,
    Object? prefix = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? enableBehaviour = freezed,
    Object? isRequired = freezed,
    Object? repeats = freezed,
    Object? readOnly = freezed,
    Object? maxlength = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? questionnaire = freezed,
  }) {
    return _then(_$_QuestionnaireItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionnaireType?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeats: freezed == repeats
          ? _value.repeats
          : repeats // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxlength: freezed == maxlength
          ? _value.maxlength
          : maxlength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      answerConstraint: freezed == answerConstraint
          ? _value.answerConstraint
          : answerConstraint // ignore: cast_nullable_to_non_nullable
              as AnswerConstraint?,
      ansewrValueSet: freezed == ansewrValueSet
          ? _value.ansewrValueSet
          : ansewrValueSet // ignore: cast_nullable_to_non_nullable
              as AnswerValueSetModel?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireItemModel implements _QuestionnaireItemModel {
  const _$_QuestionnaireItemModel(
      {this.id,
      this.linkId,
      this.prefix,
      this.text,
      this.type,
      this.enableBehaviour,
      this.isRequired,
      this.repeats,
      this.readOnly,
      this.maxlength,
      this.disabledDisplay,
      this.answerConstraint,
      this.ansewrValueSet,
      this.initial,
      this.questionnaire});

  factory _$_QuestionnaireItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? linkId;
  @override
  final String? prefix;
  @override
  final String? text;
  @override
  final QuestionnaireType? type;
  @override
  final EnableBehaviour? enableBehaviour;
  @override
  final bool? isRequired;
  @override
  final bool? repeats;
  @override
  final bool? readOnly;
  @override
  final int? maxlength;
  @override
  final DisabledDisplay? disabledDisplay;
  @override
  final AnswerConstraint? answerConstraint;
  @override
  final AnswerValueSetModel? ansewrValueSet;
  @override
  final AnswerModel? initial;
  @override
  final QuestionnaireModel? questionnaire;

  @override
  String toString() {
    return 'QuestionnaireItemModel(id: $id, linkId: $linkId, prefix: $prefix, text: $text, type: $type, enableBehaviour: $enableBehaviour, isRequired: $isRequired, repeats: $repeats, readOnly: $readOnly, maxlength: $maxlength, disabledDisplay: $disabledDisplay, answerConstraint: $answerConstraint, ansewrValueSet: $ansewrValueSet, initial: $initial, questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.enableBehaviour, enableBehaviour) ||
                other.enableBehaviour == enableBehaviour) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.repeats, repeats) || other.repeats == repeats) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.maxlength, maxlength) ||
                other.maxlength == maxlength) &&
            (identical(other.disabledDisplay, disabledDisplay) ||
                other.disabledDisplay == disabledDisplay) &&
            (identical(other.answerConstraint, answerConstraint) ||
                other.answerConstraint == answerConstraint) &&
            (identical(other.ansewrValueSet, ansewrValueSet) ||
                other.ansewrValueSet == ansewrValueSet) &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      linkId,
      prefix,
      text,
      type,
      enableBehaviour,
      isRequired,
      repeats,
      readOnly,
      maxlength,
      disabledDisplay,
      answerConstraint,
      ansewrValueSet,
      initial,
      questionnaire);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireItemModelCopyWith<_$_QuestionnaireItemModel> get copyWith =>
      __$$_QuestionnaireItemModelCopyWithImpl<_$_QuestionnaireItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireItemModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireItemModel implements QuestionnaireItemModel {
  const factory _QuestionnaireItemModel(
      {final int? id,
      final String? linkId,
      final String? prefix,
      final String? text,
      final QuestionnaireType? type,
      final EnableBehaviour? enableBehaviour,
      final bool? isRequired,
      final bool? repeats,
      final bool? readOnly,
      final int? maxlength,
      final DisabledDisplay? disabledDisplay,
      final AnswerConstraint? answerConstraint,
      final AnswerValueSetModel? ansewrValueSet,
      final AnswerModel? initial,
      final QuestionnaireModel? questionnaire}) = _$_QuestionnaireItemModel;

  factory _QuestionnaireItemModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get linkId;
  @override
  String? get prefix;
  @override
  String? get text;
  @override
  QuestionnaireType? get type;
  @override
  EnableBehaviour? get enableBehaviour;
  @override
  bool? get isRequired;
  @override
  bool? get repeats;
  @override
  bool? get readOnly;
  @override
  int? get maxlength;
  @override
  DisabledDisplay? get disabledDisplay;
  @override
  AnswerConstraint? get answerConstraint;
  @override
  AnswerValueSetModel? get ansewrValueSet;
  @override
  AnswerModel? get initial;
  @override
  QuestionnaireModel? get questionnaire;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireItemModelCopyWith<_$_QuestionnaireItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionOnModel _$ActionOnModelFromJson(Map<String, dynamic> json) {
  return _ActionOnModel.fromJson(json);
}

/// @nodoc
mixin _$ActionOnModel {
  int? get id => throw _privateConstructorUsedError;
  Operator? get operator => throw _privateConstructorUsedError;
  ActionType? get actionType => throw _privateConstructorUsedError;
  AnswerModel? get answer => throw _privateConstructorUsedError;
  QuestionnaireItemModel? get questionnaireItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionOnModelCopyWith<ActionOnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionOnModelCopyWith<$Res> {
  factory $ActionOnModelCopyWith(
          ActionOnModel value, $Res Function(ActionOnModel) then) =
      _$ActionOnModelCopyWithImpl<$Res, ActionOnModel>;
  @useResult
  $Res call(
      {int? id,
      Operator? operator,
      ActionType? actionType,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  $AnswerModelCopyWith<$Res>? get answer;
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class _$ActionOnModelCopyWithImpl<$Res, $Val extends ActionOnModel>
    implements $ActionOnModelCopyWith<$Res> {
  _$ActionOnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? actionType = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get answer {
    if (_value.answer == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.answer!, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem {
    if (_value.questionnaireItem == null) {
      return null;
    }

    return $QuestionnaireItemModelCopyWith<$Res>(_value.questionnaireItem!,
        (value) {
      return _then(_value.copyWith(questionnaireItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActionOnModelCopyWith<$Res>
    implements $ActionOnModelCopyWith<$Res> {
  factory _$$_ActionOnModelCopyWith(
          _$_ActionOnModel value, $Res Function(_$_ActionOnModel) then) =
      __$$_ActionOnModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Operator? operator,
      ActionType? actionType,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  @override
  $AnswerModelCopyWith<$Res>? get answer;
  @override
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class __$$_ActionOnModelCopyWithImpl<$Res>
    extends _$ActionOnModelCopyWithImpl<$Res, _$_ActionOnModel>
    implements _$$_ActionOnModelCopyWith<$Res> {
  __$$_ActionOnModelCopyWithImpl(
      _$_ActionOnModel _value, $Res Function(_$_ActionOnModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? actionType = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_$_ActionOnModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionOnModel implements _ActionOnModel {
  const _$_ActionOnModel(
      {this.id,
      this.operator,
      this.actionType,
      this.answer,
      this.questionnaireItem});

  factory _$_ActionOnModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActionOnModelFromJson(json);

  @override
  final int? id;
  @override
  final Operator? operator;
  @override
  final ActionType? actionType;
  @override
  final AnswerModel? answer;
  @override
  final QuestionnaireItemModel? questionnaireItem;

  @override
  String toString() {
    return 'ActionOnModel(id: $id, operator: $operator, actionType: $actionType, answer: $answer, questionnaireItem: $questionnaireItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionOnModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.questionnaireItem, questionnaireItem) ||
                other.questionnaireItem == questionnaireItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, operator, actionType, answer, questionnaireItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionOnModelCopyWith<_$_ActionOnModel> get copyWith =>
      __$$_ActionOnModelCopyWithImpl<_$_ActionOnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionOnModelToJson(
      this,
    );
  }
}

abstract class _ActionOnModel implements ActionOnModel {
  const factory _ActionOnModel(
      {final int? id,
      final Operator? operator,
      final ActionType? actionType,
      final AnswerModel? answer,
      final QuestionnaireItemModel? questionnaireItem}) = _$_ActionOnModel;

  factory _ActionOnModel.fromJson(Map<String, dynamic> json) =
      _$_ActionOnModel.fromJson;

  @override
  int? get id;
  @override
  Operator? get operator;
  @override
  ActionType? get actionType;
  @override
  AnswerModel? get answer;
  @override
  QuestionnaireItemModel? get questionnaireItem;
  @override
  @JsonKey(ignore: true)
  _$$_ActionOnModelCopyWith<_$_ActionOnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EnableWhenModel _$EnableWhenModelFromJson(Map<String, dynamic> json) {
  return _EnableWhenModel.fromJson(json);
}

/// @nodoc
mixin _$EnableWhenModel {
  int? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  Operator? get operator => throw _privateConstructorUsedError;
  AnswerModel? get answer => throw _privateConstructorUsedError;
  QuestionnaireItemModel? get questionnaireItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnableWhenModelCopyWith<EnableWhenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnableWhenModelCopyWith<$Res> {
  factory $EnableWhenModelCopyWith(
          EnableWhenModel value, $Res Function(EnableWhenModel) then) =
      _$EnableWhenModelCopyWithImpl<$Res, EnableWhenModel>;
  @useResult
  $Res call(
      {int? id,
      String? question,
      Operator? operator,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  $AnswerModelCopyWith<$Res>? get answer;
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class _$EnableWhenModelCopyWithImpl<$Res, $Val extends EnableWhenModel>
    implements $EnableWhenModelCopyWith<$Res> {
  _$EnableWhenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerModelCopyWith<$Res>? get answer {
    if (_value.answer == null) {
      return null;
    }

    return $AnswerModelCopyWith<$Res>(_value.answer!, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem {
    if (_value.questionnaireItem == null) {
      return null;
    }

    return $QuestionnaireItemModelCopyWith<$Res>(_value.questionnaireItem!,
        (value) {
      return _then(_value.copyWith(questionnaireItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EnableWhenModelCopyWith<$Res>
    implements $EnableWhenModelCopyWith<$Res> {
  factory _$$_EnableWhenModelCopyWith(
          _$_EnableWhenModel value, $Res Function(_$_EnableWhenModel) then) =
      __$$_EnableWhenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? question,
      Operator? operator,
      AnswerModel? answer,
      QuestionnaireItemModel? questionnaireItem});

  @override
  $AnswerModelCopyWith<$Res>? get answer;
  @override
  $QuestionnaireItemModelCopyWith<$Res>? get questionnaireItem;
}

/// @nodoc
class __$$_EnableWhenModelCopyWithImpl<$Res>
    extends _$EnableWhenModelCopyWithImpl<$Res, _$_EnableWhenModel>
    implements _$$_EnableWhenModelCopyWith<$Res> {
  __$$_EnableWhenModelCopyWithImpl(
      _$_EnableWhenModel _value, $Res Function(_$_EnableWhenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_$_EnableWhenModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerModel?,
      questionnaireItem: freezed == questionnaireItem
          ? _value.questionnaireItem
          : questionnaireItem // ignore: cast_nullable_to_non_nullable
              as QuestionnaireItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EnableWhenModel implements _EnableWhenModel {
  const _$_EnableWhenModel(
      {this.id,
      this.question,
      this.operator,
      this.answer,
      this.questionnaireItem});

  factory _$_EnableWhenModel.fromJson(Map<String, dynamic> json) =>
      _$$_EnableWhenModelFromJson(json);

  @override
  final int? id;
  @override
  final String? question;
  @override
  final Operator? operator;
  @override
  final AnswerModel? answer;
  @override
  final QuestionnaireItemModel? questionnaireItem;

  @override
  String toString() {
    return 'EnableWhenModel(id: $id, question: $question, operator: $operator, answer: $answer, questionnaireItem: $questionnaireItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnableWhenModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.questionnaireItem, questionnaireItem) ||
                other.questionnaireItem == questionnaireItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, question, operator, answer, questionnaireItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnableWhenModelCopyWith<_$_EnableWhenModel> get copyWith =>
      __$$_EnableWhenModelCopyWithImpl<_$_EnableWhenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnableWhenModelToJson(
      this,
    );
  }
}

abstract class _EnableWhenModel implements EnableWhenModel {
  const factory _EnableWhenModel(
      {final int? id,
      final String? question,
      final Operator? operator,
      final AnswerModel? answer,
      final QuestionnaireItemModel? questionnaireItem}) = _$_EnableWhenModel;

  factory _EnableWhenModel.fromJson(Map<String, dynamic> json) =
      _$_EnableWhenModel.fromJson;

  @override
  int? get id;
  @override
  String? get question;
  @override
  Operator? get operator;
  @override
  AnswerModel? get answer;
  @override
  QuestionnaireItemModel? get questionnaireItem;
  @override
  @JsonKey(ignore: true)
  _$$_EnableWhenModelCopyWith<_$_EnableWhenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageBasedTextModel _$LanguageBasedTextModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageBasedTextModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageBasedTextModel {
  int? get id => throw _privateConstructorUsedError;
  String? get textId => throw _privateConstructorUsedError;
  int? get langId => throw _privateConstructorUsedError;
  String? get textValue => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageBasedTextModelCopyWith<LanguageBasedTextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageBasedTextModelCopyWith<$Res> {
  factory $LanguageBasedTextModelCopyWith(LanguageBasedTextModel value,
          $Res Function(LanguageBasedTextModel) then) =
      _$LanguageBasedTextModelCopyWithImpl<$Res, LanguageBasedTextModel>;
  @useResult
  $Res call(
      {int? id,
      String? textId,
      int? langId,
      String? textValue,
      bool? isDefault});
}

/// @nodoc
class _$LanguageBasedTextModelCopyWithImpl<$Res,
        $Val extends LanguageBasedTextModel>
    implements $LanguageBasedTextModelCopyWith<$Res> {
  _$LanguageBasedTextModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? textId = freezed,
    Object? langId = freezed,
    Object? textValue = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      textId: freezed == textId
          ? _value.textId
          : textId // ignore: cast_nullable_to_non_nullable
              as String?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      textValue: freezed == textValue
          ? _value.textValue
          : textValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageBasedTextModelCopyWith<$Res>
    implements $LanguageBasedTextModelCopyWith<$Res> {
  factory _$$_LanguageBasedTextModelCopyWith(_$_LanguageBasedTextModel value,
          $Res Function(_$_LanguageBasedTextModel) then) =
      __$$_LanguageBasedTextModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? textId,
      int? langId,
      String? textValue,
      bool? isDefault});
}

/// @nodoc
class __$$_LanguageBasedTextModelCopyWithImpl<$Res>
    extends _$LanguageBasedTextModelCopyWithImpl<$Res,
        _$_LanguageBasedTextModel>
    implements _$$_LanguageBasedTextModelCopyWith<$Res> {
  __$$_LanguageBasedTextModelCopyWithImpl(_$_LanguageBasedTextModel _value,
      $Res Function(_$_LanguageBasedTextModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? textId = freezed,
    Object? langId = freezed,
    Object? textValue = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_$_LanguageBasedTextModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      textId: freezed == textId
          ? _value.textId
          : textId // ignore: cast_nullable_to_non_nullable
              as String?,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as int?,
      textValue: freezed == textValue
          ? _value.textValue
          : textValue // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageBasedTextModel implements _LanguageBasedTextModel {
  const _$_LanguageBasedTextModel(
      {this.id, this.textId, this.langId, this.textValue, this.isDefault});

  factory _$_LanguageBasedTextModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageBasedTextModelFromJson(json);

  @override
  final int? id;
  @override
  final String? textId;
  @override
  final int? langId;
  @override
  final String? textValue;
  @override
  final bool? isDefault;

  @override
  String toString() {
    return 'LanguageBasedTextModel(id: $id, textId: $textId, langId: $langId, textValue: $textValue, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageBasedTextModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textId, textId) || other.textId == textId) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.textValue, textValue) ||
                other.textValue == textValue) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, textId, langId, textValue, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageBasedTextModelCopyWith<_$_LanguageBasedTextModel> get copyWith =>
      __$$_LanguageBasedTextModelCopyWithImpl<_$_LanguageBasedTextModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageBasedTextModelToJson(
      this,
    );
  }
}

abstract class _LanguageBasedTextModel implements LanguageBasedTextModel {
  const factory _LanguageBasedTextModel(
      {final int? id,
      final String? textId,
      final int? langId,
      final String? textValue,
      final bool? isDefault}) = _$_LanguageBasedTextModel;

  factory _LanguageBasedTextModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageBasedTextModel.fromJson;

  @override
  int? get id;
  @override
  String? get textId;
  @override
  int? get langId;
  @override
  String? get textValue;
  @override
  bool? get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageBasedTextModelCopyWith<_$_LanguageBasedTextModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ObservationValueWeightModel _$ObservationValueWeightModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationValueWeightModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationValueWeightModel {
  int? get id => throw _privateConstructorUsedError;
  int? get observationId => throw _privateConstructorUsedError;
  int? get organizationId => throw _privateConstructorUsedError;
  double? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationValueWeightModelCopyWith<ObservationValueWeightModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationValueWeightModelCopyWith<$Res> {
  factory $ObservationValueWeightModelCopyWith(
          ObservationValueWeightModel value,
          $Res Function(ObservationValueWeightModel) then) =
      _$ObservationValueWeightModelCopyWithImpl<$Res,
          ObservationValueWeightModel>;
  @useResult
  $Res call({int? id, int? observationId, int? organizationId, double? value});
}

/// @nodoc
class _$ObservationValueWeightModelCopyWithImpl<$Res,
        $Val extends ObservationValueWeightModel>
    implements $ObservationValueWeightModelCopyWith<$Res> {
  _$ObservationValueWeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? observationId = freezed,
    Object? organizationId = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      observationId: freezed == observationId
          ? _value.observationId
          : observationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationValueWeightModelCopyWith<$Res>
    implements $ObservationValueWeightModelCopyWith<$Res> {
  factory _$$_ObservationValueWeightModelCopyWith(
          _$_ObservationValueWeightModel value,
          $Res Function(_$_ObservationValueWeightModel) then) =
      __$$_ObservationValueWeightModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? observationId, int? organizationId, double? value});
}

/// @nodoc
class __$$_ObservationValueWeightModelCopyWithImpl<$Res>
    extends _$ObservationValueWeightModelCopyWithImpl<$Res,
        _$_ObservationValueWeightModel>
    implements _$$_ObservationValueWeightModelCopyWith<$Res> {
  __$$_ObservationValueWeightModelCopyWithImpl(
      _$_ObservationValueWeightModel _value,
      $Res Function(_$_ObservationValueWeightModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? observationId = freezed,
    Object? organizationId = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_ObservationValueWeightModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      observationId: freezed == observationId
          ? _value.observationId
          : observationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationValueWeightModel implements _ObservationValueWeightModel {
  const _$_ObservationValueWeightModel(
      {this.id, this.observationId, this.organizationId, this.value});

  factory _$_ObservationValueWeightModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationValueWeightModelFromJson(json);

  @override
  final int? id;
  @override
  final int? observationId;
  @override
  final int? organizationId;
  @override
  final double? value;

  @override
  String toString() {
    return 'ObservationValueWeightModel(id: $id, observationId: $observationId, organizationId: $organizationId, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationValueWeightModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.observationId, observationId) ||
                other.observationId == observationId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, observationId, organizationId, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationValueWeightModelCopyWith<_$_ObservationValueWeightModel>
      get copyWith => __$$_ObservationValueWeightModelCopyWithImpl<
          _$_ObservationValueWeightModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationValueWeightModelToJson(
      this,
    );
  }
}

abstract class _ObservationValueWeightModel
    implements ObservationValueWeightModel {
  const factory _ObservationValueWeightModel(
      {final int? id,
      final int? observationId,
      final int? organizationId,
      final double? value}) = _$_ObservationValueWeightModel;

  factory _ObservationValueWeightModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationValueWeightModel.fromJson;

  @override
  int? get id;
  @override
  int? get observationId;
  @override
  int? get organizationId;
  @override
  double? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationValueWeightModelCopyWith<_$_ObservationValueWeightModel>
      get copyWith => throw _privateConstructorUsedError;
}
