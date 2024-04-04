// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vision_center_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FacilityModel _$FacilityModelFromJson(Map<String, dynamic> json) {
  return _FacilityModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityModel {
  int? get organizationProfileId =>
      throw _privateConstructorUsedError; // Nullable
  String? get trackingId => throw _privateConstructorUsedError;
  String? get facilityId => throw _privateConstructorUsedError;
  String? get facilityType => throw _privateConstructorUsedError;
  TenantModel? get tenant => throw _privateConstructorUsedError; // Nullable
  FacilityInformationModel? get facilityInformation =>
      throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityModelCopyWith<FacilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityModelCopyWith<$Res> {
  factory $FacilityModelCopyWith(
          FacilityModel value, $Res Function(FacilityModel) then) =
      _$FacilityModelCopyWithImpl<$Res, FacilityModel>;
  @useResult
  $Res call(
      {int? organizationProfileId,
      String? trackingId,
      String? facilityId,
      String? facilityType,
      TenantModel? tenant,
      FacilityInformationModel? facilityInformation,
      String? osid});

  $TenantModelCopyWith<$Res>? get tenant;
  $FacilityInformationModelCopyWith<$Res>? get facilityInformation;
}

/// @nodoc
class _$FacilityModelCopyWithImpl<$Res, $Val extends FacilityModel>
    implements $FacilityModelCopyWith<$Res> {
  _$FacilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationProfileId = freezed,
    Object? trackingId = freezed,
    Object? facilityId = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? facilityInformation = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      organizationProfileId: freezed == organizationProfileId
          ? _value.organizationProfileId
          : organizationProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as TenantModel?,
      facilityInformation: freezed == facilityInformation
          ? _value.facilityInformation
          : facilityInformation // ignore: cast_nullable_to_non_nullable
              as FacilityInformationModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TenantModelCopyWith<$Res>? get tenant {
    if (_value.tenant == null) {
      return null;
    }

    return $TenantModelCopyWith<$Res>(_value.tenant!, (value) {
      return _then(_value.copyWith(tenant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityInformationModelCopyWith<$Res>? get facilityInformation {
    if (_value.facilityInformation == null) {
      return null;
    }

    return $FacilityInformationModelCopyWith<$Res>(_value.facilityInformation!,
        (value) {
      return _then(_value.copyWith(facilityInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacilityModelImplCopyWith<$Res>
    implements $FacilityModelCopyWith<$Res> {
  factory _$$FacilityModelImplCopyWith(
          _$FacilityModelImpl value, $Res Function(_$FacilityModelImpl) then) =
      __$$FacilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? organizationProfileId,
      String? trackingId,
      String? facilityId,
      String? facilityType,
      TenantModel? tenant,
      FacilityInformationModel? facilityInformation,
      String? osid});

  @override
  $TenantModelCopyWith<$Res>? get tenant;
  @override
  $FacilityInformationModelCopyWith<$Res>? get facilityInformation;
}

/// @nodoc
class __$$FacilityModelImplCopyWithImpl<$Res>
    extends _$FacilityModelCopyWithImpl<$Res, _$FacilityModelImpl>
    implements _$$FacilityModelImplCopyWith<$Res> {
  __$$FacilityModelImplCopyWithImpl(
      _$FacilityModelImpl _value, $Res Function(_$FacilityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationProfileId = freezed,
    Object? trackingId = freezed,
    Object? facilityId = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? facilityInformation = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$FacilityModelImpl(
      organizationProfileId: freezed == organizationProfileId
          ? _value.organizationProfileId
          : organizationProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityId: freezed == facilityId
          ? _value.facilityId
          : facilityId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as TenantModel?,
      facilityInformation: freezed == facilityInformation
          ? _value.facilityInformation
          : facilityInformation // ignore: cast_nullable_to_non_nullable
              as FacilityInformationModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityModelImpl implements _FacilityModel {
  const _$FacilityModelImpl(
      {this.organizationProfileId,
      this.trackingId,
      this.facilityId,
      this.facilityType,
      this.tenant,
      this.facilityInformation,
      this.osid});

  factory _$FacilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityModelImplFromJson(json);

  @override
  final int? organizationProfileId;
// Nullable
  @override
  final String? trackingId;
  @override
  final String? facilityId;
  @override
  final String? facilityType;
  @override
  final TenantModel? tenant;
// Nullable
  @override
  final FacilityInformationModel? facilityInformation;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityModel(organizationProfileId: $organizationProfileId, trackingId: $trackingId, facilityId: $facilityId, facilityType: $facilityType, tenant: $tenant, facilityInformation: $facilityInformation, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityModelImpl &&
            (identical(other.organizationProfileId, organizationProfileId) ||
                other.organizationProfileId == organizationProfileId) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.facilityId, facilityId) ||
                other.facilityId == facilityId) &&
            (identical(other.facilityType, facilityType) ||
                other.facilityType == facilityType) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.facilityInformation, facilityInformation) ||
                other.facilityInformation == facilityInformation) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, organizationProfileId,
      trackingId, facilityId, facilityType, tenant, facilityInformation, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityModelImplCopyWith<_$FacilityModelImpl> get copyWith =>
      __$$FacilityModelImplCopyWithImpl<_$FacilityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityModel implements FacilityModel {
  const factory _FacilityModel(
      {final int? organizationProfileId,
      final String? trackingId,
      final String? facilityId,
      final String? facilityType,
      final TenantModel? tenant,
      final FacilityInformationModel? facilityInformation,
      final String? osid}) = _$FacilityModelImpl;

  factory _FacilityModel.fromJson(Map<String, dynamic> json) =
      _$FacilityModelImpl.fromJson;

  @override
  int? get organizationProfileId;
  @override // Nullable
  String? get trackingId;
  @override
  String? get facilityId;
  @override
  String? get facilityType;
  @override
  TenantModel? get tenant;
  @override // Nullable
  FacilityInformationModel? get facilityInformation;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$FacilityModelImplCopyWith<_$FacilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantModel _$TenantModelFromJson(Map<String, dynamic> json) {
  return _TenantModel.fromJson(json);
}

/// @nodoc
mixin _$TenantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantModelCopyWith<TenantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantModelCopyWith<$Res> {
  factory $TenantModelCopyWith(
          TenantModel value, $Res Function(TenantModel) then) =
      _$TenantModelCopyWithImpl<$Res, TenantModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TenantModelCopyWithImpl<$Res, $Val extends TenantModel>
    implements $TenantModelCopyWith<$Res> {
  _$TenantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantModelImplCopyWith<$Res>
    implements $TenantModelCopyWith<$Res> {
  factory _$$TenantModelImplCopyWith(
          _$TenantModelImpl value, $Res Function(_$TenantModelImpl) then) =
      __$$TenantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$TenantModelImplCopyWithImpl<$Res>
    extends _$TenantModelCopyWithImpl<$Res, _$TenantModelImpl>
    implements _$$TenantModelImplCopyWith<$Res> {
  __$$TenantModelImplCopyWithImpl(
      _$TenantModelImpl _value, $Res Function(_$TenantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TenantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantModelImpl implements _TenantModel {
  const _$TenantModelImpl({this.id, this.name});

  factory _$TenantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TenantModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantModelImplCopyWith<_$TenantModelImpl> get copyWith =>
      __$$TenantModelImplCopyWithImpl<_$TenantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantModelImplToJson(
      this,
    );
  }
}

abstract class _TenantModel implements TenantModel {
  const factory _TenantModel({final int? id, final String? name}) =
      _$TenantModelImpl;

  factory _TenantModel.fromJson(Map<String, dynamic> json) =
      _$TenantModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TenantModelImplCopyWith<_$TenantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacilityInformationModel _$FacilityInformationModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityInformationModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityInformationModel {
  String? get facilityName => throw _privateConstructorUsedError;
  String? get ownershipCode => throw _privateConstructorUsedError;
  String? get ownershipSubTypeCode =>
      throw _privateConstructorUsedError; // Nullable
  String? get ownershipSubTypeCode2 =>
      throw _privateConstructorUsedError; // Nullable
  FacilityAddressDetailsModel? get facilityAddressDetails =>
      throw _privateConstructorUsedError;
  FacilityContactInformationModel? get facilityContactInformation =>
      throw _privateConstructorUsedError;
  String? get systemOfMedicineCode => throw _privateConstructorUsedError;
  String? get facilityTypeCode => throw _privateConstructorUsedError;
  String? get facilitySubType => throw _privateConstructorUsedError;
  String? get specialityTypeCode =>
      throw _privateConstructorUsedError; // Nullable
  String? get typeOfServiceCode =>
      throw _privateConstructorUsedError; // Nullable
  String? get facilityOperationalStatus => throw _privateConstructorUsedError;
  FacilityUploadsModel? get facilityUploads =>
      throw _privateConstructorUsedError; // Nullable
  List<FacilityAddressProofModel>? get facilityAddressProof =>
      throw _privateConstructorUsedError; // Nullable List
  List<FacilityTimingModel>? get timingsOfFacility =>
      throw _privateConstructorUsedError; // Nullable List
  List<AbdmCompliantSoftwareModel>? get abdmCompliantSoftware =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityInformationModelCopyWith<FacilityInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityInformationModelCopyWith<$Res> {
  factory $FacilityInformationModelCopyWith(FacilityInformationModel value,
          $Res Function(FacilityInformationModel) then) =
      _$FacilityInformationModelCopyWithImpl<$Res, FacilityInformationModel>;
  @useResult
  $Res call(
      {String? facilityName,
      String? ownershipCode,
      String? ownershipSubTypeCode,
      String? ownershipSubTypeCode2,
      FacilityAddressDetailsModel? facilityAddressDetails,
      FacilityContactInformationModel? facilityContactInformation,
      String? systemOfMedicineCode,
      String? facilityTypeCode,
      String? facilitySubType,
      String? specialityTypeCode,
      String? typeOfServiceCode,
      String? facilityOperationalStatus,
      FacilityUploadsModel? facilityUploads,
      List<FacilityAddressProofModel>? facilityAddressProof,
      List<FacilityTimingModel>? timingsOfFacility,
      List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware});

  $FacilityAddressDetailsModelCopyWith<$Res>? get facilityAddressDetails;
  $FacilityContactInformationModelCopyWith<$Res>?
      get facilityContactInformation;
  $FacilityUploadsModelCopyWith<$Res>? get facilityUploads;
}

/// @nodoc
class _$FacilityInformationModelCopyWithImpl<$Res,
        $Val extends FacilityInformationModel>
    implements $FacilityInformationModelCopyWith<$Res> {
  _$FacilityInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityName = freezed,
    Object? ownershipCode = freezed,
    Object? ownershipSubTypeCode = freezed,
    Object? ownershipSubTypeCode2 = freezed,
    Object? facilityAddressDetails = freezed,
    Object? facilityContactInformation = freezed,
    Object? systemOfMedicineCode = freezed,
    Object? facilityTypeCode = freezed,
    Object? facilitySubType = freezed,
    Object? specialityTypeCode = freezed,
    Object? typeOfServiceCode = freezed,
    Object? facilityOperationalStatus = freezed,
    Object? facilityUploads = freezed,
    Object? facilityAddressProof = freezed,
    Object? timingsOfFacility = freezed,
    Object? abdmCompliantSoftware = freezed,
  }) {
    return _then(_value.copyWith(
      facilityName: freezed == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipCode: freezed == ownershipCode
          ? _value.ownershipCode
          : ownershipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipSubTypeCode: freezed == ownershipSubTypeCode
          ? _value.ownershipSubTypeCode
          : ownershipSubTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipSubTypeCode2: freezed == ownershipSubTypeCode2
          ? _value.ownershipSubTypeCode2
          : ownershipSubTypeCode2 // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityAddressDetails: freezed == facilityAddressDetails
          ? _value.facilityAddressDetails
          : facilityAddressDetails // ignore: cast_nullable_to_non_nullable
              as FacilityAddressDetailsModel?,
      facilityContactInformation: freezed == facilityContactInformation
          ? _value.facilityContactInformation
          : facilityContactInformation // ignore: cast_nullable_to_non_nullable
              as FacilityContactInformationModel?,
      systemOfMedicineCode: freezed == systemOfMedicineCode
          ? _value.systemOfMedicineCode
          : systemOfMedicineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityTypeCode: freezed == facilityTypeCode
          ? _value.facilityTypeCode
          : facilityTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilitySubType: freezed == facilitySubType
          ? _value.facilitySubType
          : facilitySubType // ignore: cast_nullable_to_non_nullable
              as String?,
      specialityTypeCode: freezed == specialityTypeCode
          ? _value.specialityTypeCode
          : specialityTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfServiceCode: freezed == typeOfServiceCode
          ? _value.typeOfServiceCode
          : typeOfServiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityOperationalStatus: freezed == facilityOperationalStatus
          ? _value.facilityOperationalStatus
          : facilityOperationalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityUploads: freezed == facilityUploads
          ? _value.facilityUploads
          : facilityUploads // ignore: cast_nullable_to_non_nullable
              as FacilityUploadsModel?,
      facilityAddressProof: freezed == facilityAddressProof
          ? _value.facilityAddressProof
          : facilityAddressProof // ignore: cast_nullable_to_non_nullable
              as List<FacilityAddressProofModel>?,
      timingsOfFacility: freezed == timingsOfFacility
          ? _value.timingsOfFacility
          : timingsOfFacility // ignore: cast_nullable_to_non_nullable
              as List<FacilityTimingModel>?,
      abdmCompliantSoftware: freezed == abdmCompliantSoftware
          ? _value.abdmCompliantSoftware
          : abdmCompliantSoftware // ignore: cast_nullable_to_non_nullable
              as List<AbdmCompliantSoftwareModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityAddressDetailsModelCopyWith<$Res>? get facilityAddressDetails {
    if (_value.facilityAddressDetails == null) {
      return null;
    }

    return $FacilityAddressDetailsModelCopyWith<$Res>(
        _value.facilityAddressDetails!, (value) {
      return _then(_value.copyWith(facilityAddressDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityContactInformationModelCopyWith<$Res>?
      get facilityContactInformation {
    if (_value.facilityContactInformation == null) {
      return null;
    }

    return $FacilityContactInformationModelCopyWith<$Res>(
        _value.facilityContactInformation!, (value) {
      return _then(_value.copyWith(facilityContactInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityUploadsModelCopyWith<$Res>? get facilityUploads {
    if (_value.facilityUploads == null) {
      return null;
    }

    return $FacilityUploadsModelCopyWith<$Res>(_value.facilityUploads!,
        (value) {
      return _then(_value.copyWith(facilityUploads: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacilityInformationModelImplCopyWith<$Res>
    implements $FacilityInformationModelCopyWith<$Res> {
  factory _$$FacilityInformationModelImplCopyWith(
          _$FacilityInformationModelImpl value,
          $Res Function(_$FacilityInformationModelImpl) then) =
      __$$FacilityInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? facilityName,
      String? ownershipCode,
      String? ownershipSubTypeCode,
      String? ownershipSubTypeCode2,
      FacilityAddressDetailsModel? facilityAddressDetails,
      FacilityContactInformationModel? facilityContactInformation,
      String? systemOfMedicineCode,
      String? facilityTypeCode,
      String? facilitySubType,
      String? specialityTypeCode,
      String? typeOfServiceCode,
      String? facilityOperationalStatus,
      FacilityUploadsModel? facilityUploads,
      List<FacilityAddressProofModel>? facilityAddressProof,
      List<FacilityTimingModel>? timingsOfFacility,
      List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware});

  @override
  $FacilityAddressDetailsModelCopyWith<$Res>? get facilityAddressDetails;
  @override
  $FacilityContactInformationModelCopyWith<$Res>?
      get facilityContactInformation;
  @override
  $FacilityUploadsModelCopyWith<$Res>? get facilityUploads;
}

/// @nodoc
class __$$FacilityInformationModelImplCopyWithImpl<$Res>
    extends _$FacilityInformationModelCopyWithImpl<$Res,
        _$FacilityInformationModelImpl>
    implements _$$FacilityInformationModelImplCopyWith<$Res> {
  __$$FacilityInformationModelImplCopyWithImpl(
      _$FacilityInformationModelImpl _value,
      $Res Function(_$FacilityInformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityName = freezed,
    Object? ownershipCode = freezed,
    Object? ownershipSubTypeCode = freezed,
    Object? ownershipSubTypeCode2 = freezed,
    Object? facilityAddressDetails = freezed,
    Object? facilityContactInformation = freezed,
    Object? systemOfMedicineCode = freezed,
    Object? facilityTypeCode = freezed,
    Object? facilitySubType = freezed,
    Object? specialityTypeCode = freezed,
    Object? typeOfServiceCode = freezed,
    Object? facilityOperationalStatus = freezed,
    Object? facilityUploads = freezed,
    Object? facilityAddressProof = freezed,
    Object? timingsOfFacility = freezed,
    Object? abdmCompliantSoftware = freezed,
  }) {
    return _then(_$FacilityInformationModelImpl(
      facilityName: freezed == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipCode: freezed == ownershipCode
          ? _value.ownershipCode
          : ownershipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipSubTypeCode: freezed == ownershipSubTypeCode
          ? _value.ownershipSubTypeCode
          : ownershipSubTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ownershipSubTypeCode2: freezed == ownershipSubTypeCode2
          ? _value.ownershipSubTypeCode2
          : ownershipSubTypeCode2 // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityAddressDetails: freezed == facilityAddressDetails
          ? _value.facilityAddressDetails
          : facilityAddressDetails // ignore: cast_nullable_to_non_nullable
              as FacilityAddressDetailsModel?,
      facilityContactInformation: freezed == facilityContactInformation
          ? _value.facilityContactInformation
          : facilityContactInformation // ignore: cast_nullable_to_non_nullable
              as FacilityContactInformationModel?,
      systemOfMedicineCode: freezed == systemOfMedicineCode
          ? _value.systemOfMedicineCode
          : systemOfMedicineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityTypeCode: freezed == facilityTypeCode
          ? _value.facilityTypeCode
          : facilityTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilitySubType: freezed == facilitySubType
          ? _value.facilitySubType
          : facilitySubType // ignore: cast_nullable_to_non_nullable
              as String?,
      specialityTypeCode: freezed == specialityTypeCode
          ? _value.specialityTypeCode
          : specialityTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfServiceCode: freezed == typeOfServiceCode
          ? _value.typeOfServiceCode
          : typeOfServiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityOperationalStatus: freezed == facilityOperationalStatus
          ? _value.facilityOperationalStatus
          : facilityOperationalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityUploads: freezed == facilityUploads
          ? _value.facilityUploads
          : facilityUploads // ignore: cast_nullable_to_non_nullable
              as FacilityUploadsModel?,
      facilityAddressProof: freezed == facilityAddressProof
          ? _value._facilityAddressProof
          : facilityAddressProof // ignore: cast_nullable_to_non_nullable
              as List<FacilityAddressProofModel>?,
      timingsOfFacility: freezed == timingsOfFacility
          ? _value._timingsOfFacility
          : timingsOfFacility // ignore: cast_nullable_to_non_nullable
              as List<FacilityTimingModel>?,
      abdmCompliantSoftware: freezed == abdmCompliantSoftware
          ? _value._abdmCompliantSoftware
          : abdmCompliantSoftware // ignore: cast_nullable_to_non_nullable
              as List<AbdmCompliantSoftwareModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityInformationModelImpl implements _FacilityInformationModel {
  const _$FacilityInformationModelImpl(
      {this.facilityName,
      this.ownershipCode,
      this.ownershipSubTypeCode,
      this.ownershipSubTypeCode2,
      this.facilityAddressDetails,
      this.facilityContactInformation,
      this.systemOfMedicineCode,
      this.facilityTypeCode,
      this.facilitySubType,
      this.specialityTypeCode,
      this.typeOfServiceCode,
      this.facilityOperationalStatus,
      this.facilityUploads,
      final List<FacilityAddressProofModel>? facilityAddressProof,
      final List<FacilityTimingModel>? timingsOfFacility,
      final List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware})
      : _facilityAddressProof = facilityAddressProof,
        _timingsOfFacility = timingsOfFacility,
        _abdmCompliantSoftware = abdmCompliantSoftware;

  factory _$FacilityInformationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityInformationModelImplFromJson(json);

  @override
  final String? facilityName;
  @override
  final String? ownershipCode;
  @override
  final String? ownershipSubTypeCode;
// Nullable
  @override
  final String? ownershipSubTypeCode2;
// Nullable
  @override
  final FacilityAddressDetailsModel? facilityAddressDetails;
  @override
  final FacilityContactInformationModel? facilityContactInformation;
  @override
  final String? systemOfMedicineCode;
  @override
  final String? facilityTypeCode;
  @override
  final String? facilitySubType;
  @override
  final String? specialityTypeCode;
// Nullable
  @override
  final String? typeOfServiceCode;
// Nullable
  @override
  final String? facilityOperationalStatus;
  @override
  final FacilityUploadsModel? facilityUploads;
// Nullable
  final List<FacilityAddressProofModel>? _facilityAddressProof;
// Nullable
  @override
  List<FacilityAddressProofModel>? get facilityAddressProof {
    final value = _facilityAddressProof;
    if (value == null) return null;
    if (_facilityAddressProof is EqualUnmodifiableListView)
      return _facilityAddressProof;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable List
  final List<FacilityTimingModel>? _timingsOfFacility;
// Nullable List
  @override
  List<FacilityTimingModel>? get timingsOfFacility {
    final value = _timingsOfFacility;
    if (value == null) return null;
    if (_timingsOfFacility is EqualUnmodifiableListView)
      return _timingsOfFacility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Nullable List
  final List<AbdmCompliantSoftwareModel>? _abdmCompliantSoftware;
// Nullable List
  @override
  List<AbdmCompliantSoftwareModel>? get abdmCompliantSoftware {
    final value = _abdmCompliantSoftware;
    if (value == null) return null;
    if (_abdmCompliantSoftware is EqualUnmodifiableListView)
      return _abdmCompliantSoftware;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FacilityInformationModel(facilityName: $facilityName, ownershipCode: $ownershipCode, ownershipSubTypeCode: $ownershipSubTypeCode, ownershipSubTypeCode2: $ownershipSubTypeCode2, facilityAddressDetails: $facilityAddressDetails, facilityContactInformation: $facilityContactInformation, systemOfMedicineCode: $systemOfMedicineCode, facilityTypeCode: $facilityTypeCode, facilitySubType: $facilitySubType, specialityTypeCode: $specialityTypeCode, typeOfServiceCode: $typeOfServiceCode, facilityOperationalStatus: $facilityOperationalStatus, facilityUploads: $facilityUploads, facilityAddressProof: $facilityAddressProof, timingsOfFacility: $timingsOfFacility, abdmCompliantSoftware: $abdmCompliantSoftware)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityInformationModelImpl &&
            (identical(other.facilityName, facilityName) ||
                other.facilityName == facilityName) &&
            (identical(other.ownershipCode, ownershipCode) ||
                other.ownershipCode == ownershipCode) &&
            (identical(other.ownershipSubTypeCode, ownershipSubTypeCode) ||
                other.ownershipSubTypeCode == ownershipSubTypeCode) &&
            (identical(other.ownershipSubTypeCode2, ownershipSubTypeCode2) ||
                other.ownershipSubTypeCode2 == ownershipSubTypeCode2) &&
            (identical(other.facilityAddressDetails, facilityAddressDetails) ||
                other.facilityAddressDetails == facilityAddressDetails) &&
            (identical(other.facilityContactInformation,
                    facilityContactInformation) ||
                other.facilityContactInformation ==
                    facilityContactInformation) &&
            (identical(other.systemOfMedicineCode, systemOfMedicineCode) ||
                other.systemOfMedicineCode == systemOfMedicineCode) &&
            (identical(other.facilityTypeCode, facilityTypeCode) ||
                other.facilityTypeCode == facilityTypeCode) &&
            (identical(other.facilitySubType, facilitySubType) ||
                other.facilitySubType == facilitySubType) &&
            (identical(other.specialityTypeCode, specialityTypeCode) ||
                other.specialityTypeCode == specialityTypeCode) &&
            (identical(other.typeOfServiceCode, typeOfServiceCode) ||
                other.typeOfServiceCode == typeOfServiceCode) &&
            (identical(other.facilityOperationalStatus,
                    facilityOperationalStatus) ||
                other.facilityOperationalStatus == facilityOperationalStatus) &&
            (identical(other.facilityUploads, facilityUploads) ||
                other.facilityUploads == facilityUploads) &&
            const DeepCollectionEquality()
                .equals(other._facilityAddressProof, _facilityAddressProof) &&
            const DeepCollectionEquality()
                .equals(other._timingsOfFacility, _timingsOfFacility) &&
            const DeepCollectionEquality()
                .equals(other._abdmCompliantSoftware, _abdmCompliantSoftware));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      facilityName,
      ownershipCode,
      ownershipSubTypeCode,
      ownershipSubTypeCode2,
      facilityAddressDetails,
      facilityContactInformation,
      systemOfMedicineCode,
      facilityTypeCode,
      facilitySubType,
      specialityTypeCode,
      typeOfServiceCode,
      facilityOperationalStatus,
      facilityUploads,
      const DeepCollectionEquality().hash(_facilityAddressProof),
      const DeepCollectionEquality().hash(_timingsOfFacility),
      const DeepCollectionEquality().hash(_abdmCompliantSoftware));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityInformationModelImplCopyWith<_$FacilityInformationModelImpl>
      get copyWith => __$$FacilityInformationModelImplCopyWithImpl<
          _$FacilityInformationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityInformationModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityInformationModel implements FacilityInformationModel {
  const factory _FacilityInformationModel(
          {final String? facilityName,
          final String? ownershipCode,
          final String? ownershipSubTypeCode,
          final String? ownershipSubTypeCode2,
          final FacilityAddressDetailsModel? facilityAddressDetails,
          final FacilityContactInformationModel? facilityContactInformation,
          final String? systemOfMedicineCode,
          final String? facilityTypeCode,
          final String? facilitySubType,
          final String? specialityTypeCode,
          final String? typeOfServiceCode,
          final String? facilityOperationalStatus,
          final FacilityUploadsModel? facilityUploads,
          final List<FacilityAddressProofModel>? facilityAddressProof,
          final List<FacilityTimingModel>? timingsOfFacility,
          final List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware}) =
      _$FacilityInformationModelImpl;

  factory _FacilityInformationModel.fromJson(Map<String, dynamic> json) =
      _$FacilityInformationModelImpl.fromJson;

  @override
  String? get facilityName;
  @override
  String? get ownershipCode;
  @override
  String? get ownershipSubTypeCode;
  @override // Nullable
  String? get ownershipSubTypeCode2;
  @override // Nullable
  FacilityAddressDetailsModel? get facilityAddressDetails;
  @override
  FacilityContactInformationModel? get facilityContactInformation;
  @override
  String? get systemOfMedicineCode;
  @override
  String? get facilityTypeCode;
  @override
  String? get facilitySubType;
  @override
  String? get specialityTypeCode;
  @override // Nullable
  String? get typeOfServiceCode;
  @override // Nullable
  String? get facilityOperationalStatus;
  @override
  FacilityUploadsModel? get facilityUploads;
  @override // Nullable
  List<FacilityAddressProofModel>? get facilityAddressProof;
  @override // Nullable List
  List<FacilityTimingModel>? get timingsOfFacility;
  @override // Nullable List
  List<AbdmCompliantSoftwareModel>? get abdmCompliantSoftware;
  @override
  @JsonKey(ignore: true)
  _$$FacilityInformationModelImplCopyWith<_$FacilityInformationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityAddressDetailsModel _$FacilityAddressDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityAddressDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityAddressDetailsModel {
  String? get country => throw _privateConstructorUsedError;
  String? get stateLGDCode => throw _privateConstructorUsedError;
  String? get districtLGDCode => throw _privateConstructorUsedError;
  String? get subDistrictLGDCode => throw _privateConstructorUsedError;
  String? get facilityRegion => throw _privateConstructorUsedError;
  String? get villageCityTownLGDCode => throw _privateConstructorUsedError;
  String? get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityAddressDetailsModelCopyWith<FacilityAddressDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityAddressDetailsModelCopyWith<$Res> {
  factory $FacilityAddressDetailsModelCopyWith(
          FacilityAddressDetailsModel value,
          $Res Function(FacilityAddressDetailsModel) then) =
      _$FacilityAddressDetailsModelCopyWithImpl<$Res,
          FacilityAddressDetailsModel>;
  @useResult
  $Res call(
      {String? country,
      String? stateLGDCode,
      String? districtLGDCode,
      String? subDistrictLGDCode,
      String? facilityRegion,
      String? villageCityTownLGDCode,
      String? addressLine1,
      String? addressLine2,
      String? latitude,
      String? longitude,
      String? osid,
      String? pincode});
}

/// @nodoc
class _$FacilityAddressDetailsModelCopyWithImpl<$Res,
        $Val extends FacilityAddressDetailsModel>
    implements $FacilityAddressDetailsModelCopyWith<$Res> {
  _$FacilityAddressDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? stateLGDCode = freezed,
    Object? districtLGDCode = freezed,
    Object? subDistrictLGDCode = freezed,
    Object? facilityRegion = freezed,
    Object? villageCityTownLGDCode = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? osid = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      stateLGDCode: freezed == stateLGDCode
          ? _value.stateLGDCode
          : stateLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      districtLGDCode: freezed == districtLGDCode
          ? _value.districtLGDCode
          : districtLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrictLGDCode: freezed == subDistrictLGDCode
          ? _value.subDistrictLGDCode
          : subDistrictLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityRegion: freezed == facilityRegion
          ? _value.facilityRegion
          : facilityRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      villageCityTownLGDCode: freezed == villageCityTownLGDCode
          ? _value.villageCityTownLGDCode
          : villageCityTownLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityAddressDetailsModelImplCopyWith<$Res>
    implements $FacilityAddressDetailsModelCopyWith<$Res> {
  factory _$$FacilityAddressDetailsModelImplCopyWith(
          _$FacilityAddressDetailsModelImpl value,
          $Res Function(_$FacilityAddressDetailsModelImpl) then) =
      __$$FacilityAddressDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? stateLGDCode,
      String? districtLGDCode,
      String? subDistrictLGDCode,
      String? facilityRegion,
      String? villageCityTownLGDCode,
      String? addressLine1,
      String? addressLine2,
      String? latitude,
      String? longitude,
      String? osid,
      String? pincode});
}

/// @nodoc
class __$$FacilityAddressDetailsModelImplCopyWithImpl<$Res>
    extends _$FacilityAddressDetailsModelCopyWithImpl<$Res,
        _$FacilityAddressDetailsModelImpl>
    implements _$$FacilityAddressDetailsModelImplCopyWith<$Res> {
  __$$FacilityAddressDetailsModelImplCopyWithImpl(
      _$FacilityAddressDetailsModelImpl _value,
      $Res Function(_$FacilityAddressDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? stateLGDCode = freezed,
    Object? districtLGDCode = freezed,
    Object? subDistrictLGDCode = freezed,
    Object? facilityRegion = freezed,
    Object? villageCityTownLGDCode = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? osid = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$FacilityAddressDetailsModelImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      stateLGDCode: freezed == stateLGDCode
          ? _value.stateLGDCode
          : stateLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      districtLGDCode: freezed == districtLGDCode
          ? _value.districtLGDCode
          : districtLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrictLGDCode: freezed == subDistrictLGDCode
          ? _value.subDistrictLGDCode
          : subDistrictLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityRegion: freezed == facilityRegion
          ? _value.facilityRegion
          : facilityRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      villageCityTownLGDCode: freezed == villageCityTownLGDCode
          ? _value.villageCityTownLGDCode
          : villageCityTownLGDCode // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityAddressDetailsModelImpl
    implements _FacilityAddressDetailsModel {
  const _$FacilityAddressDetailsModelImpl(
      {this.country,
      this.stateLGDCode,
      this.districtLGDCode,
      this.subDistrictLGDCode,
      this.facilityRegion,
      this.villageCityTownLGDCode,
      this.addressLine1,
      this.addressLine2,
      this.latitude,
      this.longitude,
      this.osid,
      this.pincode});

  factory _$FacilityAddressDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FacilityAddressDetailsModelImplFromJson(json);

  @override
  final String? country;
  @override
  final String? stateLGDCode;
  @override
  final String? districtLGDCode;
  @override
  final String? subDistrictLGDCode;
  @override
  final String? facilityRegion;
  @override
  final String? villageCityTownLGDCode;
  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? osid;
  @override
  final String? pincode;

  @override
  String toString() {
    return 'FacilityAddressDetailsModel(country: $country, stateLGDCode: $stateLGDCode, districtLGDCode: $districtLGDCode, subDistrictLGDCode: $subDistrictLGDCode, facilityRegion: $facilityRegion, villageCityTownLGDCode: $villageCityTownLGDCode, addressLine1: $addressLine1, addressLine2: $addressLine2, latitude: $latitude, longitude: $longitude, osid: $osid, pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityAddressDetailsModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.stateLGDCode, stateLGDCode) ||
                other.stateLGDCode == stateLGDCode) &&
            (identical(other.districtLGDCode, districtLGDCode) ||
                other.districtLGDCode == districtLGDCode) &&
            (identical(other.subDistrictLGDCode, subDistrictLGDCode) ||
                other.subDistrictLGDCode == subDistrictLGDCode) &&
            (identical(other.facilityRegion, facilityRegion) ||
                other.facilityRegion == facilityRegion) &&
            (identical(other.villageCityTownLGDCode, villageCityTownLGDCode) ||
                other.villageCityTownLGDCode == villageCityTownLGDCode) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.osid, osid) || other.osid == osid) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      stateLGDCode,
      districtLGDCode,
      subDistrictLGDCode,
      facilityRegion,
      villageCityTownLGDCode,
      addressLine1,
      addressLine2,
      latitude,
      longitude,
      osid,
      pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityAddressDetailsModelImplCopyWith<_$FacilityAddressDetailsModelImpl>
      get copyWith => __$$FacilityAddressDetailsModelImplCopyWithImpl<
          _$FacilityAddressDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityAddressDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityAddressDetailsModel
    implements FacilityAddressDetailsModel {
  const factory _FacilityAddressDetailsModel(
      {final String? country,
      final String? stateLGDCode,
      final String? districtLGDCode,
      final String? subDistrictLGDCode,
      final String? facilityRegion,
      final String? villageCityTownLGDCode,
      final String? addressLine1,
      final String? addressLine2,
      final String? latitude,
      final String? longitude,
      final String? osid,
      final String? pincode}) = _$FacilityAddressDetailsModelImpl;

  factory _FacilityAddressDetailsModel.fromJson(Map<String, dynamic> json) =
      _$FacilityAddressDetailsModelImpl.fromJson;

  @override
  String? get country;
  @override
  String? get stateLGDCode;
  @override
  String? get districtLGDCode;
  @override
  String? get subDistrictLGDCode;
  @override
  String? get facilityRegion;
  @override
  String? get villageCityTownLGDCode;
  @override
  String? get addressLine1;
  @override
  String? get addressLine2;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get osid;
  @override
  String? get pincode;
  @override
  @JsonKey(ignore: true)
  _$$FacilityAddressDetailsModelImplCopyWith<_$FacilityAddressDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityContactInformationModel _$FacilityContactInformationModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityContactInformationModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityContactInformationModel {
  String? get facilityContactNumber => throw _privateConstructorUsedError;
  String? get facilityEmailId => throw _privateConstructorUsedError;
  String? get facilityLandlineNumber =>
      throw _privateConstructorUsedError; // Nullable
  String? get facilityStdCode => throw _privateConstructorUsedError; // Nullable
  String? get websiteLink => throw _privateConstructorUsedError; // Nullable
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityContactInformationModelCopyWith<FacilityContactInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityContactInformationModelCopyWith<$Res> {
  factory $FacilityContactInformationModelCopyWith(
          FacilityContactInformationModel value,
          $Res Function(FacilityContactInformationModel) then) =
      _$FacilityContactInformationModelCopyWithImpl<$Res,
          FacilityContactInformationModel>;
  @useResult
  $Res call(
      {String? facilityContactNumber,
      String? facilityEmailId,
      String? facilityLandlineNumber,
      String? facilityStdCode,
      String? websiteLink,
      String? osid});
}

/// @nodoc
class _$FacilityContactInformationModelCopyWithImpl<$Res,
        $Val extends FacilityContactInformationModel>
    implements $FacilityContactInformationModelCopyWith<$Res> {
  _$FacilityContactInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityContactNumber = freezed,
    Object? facilityEmailId = freezed,
    Object? facilityLandlineNumber = freezed,
    Object? facilityStdCode = freezed,
    Object? websiteLink = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      facilityContactNumber: freezed == facilityContactNumber
          ? _value.facilityContactNumber
          : facilityContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityEmailId: freezed == facilityEmailId
          ? _value.facilityEmailId
          : facilityEmailId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLandlineNumber: freezed == facilityLandlineNumber
          ? _value.facilityLandlineNumber
          : facilityLandlineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityStdCode: freezed == facilityStdCode
          ? _value.facilityStdCode
          : facilityStdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteLink: freezed == websiteLink
          ? _value.websiteLink
          : websiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityContactInformationModelImplCopyWith<$Res>
    implements $FacilityContactInformationModelCopyWith<$Res> {
  factory _$$FacilityContactInformationModelImplCopyWith(
          _$FacilityContactInformationModelImpl value,
          $Res Function(_$FacilityContactInformationModelImpl) then) =
      __$$FacilityContactInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? facilityContactNumber,
      String? facilityEmailId,
      String? facilityLandlineNumber,
      String? facilityStdCode,
      String? websiteLink,
      String? osid});
}

/// @nodoc
class __$$FacilityContactInformationModelImplCopyWithImpl<$Res>
    extends _$FacilityContactInformationModelCopyWithImpl<$Res,
        _$FacilityContactInformationModelImpl>
    implements _$$FacilityContactInformationModelImplCopyWith<$Res> {
  __$$FacilityContactInformationModelImplCopyWithImpl(
      _$FacilityContactInformationModelImpl _value,
      $Res Function(_$FacilityContactInformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityContactNumber = freezed,
    Object? facilityEmailId = freezed,
    Object? facilityLandlineNumber = freezed,
    Object? facilityStdCode = freezed,
    Object? websiteLink = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$FacilityContactInformationModelImpl(
      facilityContactNumber: freezed == facilityContactNumber
          ? _value.facilityContactNumber
          : facilityContactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityEmailId: freezed == facilityEmailId
          ? _value.facilityEmailId
          : facilityEmailId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityLandlineNumber: freezed == facilityLandlineNumber
          ? _value.facilityLandlineNumber
          : facilityLandlineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityStdCode: freezed == facilityStdCode
          ? _value.facilityStdCode
          : facilityStdCode // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteLink: freezed == websiteLink
          ? _value.websiteLink
          : websiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityContactInformationModelImpl
    implements _FacilityContactInformationModel {
  const _$FacilityContactInformationModelImpl(
      {this.facilityContactNumber,
      this.facilityEmailId,
      this.facilityLandlineNumber,
      this.facilityStdCode,
      this.websiteLink,
      this.osid});

  factory _$FacilityContactInformationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FacilityContactInformationModelImplFromJson(json);

  @override
  final String? facilityContactNumber;
  @override
  final String? facilityEmailId;
  @override
  final String? facilityLandlineNumber;
// Nullable
  @override
  final String? facilityStdCode;
// Nullable
  @override
  final String? websiteLink;
// Nullable
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityContactInformationModel(facilityContactNumber: $facilityContactNumber, facilityEmailId: $facilityEmailId, facilityLandlineNumber: $facilityLandlineNumber, facilityStdCode: $facilityStdCode, websiteLink: $websiteLink, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityContactInformationModelImpl &&
            (identical(other.facilityContactNumber, facilityContactNumber) ||
                other.facilityContactNumber == facilityContactNumber) &&
            (identical(other.facilityEmailId, facilityEmailId) ||
                other.facilityEmailId == facilityEmailId) &&
            (identical(other.facilityLandlineNumber, facilityLandlineNumber) ||
                other.facilityLandlineNumber == facilityLandlineNumber) &&
            (identical(other.facilityStdCode, facilityStdCode) ||
                other.facilityStdCode == facilityStdCode) &&
            (identical(other.websiteLink, websiteLink) ||
                other.websiteLink == websiteLink) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      facilityContactNumber,
      facilityEmailId,
      facilityLandlineNumber,
      facilityStdCode,
      websiteLink,
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityContactInformationModelImplCopyWith<
          _$FacilityContactInformationModelImpl>
      get copyWith => __$$FacilityContactInformationModelImplCopyWithImpl<
          _$FacilityContactInformationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityContactInformationModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityContactInformationModel
    implements FacilityContactInformationModel {
  const factory _FacilityContactInformationModel(
      {final String? facilityContactNumber,
      final String? facilityEmailId,
      final String? facilityLandlineNumber,
      final String? facilityStdCode,
      final String? websiteLink,
      final String? osid}) = _$FacilityContactInformationModelImpl;

  factory _FacilityContactInformationModel.fromJson(Map<String, dynamic> json) =
      _$FacilityContactInformationModelImpl.fromJson;

  @override
  String? get facilityContactNumber;
  @override
  String? get facilityEmailId;
  @override
  String? get facilityLandlineNumber;
  @override // Nullable
  String? get facilityStdCode;
  @override // Nullable
  String? get websiteLink;
  @override // Nullable
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$FacilityContactInformationModelImplCopyWith<
          _$FacilityContactInformationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityUploadsModel _$FacilityUploadsModelFromJson(Map<String, dynamic> json) {
  return _FacilityUploadsModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityUploadsModel {
  UploadModel? get facilityBoardPhoto => throw _privateConstructorUsedError;
  UploadModel? get facilityBuildingPhoto => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityUploadsModelCopyWith<FacilityUploadsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityUploadsModelCopyWith<$Res> {
  factory $FacilityUploadsModelCopyWith(FacilityUploadsModel value,
          $Res Function(FacilityUploadsModel) then) =
      _$FacilityUploadsModelCopyWithImpl<$Res, FacilityUploadsModel>;
  @useResult
  $Res call(
      {UploadModel? facilityBoardPhoto,
      UploadModel? facilityBuildingPhoto,
      String? osid});

  $UploadModelCopyWith<$Res>? get facilityBoardPhoto;
  $UploadModelCopyWith<$Res>? get facilityBuildingPhoto;
}

/// @nodoc
class _$FacilityUploadsModelCopyWithImpl<$Res,
        $Val extends FacilityUploadsModel>
    implements $FacilityUploadsModelCopyWith<$Res> {
  _$FacilityUploadsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityBoardPhoto = freezed,
    Object? facilityBuildingPhoto = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      facilityBoardPhoto: freezed == facilityBoardPhoto
          ? _value.facilityBoardPhoto
          : facilityBoardPhoto // ignore: cast_nullable_to_non_nullable
              as UploadModel?,
      facilityBuildingPhoto: freezed == facilityBuildingPhoto
          ? _value.facilityBuildingPhoto
          : facilityBuildingPhoto // ignore: cast_nullable_to_non_nullable
              as UploadModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadModelCopyWith<$Res>? get facilityBoardPhoto {
    if (_value.facilityBoardPhoto == null) {
      return null;
    }

    return $UploadModelCopyWith<$Res>(_value.facilityBoardPhoto!, (value) {
      return _then(_value.copyWith(facilityBoardPhoto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadModelCopyWith<$Res>? get facilityBuildingPhoto {
    if (_value.facilityBuildingPhoto == null) {
      return null;
    }

    return $UploadModelCopyWith<$Res>(_value.facilityBuildingPhoto!, (value) {
      return _then(_value.copyWith(facilityBuildingPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacilityUploadsModelImplCopyWith<$Res>
    implements $FacilityUploadsModelCopyWith<$Res> {
  factory _$$FacilityUploadsModelImplCopyWith(_$FacilityUploadsModelImpl value,
          $Res Function(_$FacilityUploadsModelImpl) then) =
      __$$FacilityUploadsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UploadModel? facilityBoardPhoto,
      UploadModel? facilityBuildingPhoto,
      String? osid});

  @override
  $UploadModelCopyWith<$Res>? get facilityBoardPhoto;
  @override
  $UploadModelCopyWith<$Res>? get facilityBuildingPhoto;
}

/// @nodoc
class __$$FacilityUploadsModelImplCopyWithImpl<$Res>
    extends _$FacilityUploadsModelCopyWithImpl<$Res, _$FacilityUploadsModelImpl>
    implements _$$FacilityUploadsModelImplCopyWith<$Res> {
  __$$FacilityUploadsModelImplCopyWithImpl(_$FacilityUploadsModelImpl _value,
      $Res Function(_$FacilityUploadsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityBoardPhoto = freezed,
    Object? facilityBuildingPhoto = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$FacilityUploadsModelImpl(
      facilityBoardPhoto: freezed == facilityBoardPhoto
          ? _value.facilityBoardPhoto
          : facilityBoardPhoto // ignore: cast_nullable_to_non_nullable
              as UploadModel?,
      facilityBuildingPhoto: freezed == facilityBuildingPhoto
          ? _value.facilityBuildingPhoto
          : facilityBuildingPhoto // ignore: cast_nullable_to_non_nullable
              as UploadModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityUploadsModelImpl implements _FacilityUploadsModel {
  const _$FacilityUploadsModelImpl(
      {this.facilityBoardPhoto, this.facilityBuildingPhoto, this.osid});

  factory _$FacilityUploadsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityUploadsModelImplFromJson(json);

  @override
  final UploadModel? facilityBoardPhoto;
  @override
  final UploadModel? facilityBuildingPhoto;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityUploadsModel(facilityBoardPhoto: $facilityBoardPhoto, facilityBuildingPhoto: $facilityBuildingPhoto, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityUploadsModelImpl &&
            (identical(other.facilityBoardPhoto, facilityBoardPhoto) ||
                other.facilityBoardPhoto == facilityBoardPhoto) &&
            (identical(other.facilityBuildingPhoto, facilityBuildingPhoto) ||
                other.facilityBuildingPhoto == facilityBuildingPhoto) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, facilityBoardPhoto, facilityBuildingPhoto, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityUploadsModelImplCopyWith<_$FacilityUploadsModelImpl>
      get copyWith =>
          __$$FacilityUploadsModelImplCopyWithImpl<_$FacilityUploadsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityUploadsModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityUploadsModel implements FacilityUploadsModel {
  const factory _FacilityUploadsModel(
      {final UploadModel? facilityBoardPhoto,
      final UploadModel? facilityBuildingPhoto,
      final String? osid}) = _$FacilityUploadsModelImpl;

  factory _FacilityUploadsModel.fromJson(Map<String, dynamic> json) =
      _$FacilityUploadsModelImpl.fromJson;

  @override
  UploadModel? get facilityBoardPhoto;
  @override
  UploadModel? get facilityBuildingPhoto;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$FacilityUploadsModelImplCopyWith<_$FacilityUploadsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadModel _$UploadModelFromJson(Map<String, dynamic> json) {
  return _UploadModel.fromJson(json);
}

/// @nodoc
mixin _$UploadModel {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadModelCopyWith<UploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadModelCopyWith<$Res> {
  factory $UploadModelCopyWith(
          UploadModel value, $Res Function(UploadModel) then) =
      _$UploadModelCopyWithImpl<$Res, UploadModel>;
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class _$UploadModelCopyWithImpl<$Res, $Val extends UploadModel>
    implements $UploadModelCopyWith<$Res> {
  _$UploadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadModelImplCopyWith<$Res>
    implements $UploadModelCopyWith<$Res> {
  factory _$$UploadModelImplCopyWith(
          _$UploadModelImpl value, $Res Function(_$UploadModelImpl) then) =
      __$$UploadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class __$$UploadModelImplCopyWithImpl<$Res>
    extends _$UploadModelCopyWithImpl<$Res, _$UploadModelImpl>
    implements _$$UploadModelImplCopyWith<$Res> {
  __$$UploadModelImplCopyWithImpl(
      _$UploadModelImpl _value, $Res Function(_$UploadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$UploadModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadModelImpl implements _UploadModel {
  const _$UploadModelImpl({this.name, this.value, this.osid});

  factory _$UploadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? osid;

  @override
  String toString() {
    return 'UploadModel(name: $name, value: $value, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadModelImplCopyWith<_$UploadModelImpl> get copyWith =>
      __$$UploadModelImplCopyWithImpl<_$UploadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadModelImplToJson(
      this,
    );
  }
}

abstract class _UploadModel implements UploadModel {
  const factory _UploadModel(
      {final String? name,
      final String? value,
      final String? osid}) = _$UploadModelImpl;

  factory _UploadModel.fromJson(Map<String, dynamic> json) =
      _$UploadModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$UploadModelImplCopyWith<_$UploadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacilityAddressProofModel _$FacilityAddressProofModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityAddressProofModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityAddressProofModel {
  String? get addressProofType => throw _privateConstructorUsedError;
  AddressProofAttachmentModel? get addressProofAttachment =>
      throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityAddressProofModelCopyWith<FacilityAddressProofModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityAddressProofModelCopyWith<$Res> {
  factory $FacilityAddressProofModelCopyWith(FacilityAddressProofModel value,
          $Res Function(FacilityAddressProofModel) then) =
      _$FacilityAddressProofModelCopyWithImpl<$Res, FacilityAddressProofModel>;
  @useResult
  $Res call(
      {String? addressProofType,
      AddressProofAttachmentModel? addressProofAttachment,
      String? osid});

  $AddressProofAttachmentModelCopyWith<$Res>? get addressProofAttachment;
}

/// @nodoc
class _$FacilityAddressProofModelCopyWithImpl<$Res,
        $Val extends FacilityAddressProofModel>
    implements $FacilityAddressProofModelCopyWith<$Res> {
  _$FacilityAddressProofModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressProofType = freezed,
    Object? addressProofAttachment = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      addressProofType: freezed == addressProofType
          ? _value.addressProofType
          : addressProofType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressProofAttachment: freezed == addressProofAttachment
          ? _value.addressProofAttachment
          : addressProofAttachment // ignore: cast_nullable_to_non_nullable
              as AddressProofAttachmentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressProofAttachmentModelCopyWith<$Res>? get addressProofAttachment {
    if (_value.addressProofAttachment == null) {
      return null;
    }

    return $AddressProofAttachmentModelCopyWith<$Res>(
        _value.addressProofAttachment!, (value) {
      return _then(_value.copyWith(addressProofAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacilityAddressProofModelImplCopyWith<$Res>
    implements $FacilityAddressProofModelCopyWith<$Res> {
  factory _$$FacilityAddressProofModelImplCopyWith(
          _$FacilityAddressProofModelImpl value,
          $Res Function(_$FacilityAddressProofModelImpl) then) =
      __$$FacilityAddressProofModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressProofType,
      AddressProofAttachmentModel? addressProofAttachment,
      String? osid});

  @override
  $AddressProofAttachmentModelCopyWith<$Res>? get addressProofAttachment;
}

/// @nodoc
class __$$FacilityAddressProofModelImplCopyWithImpl<$Res>
    extends _$FacilityAddressProofModelCopyWithImpl<$Res,
        _$FacilityAddressProofModelImpl>
    implements _$$FacilityAddressProofModelImplCopyWith<$Res> {
  __$$FacilityAddressProofModelImplCopyWithImpl(
      _$FacilityAddressProofModelImpl _value,
      $Res Function(_$FacilityAddressProofModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressProofType = freezed,
    Object? addressProofAttachment = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$FacilityAddressProofModelImpl(
      addressProofType: freezed == addressProofType
          ? _value.addressProofType
          : addressProofType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressProofAttachment: freezed == addressProofAttachment
          ? _value.addressProofAttachment
          : addressProofAttachment // ignore: cast_nullable_to_non_nullable
              as AddressProofAttachmentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityAddressProofModelImpl implements _FacilityAddressProofModel {
  const _$FacilityAddressProofModelImpl(
      {this.addressProofType, this.addressProofAttachment, this.osid});

  factory _$FacilityAddressProofModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityAddressProofModelImplFromJson(json);

  @override
  final String? addressProofType;
  @override
  final AddressProofAttachmentModel? addressProofAttachment;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityAddressProofModel(addressProofType: $addressProofType, addressProofAttachment: $addressProofAttachment, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityAddressProofModelImpl &&
            (identical(other.addressProofType, addressProofType) ||
                other.addressProofType == addressProofType) &&
            (identical(other.addressProofAttachment, addressProofAttachment) ||
                other.addressProofAttachment == addressProofAttachment) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addressProofType, addressProofAttachment, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityAddressProofModelImplCopyWith<_$FacilityAddressProofModelImpl>
      get copyWith => __$$FacilityAddressProofModelImplCopyWithImpl<
          _$FacilityAddressProofModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityAddressProofModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityAddressProofModel implements FacilityAddressProofModel {
  const factory _FacilityAddressProofModel(
      {final String? addressProofType,
      final AddressProofAttachmentModel? addressProofAttachment,
      final String? osid}) = _$FacilityAddressProofModelImpl;

  factory _FacilityAddressProofModel.fromJson(Map<String, dynamic> json) =
      _$FacilityAddressProofModelImpl.fromJson;

  @override
  String? get addressProofType;
  @override
  AddressProofAttachmentModel? get addressProofAttachment;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$FacilityAddressProofModelImplCopyWith<_$FacilityAddressProofModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressProofAttachmentModel _$AddressProofAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _AddressProofAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$AddressProofAttachmentModel {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressProofAttachmentModelCopyWith<AddressProofAttachmentModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressProofAttachmentModelCopyWith<$Res> {
  factory $AddressProofAttachmentModelCopyWith(
          AddressProofAttachmentModel value,
          $Res Function(AddressProofAttachmentModel) then) =
      _$AddressProofAttachmentModelCopyWithImpl<$Res,
          AddressProofAttachmentModel>;
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class _$AddressProofAttachmentModelCopyWithImpl<$Res,
        $Val extends AddressProofAttachmentModel>
    implements $AddressProofAttachmentModelCopyWith<$Res> {
  _$AddressProofAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressProofAttachmentModelImplCopyWith<$Res>
    implements $AddressProofAttachmentModelCopyWith<$Res> {
  factory _$$AddressProofAttachmentModelImplCopyWith(
          _$AddressProofAttachmentModelImpl value,
          $Res Function(_$AddressProofAttachmentModelImpl) then) =
      __$$AddressProofAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class __$$AddressProofAttachmentModelImplCopyWithImpl<$Res>
    extends _$AddressProofAttachmentModelCopyWithImpl<$Res,
        _$AddressProofAttachmentModelImpl>
    implements _$$AddressProofAttachmentModelImplCopyWith<$Res> {
  __$$AddressProofAttachmentModelImplCopyWithImpl(
      _$AddressProofAttachmentModelImpl _value,
      $Res Function(_$AddressProofAttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$AddressProofAttachmentModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressProofAttachmentModelImpl
    implements _AddressProofAttachmentModel {
  const _$AddressProofAttachmentModelImpl({this.name, this.value, this.osid});

  factory _$AddressProofAttachmentModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddressProofAttachmentModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? osid;

  @override
  String toString() {
    return 'AddressProofAttachmentModel(name: $name, value: $value, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressProofAttachmentModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressProofAttachmentModelImplCopyWith<_$AddressProofAttachmentModelImpl>
      get copyWith => __$$AddressProofAttachmentModelImplCopyWithImpl<
          _$AddressProofAttachmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressProofAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _AddressProofAttachmentModel
    implements AddressProofAttachmentModel {
  const factory _AddressProofAttachmentModel(
      {final String? name,
      final String? value,
      final String? osid}) = _$AddressProofAttachmentModelImpl;

  factory _AddressProofAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$AddressProofAttachmentModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$AddressProofAttachmentModelImplCopyWith<_$AddressProofAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityTimingModel _$FacilityTimingModelFromJson(Map<String, dynamic> json) {
  return _FacilityTimingModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityTimingModel {
  String? get workingDays => throw _privateConstructorUsedError;
  String? get openingHours => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityTimingModelCopyWith<FacilityTimingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityTimingModelCopyWith<$Res> {
  factory $FacilityTimingModelCopyWith(
          FacilityTimingModel value, $Res Function(FacilityTimingModel) then) =
      _$FacilityTimingModelCopyWithImpl<$Res, FacilityTimingModel>;
  @useResult
  $Res call({String? workingDays, String? openingHours, String? osid});
}

/// @nodoc
class _$FacilityTimingModelCopyWithImpl<$Res, $Val extends FacilityTimingModel>
    implements $FacilityTimingModelCopyWith<$Res> {
  _$FacilityTimingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDays = freezed,
    Object? openingHours = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityTimingModelImplCopyWith<$Res>
    implements $FacilityTimingModelCopyWith<$Res> {
  factory _$$FacilityTimingModelImplCopyWith(_$FacilityTimingModelImpl value,
          $Res Function(_$FacilityTimingModelImpl) then) =
      __$$FacilityTimingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? workingDays, String? openingHours, String? osid});
}

/// @nodoc
class __$$FacilityTimingModelImplCopyWithImpl<$Res>
    extends _$FacilityTimingModelCopyWithImpl<$Res, _$FacilityTimingModelImpl>
    implements _$$FacilityTimingModelImplCopyWith<$Res> {
  __$$FacilityTimingModelImplCopyWithImpl(_$FacilityTimingModelImpl _value,
      $Res Function(_$FacilityTimingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDays = freezed,
    Object? openingHours = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$FacilityTimingModelImpl(
      workingDays: freezed == workingDays
          ? _value.workingDays
          : workingDays // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityTimingModelImpl implements _FacilityTimingModel {
  const _$FacilityTimingModelImpl(
      {this.workingDays, this.openingHours, this.osid});

  factory _$FacilityTimingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityTimingModelImplFromJson(json);

  @override
  final String? workingDays;
  @override
  final String? openingHours;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityTimingModel(workingDays: $workingDays, openingHours: $openingHours, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityTimingModelImpl &&
            (identical(other.workingDays, workingDays) ||
                other.workingDays == workingDays) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workingDays, openingHours, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityTimingModelImplCopyWith<_$FacilityTimingModelImpl> get copyWith =>
      __$$FacilityTimingModelImplCopyWithImpl<_$FacilityTimingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityTimingModelImplToJson(
      this,
    );
  }
}

abstract class _FacilityTimingModel implements FacilityTimingModel {
  const factory _FacilityTimingModel(
      {final String? workingDays,
      final String? openingHours,
      final String? osid}) = _$FacilityTimingModelImpl;

  factory _FacilityTimingModel.fromJson(Map<String, dynamic> json) =
      _$FacilityTimingModelImpl.fromJson;

  @override
  String? get workingDays;
  @override
  String? get openingHours;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$FacilityTimingModelImplCopyWith<_$FacilityTimingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbdmCompliantSoftwareModel _$AbdmCompliantSoftwareModelFromJson(
    Map<String, dynamic> json) {
  return _AbdmCompliantSoftwareModel.fromJson(json);
}

/// @nodoc
mixin _$AbdmCompliantSoftwareModel {
  List<String>? get existingSoftwares => throw _privateConstructorUsedError;
  String? get anyOther => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbdmCompliantSoftwareModelCopyWith<AbdmCompliantSoftwareModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbdmCompliantSoftwareModelCopyWith<$Res> {
  factory $AbdmCompliantSoftwareModelCopyWith(AbdmCompliantSoftwareModel value,
          $Res Function(AbdmCompliantSoftwareModel) then) =
      _$AbdmCompliantSoftwareModelCopyWithImpl<$Res,
          AbdmCompliantSoftwareModel>;
  @useResult
  $Res call({List<String>? existingSoftwares, String? anyOther, String? osid});
}

/// @nodoc
class _$AbdmCompliantSoftwareModelCopyWithImpl<$Res,
        $Val extends AbdmCompliantSoftwareModel>
    implements $AbdmCompliantSoftwareModelCopyWith<$Res> {
  _$AbdmCompliantSoftwareModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingSoftwares = freezed,
    Object? anyOther = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      existingSoftwares: freezed == existingSoftwares
          ? _value.existingSoftwares
          : existingSoftwares // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anyOther: freezed == anyOther
          ? _value.anyOther
          : anyOther // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbdmCompliantSoftwareModelImplCopyWith<$Res>
    implements $AbdmCompliantSoftwareModelCopyWith<$Res> {
  factory _$$AbdmCompliantSoftwareModelImplCopyWith(
          _$AbdmCompliantSoftwareModelImpl value,
          $Res Function(_$AbdmCompliantSoftwareModelImpl) then) =
      __$$AbdmCompliantSoftwareModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? existingSoftwares, String? anyOther, String? osid});
}

/// @nodoc
class __$$AbdmCompliantSoftwareModelImplCopyWithImpl<$Res>
    extends _$AbdmCompliantSoftwareModelCopyWithImpl<$Res,
        _$AbdmCompliantSoftwareModelImpl>
    implements _$$AbdmCompliantSoftwareModelImplCopyWith<$Res> {
  __$$AbdmCompliantSoftwareModelImplCopyWithImpl(
      _$AbdmCompliantSoftwareModelImpl _value,
      $Res Function(_$AbdmCompliantSoftwareModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingSoftwares = freezed,
    Object? anyOther = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$AbdmCompliantSoftwareModelImpl(
      existingSoftwares: freezed == existingSoftwares
          ? _value._existingSoftwares
          : existingSoftwares // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anyOther: freezed == anyOther
          ? _value.anyOther
          : anyOther // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbdmCompliantSoftwareModelImpl implements _AbdmCompliantSoftwareModel {
  const _$AbdmCompliantSoftwareModelImpl(
      {final List<String>? existingSoftwares, this.anyOther, this.osid})
      : _existingSoftwares = existingSoftwares;

  factory _$AbdmCompliantSoftwareModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AbdmCompliantSoftwareModelImplFromJson(json);

  final List<String>? _existingSoftwares;
  @override
  List<String>? get existingSoftwares {
    final value = _existingSoftwares;
    if (value == null) return null;
    if (_existingSoftwares is EqualUnmodifiableListView)
      return _existingSoftwares;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? anyOther;
  @override
  final String? osid;

  @override
  String toString() {
    return 'AbdmCompliantSoftwareModel(existingSoftwares: $existingSoftwares, anyOther: $anyOther, osid: $osid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbdmCompliantSoftwareModelImpl &&
            const DeepCollectionEquality()
                .equals(other._existingSoftwares, _existingSoftwares) &&
            (identical(other.anyOther, anyOther) ||
                other.anyOther == anyOther) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_existingSoftwares), anyOther, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbdmCompliantSoftwareModelImplCopyWith<_$AbdmCompliantSoftwareModelImpl>
      get copyWith => __$$AbdmCompliantSoftwareModelImplCopyWithImpl<
          _$AbdmCompliantSoftwareModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbdmCompliantSoftwareModelImplToJson(
      this,
    );
  }
}

abstract class _AbdmCompliantSoftwareModel
    implements AbdmCompliantSoftwareModel {
  const factory _AbdmCompliantSoftwareModel(
      {final List<String>? existingSoftwares,
      final String? anyOther,
      final String? osid}) = _$AbdmCompliantSoftwareModelImpl;

  factory _AbdmCompliantSoftwareModel.fromJson(Map<String, dynamic> json) =
      _$AbdmCompliantSoftwareModelImpl.fromJson;

  @override
  List<String>? get existingSoftwares;
  @override
  String? get anyOther;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$AbdmCompliantSoftwareModelImplCopyWith<_$AbdmCompliantSoftwareModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
