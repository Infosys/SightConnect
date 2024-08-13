// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_form_data_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmitFormDataRequestModel _$SubmitFormDataRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SubmitFormDataRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SubmitFormDataRequestModel {
  FormData? get formData => throw _privateConstructorUsedError;
  String? get performerId => throw _privateConstructorUsedError;
  String? get performerRole => throw _privateConstructorUsedError;
  String? get verifiedById => throw _privateConstructorUsedError;
  String? get verifiedByRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitFormDataRequestModelCopyWith<SubmitFormDataRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFormDataRequestModelCopyWith<$Res> {
  factory $SubmitFormDataRequestModelCopyWith(SubmitFormDataRequestModel value,
          $Res Function(SubmitFormDataRequestModel) then) =
      _$SubmitFormDataRequestModelCopyWithImpl<$Res,
          SubmitFormDataRequestModel>;
  @useResult
  $Res call(
      {FormData? formData,
      String? performerId,
      String? performerRole,
      String? verifiedById,
      String? verifiedByRole});

  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class _$SubmitFormDataRequestModelCopyWithImpl<$Res,
        $Val extends SubmitFormDataRequestModel>
    implements $SubmitFormDataRequestModelCopyWith<$Res> {
  _$SubmitFormDataRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = freezed,
    Object? performerId = freezed,
    Object? performerRole = freezed,
    Object? verifiedById = freezed,
    Object? verifiedByRole = freezed,
  }) {
    return _then(_value.copyWith(
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as String?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedById: freezed == verifiedById
          ? _value.verifiedById
          : verifiedById // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedByRole: freezed == verifiedByRole
          ? _value.verifiedByRole
          : verifiedByRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormDataCopyWith<$Res>? get formData {
    if (_value.formData == null) {
      return null;
    }

    return $FormDataCopyWith<$Res>(_value.formData!, (value) {
      return _then(_value.copyWith(formData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFormDataRequestModelImplCopyWith<$Res>
    implements $SubmitFormDataRequestModelCopyWith<$Res> {
  factory _$$SubmitFormDataRequestModelImplCopyWith(
          _$SubmitFormDataRequestModelImpl value,
          $Res Function(_$SubmitFormDataRequestModelImpl) then) =
      __$$SubmitFormDataRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormData? formData,
      String? performerId,
      String? performerRole,
      String? verifiedById,
      String? verifiedByRole});

  @override
  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class __$$SubmitFormDataRequestModelImplCopyWithImpl<$Res>
    extends _$SubmitFormDataRequestModelCopyWithImpl<$Res,
        _$SubmitFormDataRequestModelImpl>
    implements _$$SubmitFormDataRequestModelImplCopyWith<$Res> {
  __$$SubmitFormDataRequestModelImplCopyWithImpl(
      _$SubmitFormDataRequestModelImpl _value,
      $Res Function(_$SubmitFormDataRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = freezed,
    Object? performerId = freezed,
    Object? performerRole = freezed,
    Object? verifiedById = freezed,
    Object? verifiedByRole = freezed,
  }) {
    return _then(_$SubmitFormDataRequestModelImpl(
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as String?,
      performerRole: freezed == performerRole
          ? _value.performerRole
          : performerRole // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedById: freezed == verifiedById
          ? _value.verifiedById
          : verifiedById // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedByRole: freezed == verifiedByRole
          ? _value.verifiedByRole
          : verifiedByRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitFormDataRequestModelImpl implements _SubmitFormDataRequestModel {
  const _$SubmitFormDataRequestModelImpl(
      {this.formData,
      this.performerId,
      this.performerRole,
      this.verifiedById,
      this.verifiedByRole});

  factory _$SubmitFormDataRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmitFormDataRequestModelImplFromJson(json);

  @override
  final FormData? formData;
  @override
  final String? performerId;
  @override
  final String? performerRole;
  @override
  final String? verifiedById;
  @override
  final String? verifiedByRole;

  @override
  String toString() {
    return 'SubmitFormDataRequestModel(formData: $formData, performerId: $performerId, performerRole: $performerRole, verifiedById: $verifiedById, verifiedByRole: $verifiedByRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFormDataRequestModelImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.performerId, performerId) ||
                other.performerId == performerId) &&
            (identical(other.performerRole, performerRole) ||
                other.performerRole == performerRole) &&
            (identical(other.verifiedById, verifiedById) ||
                other.verifiedById == verifiedById) &&
            (identical(other.verifiedByRole, verifiedByRole) ||
                other.verifiedByRole == verifiedByRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, formData, performerId,
      performerRole, verifiedById, verifiedByRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFormDataRequestModelImplCopyWith<_$SubmitFormDataRequestModelImpl>
      get copyWith => __$$SubmitFormDataRequestModelImplCopyWithImpl<
          _$SubmitFormDataRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitFormDataRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SubmitFormDataRequestModel
    implements SubmitFormDataRequestModel {
  const factory _SubmitFormDataRequestModel(
      {final FormData? formData,
      final String? performerId,
      final String? performerRole,
      final String? verifiedById,
      final String? verifiedByRole}) = _$SubmitFormDataRequestModelImpl;

  factory _SubmitFormDataRequestModel.fromJson(Map<String, dynamic> json) =
      _$SubmitFormDataRequestModelImpl.fromJson;

  @override
  FormData? get formData;
  @override
  String? get performerId;
  @override
  String? get performerRole;
  @override
  String? get verifiedById;
  @override
  String? get verifiedByRole;
  @override
  @JsonKey(ignore: true)
  _$$SubmitFormDataRequestModelImplCopyWith<_$SubmitFormDataRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FormData _$FormDataFromJson(Map<String, dynamic> json) {
  return _FormData.fromJson(json);
}

/// @nodoc
mixin _$FormData {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDataCopyWith<$Res> {
  factory $FormDataCopyWith(FormData value, $Res Function(FormData) then) =
      _$FormDataCopyWithImpl<$Res, FormData>;
}

/// @nodoc
class _$FormDataCopyWithImpl<$Res, $Val extends FormData>
    implements $FormDataCopyWith<$Res> {
  _$FormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormDataImplCopyWith<$Res> {
  factory _$$FormDataImplCopyWith(
          _$FormDataImpl value, $Res Function(_$FormDataImpl) then) =
      __$$FormDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormDataImplCopyWithImpl<$Res>
    extends _$FormDataCopyWithImpl<$Res, _$FormDataImpl>
    implements _$$FormDataImplCopyWith<$Res> {
  __$$FormDataImplCopyWithImpl(
      _$FormDataImpl _value, $Res Function(_$FormDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FormDataImpl implements _FormData {
  const _$FormDataImpl();

  factory _$FormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDataImplFromJson(json);

  @override
  String toString() {
    return 'FormData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormDataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDataImplToJson(
      this,
    );
  }
}

abstract class _FormData implements FormData {
  const factory _FormData() = _$FormDataImpl;

  factory _FormData.fromJson(Map<String, dynamic> json) =
      _$FormDataImpl.fromJson;
}
