// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvalDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastReviewDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveFrom => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveTill => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  int? get publisherCode => throw _privateConstructorUsedError;
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
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
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
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
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
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
      this.description,
      this.version,
      @TimestampConverter() this.approvalDate,
      @TimestampConverter() this.lastReviewDate,
      @TimestampConverter() this.effectiveFrom,
      @TimestampConverter() this.effectiveTill,
      @TimestampConverter() this.creationDate,
      @TimestampConverter() this.lastModifiedDate,
      this.publisherCode,
      this.publisherType});

  factory _$_QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? version;
  @override
  @TimestampConverter()
  final DateTime? approvalDate;
  @override
  @TimestampConverter()
  final DateTime? lastReviewDate;
  @override
  @TimestampConverter()
  final DateTime? effectiveFrom;
  @override
  @TimestampConverter()
  final DateTime? effectiveTill;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  final DateTime? lastModifiedDate;
  @override
  final int? publisherCode;
  @override
  final String? publisherType;

  @override
  String toString() {
    return 'QuestionnaireModel(id: $id, name: $name, description: $description, version: $version, approvalDate: $approvalDate, lastReviewDate: $lastReviewDate, effectiveFrom: $effectiveFrom, effectiveTill: $effectiveTill, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.effectiveFrom, effectiveFrom) ||
                other.effectiveFrom == effectiveFrom) &&
            (identical(other.effectiveTill, effectiveTill) ||
                other.effectiveTill == effectiveTill) &&
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
      description,
      version,
      approvalDate,
      lastReviewDate,
      effectiveFrom,
      effectiveTill,
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
      final String? description,
      final String? version,
      @TimestampConverter() final DateTime? approvalDate,
      @TimestampConverter() final DateTime? lastReviewDate,
      @TimestampConverter() final DateTime? effectiveFrom,
      @TimestampConverter() final DateTime? effectiveTill,
      @TimestampConverter() final DateTime? creationDate,
      @TimestampConverter() final DateTime? lastModifiedDate,
      final int? publisherCode,
      final String? publisherType}) = _$_QuestionnaireModel;

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get version;
  @override
  @TimestampConverter()
  DateTime? get approvalDate;
  @override
  @TimestampConverter()
  DateTime? get lastReviewDate;
  @override
  @TimestampConverter()
  DateTime? get effectiveFrom;
  @override
  @TimestampConverter()
  DateTime? get effectiveTill;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @TimestampConverter()
  DateTime? get lastModifiedDate;
  @override
  int? get publisherCode;
  @override
  String? get publisherType;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireModelCopyWith<_$_QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}
