// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_form_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmitFormDataResponseModel _$SubmitFormDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SubmitFormDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SubmitFormDataResponseModel {
  int? get encounterId => throw _privateConstructorUsedError;
  Forms? get forms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitFormDataResponseModelCopyWith<SubmitFormDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFormDataResponseModelCopyWith<$Res> {
  factory $SubmitFormDataResponseModelCopyWith(
          SubmitFormDataResponseModel value,
          $Res Function(SubmitFormDataResponseModel) then) =
      _$SubmitFormDataResponseModelCopyWithImpl<$Res,
          SubmitFormDataResponseModel>;
  @useResult
  $Res call({int? encounterId, Forms? forms});

  $FormsCopyWith<$Res>? get forms;
}

/// @nodoc
class _$SubmitFormDataResponseModelCopyWithImpl<$Res,
        $Val extends SubmitFormDataResponseModel>
    implements $SubmitFormDataResponseModelCopyWith<$Res> {
  _$SubmitFormDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? forms = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      forms: freezed == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as Forms?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormsCopyWith<$Res>? get forms {
    if (_value.forms == null) {
      return null;
    }

    return $FormsCopyWith<$Res>(_value.forms!, (value) {
      return _then(_value.copyWith(forms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFormDataResponseModelImplCopyWith<$Res>
    implements $SubmitFormDataResponseModelCopyWith<$Res> {
  factory _$$SubmitFormDataResponseModelImplCopyWith(
          _$SubmitFormDataResponseModelImpl value,
          $Res Function(_$SubmitFormDataResponseModelImpl) then) =
      __$$SubmitFormDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? encounterId, Forms? forms});

  @override
  $FormsCopyWith<$Res>? get forms;
}

/// @nodoc
class __$$SubmitFormDataResponseModelImplCopyWithImpl<$Res>
    extends _$SubmitFormDataResponseModelCopyWithImpl<$Res,
        _$SubmitFormDataResponseModelImpl>
    implements _$$SubmitFormDataResponseModelImplCopyWith<$Res> {
  __$$SubmitFormDataResponseModelImplCopyWithImpl(
      _$SubmitFormDataResponseModelImpl _value,
      $Res Function(_$SubmitFormDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? forms = freezed,
  }) {
    return _then(_$SubmitFormDataResponseModelImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      forms: freezed == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as Forms?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitFormDataResponseModelImpl
    implements _SubmitFormDataResponseModel {
  const _$SubmitFormDataResponseModelImpl({this.encounterId, this.forms});

  factory _$SubmitFormDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmitFormDataResponseModelImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final Forms? forms;

  @override
  String toString() {
    return 'SubmitFormDataResponseModel(encounterId: $encounterId, forms: $forms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFormDataResponseModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.forms, forms) || other.forms == forms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, encounterId, forms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFormDataResponseModelImplCopyWith<_$SubmitFormDataResponseModelImpl>
      get copyWith => __$$SubmitFormDataResponseModelImplCopyWithImpl<
          _$SubmitFormDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitFormDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SubmitFormDataResponseModel
    implements SubmitFormDataResponseModel {
  const factory _SubmitFormDataResponseModel(
      {final int? encounterId,
      final Forms? forms}) = _$SubmitFormDataResponseModelImpl;

  factory _SubmitFormDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$SubmitFormDataResponseModelImpl.fromJson;

  @override
  int? get encounterId;
  @override
  Forms? get forms;
  @override
  @JsonKey(ignore: true)
  _$$SubmitFormDataResponseModelImplCopyWith<_$SubmitFormDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Forms _$FormsFromJson(Map<String, dynamic> json) {
  return _Forms.fromJson(json);
}

/// @nodoc
mixin _$Forms {
  int? get identifier => throw _privateConstructorUsedError;
  IdentifierType? get identifierType => throw _privateConstructorUsedError;
  FormData? get formData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormsCopyWith<Forms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormsCopyWith<$Res> {
  factory $FormsCopyWith(Forms value, $Res Function(Forms) then) =
      _$FormsCopyWithImpl<$Res, Forms>;
  @useResult
  $Res call(
      {int? identifier, IdentifierType? identifierType, FormData? formData});

  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class _$FormsCopyWithImpl<$Res, $Val extends Forms>
    implements $FormsCopyWith<$Res> {
  _$FormsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? identifierType = freezed,
    Object? formData = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      identifierType: freezed == identifierType
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
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
abstract class _$$FormsImplCopyWith<$Res> implements $FormsCopyWith<$Res> {
  factory _$$FormsImplCopyWith(
          _$FormsImpl value, $Res Function(_$FormsImpl) then) =
      __$$FormsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier, IdentifierType? identifierType, FormData? formData});

  @override
  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class __$$FormsImplCopyWithImpl<$Res>
    extends _$FormsCopyWithImpl<$Res, _$FormsImpl>
    implements _$$FormsImplCopyWith<$Res> {
  __$$FormsImplCopyWithImpl(
      _$FormsImpl _value, $Res Function(_$FormsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? identifierType = freezed,
    Object? formData = freezed,
  }) {
    return _then(_$FormsImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      identifierType: freezed == identifierType
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormsImpl implements _Forms {
  const _$FormsImpl({this.identifier, this.identifierType, this.formData});

  factory _$FormsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormsImplFromJson(json);

  @override
  final int? identifier;
  @override
  final IdentifierType? identifierType;
  @override
  final FormData? formData;

  @override
  String toString() {
    return 'Forms(identifier: $identifier, identifierType: $identifierType, formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormsImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.identifierType, identifierType) ||
                other.identifierType == identifierType) &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, identifierType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormsImplCopyWith<_$FormsImpl> get copyWith =>
      __$$FormsImplCopyWithImpl<_$FormsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormsImplToJson(
      this,
    );
  }
}

abstract class _Forms implements Forms {
  const factory _Forms(
      {final int? identifier,
      final IdentifierType? identifierType,
      final FormData? formData}) = _$FormsImpl;

  factory _Forms.fromJson(Map<String, dynamic> json) = _$FormsImpl.fromJson;

  @override
  int? get identifier;
  @override
  IdentifierType? get identifierType;
  @override
  FormData? get formData;
  @override
  @JsonKey(ignore: true)
  _$$FormsImplCopyWith<_$FormsImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
