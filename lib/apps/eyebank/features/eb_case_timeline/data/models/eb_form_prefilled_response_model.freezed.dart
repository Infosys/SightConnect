// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eb_form_prefilled_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBFormPrefilledResponseModel _$EBFormPrefilledResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EBFormPrefilledResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EBFormPrefilledResponseModel {
  @JsonKey(name: "encounterId")
  int? get encounterId => throw _privateConstructorUsedError;
  @JsonKey(name: "tenantId")
  String? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: "assessmentName")
  String? get assessmentName => throw _privateConstructorUsedError;
  @JsonKey(name: "assessmentVersion")
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "forms")
  List<EBform>? get eBforms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBFormPrefilledResponseModelCopyWith<EBFormPrefilledResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBFormPrefilledResponseModelCopyWith<$Res> {
  factory $EBFormPrefilledResponseModelCopyWith(
          EBFormPrefilledResponseModel value,
          $Res Function(EBFormPrefilledResponseModel) then) =
      _$EBFormPrefilledResponseModelCopyWithImpl<$Res,
          EBFormPrefilledResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "encounterId") int? encounterId,
      @JsonKey(name: "tenantId") String? tenantId,
      @JsonKey(name: "assessmentName") String? assessmentName,
      @JsonKey(name: "assessmentVersion") String? assessmentVersion,
      @JsonKey(name: "forms") List<EBform>? eBforms});
}

/// @nodoc
class _$EBFormPrefilledResponseModelCopyWithImpl<$Res,
        $Val extends EBFormPrefilledResponseModel>
    implements $EBFormPrefilledResponseModelCopyWith<$Res> {
  _$EBFormPrefilledResponseModelCopyWithImpl(this._value, this._then);

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
    Object? eBforms = freezed,
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
              as String?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      eBforms: freezed == eBforms
          ? _value.eBforms
          : eBforms // ignore: cast_nullable_to_non_nullable
              as List<EBform>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EBFormPrefilledResponseModelImplCopyWith<$Res>
    implements $EBFormPrefilledResponseModelCopyWith<$Res> {
  factory _$$EBFormPrefilledResponseModelImplCopyWith(
          _$EBFormPrefilledResponseModelImpl value,
          $Res Function(_$EBFormPrefilledResponseModelImpl) then) =
      __$$EBFormPrefilledResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "encounterId") int? encounterId,
      @JsonKey(name: "tenantId") String? tenantId,
      @JsonKey(name: "assessmentName") String? assessmentName,
      @JsonKey(name: "assessmentVersion") String? assessmentVersion,
      @JsonKey(name: "forms") List<EBform>? eBforms});
}

