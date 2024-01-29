// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageAssessment _$TriageAssessmentFromJson(Map<String, dynamic> json) {
  return _TriageAssessment.fromJson(json);
}

/// @nodoc
mixin _$TriageAssessment {
  int? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get organizationCode => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get organ => throw _privateConstructorUsedError;
  List<QuestionnaireSection>? get questionnaireSections =>
      throw _privateConstructorUsedError;
  List<ObservationsSection>? get observationsSections =>
      throw _privateConstructorUsedError;
  List<MediaListSection>? get mediaListSections =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageAssessmentCopyWith<TriageAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageAssessmentCopyWith<$Res> {
  factory $TriageAssessmentCopyWith(
          TriageAssessment value, $Res Function(TriageAssessment) then) =
      _$TriageAssessmentCopyWithImpl<$Res, TriageAssessment>;
  @useResult
  $Res call(
      {int? code,
      String? name,
      String? organizationCode,
      String? condition,
      String? organ,
      List<QuestionnaireSection>? questionnaireSections,
      List<ObservationsSection>? observationsSections,
      List<MediaListSection>? mediaListSections});
}

/// @nodoc
class _$TriageAssessmentCopyWithImpl<$Res, $Val extends TriageAssessment>
    implements $TriageAssessmentCopyWith<$Res> {
  _$TriageAssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? organ = freezed,
    Object? questionnaireSections = freezed,
    Object? observationsSections = freezed,
    Object? mediaListSections = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaireSections: freezed == questionnaireSections
          ? _value.questionnaireSections
          : questionnaireSections // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireSection>?,
      observationsSections: freezed == observationsSections
          ? _value.observationsSections
          : observationsSections // ignore: cast_nullable_to_non_nullable
              as List<ObservationsSection>?,
      mediaListSections: freezed == mediaListSections
          ? _value.mediaListSections
          : mediaListSections // ignore: cast_nullable_to_non_nullable
              as List<MediaListSection>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageAssessmentCopyWith<$Res>
    implements $TriageAssessmentCopyWith<$Res> {
  factory _$$_TriageAssessmentCopyWith(
          _$_TriageAssessment value, $Res Function(_$_TriageAssessment) then) =
      __$$_TriageAssessmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? name,
      String? organizationCode,
      String? condition,
      String? organ,
      List<QuestionnaireSection>? questionnaireSections,
      List<ObservationsSection>? observationsSections,
      List<MediaListSection>? mediaListSections});
}

