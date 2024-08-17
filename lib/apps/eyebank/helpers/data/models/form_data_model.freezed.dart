// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormDataModel _$FormDataModelFromJson(Map<String, dynamic> json) {
  return _FormDataModel.fromJson(json);
}

/// @nodoc
mixin _$FormDataModel {
  int? get encounterId => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  EBStageName? get assessmentName => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  List<Form>? get forms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormDataModelCopyWith<FormDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormDataModelCopyWith<$Res> {
  factory $FormDataModelCopyWith(
          FormDataModel value, $Res Function(FormDataModel) then) =
      _$FormDataModelCopyWithImpl<$Res, FormDataModel>;
  @useResult
  $Res call(
      {int? encounterId,
      String? tenantId,
      EBStageName? assessmentName,
      String? assessmentVersion,
      List<Form>? forms});
}

/// @nodoc
class _$FormDataModelCopyWithImpl<$Res, $Val extends FormDataModel>
    implements $FormDataModelCopyWith<$Res> {
  _$FormDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? tenantId = freezed,
    Object? assessmentName = freezed,
    Object? assessmentVersion = freezed,
    Object? forms = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentName: freezed == assessmentName
          ? _value.assessmentName
          : assessmentName // ignore: cast_nullable_to_non_nullable
              as EBStageName?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      forms: freezed == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Form>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormDataModelImplCopyWith<$Res>
    implements $FormDataModelCopyWith<$Res> {
  factory _$$FormDataModelImplCopyWith(
          _$FormDataModelImpl value, $Res Function(_$FormDataModelImpl) then) =
      __$$FormDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      String? tenantId,
      EBStageName? assessmentName,
      String? assessmentVersion,
      List<Form>? forms});
}

/// @nodoc
class __$$FormDataModelImplCopyWithImpl<$Res>
    extends _$FormDataModelCopyWithImpl<$Res, _$FormDataModelImpl>
    implements _$$FormDataModelImplCopyWith<$Res> {
  __$$FormDataModelImplCopyWithImpl(
      _$FormDataModelImpl _value, $Res Function(_$FormDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? tenantId = freezed,
    Object? assessmentName = freezed,
    Object? assessmentVersion = freezed,
    Object? forms = freezed,
  }) {
    return _then(_$FormDataModelImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentName: freezed == assessmentName
          ? _value.assessmentName
          : assessmentName // ignore: cast_nullable_to_non_nullable
              as EBStageName?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      forms: freezed == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Form>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormDataModelImpl implements _FormDataModel {
  const _$FormDataModelImpl(
      {this.encounterId,
      this.tenantId,
      this.assessmentName,
      this.assessmentVersion,
      final List<Form>? forms})
      : _forms = forms;

  factory _$FormDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormDataModelImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final String? tenantId;
  @override
  final EBStageName? assessmentName;
  @override
  final String? assessmentVersion;
  final List<Form>? _forms;
  @override
  List<Form>? get forms {
    final value = _forms;
    if (value == null) return null;
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormDataModel(encounterId: $encounterId, tenantId: $tenantId, assessmentName: $assessmentName, assessmentVersion: $assessmentVersion, forms: $forms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDataModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.assessmentName, assessmentName) ||
                other.assessmentName == assessmentName) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            const DeepCollectionEquality().equals(other._forms, _forms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      encounterId,
      tenantId,
      assessmentName,
      assessmentVersion,
      const DeepCollectionEquality().hash(_forms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDataModelImplCopyWith<_$FormDataModelImpl> get copyWith =>
      __$$FormDataModelImplCopyWithImpl<_$FormDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormDataModelImplToJson(
      this,
    );
  }
}

abstract class _FormDataModel implements FormDataModel {
  const factory _FormDataModel(
      {final int? encounterId,
      final String? tenantId,
      final EBStageName? assessmentName,
      final String? assessmentVersion,
      final List<Form>? forms}) = _$FormDataModelImpl;

  factory _FormDataModel.fromJson(Map<String, dynamic> json) =
      _$FormDataModelImpl.fromJson;

  @override
  int? get encounterId;
  @override
  String? get tenantId;
  @override
  EBStageName? get assessmentName;
  @override
  String? get assessmentVersion;
  @override
  List<Form>? get forms;
  @override
  @JsonKey(ignore: true)
  _$$FormDataModelImplCopyWith<_$FormDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Form _$FormFromJson(Map<String, dynamic> json) {
  return _Form.fromJson(json);
}

/// @nodoc
mixin _$Form {
  int? get identifier => throw _privateConstructorUsedError;
  IdentifierType? get identifierType => throw _privateConstructorUsedError;
  FormData? get formData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormCopyWith<Form> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormCopyWith<$Res> {
  factory $FormCopyWith(Form value, $Res Function(Form) then) =
      _$FormCopyWithImpl<$Res, Form>;
  @useResult
  $Res call(
      {int? identifier, IdentifierType? identifierType, FormData? formData});

  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class _$FormCopyWithImpl<$Res, $Val extends Form>
    implements $FormCopyWith<$Res> {
  _$FormCopyWithImpl(this._value, this._then);

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
abstract class _$$FormImplCopyWith<$Res> implements $FormCopyWith<$Res> {
  factory _$$FormImplCopyWith(
          _$FormImpl value, $Res Function(_$FormImpl) then) =
      __$$FormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier, IdentifierType? identifierType, FormData? formData});

  @override
  $FormDataCopyWith<$Res>? get formData;
}

/// @nodoc
class __$$FormImplCopyWithImpl<$Res>
    extends _$FormCopyWithImpl<$Res, _$FormImpl>
    implements _$$FormImplCopyWith<$Res> {
  __$$FormImplCopyWithImpl(_$FormImpl _value, $Res Function(_$FormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? identifierType = freezed,
    Object? formData = freezed,
  }) {
    return _then(_$FormImpl(
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
class _$FormImpl implements _Form {
  const _$FormImpl({this.identifier, this.identifierType, this.formData});

  factory _$FormImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormImplFromJson(json);

  @override
  final int? identifier;
  @override
  final IdentifierType? identifierType;
  @override
  final FormData? formData;

  @override
  String toString() {
    return 'Form(identifier: $identifier, identifierType: $identifierType, formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormImpl &&
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
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
      __$$FormImplCopyWithImpl<_$FormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormImplToJson(
      this,
    );
  }
}

abstract class _Form implements Form {
  const factory _Form(
      {final int? identifier,
      final IdentifierType? identifierType,
      final FormData? formData}) = _$FormImpl;

  factory _Form.fromJson(Map<String, dynamic> json) = _$FormImpl.fromJson;

  @override
  int? get identifier;
  @override
  IdentifierType? get identifierType;
  @override
  FormData? get formData;
  @override
  @JsonKey(ignore: true)
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
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
