/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiagnosticReportTemplateFHIRModel _$DiagnosticReportTemplateFHIRModelFromJson(
    Map<String, dynamic> json) {
  return _DiagnosticReportTemplateFHIRModel.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticReportTemplateFHIRModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
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
      int? tenantCode,
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
    Object? tenantCode = freezed,
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DiagnosticReportTemplateFHIRModelImplCopyWith<$Res>
    implements $DiagnosticReportTemplateFHIRModelCopyWith<$Res> {
  factory _$$DiagnosticReportTemplateFHIRModelImplCopyWith(
          _$DiagnosticReportTemplateFHIRModelImpl value,
          $Res Function(_$DiagnosticReportTemplateFHIRModelImpl) then) =
      __$$DiagnosticReportTemplateFHIRModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? organizationCode,
      int? tenantCode,
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
class __$$DiagnosticReportTemplateFHIRModelImplCopyWithImpl<$Res>
    extends _$DiagnosticReportTemplateFHIRModelCopyWithImpl<$Res,
        _$DiagnosticReportTemplateFHIRModelImpl>
    implements _$$DiagnosticReportTemplateFHIRModelImplCopyWith<$Res> {
  __$$DiagnosticReportTemplateFHIRModelImplCopyWithImpl(
      _$DiagnosticReportTemplateFHIRModelImpl _value,
      $Res Function(_$DiagnosticReportTemplateFHIRModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? tenantCode = freezed,
    Object? category = freezed,
    Object? bodySite = freezed,
    Object? code = freezed,
    Object? version = freezed,
    Object? study = freezed,
    Object? observations = freezed,
    Object? questionnaire = freezed,
    Object? observationValueWeight = freezed,
  }) {
    return _then(_$DiagnosticReportTemplateFHIRModelImpl(
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
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
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
class _$DiagnosticReportTemplateFHIRModelImpl
    implements _DiagnosticReportTemplateFHIRModel {
  const _$DiagnosticReportTemplateFHIRModelImpl(
      {this.id,
      this.name,
      this.organizationCode,
      this.tenantCode,
      this.category,
      this.bodySite,
      this.code,
      this.version,
      this.study,
      this.observations,
      this.questionnaire,
      final List<ObservationValueWeightModel>? observationValueWeight})
      : _observationValueWeight = observationValueWeight;

  factory _$DiagnosticReportTemplateFHIRModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DiagnosticReportTemplateFHIRModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? organizationCode;
  @override
  final int? tenantCode;
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
    return 'DiagnosticReportTemplateFHIRModel(id: $id, name: $name, organizationCode: $organizationCode, tenantCode: $tenantCode, category: $category, bodySite: $bodySite, code: $code, version: $version, study: $study, observations: $observations, questionnaire: $questionnaire, observationValueWeight: $observationValueWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosticReportTemplateFHIRModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
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
      tenantCode,
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
  _$$DiagnosticReportTemplateFHIRModelImplCopyWith<
          _$DiagnosticReportTemplateFHIRModelImpl>
      get copyWith => __$$DiagnosticReportTemplateFHIRModelImplCopyWithImpl<
          _$DiagnosticReportTemplateFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosticReportTemplateFHIRModelImplToJson(
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
          final int? tenantCode,
          final Category? category,
          final BodySite? bodySite,
          final TestCode? code,
          final String? version,
          final ImagingStudyFHIRModel? study,
          final ObservationDefinitionFHIRModel? observations,
          final QuestionnaireFHIRModel? questionnaire,
          final List<ObservationValueWeightModel>? observationValueWeight}) =
      _$DiagnosticReportTemplateFHIRModelImpl;

  factory _DiagnosticReportTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =
      _$DiagnosticReportTemplateFHIRModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get organizationCode;
  @override
  int? get tenantCode;
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
  _$$DiagnosticReportTemplateFHIRModelImplCopyWith<
          _$DiagnosticReportTemplateFHIRModelImpl>
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
abstract class _$$ImagingStudyFHIRModelImplCopyWith<$Res>
    implements $ImagingStudyFHIRModelCopyWith<$Res> {
  factory _$$ImagingStudyFHIRModelImplCopyWith(
          _$ImagingStudyFHIRModelImpl value,
          $Res Function(_$ImagingStudyFHIRModelImpl) then) =
      __$$ImagingStudyFHIRModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? description,
      List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      List<LanguageBasedTextModel>? languageBasedText});
}

/// @nodoc
class __$$ImagingStudyFHIRModelImplCopyWithImpl<$Res>
    extends _$ImagingStudyFHIRModelCopyWithImpl<$Res,
        _$ImagingStudyFHIRModelImpl>
    implements _$$ImagingStudyFHIRModelImplCopyWith<$Res> {
  __$$ImagingStudyFHIRModelImplCopyWithImpl(_$ImagingStudyFHIRModelImpl _value,
      $Res Function(_$ImagingStudyFHIRModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? imagingSelectionTemplate = freezed,
    Object? languageBasedText = freezed,
  }) {
    return _then(_$ImagingStudyFHIRModelImpl(
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
class _$ImagingStudyFHIRModelImpl implements _ImagingStudyFHIRModel {
  const _$ImagingStudyFHIRModelImpl(
      {this.id,
      this.description,
      final List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
      final List<LanguageBasedTextModel>? languageBasedText})
      : _imagingSelectionTemplate = imagingSelectionTemplate,
        _languageBasedText = languageBasedText;

  factory _$ImagingStudyFHIRModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagingStudyFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagingStudyFHIRModelImpl &&
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
  _$$ImagingStudyFHIRModelImplCopyWith<_$ImagingStudyFHIRModelImpl>
      get copyWith => __$$ImagingStudyFHIRModelImplCopyWithImpl<
          _$ImagingStudyFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagingStudyFHIRModelImplToJson(
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
          languageBasedText}) = _$ImagingStudyFHIRModelImpl;

  factory _ImagingStudyFHIRModel.fromJson(Map<String, dynamic> json) =
      _$ImagingStudyFHIRModelImpl.fromJson;

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
  _$$ImagingStudyFHIRModelImplCopyWith<_$ImagingStudyFHIRModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ImagingSelectionTemplateFHIRModelImplCopyWith<$Res>
    implements $ImagingSelectionTemplateFHIRModelCopyWith<$Res> {
  factory _$$ImagingSelectionTemplateFHIRModelImplCopyWith(
          _$ImagingSelectionTemplateFHIRModelImpl value,
          $Res Function(_$ImagingSelectionTemplateFHIRModelImpl) then) =
      __$$ImagingSelectionTemplateFHIRModelImplCopyWithImpl<$Res>;
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
class __$$ImagingSelectionTemplateFHIRModelImplCopyWithImpl<$Res>
    extends _$ImagingSelectionTemplateFHIRModelCopyWithImpl<$Res,
        _$ImagingSelectionTemplateFHIRModelImpl>
    implements _$$ImagingSelectionTemplateFHIRModelImplCopyWith<$Res> {
  __$$ImagingSelectionTemplateFHIRModelImplCopyWithImpl(
      _$ImagingSelectionTemplateFHIRModelImpl _value,
      $Res Function(_$ImagingSelectionTemplateFHIRModelImpl) _then)
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
    return _then(_$ImagingSelectionTemplateFHIRModelImpl(
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
class _$ImagingSelectionTemplateFHIRModelImpl
    implements _ImagingSelectionTemplateFHIRModel {
  const _$ImagingSelectionTemplateFHIRModelImpl(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.maxSize,
      this.fileType,
      final List<RelatedImageFHIRModel>? relatedImage})
      : _relatedImage = relatedImage;

  factory _$ImagingSelectionTemplateFHIRModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ImagingSelectionTemplateFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagingSelectionTemplateFHIRModelImpl &&
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
  _$$ImagingSelectionTemplateFHIRModelImplCopyWith<
          _$ImagingSelectionTemplateFHIRModelImpl>
      get copyWith => __$$ImagingSelectionTemplateFHIRModelImplCopyWithImpl<
          _$ImagingSelectionTemplateFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagingSelectionTemplateFHIRModelImplToJson(
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
      _$ImagingSelectionTemplateFHIRModelImpl;

  factory _ImagingSelectionTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =
      _$ImagingSelectionTemplateFHIRModelImpl.fromJson;

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
  _$$ImagingSelectionTemplateFHIRModelImplCopyWith<
          _$ImagingSelectionTemplateFHIRModelImpl>
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
abstract class _$$RelatedImageFHIRModelImplCopyWith<$Res>
    implements $RelatedImageFHIRModelCopyWith<$Res> {
  factory _$$RelatedImageFHIRModelImplCopyWith(
          _$RelatedImageFHIRModelImpl value,
          $Res Function(_$RelatedImageFHIRModelImpl) then) =
      __$$RelatedImageFHIRModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? imageTitle, String? url, FileType? filetype});
}

/// @nodoc
class __$$RelatedImageFHIRModelImplCopyWithImpl<$Res>
    extends _$RelatedImageFHIRModelCopyWithImpl<$Res,
        _$RelatedImageFHIRModelImpl>
    implements _$$RelatedImageFHIRModelImplCopyWith<$Res> {
  __$$RelatedImageFHIRModelImplCopyWithImpl(_$RelatedImageFHIRModelImpl _value,
      $Res Function(_$RelatedImageFHIRModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageTitle = freezed,
    Object? url = freezed,
    Object? filetype = freezed,
  }) {
    return _then(_$RelatedImageFHIRModelImpl(
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
class _$RelatedImageFHIRModelImpl implements _RelatedImageFHIRModel {
  const _$RelatedImageFHIRModelImpl(
      {this.id, this.imageTitle, this.url, this.filetype});

  factory _$RelatedImageFHIRModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedImageFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedImageFHIRModelImpl &&
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
  _$$RelatedImageFHIRModelImplCopyWith<_$RelatedImageFHIRModelImpl>
      get copyWith => __$$RelatedImageFHIRModelImplCopyWithImpl<
          _$RelatedImageFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedImageFHIRModelImplToJson(
      this,
    );
  }
}

abstract class _RelatedImageFHIRModel implements RelatedImageFHIRModel {
  const factory _RelatedImageFHIRModel(
      {final int? id,
      final String? imageTitle,
      final String? url,
      final FileType? filetype}) = _$RelatedImageFHIRModelImpl;

  factory _RelatedImageFHIRModel.fromJson(Map<String, dynamic> json) =
      _$RelatedImageFHIRModelImpl.fromJson;

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
  _$$RelatedImageFHIRModelImplCopyWith<_$RelatedImageFHIRModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ObservationDefinitionFHIRModelImplCopyWith<$Res>
    implements $ObservationDefinitionFHIRModelCopyWith<$Res> {
  factory _$$ObservationDefinitionFHIRModelImplCopyWith(
          _$ObservationDefinitionFHIRModelImpl value,
          $Res Function(_$ObservationDefinitionFHIRModelImpl) then) =
      __$$ObservationDefinitionFHIRModelImplCopyWithImpl<$Res>;
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
class __$$ObservationDefinitionFHIRModelImplCopyWithImpl<$Res>
    extends _$ObservationDefinitionFHIRModelCopyWithImpl<$Res,
        _$ObservationDefinitionFHIRModelImpl>
    implements _$$ObservationDefinitionFHIRModelImplCopyWith<$Res> {
  __$$ObservationDefinitionFHIRModelImplCopyWithImpl(
      _$ObservationDefinitionFHIRModelImpl _value,
      $Res Function(_$ObservationDefinitionFHIRModelImpl) _then)
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
    return _then(_$ObservationDefinitionFHIRModelImpl(
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
class _$ObservationDefinitionFHIRModelImpl
    implements _ObservationDefinitionFHIRModel {
  const _$ObservationDefinitionFHIRModelImpl(
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

  factory _$ObservationDefinitionFHIRModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ObservationDefinitionFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationDefinitionFHIRModelImpl &&
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
  _$$ObservationDefinitionFHIRModelImplCopyWith<
          _$ObservationDefinitionFHIRModelImpl>
      get copyWith => __$$ObservationDefinitionFHIRModelImplCopyWithImpl<
          _$ObservationDefinitionFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationDefinitionFHIRModelImplToJson(
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
      _$ObservationDefinitionFHIRModelImpl;

  factory _ObservationDefinitionFHIRModel.fromJson(Map<String, dynamic> json) =
      _$ObservationDefinitionFHIRModelImpl.fromJson;

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
  _$$ObservationDefinitionFHIRModelImplCopyWith<
          _$ObservationDefinitionFHIRModelImpl>
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
abstract class _$$ObservationDefinitionModelImplCopyWith<$Res>
    implements $ObservationDefinitionModelCopyWith<$Res> {
  factory _$$ObservationDefinitionModelImplCopyWith(
          _$ObservationDefinitionModelImpl value,
          $Res Function(_$ObservationDefinitionModelImpl) then) =
      __$$ObservationDefinitionModelImplCopyWithImpl<$Res>;
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
class __$$ObservationDefinitionModelImplCopyWithImpl<$Res>
    extends _$ObservationDefinitionModelCopyWithImpl<$Res,
        _$ObservationDefinitionModelImpl>
    implements _$$ObservationDefinitionModelImplCopyWith<$Res> {
  __$$ObservationDefinitionModelImplCopyWithImpl(
      _$ObservationDefinitionModelImpl _value,
      $Res Function(_$ObservationDefinitionModelImpl) _then)
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
    return _then(_$ObservationDefinitionModelImpl(
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
class _$ObservationDefinitionModelImpl implements _ObservationDefinitionModel {
  const _$ObservationDefinitionModelImpl(
      {this.id,
      this.name,
      this.description,
      this.category,
      this.code,
      this.bodySite,
      this.method,
      this.jurisdiction});

  factory _$ObservationDefinitionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ObservationDefinitionModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationDefinitionModelImpl &&
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
  _$$ObservationDefinitionModelImplCopyWith<_$ObservationDefinitionModelImpl>
      get copyWith => __$$ObservationDefinitionModelImplCopyWithImpl<
          _$ObservationDefinitionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationDefinitionModelImplToJson(
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
      final Jurisdiction? jurisdiction}) = _$ObservationDefinitionModelImpl;

  factory _ObservationDefinitionModel.fromJson(Map<String, dynamic> json) =
      _$ObservationDefinitionModelImpl.fromJson;

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
  _$$ObservationDefinitionModelImplCopyWith<_$ObservationDefinitionModelImpl>
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
abstract class _$$DataComponentFHIRModelImplCopyWith<$Res>
    implements $DataComponentFHIRModelCopyWith<$Res> {
  factory _$$DataComponentFHIRModelImplCopyWith(
          _$DataComponentFHIRModelImpl value,
          $Res Function(_$DataComponentFHIRModelImpl) then) =
      __$$DataComponentFHIRModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      PermittedDataType? permittedDataType,
      PermittedUnit? permittedUnit,
      List<QualifiedValueModel>? qualifiedValue});
}

/// @nodoc
class __$$DataComponentFHIRModelImplCopyWithImpl<$Res>
    extends _$DataComponentFHIRModelCopyWithImpl<$Res,
        _$DataComponentFHIRModelImpl>
    implements _$$DataComponentFHIRModelImplCopyWith<$Res> {
  __$$DataComponentFHIRModelImplCopyWithImpl(
      _$DataComponentFHIRModelImpl _value,
      $Res Function(_$DataComponentFHIRModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? qualifiedValue = freezed,
  }) {
    return _then(_$DataComponentFHIRModelImpl(
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
class _$DataComponentFHIRModelImpl implements _DataComponentFHIRModel {
  const _$DataComponentFHIRModelImpl(
      {this.id,
      this.permittedDataType,
      this.permittedUnit,
      final List<QualifiedValueModel>? qualifiedValue})
      : _qualifiedValue = qualifiedValue;

  factory _$DataComponentFHIRModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataComponentFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataComponentFHIRModelImpl &&
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
  _$$DataComponentFHIRModelImplCopyWith<_$DataComponentFHIRModelImpl>
      get copyWith => __$$DataComponentFHIRModelImplCopyWithImpl<
          _$DataComponentFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataComponentFHIRModelImplToJson(
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
      _$DataComponentFHIRModelImpl;

  factory _DataComponentFHIRModel.fromJson(Map<String, dynamic> json) =
      _$DataComponentFHIRModelImpl.fromJson;

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
  _$$DataComponentFHIRModelImplCopyWith<_$DataComponentFHIRModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$QualifiedValueModelImplCopyWith<$Res>
    implements $QualifiedValueModelCopyWith<$Res> {
  factory _$$QualifiedValueModelImplCopyWith(_$QualifiedValueModelImpl value,
          $Res Function(_$QualifiedValueModelImpl) then) =
      __$$QualifiedValueModelImplCopyWithImpl<$Res>;
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
class __$$QualifiedValueModelImplCopyWithImpl<$Res>
    extends _$QualifiedValueModelCopyWithImpl<$Res, _$QualifiedValueModelImpl>
    implements _$$QualifiedValueModelImplCopyWith<$Res> {
  __$$QualifiedValueModelImplCopyWithImpl(_$QualifiedValueModelImpl _value,
      $Res Function(_$QualifiedValueModelImpl) _then)
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
    return _then(_$QualifiedValueModelImpl(
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
class _$QualifiedValueModelImpl implements _QualifiedValueModel {
  const _$QualifiedValueModelImpl(
      {this.id,
      this.isRange,
      this.value,
      this.rangeCategory,
      this.gender,
      this.range,
      this.observationDefinition,
      this.dataComponent});

  factory _$QualifiedValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QualifiedValueModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualifiedValueModelImpl &&
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
  _$$QualifiedValueModelImplCopyWith<_$QualifiedValueModelImpl> get copyWith =>
      __$$QualifiedValueModelImplCopyWithImpl<_$QualifiedValueModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QualifiedValueModelImplToJson(
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
      final DataComponentModel? dataComponent}) = _$QualifiedValueModelImpl;

  factory _QualifiedValueModel.fromJson(Map<String, dynamic> json) =
      _$QualifiedValueModelImpl.fromJson;

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
  _$$QualifiedValueModelImplCopyWith<_$QualifiedValueModelImpl> get copyWith =>
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
abstract class _$$RangeModelImplCopyWith<$Res>
    implements $RangeModelCopyWith<$Res> {
  factory _$$RangeModelImplCopyWith(
          _$RangeModelImpl value, $Res Function(_$RangeModelImpl) then) =
      __$$RangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, double? low, double? high});
}

/// @nodoc
class __$$RangeModelImplCopyWithImpl<$Res>
    extends _$RangeModelCopyWithImpl<$Res, _$RangeModelImpl>
    implements _$$RangeModelImplCopyWith<$Res> {
  __$$RangeModelImplCopyWithImpl(
      _$RangeModelImpl _value, $Res Function(_$RangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? low = freezed,
    Object? high = freezed,
  }) {
    return _then(_$RangeModelImpl(
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
class _$RangeModelImpl implements _RangeModel {
  const _$RangeModelImpl({this.id, this.low, this.high});

  factory _$RangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RangeModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeModelImpl &&
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
  _$$RangeModelImplCopyWith<_$RangeModelImpl> get copyWith =>
      __$$RangeModelImplCopyWithImpl<_$RangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RangeModelImplToJson(
      this,
    );
  }
}

abstract class _RangeModel implements RangeModel {
  const factory _RangeModel(
      {final int? id,
      final double? low,
      final double? high}) = _$RangeModelImpl;

  factory _RangeModel.fromJson(Map<String, dynamic> json) =
      _$RangeModelImpl.fromJson;

  @override
  int? get id;
  @override
  double? get low;
  @override
  double? get high;
  @override
  @JsonKey(ignore: true)
  _$$RangeModelImplCopyWith<_$RangeModelImpl> get copyWith =>
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
abstract class _$$DataComponentModelImplCopyWith<$Res>
    implements $DataComponentModelCopyWith<$Res> {
  factory _$$DataComponentModelImplCopyWith(_$DataComponentModelImpl value,
          $Res Function(_$DataComponentModelImpl) then) =
      __$$DataComponentModelImplCopyWithImpl<$Res>;
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
class __$$DataComponentModelImplCopyWithImpl<$Res>
    extends _$DataComponentModelCopyWithImpl<$Res, _$DataComponentModelImpl>
    implements _$$DataComponentModelImplCopyWith<$Res> {
  __$$DataComponentModelImplCopyWithImpl(_$DataComponentModelImpl _value,
      $Res Function(_$DataComponentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? permittedDataType = freezed,
    Object? permittedUnit = freezed,
    Object? observationDefinition = freezed,
  }) {
    return _then(_$DataComponentModelImpl(
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
class _$DataComponentModelImpl implements _DataComponentModel {
  const _$DataComponentModelImpl(
      {this.id,
      this.permittedDataType,
      this.permittedUnit,
      this.observationDefinition});

  factory _$DataComponentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataComponentModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataComponentModelImpl &&
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
  _$$DataComponentModelImplCopyWith<_$DataComponentModelImpl> get copyWith =>
      __$$DataComponentModelImplCopyWithImpl<_$DataComponentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataComponentModelImplToJson(
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
      _$DataComponentModelImpl;

  factory _DataComponentModel.fromJson(Map<String, dynamic> json) =
      _$DataComponentModelImpl.fromJson;

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
  _$$DataComponentModelImplCopyWith<_$DataComponentModelImpl> get copyWith =>
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
abstract class _$$QuestionnaireFHIRModelImplCopyWith<$Res>
    implements $QuestionnaireFHIRModelCopyWith<$Res> {
  factory _$$QuestionnaireFHIRModelImplCopyWith(
          _$QuestionnaireFHIRModelImpl value,
          $Res Function(_$QuestionnaireFHIRModelImpl) then) =
      __$$QuestionnaireFHIRModelImplCopyWithImpl<$Res>;
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
class __$$QuestionnaireFHIRModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireFHIRModelCopyWithImpl<$Res,
        _$QuestionnaireFHIRModelImpl>
    implements _$$QuestionnaireFHIRModelImplCopyWith<$Res> {
  __$$QuestionnaireFHIRModelImplCopyWithImpl(
      _$QuestionnaireFHIRModelImpl _value,
      $Res Function(_$QuestionnaireFHIRModelImpl) _then)
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
    return _then(_$QuestionnaireFHIRModelImpl(
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
class _$QuestionnaireFHIRModelImpl implements _QuestionnaireFHIRModel {
  const _$QuestionnaireFHIRModelImpl(
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

  factory _$QuestionnaireFHIRModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireFHIRModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireFHIRModelImpl &&
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
  _$$QuestionnaireFHIRModelImplCopyWith<_$QuestionnaireFHIRModelImpl>
      get copyWith => __$$QuestionnaireFHIRModelImplCopyWithImpl<
          _$QuestionnaireFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireFHIRModelImplToJson(
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
      _$QuestionnaireFHIRModelImpl;

  factory _QuestionnaireFHIRModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireFHIRModelImpl.fromJson;

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
  _$$QuestionnaireFHIRModelImplCopyWith<_$QuestionnaireFHIRModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$QuestionnaireModelImplCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$QuestionnaireModelImplCopyWith(_$QuestionnaireModelImpl value,
          $Res Function(_$QuestionnaireModelImpl) then) =
      __$$QuestionnaireModelImplCopyWithImpl<$Res>;
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
class __$$QuestionnaireModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$QuestionnaireModelImpl>
    implements _$$QuestionnaireModelImplCopyWith<$Res> {
  __$$QuestionnaireModelImplCopyWithImpl(_$QuestionnaireModelImpl _value,
      $Res Function(_$QuestionnaireModelImpl) _then)
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
    return _then(_$QuestionnaireModelImpl(
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
class _$QuestionnaireModelImpl implements _QuestionnaireModel {
  const _$QuestionnaireModelImpl(
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

  factory _$QuestionnaireModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireModelImpl &&
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
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      __$$QuestionnaireModelImplCopyWithImpl<_$QuestionnaireModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireModelImplToJson(
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
      final String? publisherType}) = _$QuestionnaireModelImpl;

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireModelImpl.fromJson;

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
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
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
  String? get shortText => throw _privateConstructorUsedError;
  DisabledDisplay? get disabledDisplay => throw _privateConstructorUsedError;
  AnswerConstraint? get answerConstraint => throw _privateConstructorUsedError;
  AnswerValueSetModel? get ansewrValueSet => throw _privateConstructorUsedError;
  AnswerModel? get initial => throw _privateConstructorUsedError;
  String? get quesExplanationText => throw _privateConstructorUsedError;
  QuestionnaireModel? get questionnaire => throw _privateConstructorUsedError;
  QuestionnaireItemModel? get questionnaireItem =>
      throw _privateConstructorUsedError;
  List<ActionOnModel>? get actionOn => throw _privateConstructorUsedError;
  List<AnswerOptionModel>? get answerOption =>
      throw _privateConstructorUsedError;
  List<EnableWhenModel>? get enableWhen => throw _privateConstructorUsedError;
  List<AnswerItemWeightModel>? get answerItemWeight =>
      throw _privateConstructorUsedError;
  List<RelatedImageFHIRModel>? get relatedImage =>
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
      String? shortText,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      String? quesExplanationText,
      QuestionnaireModel? questionnaire,
      QuestionnaireItemModel? questionnaireItem,
      List<ActionOnModel>? actionOn,
      List<AnswerOptionModel>? answerOption,
      List<EnableWhenModel>? enableWhen,
      List<AnswerItemWeightModel>? answerItemWeight,
      List<RelatedImageFHIRModel>? relatedImage});

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
    Object? shortText = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? quesExplanationText = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
    Object? actionOn = freezed,
    Object? answerOption = freezed,
    Object? enableWhen = freezed,
    Object? answerItemWeight = freezed,
    Object? relatedImage = freezed,
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
      shortText: freezed == shortText
          ? _value.shortText
          : shortText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      quesExplanationText: freezed == quesExplanationText
          ? _value.quesExplanationText
          : quesExplanationText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      relatedImage: freezed == relatedImage
          ? _value.relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
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
abstract class _$$QuestionnaireItemFHIRModelImplCopyWith<$Res>
    implements $QuestionnaireItemFHIRModelCopyWith<$Res> {
  factory _$$QuestionnaireItemFHIRModelImplCopyWith(
          _$QuestionnaireItemFHIRModelImpl value,
          $Res Function(_$QuestionnaireItemFHIRModelImpl) then) =
      __$$QuestionnaireItemFHIRModelImplCopyWithImpl<$Res>;
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
      String? shortText,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      String? quesExplanationText,
      QuestionnaireModel? questionnaire,
      QuestionnaireItemModel? questionnaireItem,
      List<ActionOnModel>? actionOn,
      List<AnswerOptionModel>? answerOption,
      List<EnableWhenModel>? enableWhen,
      List<AnswerItemWeightModel>? answerItemWeight,
      List<RelatedImageFHIRModel>? relatedImage});

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
class __$$QuestionnaireItemFHIRModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireItemFHIRModelCopyWithImpl<$Res,
        _$QuestionnaireItemFHIRModelImpl>
    implements _$$QuestionnaireItemFHIRModelImplCopyWith<$Res> {
  __$$QuestionnaireItemFHIRModelImplCopyWithImpl(
      _$QuestionnaireItemFHIRModelImpl _value,
      $Res Function(_$QuestionnaireItemFHIRModelImpl) _then)
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
    Object? shortText = freezed,
    Object? disabledDisplay = freezed,
    Object? answerConstraint = freezed,
    Object? ansewrValueSet = freezed,
    Object? initial = freezed,
    Object? quesExplanationText = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireItem = freezed,
    Object? actionOn = freezed,
    Object? answerOption = freezed,
    Object? enableWhen = freezed,
    Object? answerItemWeight = freezed,
    Object? relatedImage = freezed,
  }) {
    return _then(_$QuestionnaireItemFHIRModelImpl(
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
      shortText: freezed == shortText
          ? _value.shortText
          : shortText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      quesExplanationText: freezed == quesExplanationText
          ? _value.quesExplanationText
          : quesExplanationText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      relatedImage: freezed == relatedImage
          ? _value._relatedImage
          : relatedImage // ignore: cast_nullable_to_non_nullable
              as List<RelatedImageFHIRModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireItemFHIRModelImpl implements _QuestionnaireItemFHIRModel {
  const _$QuestionnaireItemFHIRModelImpl(
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
      this.shortText,
      this.disabledDisplay,
      this.answerConstraint,
      this.ansewrValueSet,
      this.initial,
      this.quesExplanationText,
      this.questionnaire,
      this.questionnaireItem,
      final List<ActionOnModel>? actionOn,
      final List<AnswerOptionModel>? answerOption,
      final List<EnableWhenModel>? enableWhen,
      final List<AnswerItemWeightModel>? answerItemWeight,
      final List<RelatedImageFHIRModel>? relatedImage})
      : _actionOn = actionOn,
        _answerOption = answerOption,
        _enableWhen = enableWhen,
        _answerItemWeight = answerItemWeight,
        _relatedImage = relatedImage;

  factory _$QuestionnaireItemFHIRModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionnaireItemFHIRModelImplFromJson(json);

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
  final String? shortText;
  @override
  final DisabledDisplay? disabledDisplay;
  @override
  final AnswerConstraint? answerConstraint;
  @override
  final AnswerValueSetModel? ansewrValueSet;
  @override
  final AnswerModel? initial;
  @override
  final String? quesExplanationText;
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
    return 'QuestionnaireItemFHIRModel(id: $id, linkId: $linkId, prefix: $prefix, text: $text, type: $type, enableBehaviour: $enableBehaviour, required: $required, repeats: $repeats, readOnly: $readOnly, maxlength: $maxlength, shortText: $shortText, disabledDisplay: $disabledDisplay, answerConstraint: $answerConstraint, ansewrValueSet: $ansewrValueSet, initial: $initial, quesExplanationText: $quesExplanationText, questionnaire: $questionnaire, questionnaireItem: $questionnaireItem, actionOn: $actionOn, answerOption: $answerOption, enableWhen: $enableWhen, answerItemWeight: $answerItemWeight, relatedImage: $relatedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireItemFHIRModelImpl &&
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
            (identical(other.shortText, shortText) ||
                other.shortText == shortText) &&
            (identical(other.disabledDisplay, disabledDisplay) ||
                other.disabledDisplay == disabledDisplay) &&
            (identical(other.answerConstraint, answerConstraint) ||
                other.answerConstraint == answerConstraint) &&
            (identical(other.ansewrValueSet, ansewrValueSet) ||
                other.ansewrValueSet == ansewrValueSet) &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.quesExplanationText, quesExplanationText) ||
                other.quesExplanationText == quesExplanationText) &&
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
                .equals(other._answerItemWeight, _answerItemWeight) &&
            const DeepCollectionEquality()
                .equals(other._relatedImage, _relatedImage));
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
        shortText,
        disabledDisplay,
        answerConstraint,
        ansewrValueSet,
        initial,
        quesExplanationText,
        questionnaire,
        questionnaireItem,
        const DeepCollectionEquality().hash(_actionOn),
        const DeepCollectionEquality().hash(_answerOption),
        const DeepCollectionEquality().hash(_enableWhen),
        const DeepCollectionEquality().hash(_answerItemWeight),
        const DeepCollectionEquality().hash(_relatedImage)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireItemFHIRModelImplCopyWith<_$QuestionnaireItemFHIRModelImpl>
      get copyWith => __$$QuestionnaireItemFHIRModelImplCopyWithImpl<
          _$QuestionnaireItemFHIRModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireItemFHIRModelImplToJson(
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
          final String? shortText,
          final DisabledDisplay? disabledDisplay,
          final AnswerConstraint? answerConstraint,
          final AnswerValueSetModel? ansewrValueSet,
          final AnswerModel? initial,
          final String? quesExplanationText,
          final QuestionnaireModel? questionnaire,
          final QuestionnaireItemModel? questionnaireItem,
          final List<ActionOnModel>? actionOn,
          final List<AnswerOptionModel>? answerOption,
          final List<EnableWhenModel>? enableWhen,
          final List<AnswerItemWeightModel>? answerItemWeight,
          final List<RelatedImageFHIRModel>? relatedImage}) =
      _$QuestionnaireItemFHIRModelImpl;

  factory _QuestionnaireItemFHIRModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireItemFHIRModelImpl.fromJson;

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
  String? get shortText;
  @override
  DisabledDisplay? get disabledDisplay;
  @override
  AnswerConstraint? get answerConstraint;
  @override
  AnswerValueSetModel? get ansewrValueSet;
  @override
  AnswerModel? get initial;
  @override
  String? get quesExplanationText;
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
  List<RelatedImageFHIRModel>? get relatedImage;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireItemFHIRModelImplCopyWith<_$QuestionnaireItemFHIRModelImpl>
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
abstract class _$$AnswerOptionModelImplCopyWith<$Res>
    implements $AnswerOptionModelCopyWith<$Res> {
  factory _$$AnswerOptionModelImplCopyWith(_$AnswerOptionModelImpl value,
          $Res Function(_$AnswerOptionModelImpl) then) =
      __$$AnswerOptionModelImplCopyWithImpl<$Res>;
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
class __$$AnswerOptionModelImplCopyWithImpl<$Res>
    extends _$AnswerOptionModelCopyWithImpl<$Res, _$AnswerOptionModelImpl>
    implements _$$AnswerOptionModelImplCopyWith<$Res> {
  __$$AnswerOptionModelImplCopyWithImpl(_$AnswerOptionModelImpl _value,
      $Res Function(_$AnswerOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? initialSelected = freezed,
    Object? answer = freezed,
    Object? questionnaireItem = freezed,
  }) {
    return _then(_$AnswerOptionModelImpl(
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
class _$AnswerOptionModelImpl implements _AnswerOptionModel {
  const _$AnswerOptionModelImpl(
      {this.id, this.initialSelected, this.answer, this.questionnaireItem});

  factory _$AnswerOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerOptionModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerOptionModelImpl &&
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
  _$$AnswerOptionModelImplCopyWith<_$AnswerOptionModelImpl> get copyWith =>
      __$$AnswerOptionModelImplCopyWithImpl<_$AnswerOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerOptionModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerOptionModel implements AnswerOptionModel {
  const factory _AnswerOptionModel(
          {final int? id,
          final bool? initialSelected,
          final AnswerModel? answer,
          final QuestionnaireItemModel? questionnaireItem}) =
      _$AnswerOptionModelImpl;

  factory _AnswerOptionModel.fromJson(Map<String, dynamic> json) =
      _$AnswerOptionModelImpl.fromJson;

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
  _$$AnswerOptionModelImplCopyWith<_$AnswerOptionModelImpl> get copyWith =>
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
abstract class _$$AnswerValueSetModelImplCopyWith<$Res>
    implements $AnswerValueSetModelCopyWith<$Res> {
  factory _$$AnswerValueSetModelImplCopyWith(_$AnswerValueSetModelImpl value,
          $Res Function(_$AnswerValueSetModelImpl) then) =
      __$$AnswerValueSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? valueId, String? value});
}

/// @nodoc
class __$$AnswerValueSetModelImplCopyWithImpl<$Res>
    extends _$AnswerValueSetModelCopyWithImpl<$Res, _$AnswerValueSetModelImpl>
    implements _$$AnswerValueSetModelImplCopyWith<$Res> {
  __$$AnswerValueSetModelImplCopyWithImpl(_$AnswerValueSetModelImpl _value,
      $Res Function(_$AnswerValueSetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? valueId = freezed,
    Object? value = freezed,
  }) {
    return _then(_$AnswerValueSetModelImpl(
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
class _$AnswerValueSetModelImpl implements _AnswerValueSetModel {
  const _$AnswerValueSetModelImpl({this.id, this.valueId, this.value});

  factory _$AnswerValueSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerValueSetModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerValueSetModelImpl &&
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
  _$$AnswerValueSetModelImplCopyWith<_$AnswerValueSetModelImpl> get copyWith =>
      __$$AnswerValueSetModelImplCopyWithImpl<_$AnswerValueSetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerValueSetModelImplToJson(
      this,
    );
  }
}

abstract class _AnswerValueSetModel implements AnswerValueSetModel {
  const factory _AnswerValueSetModel(
      {final int? id,
      final int? valueId,
      final String? value}) = _$AnswerValueSetModelImpl;

  factory _AnswerValueSetModel.fromJson(Map<String, dynamic> json) =
      _$AnswerValueSetModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get valueId;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$AnswerValueSetModelImplCopyWith<_$AnswerValueSetModelImpl> get copyWith =>
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
  String? get answerDisplayString => throw _privateConstructorUsedError;
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
      String? answerDisplayString,
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
    Object? answerDisplayString = freezed,
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
      answerDisplayString: freezed == answerDisplayString
          ? _value.answerDisplayString
          : answerDisplayString // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AnswerModelImplCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$AnswerModelImplCopyWith(
          _$AnswerModelImpl value, $Res Function(_$AnswerModelImpl) then) =
      __$$AnswerModelImplCopyWithImpl<$Res>;
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
      String? answerDisplayString,
      AnswerItemWeightModel? answerItemWeight});

  @override
  $AnswerItemWeightModelCopyWith<$Res>? get answerItemWeight;
}

/// @nodoc
class __$$AnswerModelImplCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$AnswerModelImpl>
    implements _$$AnswerModelImplCopyWith<$Res> {
  __$$AnswerModelImplCopyWithImpl(
      _$AnswerModelImpl _value, $Res Function(_$AnswerModelImpl) _then)
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
    Object? answerDisplayString = freezed,
    Object? answerItemWeight = freezed,
  }) {
    return _then(_$AnswerModelImpl(
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
      answerDisplayString: freezed == answerDisplayString
          ? _value.answerDisplayString
          : answerDisplayString // ignore: cast_nullable_to_non_nullable
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
class _$AnswerModelImpl implements _AnswerModel {
  const _$AnswerModelImpl(
      {this.id,
      this.answerBoolean,
      this.answerDecimal,
      this.answerInteger,
      @TimestampConverter() this.answerDateTime,
      @TimestampConverter() this.answerTime,
      this.answerString,
      this.answerDisplayString,
      this.answerItemWeight});

  factory _$AnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerModelImplFromJson(json);

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
  final String? answerDisplayString;
  @override
  final AnswerItemWeightModel? answerItemWeight;

  @override
  String toString() {
    return 'AnswerModel(id: $id, answerBoolean: $answerBoolean, answerDecimal: $answerDecimal, answerInteger: $answerInteger, answerDateTime: $answerDateTime, answerTime: $answerTime, answerString: $answerString, answerDisplayString: $answerDisplayString, answerItemWeight: $answerItemWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerModelImpl &&
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
            (identical(other.answerDisplayString, answerDisplayString) ||
                other.answerDisplayString == answerDisplayString) &&
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
      answerDisplayString,
      answerItemWeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
      __$$AnswerModelImplCopyWithImpl<_$AnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerModelImplToJson(
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
      final String? answerDisplayString,
      final AnswerItemWeightModel? answerItemWeight}) = _$AnswerModelImpl;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$AnswerModelImpl.fromJson;

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
  String? get answerDisplayString;
  @override
  AnswerItemWeightModel? get answerItemWeight;
  @override
  @JsonKey(ignore: true)
  _$$AnswerModelImplCopyWith<_$AnswerModelImpl> get copyWith =>
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
abstract class _$$AnswerItemWeightModelImplCopyWith<$Res>
    implements $AnswerItemWeightModelCopyWith<$Res> {
  factory _$$AnswerItemWeightModelImplCopyWith(
          _$AnswerItemWeightModelImpl value,
          $Res Function(_$AnswerItemWeightModelImpl) then) =
      __$$AnswerItemWeightModelImplCopyWithImpl<$Res>;
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
class __$$AnswerItemWeightModelImplCopyWithImpl<$Res>
    extends _$AnswerItemWeightModelCopyWithImpl<$Res,
        _$AnswerItemWeightModelImpl>
    implements _$$AnswerItemWeightModelImplCopyWith<$Res> {
  __$$AnswerItemWeightModelImplCopyWithImpl(_$AnswerItemWeightModelImpl _value,
      $Res Function(_$AnswerItemWeightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? answerId = freezed,
    Object? questionResponseWeight = freezed,
  }) {
    return _then(_$AnswerItemWeightModelImpl(
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
class _$AnswerItemWeightModelImpl implements _AnswerItemWeightModel {
  const _$AnswerItemWeightModelImpl(
      {this.id, this.value, this.answerId, this.questionResponseWeight});

  factory _$AnswerItemWeightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerItemWeightModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerItemWeightModelImpl &&
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
  _$$AnswerItemWeightModelImplCopyWith<_$AnswerItemWeightModelImpl>
      get copyWith => __$$AnswerItemWeightModelImplCopyWithImpl<
          _$AnswerItemWeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerItemWeightModelImplToJson(
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
      _$AnswerItemWeightModelImpl;

  factory _AnswerItemWeightModel.fromJson(Map<String, dynamic> json) =
      _$AnswerItemWeightModelImpl.fromJson;

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
  _$$AnswerItemWeightModelImplCopyWith<_$AnswerItemWeightModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$QuestionResponseWeightModelImplCopyWith<$Res>
    implements $QuestionResponseWeightModelCopyWith<$Res> {
  factory _$$QuestionResponseWeightModelImplCopyWith(
          _$QuestionResponseWeightModelImpl value,
          $Res Function(_$QuestionResponseWeightModelImpl) then) =
      __$$QuestionResponseWeightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int? quesId, bool? isRange, bool? isCompare, bool? isAbsolute});
}

/// @nodoc
class __$$QuestionResponseWeightModelImplCopyWithImpl<$Res>
    extends _$QuestionResponseWeightModelCopyWithImpl<$Res,
        _$QuestionResponseWeightModelImpl>
    implements _$$QuestionResponseWeightModelImplCopyWith<$Res> {
  __$$QuestionResponseWeightModelImplCopyWithImpl(
      _$QuestionResponseWeightModelImpl _value,
      $Res Function(_$QuestionResponseWeightModelImpl) _then)
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
    return _then(_$QuestionResponseWeightModelImpl(
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
class _$QuestionResponseWeightModelImpl
    implements _QuestionResponseWeightModel {
  const _$QuestionResponseWeightModelImpl(
      {this.id, this.quesId, this.isRange, this.isCompare, this.isAbsolute});

  factory _$QuestionResponseWeightModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionResponseWeightModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseWeightModelImpl &&
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
  _$$QuestionResponseWeightModelImplCopyWith<_$QuestionResponseWeightModelImpl>
      get copyWith => __$$QuestionResponseWeightModelImplCopyWithImpl<
          _$QuestionResponseWeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseWeightModelImplToJson(
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
      final bool? isAbsolute}) = _$QuestionResponseWeightModelImpl;

  factory _QuestionResponseWeightModel.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseWeightModelImpl.fromJson;

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
  _$$QuestionResponseWeightModelImplCopyWith<_$QuestionResponseWeightModelImpl>
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
abstract class _$$QuestionnaireItemModelImplCopyWith<$Res>
    implements $QuestionnaireItemModelCopyWith<$Res> {
  factory _$$QuestionnaireItemModelImplCopyWith(
          _$QuestionnaireItemModelImpl value,
          $Res Function(_$QuestionnaireItemModelImpl) then) =
      __$$QuestionnaireItemModelImplCopyWithImpl<$Res>;
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
class __$$QuestionnaireItemModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireItemModelCopyWithImpl<$Res,
        _$QuestionnaireItemModelImpl>
    implements _$$QuestionnaireItemModelImplCopyWith<$Res> {
  __$$QuestionnaireItemModelImplCopyWithImpl(
      _$QuestionnaireItemModelImpl _value,
      $Res Function(_$QuestionnaireItemModelImpl) _then)
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
    return _then(_$QuestionnaireItemModelImpl(
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
class _$QuestionnaireItemModelImpl implements _QuestionnaireItemModel {
  const _$QuestionnaireItemModelImpl(
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

  factory _$QuestionnaireItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireItemModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireItemModelImpl &&
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
  _$$QuestionnaireItemModelImplCopyWith<_$QuestionnaireItemModelImpl>
      get copyWith => __$$QuestionnaireItemModelImplCopyWithImpl<
          _$QuestionnaireItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireItemModelImplToJson(
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
      final QuestionnaireModel? questionnaire}) = _$QuestionnaireItemModelImpl;

  factory _QuestionnaireItemModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireItemModelImpl.fromJson;

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
  _$$QuestionnaireItemModelImplCopyWith<_$QuestionnaireItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ActionOnModelImplCopyWith<$Res>
    implements $ActionOnModelCopyWith<$Res> {
  factory _$$ActionOnModelImplCopyWith(
          _$ActionOnModelImpl value, $Res Function(_$ActionOnModelImpl) then) =
      __$$ActionOnModelImplCopyWithImpl<$Res>;
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
class __$$ActionOnModelImplCopyWithImpl<$Res>
    extends _$ActionOnModelCopyWithImpl<$Res, _$ActionOnModelImpl>
    implements _$$ActionOnModelImplCopyWith<$Res> {
  __$$ActionOnModelImplCopyWithImpl(
      _$ActionOnModelImpl _value, $Res Function(_$ActionOnModelImpl) _then)
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
    return _then(_$ActionOnModelImpl(
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
class _$ActionOnModelImpl implements _ActionOnModel {
  const _$ActionOnModelImpl(
      {this.id,
      this.operator,
      this.actionType,
      this.answer,
      this.questionnaireItem});

  factory _$ActionOnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionOnModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionOnModelImpl &&
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
  _$$ActionOnModelImplCopyWith<_$ActionOnModelImpl> get copyWith =>
      __$$ActionOnModelImplCopyWithImpl<_$ActionOnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionOnModelImplToJson(
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
      final QuestionnaireItemModel? questionnaireItem}) = _$ActionOnModelImpl;

  factory _ActionOnModel.fromJson(Map<String, dynamic> json) =
      _$ActionOnModelImpl.fromJson;

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
  _$$ActionOnModelImplCopyWith<_$ActionOnModelImpl> get copyWith =>
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
abstract class _$$EnableWhenModelImplCopyWith<$Res>
    implements $EnableWhenModelCopyWith<$Res> {
  factory _$$EnableWhenModelImplCopyWith(_$EnableWhenModelImpl value,
          $Res Function(_$EnableWhenModelImpl) then) =
      __$$EnableWhenModelImplCopyWithImpl<$Res>;
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
class __$$EnableWhenModelImplCopyWithImpl<$Res>
    extends _$EnableWhenModelCopyWithImpl<$Res, _$EnableWhenModelImpl>
    implements _$$EnableWhenModelImplCopyWith<$Res> {
  __$$EnableWhenModelImplCopyWithImpl(
      _$EnableWhenModelImpl _value, $Res Function(_$EnableWhenModelImpl) _then)
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
    return _then(_$EnableWhenModelImpl(
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
class _$EnableWhenModelImpl implements _EnableWhenModel {
  const _$EnableWhenModelImpl(
      {this.id,
      this.question,
      this.operator,
      this.answer,
      this.questionnaireItem});

  factory _$EnableWhenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnableWhenModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnableWhenModelImpl &&
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
  _$$EnableWhenModelImplCopyWith<_$EnableWhenModelImpl> get copyWith =>
      __$$EnableWhenModelImplCopyWithImpl<_$EnableWhenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnableWhenModelImplToJson(
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
      final QuestionnaireItemModel? questionnaireItem}) = _$EnableWhenModelImpl;

  factory _EnableWhenModel.fromJson(Map<String, dynamic> json) =
      _$EnableWhenModelImpl.fromJson;

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
  _$$EnableWhenModelImplCopyWith<_$EnableWhenModelImpl> get copyWith =>
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
abstract class _$$LanguageBasedTextModelImplCopyWith<$Res>
    implements $LanguageBasedTextModelCopyWith<$Res> {
  factory _$$LanguageBasedTextModelImplCopyWith(
          _$LanguageBasedTextModelImpl value,
          $Res Function(_$LanguageBasedTextModelImpl) then) =
      __$$LanguageBasedTextModelImplCopyWithImpl<$Res>;
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
class __$$LanguageBasedTextModelImplCopyWithImpl<$Res>
    extends _$LanguageBasedTextModelCopyWithImpl<$Res,
        _$LanguageBasedTextModelImpl>
    implements _$$LanguageBasedTextModelImplCopyWith<$Res> {
  __$$LanguageBasedTextModelImplCopyWithImpl(
      _$LanguageBasedTextModelImpl _value,
      $Res Function(_$LanguageBasedTextModelImpl) _then)
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
    return _then(_$LanguageBasedTextModelImpl(
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
class _$LanguageBasedTextModelImpl implements _LanguageBasedTextModel {
  const _$LanguageBasedTextModelImpl(
      {this.id, this.textId, this.langId, this.textValue, this.isDefault});

  factory _$LanguageBasedTextModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageBasedTextModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageBasedTextModelImpl &&
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
  _$$LanguageBasedTextModelImplCopyWith<_$LanguageBasedTextModelImpl>
      get copyWith => __$$LanguageBasedTextModelImplCopyWithImpl<
          _$LanguageBasedTextModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageBasedTextModelImplToJson(
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
      final bool? isDefault}) = _$LanguageBasedTextModelImpl;

  factory _LanguageBasedTextModel.fromJson(Map<String, dynamic> json) =
      _$LanguageBasedTextModelImpl.fromJson;

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
  _$$LanguageBasedTextModelImplCopyWith<_$LanguageBasedTextModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$ObservationValueWeightModelImplCopyWith<$Res>
    implements $ObservationValueWeightModelCopyWith<$Res> {
  factory _$$ObservationValueWeightModelImplCopyWith(
          _$ObservationValueWeightModelImpl value,
          $Res Function(_$ObservationValueWeightModelImpl) then) =
      __$$ObservationValueWeightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? observationId, int? organizationId, double? value});
}

/// @nodoc
class __$$ObservationValueWeightModelImplCopyWithImpl<$Res>
    extends _$ObservationValueWeightModelCopyWithImpl<$Res,
        _$ObservationValueWeightModelImpl>
    implements _$$ObservationValueWeightModelImplCopyWith<$Res> {
  __$$ObservationValueWeightModelImplCopyWithImpl(
      _$ObservationValueWeightModelImpl _value,
      $Res Function(_$ObservationValueWeightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? observationId = freezed,
    Object? organizationId = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ObservationValueWeightModelImpl(
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
class _$ObservationValueWeightModelImpl
    implements _ObservationValueWeightModel {
  const _$ObservationValueWeightModelImpl(
      {this.id, this.observationId, this.organizationId, this.value});

  factory _$ObservationValueWeightModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ObservationValueWeightModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObservationValueWeightModelImpl &&
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
  _$$ObservationValueWeightModelImplCopyWith<_$ObservationValueWeightModelImpl>
      get copyWith => __$$ObservationValueWeightModelImplCopyWithImpl<
          _$ObservationValueWeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObservationValueWeightModelImplToJson(
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
      final double? value}) = _$ObservationValueWeightModelImpl;

  factory _ObservationValueWeightModel.fromJson(Map<String, dynamic> json) =
      _$ObservationValueWeightModelImpl.fromJson;

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
  _$$ObservationValueWeightModelImplCopyWith<_$ObservationValueWeightModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