/// @nodoc
class __$$_TriageAssessmentCopyWithImpl<$Res>
    extends _$TriageAssessmentCopyWithImpl<$Res, _$_TriageAssessment>
    implements _$$_TriageAssessmentCopyWith<$Res> {
  __$$_TriageAssessmentCopyWithImpl(
      _$_TriageAssessment _value, $Res Function(_$_TriageAssessment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? organ = freezed,
    Object? questionnaireSections = freezed,
    Object? observationsSections = freezed,
    Object? mediaListSections = freezed,
  }) {
    return _then(_$_TriageAssessment(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaireSections: freezed == questionnaireSections
          ? _value._questionnaireSections
          : questionnaireSections // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireSection>?,
      observationsSections: freezed == observationsSections
          ? _value._observationsSections
          : observationsSections // ignore: cast_nullable_to_non_nullable
              as List<ObservationsSection>?,
      mediaListSections: freezed == mediaListSections
          ? _value._mediaListSections
          : mediaListSections // ignore: cast_nullable_to_non_nullable
              as List<MediaListSection>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriageAssessment implements _TriageAssessment {
  const _$_TriageAssessment(
      {this.code,
      this.name,
      this.organizationCode,
      this.condition,
      this.organ,
      final List<QuestionnaireSection>? questionnaireSections,
      final List<ObservationsSection>? observationsSections,
      final List<MediaListSection>? mediaListSections})
      : _questionnaireSections = questionnaireSections,
        _observationsSections = observationsSections,
        _mediaListSections = mediaListSections;

  factory _$_TriageAssessment.fromJson(Map<String, dynamic> json) =>
      _$$_TriageAssessmentFromJson(json);

  @override
  final int? code;
  @override
  final String? name;
  @override
  final String? organizationCode;
  @override
  final String? condition;
  @override
  final String? organ;
  final List<QuestionnaireSection>? _questionnaireSections;
  @override
  List<QuestionnaireSection>? get questionnaireSections {
    final value = _questionnaireSections;
    if (value == null) return null;
    if (_questionnaireSections is EqualUnmodifiableListView)
      return _questionnaireSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ObservationsSection>? _observationsSections;
  @override
  List<ObservationsSection>? get observationsSections {
    final value = _observationsSections;
    if (value == null) return null;
    if (_observationsSections is EqualUnmodifiableListView)
      return _observationsSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaListSection>? _mediaListSections;
  @override
  List<MediaListSection>? get mediaListSections {
    final value = _mediaListSections;
    if (value == null) return null;
    if (_mediaListSections is EqualUnmodifiableListView)
      return _mediaListSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageAssessment(code: $code, name: $name, organizationCode: $organizationCode, condition: $condition, organ: $organ, questionnaireSections: $questionnaireSections, observationsSections: $observationsSections, mediaListSections: $mediaListSections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageAssessment &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.organ, organ) || other.organ == organ) &&
            const DeepCollectionEquality()
                .equals(other._questionnaireSections, _questionnaireSections) &&
            const DeepCollectionEquality()
                .equals(other._observationsSections, _observationsSections) &&
            const DeepCollectionEquality()
                .equals(other._mediaListSections, _mediaListSections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      organizationCode,
      condition,
      organ,
      const DeepCollectionEquality().hash(_questionnaireSections),
      const DeepCollectionEquality().hash(_observationsSections),
      const DeepCollectionEquality().hash(_mediaListSections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageAssessmentCopyWith<_$_TriageAssessment> get copyWith =>
      __$$_TriageAssessmentCopyWithImpl<_$_TriageAssessment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageAssessmentToJson(
      this,
    );
  }
}

abstract class _TriageAssessment implements TriageAssessment {
  const factory _TriageAssessment(
      {final int? code,
      final String? name,
      final String? organizationCode,
      final String? condition,
      final String? organ,
      final List<QuestionnaireSection>? questionnaireSections,
      final List<ObservationsSection>? observationsSections,
      final List<MediaListSection>? mediaListSections}) = _$_TriageAssessment;

  factory _TriageAssessment.fromJson(Map<String, dynamic> json) =
      _$_TriageAssessment.fromJson;

  @override
  int? get code;
  @override
  String? get name;
  @override
  String? get organizationCode;
  @override
  String? get condition;
  @override
  String? get organ;
  @override
  List<QuestionnaireSection>? get questionnaireSections;
  @override
  List<ObservationsSection>? get observationsSections;
  @override
  List<MediaListSection>? get mediaListSections;
  @override
  @JsonKey(ignore: true)
  _$$_TriageAssessmentCopyWith<_$_TriageAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireSection _$QuestionnaireSectionFromJson(Map<String, dynamic> json) {
  return _QuestionnaireSection.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireSection {
  List<Questionnaire>? get questionnaire => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireSectionCopyWith<QuestionnaireSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSectionCopyWith<$Res> {
  factory $QuestionnaireSectionCopyWith(QuestionnaireSection value,
          $Res Function(QuestionnaireSection) then) =
      _$QuestionnaireSectionCopyWithImpl<$Res, QuestionnaireSection>;
  @useResult
  $Res call({List<Questionnaire>? questionnaire});
}

/// @nodoc
class _$QuestionnaireSectionCopyWithImpl<$Res,
        $Val extends QuestionnaireSection>
    implements $QuestionnaireSectionCopyWith<$Res> {
  _$QuestionnaireSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = freezed,
  }) {
    return _then(_value.copyWith(
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<Questionnaire>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireSectionCopyWith<$Res>
    implements $QuestionnaireSectionCopyWith<$Res> {
  factory _$$_QuestionnaireSectionCopyWith(_$_QuestionnaireSection value,
          $Res Function(_$_QuestionnaireSection) then) =
      __$$_QuestionnaireSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Questionnaire>? questionnaire});
}

/// @nodoc
class __$$_QuestionnaireSectionCopyWithImpl<$Res>
    extends _$QuestionnaireSectionCopyWithImpl<$Res, _$_QuestionnaireSection>
    implements _$$_QuestionnaireSectionCopyWith<$Res> {
  __$$_QuestionnaireSectionCopyWithImpl(_$_QuestionnaireSection _value,
      $Res Function(_$_QuestionnaireSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaire = freezed,
  }) {
    return _then(_$_QuestionnaireSection(
      questionnaire: freezed == questionnaire
          ? _value._questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as List<Questionnaire>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireSection implements _QuestionnaireSection {
  const _$_QuestionnaireSection({final List<Questionnaire>? questionnaire})
      : _questionnaire = questionnaire;

  factory _$_QuestionnaireSection.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireSectionFromJson(json);

  final List<Questionnaire>? _questionnaire;
  @override
  List<Questionnaire>? get questionnaire {
    final value = _questionnaire;
    if (value == null) return null;
    if (_questionnaire is EqualUnmodifiableListView) return _questionnaire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireSection(questionnaire: $questionnaire)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireSection &&
            const DeepCollectionEquality()
                .equals(other._questionnaire, _questionnaire));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionnaire));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireSectionCopyWith<_$_QuestionnaireSection> get copyWith =>
      __$$_QuestionnaireSectionCopyWithImpl<_$_QuestionnaireSection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireSectionToJson(
      this,
    );
  }
}

abstract class _QuestionnaireSection implements QuestionnaireSection {
  const factory _QuestionnaireSection(
      {final List<Questionnaire>? questionnaire}) = _$_QuestionnaireSection;

  factory _QuestionnaireSection.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireSection.fromJson;

  @override
  List<Questionnaire>? get questionnaire;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireSectionCopyWith<_$_QuestionnaireSection> get copyWith =>
      throw _privateConstructorUsedError;
}

Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) {
  return _Questionnaire.fromJson(json);
}

/// @nodoc
mixin _$Questionnaire {
  String? get description => throw _privateConstructorUsedError;
  List<Question>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireCopyWith<Questionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireCopyWith<$Res> {
  factory $QuestionnaireCopyWith(
          Questionnaire value, $Res Function(Questionnaire) then) =
      _$QuestionnaireCopyWithImpl<$Res, Questionnaire>;
  @useResult
  $Res call({String? description, List<Question>? questions});
}

/// @nodoc
class _$QuestionnaireCopyWithImpl<$Res, $Val extends Questionnaire>
    implements $QuestionnaireCopyWith<$Res> {
  _$QuestionnaireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireCopyWith<$Res>
    implements $QuestionnaireCopyWith<$Res> {
  factory _$$_QuestionnaireCopyWith(
          _$_Questionnaire value, $Res Function(_$_Questionnaire) then) =
      __$$_QuestionnaireCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<Question>? questions});
}

/// @nodoc
class __$$_QuestionnaireCopyWithImpl<$Res>
    extends _$QuestionnaireCopyWithImpl<$Res, _$_Questionnaire>
    implements _$$_QuestionnaireCopyWith<$Res> {
  __$$_QuestionnaireCopyWithImpl(
      _$_Questionnaire _value, $Res Function(_$_Questionnaire) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$_Questionnaire(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Questionnaire implements _Questionnaire {
  const _$_Questionnaire({this.description, final List<Question>? questions})
      : _questions = questions;

  factory _$_Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireFromJson(json);

  @override
  final String? description;
  final List<Question>? _questions;
  @override
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Questionnaire(description: $description, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Questionnaire &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireCopyWith<_$_Questionnaire> get copyWith =>
      __$$_QuestionnaireCopyWithImpl<_$_Questionnaire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireToJson(
      this,
    );
  }
}

abstract class _Questionnaire implements Questionnaire {
  const factory _Questionnaire(
      {final String? description,
      final List<Question>? questions}) = _$_Questionnaire;

  factory _Questionnaire.fromJson(Map<String, dynamic> json) =
      _$_Questionnaire.fromJson;

  @override
  String? get description;
  @override
  List<Question>? get questions;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireCopyWith<_$_Questionnaire> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int? get id => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get statement => throw _privateConstructorUsedError;
  String? get constraint => throw _privateConstructorUsedError;
  String? get defaultValue => throw _privateConstructorUsedError;
  bool? get mandatory => throw _privateConstructorUsedError;
  List<ActionOn>? get actionOn => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int? id,
      int? code,
      String? statement,
      String? constraint,
      String? defaultValue,
      bool? mandatory,
      List<ActionOn>? actionOn,
      int? weight});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? statement = freezed,
    Object? constraint = freezed,
    Object? defaultValue = freezed,
    Object? mandatory = freezed,
    Object? actionOn = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: freezed == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      actionOn: freezed == actionOn
          ? _value.actionOn
          : actionOn // ignore: cast_nullable_to_non_nullable
              as List<ActionOn>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? code,
      String? statement,
      String? constraint,
      String? defaultValue,
      bool? mandatory,
      List<ActionOn>? actionOn,
      int? weight});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? statement = freezed,
    Object? constraint = freezed,
    Object? defaultValue = freezed,
    Object? mandatory = freezed,
    Object? actionOn = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_Question(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      mandatory: freezed == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      actionOn: freezed == actionOn
          ? _value._actionOn
          : actionOn // ignore: cast_nullable_to_non_nullable
              as List<ActionOn>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {this.id,
      this.code,
      this.statement,
      this.constraint,
      this.defaultValue,
      this.mandatory,
      final List<ActionOn>? actionOn,
      this.weight})
      : _actionOn = actionOn;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final int? id;
  @override
  final int? code;
  @override
  final String? statement;
  @override
  final String? constraint;
  @override
  final String? defaultValue;
  @override
  final bool? mandatory;
  final List<ActionOn>? _actionOn;
  @override
  List<ActionOn>? get actionOn {
    final value = _actionOn;
    if (value == null) return null;
    if (_actionOn is EqualUnmodifiableListView) return _actionOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? weight;

  @override
  String toString() {
    return 'Question(id: $id, code: $code, statement: $statement, constraint: $constraint, defaultValue: $defaultValue, mandatory: $mandatory, actionOn: $actionOn, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.constraint, constraint) ||
                other.constraint == constraint) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.mandatory, mandatory) ||
                other.mandatory == mandatory) &&
            const DeepCollectionEquality().equals(other._actionOn, _actionOn) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      statement,
      constraint,
      defaultValue,
      mandatory,
      const DeepCollectionEquality().hash(_actionOn),
      weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {final int? id,
      final int? code,
      final String? statement,
      final String? constraint,
      final String? defaultValue,
      final bool? mandatory,
      final List<ActionOn>? actionOn,
      final int? weight}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  int? get id;
  @override
  int? get code;
  @override
  String? get statement;
  @override
  String? get constraint;
  @override
  String? get defaultValue;
  @override
  bool? get mandatory;
  @override
  List<ActionOn>? get actionOn;
  @override
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionOn _$ActionOnFromJson(Map<String, dynamic> json) {
  return _ActionOn.fromJson(json);
}

/// @nodoc
mixin _$ActionOn {
  String? get operator => throw _privateConstructorUsedError;
  String? get actionType => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionOnCopyWith<ActionOn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionOnCopyWith<$Res> {
  factory $ActionOnCopyWith(ActionOn value, $Res Function(ActionOn) then) =
      _$ActionOnCopyWithImpl<$Res, ActionOn>;
  @useResult
  $Res call({String? operator, String? actionType, String? answer});
}

/// @nodoc
class _$ActionOnCopyWithImpl<$Res, $Val extends ActionOn>
    implements $ActionOnCopyWith<$Res> {
  _$ActionOnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operator = freezed,
    Object? actionType = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionOnCopyWith<$Res> implements $ActionOnCopyWith<$Res> {
  factory _$$_ActionOnCopyWith(
          _$_ActionOn value, $Res Function(_$_ActionOn) then) =
      __$$_ActionOnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? operator, String? actionType, String? answer});
}

/// @nodoc
class __$$_ActionOnCopyWithImpl<$Res>
    extends _$ActionOnCopyWithImpl<$Res, _$_ActionOn>
    implements _$$_ActionOnCopyWith<$Res> {
  __$$_ActionOnCopyWithImpl(
      _$_ActionOn _value, $Res Function(_$_ActionOn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operator = freezed,
    Object? actionType = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_ActionOn(
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionOn implements _ActionOn {
  const _$_ActionOn({this.operator, this.actionType, this.answer});

  factory _$_ActionOn.fromJson(Map<String, dynamic> json) =>
      _$$_ActionOnFromJson(json);

  @override
  final String? operator;
  @override
  final String? actionType;
  @override
  final String? answer;

  @override
  String toString() {
    return 'ActionOn(operator: $operator, actionType: $actionType, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionOn &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, operator, actionType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionOnCopyWith<_$_ActionOn> get copyWith =>
      __$$_ActionOnCopyWithImpl<_$_ActionOn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionOnToJson(
      this,
    );
  }
}

abstract class _ActionOn implements ActionOn {
  const factory _ActionOn(
      {final String? operator,
      final String? actionType,
      final String? answer}) = _$_ActionOn;

  factory _ActionOn.fromJson(Map<String, dynamic> json) = _$_ActionOn.fromJson;

  @override
  String? get operator;
  @override
  String? get actionType;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_ActionOnCopyWith<_$_ActionOn> get copyWith =>
      throw _privateConstructorUsedError;
}

ObservationsSection _$ObservationsSectionFromJson(Map<String, dynamic> json) {
  return _ObservationsSection.fromJson(json);
}

/// @nodoc
mixin _$ObservationsSection {
  String? get description => throw _privateConstructorUsedError;
  List<IndividualMeasure>? get individualMeasure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationsSectionCopyWith<ObservationsSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationsSectionCopyWith<$Res> {
  factory $ObservationsSectionCopyWith(
          ObservationsSection value, $Res Function(ObservationsSection) then) =
      _$ObservationsSectionCopyWithImpl<$Res, ObservationsSection>;
  @useResult
  $Res call({String? description, List<IndividualMeasure>? individualMeasure});
}

/// @nodoc
class _$ObservationsSectionCopyWithImpl<$Res, $Val extends ObservationsSection>
    implements $ObservationsSectionCopyWith<$Res> {
  _$ObservationsSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? individualMeasure = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      individualMeasure: freezed == individualMeasure
          ? _value.individualMeasure
          : individualMeasure // ignore: cast_nullable_to_non_nullable
              as List<IndividualMeasure>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationsSectionCopyWith<$Res>
    implements $ObservationsSectionCopyWith<$Res> {
  factory _$$_ObservationsSectionCopyWith(_$_ObservationsSection value,
          $Res Function(_$_ObservationsSection) then) =
      __$$_ObservationsSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<IndividualMeasure>? individualMeasure});
}

/// @nodoc
class __$$_ObservationsSectionCopyWithImpl<$Res>
    extends _$ObservationsSectionCopyWithImpl<$Res, _$_ObservationsSection>
    implements _$$_ObservationsSectionCopyWith<$Res> {
  __$$_ObservationsSectionCopyWithImpl(_$_ObservationsSection _value,
      $Res Function(_$_ObservationsSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? individualMeasure = freezed,
  }) {
    return _then(_$_ObservationsSection(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      individualMeasure: freezed == individualMeasure
          ? _value._individualMeasure
          : individualMeasure // ignore: cast_nullable_to_non_nullable
              as List<IndividualMeasure>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationsSection implements _ObservationsSection {
  const _$_ObservationsSection(
      {this.description, final List<IndividualMeasure>? individualMeasure})
      : _individualMeasure = individualMeasure;

  factory _$_ObservationsSection.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationsSectionFromJson(json);

  @override
  final String? description;
  final List<IndividualMeasure>? _individualMeasure;
  @override
  List<IndividualMeasure>? get individualMeasure {
    final value = _individualMeasure;
    if (value == null) return null;
    if (_individualMeasure is EqualUnmodifiableListView)
      return _individualMeasure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObservationsSection(description: $description, individualMeasure: $individualMeasure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationsSection &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._individualMeasure, _individualMeasure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_individualMeasure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationsSectionCopyWith<_$_ObservationsSection> get copyWith =>
      __$$_ObservationsSectionCopyWithImpl<_$_ObservationsSection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationsSectionToJson(
      this,
    );
  }
}

abstract class _ObservationsSection implements ObservationsSection {
  const factory _ObservationsSection(
          {final String? description,
          final List<IndividualMeasure>? individualMeasure}) =
      _$_ObservationsSection;

  factory _ObservationsSection.fromJson(Map<String, dynamic> json) =
      _$_ObservationsSection.fromJson;

  @override
  String? get description;
  @override
  List<IndividualMeasure>? get individualMeasure;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationsSectionCopyWith<_$_ObservationsSection> get copyWith =>
      throw _privateConstructorUsedError;
}

IndividualMeasure _$IndividualMeasureFromJson(Map<String, dynamic> json) {
  return _IndividualMeasure.fromJson(json);
}

/// @nodoc
mixin _$IndividualMeasure {
  int? get observationCode => throw _privateConstructorUsedError;
  String? get statement => throw _privateConstructorUsedError;
  String? get valueType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndividualMeasureCopyWith<IndividualMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualMeasureCopyWith<$Res> {
  factory $IndividualMeasureCopyWith(
          IndividualMeasure value, $Res Function(IndividualMeasure) then) =
      _$IndividualMeasureCopyWithImpl<$Res, IndividualMeasure>;
  @useResult
  $Res call({int? observationCode, String? statement, String? valueType});
}

/// @nodoc
class _$IndividualMeasureCopyWithImpl<$Res, $Val extends IndividualMeasure>
    implements $IndividualMeasureCopyWith<$Res> {
  _$IndividualMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? statement = freezed,
    Object? valueType = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IndividualMeasureCopyWith<$Res>
    implements $IndividualMeasureCopyWith<$Res> {
  factory _$$_IndividualMeasureCopyWith(_$_IndividualMeasure value,
          $Res Function(_$_IndividualMeasure) then) =
      __$$_IndividualMeasureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? observationCode, String? statement, String? valueType});
}

/// @nodoc
class __$$_IndividualMeasureCopyWithImpl<$Res>
    extends _$IndividualMeasureCopyWithImpl<$Res, _$_IndividualMeasure>
    implements _$$_IndividualMeasureCopyWith<$Res> {
  __$$_IndividualMeasureCopyWithImpl(
      _$_IndividualMeasure _value, $Res Function(_$_IndividualMeasure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? statement = freezed,
    Object? valueType = freezed,
  }) {
    return _then(_$_IndividualMeasure(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndividualMeasure implements _IndividualMeasure {
  const _$_IndividualMeasure(
      {this.observationCode, this.statement, this.valueType});

  factory _$_IndividualMeasure.fromJson(Map<String, dynamic> json) =>
      _$$_IndividualMeasureFromJson(json);

  @override
  final int? observationCode;
  @override
  final String? statement;
  @override
  final String? valueType;

  @override
  String toString() {
    return 'IndividualMeasure(observationCode: $observationCode, statement: $statement, valueType: $valueType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndividualMeasure &&
            (identical(other.observationCode, observationCode) ||
                other.observationCode == observationCode) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, observationCode, statement, valueType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndividualMeasureCopyWith<_$_IndividualMeasure> get copyWith =>
      __$$_IndividualMeasureCopyWithImpl<_$_IndividualMeasure>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndividualMeasureToJson(
      this,
    );
  }
}

abstract class _IndividualMeasure implements IndividualMeasure {
  const factory _IndividualMeasure(
      {final int? observationCode,
      final String? statement,
      final String? valueType}) = _$_IndividualMeasure;

  factory _IndividualMeasure.fromJson(Map<String, dynamic> json) =
      _$_IndividualMeasure.fromJson;

  @override
  int? get observationCode;
  @override
  String? get statement;
  @override
  String? get valueType;
  @override
  @JsonKey(ignore: true)
  _$$_IndividualMeasureCopyWith<_$_IndividualMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaListSection _$MediaListSectionFromJson(Map<String, dynamic> json) {
  return _MediaListSection.fromJson(json);
}

/// @nodoc
mixin _$MediaListSection {
  int? get mediaCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get maxSize => throw _privateConstructorUsedError;
  String? get fileTpe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListSectionCopyWith<MediaListSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListSectionCopyWith<$Res> {
  factory $MediaListSectionCopyWith(
          MediaListSection value, $Res Function(MediaListSection) then) =
      _$MediaListSectionCopyWithImpl<$Res, MediaListSection>;
  @useResult
  $Res call(
      {int? mediaCode,
      String? description,
      String? type,
      String? maxSize,
      String? fileTpe});
}

/// @nodoc
class _$MediaListSectionCopyWithImpl<$Res, $Val extends MediaListSection>
    implements $MediaListSectionCopyWith<$Res> {
  _$MediaListSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileTpe = freezed,
  }) {
    return _then(_value.copyWith(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fileTpe: freezed == fileTpe
          ? _value.fileTpe
          : fileTpe // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaListSectionCopyWith<$Res>
    implements $MediaListSectionCopyWith<$Res> {
  factory _$$_MediaListSectionCopyWith(
          _$_MediaListSection value, $Res Function(_$_MediaListSection) then) =
      __$$_MediaListSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mediaCode,
      String? description,
      String? type,
      String? maxSize,
      String? fileTpe});
}

/// @nodoc
class __$$_MediaListSectionCopyWithImpl<$Res>
    extends _$MediaListSectionCopyWithImpl<$Res, _$_MediaListSection>
    implements _$$_MediaListSectionCopyWith<$Res> {
  __$$_MediaListSectionCopyWithImpl(
      _$_MediaListSection _value, $Res Function(_$_MediaListSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileTpe = freezed,
  }) {
    return _then(_$_MediaListSection(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as String?,
      fileTpe: freezed == fileTpe
          ? _value.fileTpe
          : fileTpe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListSection implements _MediaListSection {
  const _$_MediaListSection(
      {this.mediaCode,
      this.description,
      this.type,
      this.maxSize,
      this.fileTpe});

  factory _$_MediaListSection.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListSectionFromJson(json);

  @override
  final int? mediaCode;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? maxSize;
  @override
  final String? fileTpe;

  @override
  String toString() {
    return 'MediaListSection(mediaCode: $mediaCode, description: $description, type: $type, maxSize: $maxSize, fileTpe: $fileTpe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListSection &&
            (identical(other.mediaCode, mediaCode) ||
                other.mediaCode == mediaCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.fileTpe, fileTpe) || other.fileTpe == fileTpe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mediaCode, description, type, maxSize, fileTpe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListSectionCopyWith<_$_MediaListSection> get copyWith =>
      __$$_MediaListSectionCopyWithImpl<_$_MediaListSection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListSectionToJson(
      this,
    );
  }
}

abstract class _MediaListSection implements MediaListSection {
  const factory _MediaListSection(
      {final int? mediaCode,
      final String? description,
      final String? type,
      final String? maxSize,
      final String? fileTpe}) = _$_MediaListSection;

  factory _MediaListSection.fromJson(Map<String, dynamic> json) =
      _$_MediaListSection.fromJson;

  @override
  int? get mediaCode;
  @override
  String? get description;
  @override
  String? get type;
  @override
  String? get maxSize;
  @override
  String? get fileTpe;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListSectionCopyWith<_$_MediaListSection> get copyWith =>
      throw _privateConstructorUsedError;
}
