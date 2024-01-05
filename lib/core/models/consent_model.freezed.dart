// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsentModel _$ConsentModelFromJson(Map<String, dynamic> json) {
  return _ConsentModel.fromJson(json);
}

/// @nodoc
mixin _$ConsentModel {
  int get templateId => throw _privateConstructorUsedError;
  String get consentVersion => throw _privateConstructorUsedError;
  String get consentStatus => throw _privateConstructorUsedError;
  String get acknowledgeDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsentModelCopyWith<ConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentModelCopyWith<$Res> {
  factory $ConsentModelCopyWith(
          ConsentModel value, $Res Function(ConsentModel) then) =
      _$ConsentModelCopyWithImpl<$Res, ConsentModel>;
  @useResult
  $Res call(
      {int templateId,
      String consentVersion,
      String consentStatus,
      String acknowledgeDate});
}

/// @nodoc
class _$ConsentModelCopyWithImpl<$Res, $Val extends ConsentModel>
    implements $ConsentModelCopyWith<$Res> {
  _$ConsentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? consentVersion = null,
    Object? consentStatus = null,
    Object? acknowledgeDate = null,
  }) {
    return _then(_value.copyWith(
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
      consentVersion: null == consentVersion
          ? _value.consentVersion
          : consentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      consentStatus: null == consentStatus
          ? _value.consentStatus
          : consentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      acknowledgeDate: null == acknowledgeDate
          ? _value.acknowledgeDate
          : acknowledgeDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConsentModelCopyWith<$Res>
    implements $ConsentModelCopyWith<$Res> {
  factory _$$_ConsentModelCopyWith(
          _$_ConsentModel value, $Res Function(_$_ConsentModel) then) =
      __$$_ConsentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int templateId,
      String consentVersion,
      String consentStatus,
      String acknowledgeDate});
}

/// @nodoc
class __$$_ConsentModelCopyWithImpl<$Res>
    extends _$ConsentModelCopyWithImpl<$Res, _$_ConsentModel>
    implements _$$_ConsentModelCopyWith<$Res> {
  __$$_ConsentModelCopyWithImpl(
      _$_ConsentModel _value, $Res Function(_$_ConsentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? consentVersion = null,
    Object? consentStatus = null,
    Object? acknowledgeDate = null,
  }) {
    return _then(_$_ConsentModel(
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as int,
      consentVersion: null == consentVersion
          ? _value.consentVersion
          : consentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      consentStatus: null == consentStatus
          ? _value.consentStatus
          : consentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      acknowledgeDate: null == acknowledgeDate
          ? _value.acknowledgeDate
          : acknowledgeDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConsentModel implements _ConsentModel {
  const _$_ConsentModel(
      {required this.templateId,
      required this.consentVersion,
      required this.consentStatus,
      required this.acknowledgeDate});

  factory _$_ConsentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConsentModelFromJson(json);

  @override
  final int templateId;
  @override
  final String consentVersion;
  @override
  final String consentStatus;
  @override
  final String acknowledgeDate;

  @override
  String toString() {
    return 'ConsentModel(templateId: $templateId, consentVersion: $consentVersion, consentStatus: $consentStatus, acknowledgeDate: $acknowledgeDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsentModel &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.consentVersion, consentVersion) ||
                other.consentVersion == consentVersion) &&
            (identical(other.consentStatus, consentStatus) ||
                other.consentStatus == consentStatus) &&
            (identical(other.acknowledgeDate, acknowledgeDate) ||
                other.acknowledgeDate == acknowledgeDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, templateId, consentVersion, consentStatus, acknowledgeDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConsentModelCopyWith<_$_ConsentModel> get copyWith =>
      __$$_ConsentModelCopyWithImpl<_$_ConsentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConsentModelToJson(
      this,
    );
  }
}

abstract class _ConsentModel implements ConsentModel {
  const factory _ConsentModel(
      {required final int templateId,
      required final String consentVersion,
      required final String consentStatus,
      required final String acknowledgeDate}) = _$_ConsentModel;

  factory _ConsentModel.fromJson(Map<String, dynamic> json) =
      _$_ConsentModel.fromJson;

  @override
  int get templateId;
  @override
  String get consentVersion;
  @override
  String get consentStatus;
  @override
  String get acknowledgeDate;
  @override
  @JsonKey(ignore: true)
  _$$_ConsentModelCopyWith<_$_ConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