/// @nodoc
class __$$EBFormPrefilledResponseModelImplCopyWithImpl<$Res>
    extends _$EBFormPrefilledResponseModelCopyWithImpl<$Res,
        _$EBFormPrefilledResponseModelImpl>
    implements _$$EBFormPrefilledResponseModelImplCopyWith<$Res> {
  __$$EBFormPrefilledResponseModelImplCopyWithImpl(
      _$EBFormPrefilledResponseModelImpl _value,
      $Res Function(_$EBFormPrefilledResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? tenantId = freezed,
    Object? assessmentName = freezed,
    Object? assessmentVersion = freezed,
    Object? eBforms = freezed,
  }) {
    return _then(_$EBFormPrefilledResponseModelImpl(
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
              as String?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      eBforms: freezed == eBforms
          ? _value._eBforms
          : eBforms // ignore: cast_nullable_to_non_nullable
              as List<EBform>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBFormPrefilledResponseModelImpl
    implements _EBFormPrefilledResponseModel {
  const _$EBFormPrefilledResponseModelImpl(
      {@JsonKey(name: "encounterId") this.encounterId,
      @JsonKey(name: "tenantId") this.tenantId,
      @JsonKey(name: "assessmentName") this.assessmentName,
      @JsonKey(name: "assessmentVersion") this.assessmentVersion,
      @JsonKey(name: "forms") final List<EBform>? eBforms})
      : _eBforms = eBforms;

  factory _$EBFormPrefilledResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EBFormPrefilledResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "encounterId")
  final int? encounterId;
  @override
  @JsonKey(name: "tenantId")
  final String? tenantId;
  @override
  @JsonKey(name: "assessmentName")
  final String? assessmentName;
  @override
  @JsonKey(name: "assessmentVersion")
  final String? assessmentVersion;
  final List<EBform>? _eBforms;
  @override
  @JsonKey(name: "forms")
  List<EBform>? get eBforms {
    final value = _eBforms;
    if (value == null) return null;
    if (_eBforms is EqualUnmodifiableListView) return _eBforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EBFormPrefilledResponseModel(encounterId: $encounterId, tenantId: $tenantId, assessmentName: $assessmentName, assessmentVersion: $assessmentVersion, eBforms: $eBforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBFormPrefilledResponseModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.assessmentName, assessmentName) ||
                other.assessmentName == assessmentName) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            const DeepCollectionEquality().equals(other._eBforms, _eBforms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      encounterId,
      tenantId,
      assessmentName,
      assessmentVersion,
      const DeepCollectionEquality().hash(_eBforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBFormPrefilledResponseModelImplCopyWith<
          _$EBFormPrefilledResponseModelImpl>
      get copyWith => __$$EBFormPrefilledResponseModelImplCopyWithImpl<
          _$EBFormPrefilledResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBFormPrefilledResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EBFormPrefilledResponseModel
    implements EBFormPrefilledResponseModel {
  const factory _EBFormPrefilledResponseModel(
          {@JsonKey(name: "encounterId") final int? encounterId,
          @JsonKey(name: "tenantId") final String? tenantId,
          @JsonKey(name: "assessmentName") final String? assessmentName,
          @JsonKey(name: "assessmentVersion") final String? assessmentVersion,
          @JsonKey(name: "forms") final List<EBform>? eBforms}) =
      _$EBFormPrefilledResponseModelImpl;

  factory _EBFormPrefilledResponseModel.fromJson(Map<String, dynamic> json) =
      _$EBFormPrefilledResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "encounterId")
  int? get encounterId;
  @override
  @JsonKey(name: "tenantId")
  String? get tenantId;
  @override
  @JsonKey(name: "assessmentName")
  String? get assessmentName;
  @override
  @JsonKey(name: "assessmentVersion")
  String? get assessmentVersion;
  @override
  @JsonKey(name: "forms")
  List<EBform>? get eBforms;
  @override
  @JsonKey(ignore: true)
  _$$EBFormPrefilledResponseModelImplCopyWith<
          _$EBFormPrefilledResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EBform _$EBformFromJson(Map<String, dynamic> json) {
  return _EBform.fromJson(json);
}

/// @nodoc
mixin _$EBform {
  @JsonKey(name: "identifier")
  int? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "identifierType")
  String? get identifierType => throw _privateConstructorUsedError;
  @JsonKey(name: "formData")
  EBformData? get eBformData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBformCopyWith<EBform> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBformCopyWith<$Res> {
  factory $EBformCopyWith(EBform value, $Res Function(EBform) then) =
      _$EBformCopyWithImpl<$Res, EBform>;
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") int? identifier,
      @JsonKey(name: "identifierType") String? identifierType,
      @JsonKey(name: "formData") EBformData? eBformData});

  $EBformDataCopyWith<$Res>? get eBformData;
}

/// @nodoc
class _$EBformCopyWithImpl<$Res, $Val extends EBform>
    implements $EBformCopyWith<$Res> {
  _$EBformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? identifierType = freezed,
    Object? eBformData = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      identifierType: freezed == identifierType
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String?,
      eBformData: freezed == eBformData
          ? _value.eBformData
          : eBformData // ignore: cast_nullable_to_non_nullable
              as EBformData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EBformDataCopyWith<$Res>? get eBformData {
    if (_value.eBformData == null) {
      return null;
    }

    return $EBformDataCopyWith<$Res>(_value.eBformData!, (value) {
      return _then(_value.copyWith(eBformData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EBformImplCopyWith<$Res> implements $EBformCopyWith<$Res> {
  factory _$$EBformImplCopyWith(
          _$EBformImpl value, $Res Function(_$EBformImpl) then) =
      __$$EBformImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "identifier") int? identifier,
      @JsonKey(name: "identifierType") String? identifierType,
      @JsonKey(name: "formData") EBformData? eBformData});

  @override
  $EBformDataCopyWith<$Res>? get eBformData;
}

/// @nodoc
class __$$EBformImplCopyWithImpl<$Res>
    extends _$EBformCopyWithImpl<$Res, _$EBformImpl>
    implements _$$EBformImplCopyWith<$Res> {
  __$$EBformImplCopyWithImpl(
      _$EBformImpl _value, $Res Function(_$EBformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? identifierType = freezed,
    Object? eBformData = freezed,
  }) {
    return _then(_$EBformImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      identifierType: freezed == identifierType
          ? _value.identifierType
          : identifierType // ignore: cast_nullable_to_non_nullable
              as String?,
      eBformData: freezed == eBformData
          ? _value.eBformData
          : eBformData // ignore: cast_nullable_to_non_nullable
              as EBformData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBformImpl implements _EBform {
  const _$EBformImpl(
      {@JsonKey(name: "identifier") this.identifier,
      @JsonKey(name: "identifierType") this.identifierType,
      @JsonKey(name: "formData") this.eBformData});

  factory _$EBformImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBformImplFromJson(json);

  @override
  @JsonKey(name: "identifier")
  final int? identifier;
  @override
  @JsonKey(name: "identifierType")
  final String? identifierType;
  @override
  @JsonKey(name: "formData")
  final EBformData? eBformData;

  @override
  String toString() {
    return 'EBform(identifier: $identifier, identifierType: $identifierType, eBformData: $eBformData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBformImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.identifierType, identifierType) ||
                other.identifierType == identifierType) &&
            (identical(other.eBformData, eBformData) ||
                other.eBformData == eBformData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, identifierType, eBformData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBformImplCopyWith<_$EBformImpl> get copyWith =>
      __$$EBformImplCopyWithImpl<_$EBformImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBformImplToJson(
      this,
    );
  }
}

abstract class _EBform implements EBform {
  const factory _EBform(
      {@JsonKey(name: "identifier") final int? identifier,
      @JsonKey(name: "identifierType") final String? identifierType,
      @JsonKey(name: "formData") final EBformData? eBformData}) = _$EBformImpl;

  factory _EBform.fromJson(Map<String, dynamic> json) = _$EBformImpl.fromJson;

  @override
  @JsonKey(name: "identifier")
  int? get identifier;
  @override
  @JsonKey(name: "identifierType")
  String? get identifierType;
  @override
  @JsonKey(name: "formData")
  EBformData? get eBformData;
  @override
  @JsonKey(ignore: true)
  _$$EBformImplCopyWith<_$EBformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EBformData _$EBformDataFromJson(Map<String, dynamic> json) {
  return _EBformData.fromJson(json);
}

/// @nodoc
mixin _$EBformData {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBformDataCopyWith<$Res> {
  factory $EBformDataCopyWith(
          EBformData value, $Res Function(EBformData) then) =
      _$EBformDataCopyWithImpl<$Res, EBformData>;
}

/// @nodoc
class _$EBformDataCopyWithImpl<$Res, $Val extends EBformData>
    implements $EBformDataCopyWith<$Res> {
  _$EBformDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EBformDataImplCopyWith<$Res> {
  factory _$$EBformDataImplCopyWith(
          _$EBformDataImpl value, $Res Function(_$EBformDataImpl) then) =
      __$$EBformDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EBformDataImplCopyWithImpl<$Res>
    extends _$EBformDataCopyWithImpl<$Res, _$EBformDataImpl>
    implements _$$EBformDataImplCopyWith<$Res> {
  __$$EBformDataImplCopyWithImpl(
      _$EBformDataImpl _value, $Res Function(_$EBformDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EBformDataImpl implements _EBformData {
  const _$EBformDataImpl();

  factory _$EBformDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBformDataImplFromJson(json);

  @override
  String toString() {
    return 'EBformData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EBformDataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EBformDataImplToJson(
      this,
    );
  }
}

abstract class _EBformData implements EBformData {
  const factory _EBformData() = _$EBformDataImpl;

  factory _EBformData.fromJson(Map<String, dynamic> json) =
      _$EBformDataImpl.fromJson;
}
