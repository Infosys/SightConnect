// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vision_center_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizationResponseModel _$OrganizationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrganizationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrganizationResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get trackingId => throw _privateConstructorUsedError;
  String? get facilityid => throw _privateConstructorUsedError;
  FacilityType? get facilityType => throw _privateConstructorUsedError;
  TenantCustomModel? get tenant => throw _privateConstructorUsedError;
  FacilityInformationModel? get facilityInformation =>
      throw _privateConstructorUsedError;
  FacilityAdditionalInformationModel? get facilityAdditionalInformation =>
      throw _privateConstructorUsedError; // FacilityDetailedInformationModel? facilityDetailedInformationModel,
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationResponseModelCopyWith<OrganizationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationResponseModelCopyWith<$Res> {
  factory $OrganizationResponseModelCopyWith(OrganizationResponseModel value,
          $Res Function(OrganizationResponseModel) then) =
      _$OrganizationResponseModelCopyWithImpl<$Res, OrganizationResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? trackingId,
      String? facilityid,
      FacilityType? facilityType,
      TenantCustomModel? tenant,
      FacilityInformationModel? facilityInformation,
      FacilityAdditionalInformationModel? facilityAdditionalInformation,
      String? osid});

  $TenantCustomModelCopyWith<$Res>? get tenant;
  $FacilityInformationModelCopyWith<$Res>? get facilityInformation;
  $FacilityAdditionalInformationModelCopyWith<$Res>?
      get facilityAdditionalInformation;
}

/// @nodoc
class _$OrganizationResponseModelCopyWithImpl<$Res,
        $Val extends OrganizationResponseModel>
    implements $OrganizationResponseModelCopyWith<$Res> {
  _$OrganizationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trackingId = freezed,
    Object? facilityid = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? facilityInformation = freezed,
    Object? facilityAdditionalInformation = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityid: freezed == facilityid
          ? _value.facilityid
          : facilityid // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as FacilityType?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as TenantCustomModel?,
      facilityInformation: freezed == facilityInformation
          ? _value.facilityInformation
          : facilityInformation // ignore: cast_nullable_to_non_nullable
              as FacilityInformationModel?,
      facilityAdditionalInformation: freezed == facilityAdditionalInformation
          ? _value.facilityAdditionalInformation
          : facilityAdditionalInformation // ignore: cast_nullable_to_non_nullable
              as FacilityAdditionalInformationModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TenantCustomModelCopyWith<$Res>? get tenant {
    if (_value.tenant == null) {
      return null;
    }

    return $TenantCustomModelCopyWith<$Res>(_value.tenant!, (value) {
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

  @override
  @pragma('vm:prefer-inline')
  $FacilityAdditionalInformationModelCopyWith<$Res>?
      get facilityAdditionalInformation {
    if (_value.facilityAdditionalInformation == null) {
      return null;
    }

    return $FacilityAdditionalInformationModelCopyWith<$Res>(
        _value.facilityAdditionalInformation!, (value) {
      return _then(
          _value.copyWith(facilityAdditionalInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrganizationResponseModelCopyWith<$Res>
    implements $OrganizationResponseModelCopyWith<$Res> {
  factory _$$_OrganizationResponseModelCopyWith(
          _$_OrganizationResponseModel value,
          $Res Function(_$_OrganizationResponseModel) then) =
      __$$_OrganizationResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? trackingId,
      String? facilityid,
      FacilityType? facilityType,
      TenantCustomModel? tenant,
      FacilityInformationModel? facilityInformation,
      FacilityAdditionalInformationModel? facilityAdditionalInformation,
      String? osid});

  @override
  $TenantCustomModelCopyWith<$Res>? get tenant;
  @override
  $FacilityInformationModelCopyWith<$Res>? get facilityInformation;
  @override
  $FacilityAdditionalInformationModelCopyWith<$Res>?
      get facilityAdditionalInformation;
}

/// @nodoc
class __$$_OrganizationResponseModelCopyWithImpl<$Res>
    extends _$OrganizationResponseModelCopyWithImpl<$Res,
        _$_OrganizationResponseModel>
    implements _$$_OrganizationResponseModelCopyWith<$Res> {
  __$$_OrganizationResponseModelCopyWithImpl(
      _$_OrganizationResponseModel _value,
      $Res Function(_$_OrganizationResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? trackingId = freezed,
    Object? facilityid = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? facilityInformation = freezed,
    Object? facilityAdditionalInformation = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_OrganizationResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityid: freezed == facilityid
          ? _value.facilityid
          : facilityid // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as FacilityType?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as TenantCustomModel?,
      facilityInformation: freezed == facilityInformation
          ? _value.facilityInformation
          : facilityInformation // ignore: cast_nullable_to_non_nullable
              as FacilityInformationModel?,
      facilityAdditionalInformation: freezed == facilityAdditionalInformation
          ? _value.facilityAdditionalInformation
          : facilityAdditionalInformation // ignore: cast_nullable_to_non_nullable
              as FacilityAdditionalInformationModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizationResponseModel implements _OrganizationResponseModel {
  const _$_OrganizationResponseModel(
      {this.id,
      this.trackingId,
      this.facilityid,
      this.facilityType,
      this.tenant,
      this.facilityInformation,
      this.facilityAdditionalInformation,
      this.osid});

  factory _$_OrganizationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizationResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? trackingId;
  @override
  final String? facilityid;
  @override
  final FacilityType? facilityType;
  @override
  final TenantCustomModel? tenant;
  @override
  final FacilityInformationModel? facilityInformation;
  @override
  final FacilityAdditionalInformationModel? facilityAdditionalInformation;
// FacilityDetailedInformationModel? facilityDetailedInformationModel,
  @override
  final String? osid;

  @override
  String toString() {
    return 'OrganizationResponseModel(id: $id, trackingId: $trackingId, facilityid: $facilityid, facilityType: $facilityType, tenant: $tenant, facilityInformation: $facilityInformation, facilityAdditionalInformation: $facilityAdditionalInformation, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizationResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.facilityid, facilityid) ||
                other.facilityid == facilityid) &&
            (identical(other.facilityType, facilityType) ||
                other.facilityType == facilityType) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.facilityInformation, facilityInformation) ||
                other.facilityInformation == facilityInformation) &&
            (identical(other.facilityAdditionalInformation,
                    facilityAdditionalInformation) ||
                other.facilityAdditionalInformation ==
                    facilityAdditionalInformation) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      trackingId,
      facilityid,
      facilityType,
      tenant,
      facilityInformation,
      facilityAdditionalInformation,
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationResponseModelCopyWith<_$_OrganizationResponseModel>
      get copyWith => __$$_OrganizationResponseModelCopyWithImpl<
          _$_OrganizationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizationResponseModelToJson(
      this,
    );
  }
}

abstract class _OrganizationResponseModel implements OrganizationResponseModel {
  const factory _OrganizationResponseModel(
      {final int? id,
      final String? trackingId,
      final String? facilityid,
      final FacilityType? facilityType,
      final TenantCustomModel? tenant,
      final FacilityInformationModel? facilityInformation,
      final FacilityAdditionalInformationModel? facilityAdditionalInformation,
      final String? osid}) = _$_OrganizationResponseModel;

  factory _OrganizationResponseModel.fromJson(Map<String, dynamic> json) =
      _$_OrganizationResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get trackingId;
  @override
  String? get facilityid;
  @override
  FacilityType? get facilityType;
  @override
  TenantCustomModel? get tenant;
  @override
  FacilityInformationModel? get facilityInformation;
  @override
  FacilityAdditionalInformationModel? get facilityAdditionalInformation;
  @override // FacilityDetailedInformationModel? facilityDetailedInformationModel,
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizationResponseModelCopyWith<_$_OrganizationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

TenantCustomModel _$TenantCustomModelFromJson(Map<String, dynamic> json) {
  return _TenantCustomModel.fromJson(json);
}

/// @nodoc
mixin _$TenantCustomModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantCustomModelCopyWith<TenantCustomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantCustomModelCopyWith<$Res> {
  factory $TenantCustomModelCopyWith(
          TenantCustomModel value, $Res Function(TenantCustomModel) then) =
      _$TenantCustomModelCopyWithImpl<$Res, TenantCustomModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TenantCustomModelCopyWithImpl<$Res, $Val extends TenantCustomModel>
    implements $TenantCustomModelCopyWith<$Res> {
  _$TenantCustomModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TenantCustomModelCopyWith<$Res>
    implements $TenantCustomModelCopyWith<$Res> {
  factory _$$_TenantCustomModelCopyWith(_$_TenantCustomModel value,
          $Res Function(_$_TenantCustomModel) then) =
      __$$_TenantCustomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_TenantCustomModelCopyWithImpl<$Res>
    extends _$TenantCustomModelCopyWithImpl<$Res, _$_TenantCustomModel>
    implements _$$_TenantCustomModelCopyWith<$Res> {
  __$$_TenantCustomModelCopyWithImpl(
      _$_TenantCustomModel _value, $Res Function(_$_TenantCustomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TenantCustomModel(
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
class _$_TenantCustomModel implements _TenantCustomModel {
  const _$_TenantCustomModel({this.id, this.name});

  factory _$_TenantCustomModel.fromJson(Map<String, dynamic> json) =>
      _$$_TenantCustomModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TenantCustomModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TenantCustomModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TenantCustomModelCopyWith<_$_TenantCustomModel> get copyWith =>
      __$$_TenantCustomModelCopyWithImpl<_$_TenantCustomModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenantCustomModelToJson(
      this,
    );
  }
}

abstract class _TenantCustomModel implements TenantCustomModel {
  const factory _TenantCustomModel({final int? id, final String? name}) =
      _$_TenantCustomModel;

  factory _TenantCustomModel.fromJson(Map<String, dynamic> json) =
      _$_TenantCustomModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TenantCustomModelCopyWith<_$_TenantCustomModel> get copyWith =>
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
  String? get ownershipSubTypeCode => throw _privateConstructorUsedError;
  String? get ownershipSubTypeCode2 => throw _privateConstructorUsedError;
  FacilityAddressModel? get facilityAddressDetails =>
      throw _privateConstructorUsedError;
  FacilityContactInformationModel? get facilityContactInformation =>
      throw _privateConstructorUsedError;
  String? get systemOfMedicineCode => throw _privateConstructorUsedError;
  String? get facilityTypeCode => throw _privateConstructorUsedError;
  String? get facilitySubType => throw _privateConstructorUsedError;
  String? get specialityTypeCode => throw _privateConstructorUsedError;
  String? get typeOfServiceCode => throw _privateConstructorUsedError;
  String? get facilityOperationalStatus => throw _privateConstructorUsedError;
  FacilityUploadModel? get facilityUploads =>
      throw _privateConstructorUsedError;
  List<FacilityAddressProofModel>? get facilityAddressProof =>
      throw _privateConstructorUsedError;
  List<FacilityTimingModel>? get timingsOfFacility =>
      throw _privateConstructorUsedError;
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
      FacilityAddressModel? facilityAddressDetails,
      FacilityContactInformationModel? facilityContactInformation,
      String? systemOfMedicineCode,
      String? facilityTypeCode,
      String? facilitySubType,
      String? specialityTypeCode,
      String? typeOfServiceCode,
      String? facilityOperationalStatus,
      FacilityUploadModel? facilityUploads,
      List<FacilityAddressProofModel>? facilityAddressProof,
      List<FacilityTimingModel>? timingsOfFacility,
      List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware});

  $FacilityAddressModelCopyWith<$Res>? get facilityAddressDetails;
  $FacilityContactInformationModelCopyWith<$Res>?
      get facilityContactInformation;
  $FacilityUploadModelCopyWith<$Res>? get facilityUploads;
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
              as FacilityAddressModel?,
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
              as FacilityUploadModel?,
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
  $FacilityAddressModelCopyWith<$Res>? get facilityAddressDetails {
    if (_value.facilityAddressDetails == null) {
      return null;
    }

    return $FacilityAddressModelCopyWith<$Res>(_value.facilityAddressDetails!,
        (value) {
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
  $FacilityUploadModelCopyWith<$Res>? get facilityUploads {
    if (_value.facilityUploads == null) {
      return null;
    }

    return $FacilityUploadModelCopyWith<$Res>(_value.facilityUploads!, (value) {
      return _then(_value.copyWith(facilityUploads: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FacilityInformationModelCopyWith<$Res>
    implements $FacilityInformationModelCopyWith<$Res> {
  factory _$$_FacilityInformationModelCopyWith(
          _$_FacilityInformationModel value,
          $Res Function(_$_FacilityInformationModel) then) =
      __$$_FacilityInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? facilityName,
      String? ownershipCode,
      String? ownershipSubTypeCode,
      String? ownershipSubTypeCode2,
      FacilityAddressModel? facilityAddressDetails,
      FacilityContactInformationModel? facilityContactInformation,
      String? systemOfMedicineCode,
      String? facilityTypeCode,
      String? facilitySubType,
      String? specialityTypeCode,
      String? typeOfServiceCode,
      String? facilityOperationalStatus,
      FacilityUploadModel? facilityUploads,
      List<FacilityAddressProofModel>? facilityAddressProof,
      List<FacilityTimingModel>? timingsOfFacility,
      List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware});

  @override
  $FacilityAddressModelCopyWith<$Res>? get facilityAddressDetails;
  @override
  $FacilityContactInformationModelCopyWith<$Res>?
      get facilityContactInformation;
  @override
  $FacilityUploadModelCopyWith<$Res>? get facilityUploads;
}

/// @nodoc
class __$$_FacilityInformationModelCopyWithImpl<$Res>
    extends _$FacilityInformationModelCopyWithImpl<$Res,
        _$_FacilityInformationModel>
    implements _$$_FacilityInformationModelCopyWith<$Res> {
  __$$_FacilityInformationModelCopyWithImpl(_$_FacilityInformationModel _value,
      $Res Function(_$_FacilityInformationModel) _then)
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
    return _then(_$_FacilityInformationModel(
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
              as FacilityAddressModel?,
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
              as FacilityUploadModel?,
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
class _$_FacilityInformationModel implements _FacilityInformationModel {
  const _$_FacilityInformationModel(
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

  factory _$_FacilityInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityInformationModelFromJson(json);

  @override
  final String? facilityName;
  @override
  final String? ownershipCode;
  @override
  final String? ownershipSubTypeCode;
  @override
  final String? ownershipSubTypeCode2;
  @override
  final FacilityAddressModel? facilityAddressDetails;
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
  @override
  final String? typeOfServiceCode;
  @override
  final String? facilityOperationalStatus;
  @override
  final FacilityUploadModel? facilityUploads;
  final List<FacilityAddressProofModel>? _facilityAddressProof;
  @override
  List<FacilityAddressProofModel>? get facilityAddressProof {
    final value = _facilityAddressProof;
    if (value == null) return null;
    if (_facilityAddressProof is EqualUnmodifiableListView)
      return _facilityAddressProof;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FacilityTimingModel>? _timingsOfFacility;
  @override
  List<FacilityTimingModel>? get timingsOfFacility {
    final value = _timingsOfFacility;
    if (value == null) return null;
    if (_timingsOfFacility is EqualUnmodifiableListView)
      return _timingsOfFacility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AbdmCompliantSoftwareModel>? _abdmCompliantSoftware;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityInformationModel &&
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
  _$$_FacilityInformationModelCopyWith<_$_FacilityInformationModel>
      get copyWith => __$$_FacilityInformationModelCopyWithImpl<
          _$_FacilityInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityInformationModelToJson(
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
          final FacilityAddressModel? facilityAddressDetails,
          final FacilityContactInformationModel? facilityContactInformation,
          final String? systemOfMedicineCode,
          final String? facilityTypeCode,
          final String? facilitySubType,
          final String? specialityTypeCode,
          final String? typeOfServiceCode,
          final String? facilityOperationalStatus,
          final FacilityUploadModel? facilityUploads,
          final List<FacilityAddressProofModel>? facilityAddressProof,
          final List<FacilityTimingModel>? timingsOfFacility,
          final List<AbdmCompliantSoftwareModel>? abdmCompliantSoftware}) =
      _$_FacilityInformationModel;

  factory _FacilityInformationModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityInformationModel.fromJson;

  @override
  String? get facilityName;
  @override
  String? get ownershipCode;
  @override
  String? get ownershipSubTypeCode;
  @override
  String? get ownershipSubTypeCode2;
  @override
  FacilityAddressModel? get facilityAddressDetails;
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
  @override
  String? get typeOfServiceCode;
  @override
  String? get facilityOperationalStatus;
  @override
  FacilityUploadModel? get facilityUploads;
  @override
  List<FacilityAddressProofModel>? get facilityAddressProof;
  @override
  List<FacilityTimingModel>? get timingsOfFacility;
  @override
  List<AbdmCompliantSoftwareModel>? get abdmCompliantSoftware;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityInformationModelCopyWith<_$_FacilityInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityAddressModel _$FacilityAddressModelFromJson(Map<String, dynamic> json) {
  return _FacilityAddressModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityAddressModel {
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
  $FacilityAddressModelCopyWith<FacilityAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityAddressModelCopyWith<$Res> {
  factory $FacilityAddressModelCopyWith(FacilityAddressModel value,
          $Res Function(FacilityAddressModel) then) =
      _$FacilityAddressModelCopyWithImpl<$Res, FacilityAddressModel>;
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
class _$FacilityAddressModelCopyWithImpl<$Res,
        $Val extends FacilityAddressModel>
    implements $FacilityAddressModelCopyWith<$Res> {
  _$FacilityAddressModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_FacilityAddressModelCopyWith<$Res>
    implements $FacilityAddressModelCopyWith<$Res> {
  factory _$$_FacilityAddressModelCopyWith(_$_FacilityAddressModel value,
          $Res Function(_$_FacilityAddressModel) then) =
      __$$_FacilityAddressModelCopyWithImpl<$Res>;
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
class __$$_FacilityAddressModelCopyWithImpl<$Res>
    extends _$FacilityAddressModelCopyWithImpl<$Res, _$_FacilityAddressModel>
    implements _$$_FacilityAddressModelCopyWith<$Res> {
  __$$_FacilityAddressModelCopyWithImpl(_$_FacilityAddressModel _value,
      $Res Function(_$_FacilityAddressModel) _then)
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
    return _then(_$_FacilityAddressModel(
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
class _$_FacilityAddressModel implements _FacilityAddressModel {
  const _$_FacilityAddressModel(
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

  factory _$_FacilityAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityAddressModelFromJson(json);

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
    return 'FacilityAddressModel(country: $country, stateLGDCode: $stateLGDCode, districtLGDCode: $districtLGDCode, subDistrictLGDCode: $subDistrictLGDCode, facilityRegion: $facilityRegion, villageCityTownLGDCode: $villageCityTownLGDCode, addressLine1: $addressLine1, addressLine2: $addressLine2, latitude: $latitude, longitude: $longitude, osid: $osid, pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityAddressModel &&
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
  _$$_FacilityAddressModelCopyWith<_$_FacilityAddressModel> get copyWith =>
      __$$_FacilityAddressModelCopyWithImpl<_$_FacilityAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityAddressModelToJson(
      this,
    );
  }
}

abstract class _FacilityAddressModel implements FacilityAddressModel {
  const factory _FacilityAddressModel(
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
      final String? pincode}) = _$_FacilityAddressModel;

  factory _FacilityAddressModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityAddressModel.fromJson;

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
  _$$_FacilityAddressModelCopyWith<_$_FacilityAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FacilityContactInformationModel _$FacilityContactInformationModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityContactInformationModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityContactInformationModel {
  String? get facilityContactNumber => throw _privateConstructorUsedError;
  String? get facilityEmailId => throw _privateConstructorUsedError;
  String? get facilityLandlineNumber => throw _privateConstructorUsedError;
  String? get facilityStdCode => throw _privateConstructorUsedError;
  String? get websiteLink => throw _privateConstructorUsedError;
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
abstract class _$$_FacilityContactInformationModelCopyWith<$Res>
    implements $FacilityContactInformationModelCopyWith<$Res> {
  factory _$$_FacilityContactInformationModelCopyWith(
          _$_FacilityContactInformationModel value,
          $Res Function(_$_FacilityContactInformationModel) then) =
      __$$_FacilityContactInformationModelCopyWithImpl<$Res>;
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
class __$$_FacilityContactInformationModelCopyWithImpl<$Res>
    extends _$FacilityContactInformationModelCopyWithImpl<$Res,
        _$_FacilityContactInformationModel>
    implements _$$_FacilityContactInformationModelCopyWith<$Res> {
  __$$_FacilityContactInformationModelCopyWithImpl(
      _$_FacilityContactInformationModel _value,
      $Res Function(_$_FacilityContactInformationModel) _then)
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
    return _then(_$_FacilityContactInformationModel(
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
class _$_FacilityContactInformationModel
    implements _FacilityContactInformationModel {
  const _$_FacilityContactInformationModel(
      {this.facilityContactNumber,
      this.facilityEmailId,
      this.facilityLandlineNumber,
      this.facilityStdCode,
      this.websiteLink,
      this.osid});

  factory _$_FacilityContactInformationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_FacilityContactInformationModelFromJson(json);

  @override
  final String? facilityContactNumber;
  @override
  final String? facilityEmailId;
  @override
  final String? facilityLandlineNumber;
  @override
  final String? facilityStdCode;
  @override
  final String? websiteLink;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityContactInformationModel(facilityContactNumber: $facilityContactNumber, facilityEmailId: $facilityEmailId, facilityLandlineNumber: $facilityLandlineNumber, facilityStdCode: $facilityStdCode, websiteLink: $websiteLink, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityContactInformationModel &&
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
  _$$_FacilityContactInformationModelCopyWith<
          _$_FacilityContactInformationModel>
      get copyWith => __$$_FacilityContactInformationModelCopyWithImpl<
          _$_FacilityContactInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityContactInformationModelToJson(
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
      final String? osid}) = _$_FacilityContactInformationModel;

  factory _FacilityContactInformationModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityContactInformationModel.fromJson;

  @override
  String? get facilityContactNumber;
  @override
  String? get facilityEmailId;
  @override
  String? get facilityLandlineNumber;
  @override
  String? get facilityStdCode;
  @override
  String? get websiteLink;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityContactInformationModelCopyWith<
          _$_FacilityContactInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityUploadModel _$FacilityUploadModelFromJson(Map<String, dynamic> json) {
  return _FacilityUploadModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityUploadModel {
  DocumentModel? get facilityBoardPhoto => throw _privateConstructorUsedError;
  DocumentModel? get facilityBuildingPhoto =>
      throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityUploadModelCopyWith<FacilityUploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityUploadModelCopyWith<$Res> {
  factory $FacilityUploadModelCopyWith(
          FacilityUploadModel value, $Res Function(FacilityUploadModel) then) =
      _$FacilityUploadModelCopyWithImpl<$Res, FacilityUploadModel>;
  @useResult
  $Res call(
      {DocumentModel? facilityBoardPhoto,
      DocumentModel? facilityBuildingPhoto,
      String? osid});

  $DocumentModelCopyWith<$Res>? get facilityBoardPhoto;
  $DocumentModelCopyWith<$Res>? get facilityBuildingPhoto;
}

/// @nodoc
class _$FacilityUploadModelCopyWithImpl<$Res, $Val extends FacilityUploadModel>
    implements $FacilityUploadModelCopyWith<$Res> {
  _$FacilityUploadModelCopyWithImpl(this._value, this._then);

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
              as DocumentModel?,
      facilityBuildingPhoto: freezed == facilityBuildingPhoto
          ? _value.facilityBuildingPhoto
          : facilityBuildingPhoto // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get facilityBoardPhoto {
    if (_value.facilityBoardPhoto == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.facilityBoardPhoto!, (value) {
      return _then(_value.copyWith(facilityBoardPhoto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get facilityBuildingPhoto {
    if (_value.facilityBuildingPhoto == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.facilityBuildingPhoto!, (value) {
      return _then(_value.copyWith(facilityBuildingPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FacilityUploadModelCopyWith<$Res>
    implements $FacilityUploadModelCopyWith<$Res> {
  factory _$$_FacilityUploadModelCopyWith(_$_FacilityUploadModel value,
          $Res Function(_$_FacilityUploadModel) then) =
      __$$_FacilityUploadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentModel? facilityBoardPhoto,
      DocumentModel? facilityBuildingPhoto,
      String? osid});

  @override
  $DocumentModelCopyWith<$Res>? get facilityBoardPhoto;
  @override
  $DocumentModelCopyWith<$Res>? get facilityBuildingPhoto;
}

/// @nodoc
class __$$_FacilityUploadModelCopyWithImpl<$Res>
    extends _$FacilityUploadModelCopyWithImpl<$Res, _$_FacilityUploadModel>
    implements _$$_FacilityUploadModelCopyWith<$Res> {
  __$$_FacilityUploadModelCopyWithImpl(_$_FacilityUploadModel _value,
      $Res Function(_$_FacilityUploadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityBoardPhoto = freezed,
    Object? facilityBuildingPhoto = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_FacilityUploadModel(
      facilityBoardPhoto: freezed == facilityBoardPhoto
          ? _value.facilityBoardPhoto
          : facilityBoardPhoto // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      facilityBuildingPhoto: freezed == facilityBuildingPhoto
          ? _value.facilityBuildingPhoto
          : facilityBuildingPhoto // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityUploadModel implements _FacilityUploadModel {
  const _$_FacilityUploadModel(
      {this.facilityBoardPhoto, this.facilityBuildingPhoto, this.osid});

  factory _$_FacilityUploadModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityUploadModelFromJson(json);

  @override
  final DocumentModel? facilityBoardPhoto;
  @override
  final DocumentModel? facilityBuildingPhoto;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityUploadModel(facilityBoardPhoto: $facilityBoardPhoto, facilityBuildingPhoto: $facilityBuildingPhoto, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityUploadModel &&
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
  _$$_FacilityUploadModelCopyWith<_$_FacilityUploadModel> get copyWith =>
      __$$_FacilityUploadModelCopyWithImpl<_$_FacilityUploadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityUploadModelToJson(
      this,
    );
  }
}

abstract class _FacilityUploadModel implements FacilityUploadModel {
  const factory _FacilityUploadModel(
      {final DocumentModel? facilityBoardPhoto,
      final DocumentModel? facilityBuildingPhoto,
      final String? osid}) = _$_FacilityUploadModel;

  factory _FacilityUploadModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityUploadModel.fromJson;

  @override
  DocumentModel? get facilityBoardPhoto;
  @override
  DocumentModel? get facilityBuildingPhoto;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityUploadModelCopyWith<_$_FacilityUploadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FacilityAddressProofModel _$FacilityAddressProofModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityAddressProofModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityAddressProofModel {
  String? get addressProofType => throw _privateConstructorUsedError;
  DocumentModel? get addressProofAttachment =>
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
      DocumentModel? addressProofAttachment,
      String? osid});

  $DocumentModelCopyWith<$Res>? get addressProofAttachment;
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
              as DocumentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get addressProofAttachment {
    if (_value.addressProofAttachment == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.addressProofAttachment!,
        (value) {
      return _then(_value.copyWith(addressProofAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FacilityAddressProofModelCopyWith<$Res>
    implements $FacilityAddressProofModelCopyWith<$Res> {
  factory _$$_FacilityAddressProofModelCopyWith(
          _$_FacilityAddressProofModel value,
          $Res Function(_$_FacilityAddressProofModel) then) =
      __$$_FacilityAddressProofModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressProofType,
      DocumentModel? addressProofAttachment,
      String? osid});

  @override
  $DocumentModelCopyWith<$Res>? get addressProofAttachment;
}

/// @nodoc
class __$$_FacilityAddressProofModelCopyWithImpl<$Res>
    extends _$FacilityAddressProofModelCopyWithImpl<$Res,
        _$_FacilityAddressProofModel>
    implements _$$_FacilityAddressProofModelCopyWith<$Res> {
  __$$_FacilityAddressProofModelCopyWithImpl(
      _$_FacilityAddressProofModel _value,
      $Res Function(_$_FacilityAddressProofModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressProofType = freezed,
    Object? addressProofAttachment = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_FacilityAddressProofModel(
      addressProofType: freezed == addressProofType
          ? _value.addressProofType
          : addressProofType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressProofAttachment: freezed == addressProofAttachment
          ? _value.addressProofAttachment
          : addressProofAttachment // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityAddressProofModel implements _FacilityAddressProofModel {
  const _$_FacilityAddressProofModel(
      {this.addressProofType, this.addressProofAttachment, this.osid});

  factory _$_FacilityAddressProofModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityAddressProofModelFromJson(json);

  @override
  final String? addressProofType;
  @override
  final DocumentModel? addressProofAttachment;
  @override
  final String? osid;

  @override
  String toString() {
    return 'FacilityAddressProofModel(addressProofType: $addressProofType, addressProofAttachment: $addressProofAttachment, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityAddressProofModel &&
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
  _$$_FacilityAddressProofModelCopyWith<_$_FacilityAddressProofModel>
      get copyWith => __$$_FacilityAddressProofModelCopyWithImpl<
          _$_FacilityAddressProofModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityAddressProofModelToJson(
      this,
    );
  }
}

abstract class _FacilityAddressProofModel implements FacilityAddressProofModel {
  const factory _FacilityAddressProofModel(
      {final String? addressProofType,
      final DocumentModel? addressProofAttachment,
      final String? osid}) = _$_FacilityAddressProofModel;

  factory _FacilityAddressProofModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityAddressProofModel.fromJson;

  @override
  String? get addressProofType;
  @override
  DocumentModel? get addressProofAttachment;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityAddressProofModelCopyWith<_$_FacilityAddressProofModel>
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
abstract class _$$_FacilityTimingModelCopyWith<$Res>
    implements $FacilityTimingModelCopyWith<$Res> {
  factory _$$_FacilityTimingModelCopyWith(_$_FacilityTimingModel value,
          $Res Function(_$_FacilityTimingModel) then) =
      __$$_FacilityTimingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? workingDays, String? openingHours, String? osid});
}

/// @nodoc
class __$$_FacilityTimingModelCopyWithImpl<$Res>
    extends _$FacilityTimingModelCopyWithImpl<$Res, _$_FacilityTimingModel>
    implements _$$_FacilityTimingModelCopyWith<$Res> {
  __$$_FacilityTimingModelCopyWithImpl(_$_FacilityTimingModel _value,
      $Res Function(_$_FacilityTimingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingDays = freezed,
    Object? openingHours = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_FacilityTimingModel(
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
class _$_FacilityTimingModel implements _FacilityTimingModel {
  const _$_FacilityTimingModel(
      {this.workingDays, this.openingHours, this.osid});

  factory _$_FacilityTimingModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacilityTimingModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityTimingModel &&
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
  _$$_FacilityTimingModelCopyWith<_$_FacilityTimingModel> get copyWith =>
      __$$_FacilityTimingModelCopyWithImpl<_$_FacilityTimingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityTimingModelToJson(
      this,
    );
  }
}

abstract class _FacilityTimingModel implements FacilityTimingModel {
  const factory _FacilityTimingModel(
      {final String? workingDays,
      final String? openingHours,
      final String? osid}) = _$_FacilityTimingModel;

  factory _FacilityTimingModel.fromJson(Map<String, dynamic> json) =
      _$_FacilityTimingModel.fromJson;

  @override
  String? get workingDays;
  @override
  String? get openingHours;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityTimingModelCopyWith<_$_FacilityTimingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AbdmCompliantSoftwareModel _$AbdmCompliantSoftwareModelFromJson(
    Map<String, dynamic> json) {
  return _AbdmCompliantSoftwareModel.fromJson(json);
}

/// @nodoc
mixin _$AbdmCompliantSoftwareModel {
  List<String>? get existingSoftwares => throw _privateConstructorUsedError;
  String? get anyother => throw _privateConstructorUsedError;
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
  $Res call({List<String>? existingSoftwares, String? anyother, String? osid});
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
    Object? anyother = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      existingSoftwares: freezed == existingSoftwares
          ? _value.existingSoftwares
          : existingSoftwares // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anyother: freezed == anyother
          ? _value.anyother
          : anyother // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbdmCompliantSoftwareModelCopyWith<$Res>
    implements $AbdmCompliantSoftwareModelCopyWith<$Res> {
  factory _$$_AbdmCompliantSoftwareModelCopyWith(
          _$_AbdmCompliantSoftwareModel value,
          $Res Function(_$_AbdmCompliantSoftwareModel) then) =
      __$$_AbdmCompliantSoftwareModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? existingSoftwares, String? anyother, String? osid});
}

/// @nodoc
class __$$_AbdmCompliantSoftwareModelCopyWithImpl<$Res>
    extends _$AbdmCompliantSoftwareModelCopyWithImpl<$Res,
        _$_AbdmCompliantSoftwareModel>
    implements _$$_AbdmCompliantSoftwareModelCopyWith<$Res> {
  __$$_AbdmCompliantSoftwareModelCopyWithImpl(
      _$_AbdmCompliantSoftwareModel _value,
      $Res Function(_$_AbdmCompliantSoftwareModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? existingSoftwares = freezed,
    Object? anyother = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_AbdmCompliantSoftwareModel(
      existingSoftwares: freezed == existingSoftwares
          ? _value._existingSoftwares
          : existingSoftwares // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      anyother: freezed == anyother
          ? _value.anyother
          : anyother // ignore: cast_nullable_to_non_nullable
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
class _$_AbdmCompliantSoftwareModel implements _AbdmCompliantSoftwareModel {
  const _$_AbdmCompliantSoftwareModel(
      {final List<String>? existingSoftwares, this.anyother, this.osid})
      : _existingSoftwares = existingSoftwares;

  factory _$_AbdmCompliantSoftwareModel.fromJson(Map<String, dynamic> json) =>
      _$$_AbdmCompliantSoftwareModelFromJson(json);

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
  final String? anyother;
  @override
  final String? osid;

  @override
  String toString() {
    return 'AbdmCompliantSoftwareModel(existingSoftwares: $existingSoftwares, anyother: $anyother, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbdmCompliantSoftwareModel &&
            const DeepCollectionEquality()
                .equals(other._existingSoftwares, _existingSoftwares) &&
            (identical(other.anyother, anyother) ||
                other.anyother == anyother) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_existingSoftwares), anyother, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbdmCompliantSoftwareModelCopyWith<_$_AbdmCompliantSoftwareModel>
      get copyWith => __$$_AbdmCompliantSoftwareModelCopyWithImpl<
          _$_AbdmCompliantSoftwareModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbdmCompliantSoftwareModelToJson(
      this,
    );
  }
}

abstract class _AbdmCompliantSoftwareModel
    implements AbdmCompliantSoftwareModel {
  const factory _AbdmCompliantSoftwareModel(
      {final List<String>? existingSoftwares,
      final String? anyother,
      final String? osid}) = _$_AbdmCompliantSoftwareModel;

  factory _AbdmCompliantSoftwareModel.fromJson(Map<String, dynamic> json) =
      _$_AbdmCompliantSoftwareModel.fromJson;

  @override
  List<String>? get existingSoftwares;
  @override
  String? get anyother;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_AbdmCompliantSoftwareModelCopyWith<_$_AbdmCompliantSoftwareModel>
      get copyWith => throw _privateConstructorUsedError;
}

FacilityAdditionalInformationModel _$FacilityAdditionalInformationModelFromJson(
    Map<String, dynamic> json) {
  return _FacilityAdditionalInformationModel.fromJson(json);
}

/// @nodoc
mixin _$FacilityAdditionalInformationModel {
  String? get trackingId => throw _privateConstructorUsedError;
  GeneralInformationModel? get generalInformation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityAdditionalInformationModelCopyWith<
          FacilityAdditionalInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityAdditionalInformationModelCopyWith<$Res> {
  factory $FacilityAdditionalInformationModelCopyWith(
          FacilityAdditionalInformationModel value,
          $Res Function(FacilityAdditionalInformationModel) then) =
      _$FacilityAdditionalInformationModelCopyWithImpl<$Res,
          FacilityAdditionalInformationModel>;
  @useResult
  $Res call({String? trackingId, GeneralInformationModel? generalInformation});

  $GeneralInformationModelCopyWith<$Res>? get generalInformation;
}

/// @nodoc
class _$FacilityAdditionalInformationModelCopyWithImpl<$Res,
        $Val extends FacilityAdditionalInformationModel>
    implements $FacilityAdditionalInformationModelCopyWith<$Res> {
  _$FacilityAdditionalInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = freezed,
    Object? generalInformation = freezed,
  }) {
    return _then(_value.copyWith(
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      generalInformation: freezed == generalInformation
          ? _value.generalInformation
          : generalInformation // ignore: cast_nullable_to_non_nullable
              as GeneralInformationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeneralInformationModelCopyWith<$Res>? get generalInformation {
    if (_value.generalInformation == null) {
      return null;
    }

    return $GeneralInformationModelCopyWith<$Res>(_value.generalInformation!,
        (value) {
      return _then(_value.copyWith(generalInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FacilityAdditionalInformationModelCopyWith<$Res>
    implements $FacilityAdditionalInformationModelCopyWith<$Res> {
  factory _$$_FacilityAdditionalInformationModelCopyWith(
          _$_FacilityAdditionalInformationModel value,
          $Res Function(_$_FacilityAdditionalInformationModel) then) =
      __$$_FacilityAdditionalInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? trackingId, GeneralInformationModel? generalInformation});

  @override
  $GeneralInformationModelCopyWith<$Res>? get generalInformation;
}

/// @nodoc
class __$$_FacilityAdditionalInformationModelCopyWithImpl<$Res>
    extends _$FacilityAdditionalInformationModelCopyWithImpl<$Res,
        _$_FacilityAdditionalInformationModel>
    implements _$$_FacilityAdditionalInformationModelCopyWith<$Res> {
  __$$_FacilityAdditionalInformationModelCopyWithImpl(
      _$_FacilityAdditionalInformationModel _value,
      $Res Function(_$_FacilityAdditionalInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = freezed,
    Object? generalInformation = freezed,
  }) {
    return _then(_$_FacilityAdditionalInformationModel(
      trackingId: freezed == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String?,
      generalInformation: freezed == generalInformation
          ? _value.generalInformation
          : generalInformation // ignore: cast_nullable_to_non_nullable
              as GeneralInformationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacilityAdditionalInformationModel
    implements _FacilityAdditionalInformationModel {
  const _$_FacilityAdditionalInformationModel(
      {this.trackingId, this.generalInformation});

  factory _$_FacilityAdditionalInformationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_FacilityAdditionalInformationModelFromJson(json);

  @override
  final String? trackingId;
  @override
  final GeneralInformationModel? generalInformation;

  @override
  String toString() {
    return 'FacilityAdditionalInformationModel(trackingId: $trackingId, generalInformation: $generalInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacilityAdditionalInformationModel &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.generalInformation, generalInformation) ||
                other.generalInformation == generalInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trackingId, generalInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacilityAdditionalInformationModelCopyWith<
          _$_FacilityAdditionalInformationModel>
      get copyWith => __$$_FacilityAdditionalInformationModelCopyWithImpl<
          _$_FacilityAdditionalInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacilityAdditionalInformationModelToJson(
      this,
    );
  }
}

abstract class _FacilityAdditionalInformationModel
    implements FacilityAdditionalInformationModel {
  const factory _FacilityAdditionalInformationModel(
          {final String? trackingId,
          final GeneralInformationModel? generalInformation}) =
      _$_FacilityAdditionalInformationModel;

  factory _FacilityAdditionalInformationModel.fromJson(
          Map<String, dynamic> json) =
      _$_FacilityAdditionalInformationModel.fromJson;

  @override
  String? get trackingId;
  @override
  GeneralInformationModel? get generalInformation;
  @override
  @JsonKey(ignore: true)
  _$$_FacilityAdditionalInformationModelCopyWith<
          _$_FacilityAdditionalInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

GeneralInformationModel _$GeneralInformationModelFromJson(
    Map<String, dynamic> json) {
  return _GeneralInformationModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralInformationModel {
  String? get hasDialysisCenter => throw _privateConstructorUsedError;
  String? get hasPharmacy => throw _privateConstructorUsedError;
  String? get hasBloodBank => throw _privateConstructorUsedError;
  String? get hasCathLab => throw _privateConstructorUsedError;
  String? get hasDiagnosticLab => throw _privateConstructorUsedError;
  String? get hasImagingCenter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInformationModelCopyWith<GeneralInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInformationModelCopyWith<$Res> {
  factory $GeneralInformationModelCopyWith(GeneralInformationModel value,
          $Res Function(GeneralInformationModel) then) =
      _$GeneralInformationModelCopyWithImpl<$Res, GeneralInformationModel>;
  @useResult
  $Res call(
      {String? hasDialysisCenter,
      String? hasPharmacy,
      String? hasBloodBank,
      String? hasCathLab,
      String? hasDiagnosticLab,
      String? hasImagingCenter});
}

/// @nodoc
class _$GeneralInformationModelCopyWithImpl<$Res,
        $Val extends GeneralInformationModel>
    implements $GeneralInformationModelCopyWith<$Res> {
  _$GeneralInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDialysisCenter = freezed,
    Object? hasPharmacy = freezed,
    Object? hasBloodBank = freezed,
    Object? hasCathLab = freezed,
    Object? hasDiagnosticLab = freezed,
    Object? hasImagingCenter = freezed,
  }) {
    return _then(_value.copyWith(
      hasDialysisCenter: freezed == hasDialysisCenter
          ? _value.hasDialysisCenter
          : hasDialysisCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPharmacy: freezed == hasPharmacy
          ? _value.hasPharmacy
          : hasPharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBloodBank: freezed == hasBloodBank
          ? _value.hasBloodBank
          : hasBloodBank // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCathLab: freezed == hasCathLab
          ? _value.hasCathLab
          : hasCathLab // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDiagnosticLab: freezed == hasDiagnosticLab
          ? _value.hasDiagnosticLab
          : hasDiagnosticLab // ignore: cast_nullable_to_non_nullable
              as String?,
      hasImagingCenter: freezed == hasImagingCenter
          ? _value.hasImagingCenter
          : hasImagingCenter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralInformationModelCopyWith<$Res>
    implements $GeneralInformationModelCopyWith<$Res> {
  factory _$$_GeneralInformationModelCopyWith(_$_GeneralInformationModel value,
          $Res Function(_$_GeneralInformationModel) then) =
      __$$_GeneralInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hasDialysisCenter,
      String? hasPharmacy,
      String? hasBloodBank,
      String? hasCathLab,
      String? hasDiagnosticLab,
      String? hasImagingCenter});
}

/// @nodoc
class __$$_GeneralInformationModelCopyWithImpl<$Res>
    extends _$GeneralInformationModelCopyWithImpl<$Res,
        _$_GeneralInformationModel>
    implements _$$_GeneralInformationModelCopyWith<$Res> {
  __$$_GeneralInformationModelCopyWithImpl(_$_GeneralInformationModel _value,
      $Res Function(_$_GeneralInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasDialysisCenter = freezed,
    Object? hasPharmacy = freezed,
    Object? hasBloodBank = freezed,
    Object? hasCathLab = freezed,
    Object? hasDiagnosticLab = freezed,
    Object? hasImagingCenter = freezed,
  }) {
    return _then(_$_GeneralInformationModel(
      hasDialysisCenter: freezed == hasDialysisCenter
          ? _value.hasDialysisCenter
          : hasDialysisCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPharmacy: freezed == hasPharmacy
          ? _value.hasPharmacy
          : hasPharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBloodBank: freezed == hasBloodBank
          ? _value.hasBloodBank
          : hasBloodBank // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCathLab: freezed == hasCathLab
          ? _value.hasCathLab
          : hasCathLab // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDiagnosticLab: freezed == hasDiagnosticLab
          ? _value.hasDiagnosticLab
          : hasDiagnosticLab // ignore: cast_nullable_to_non_nullable
              as String?,
      hasImagingCenter: freezed == hasImagingCenter
          ? _value.hasImagingCenter
          : hasImagingCenter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralInformationModel implements _GeneralInformationModel {
  const _$_GeneralInformationModel(
      {this.hasDialysisCenter,
      this.hasPharmacy,
      this.hasBloodBank,
      this.hasCathLab,
      this.hasDiagnosticLab,
      this.hasImagingCenter});

  factory _$_GeneralInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInformationModelFromJson(json);

  @override
  final String? hasDialysisCenter;
  @override
  final String? hasPharmacy;
  @override
  final String? hasBloodBank;
  @override
  final String? hasCathLab;
  @override
  final String? hasDiagnosticLab;
  @override
  final String? hasImagingCenter;

  @override
  String toString() {
    return 'GeneralInformationModel(hasDialysisCenter: $hasDialysisCenter, hasPharmacy: $hasPharmacy, hasBloodBank: $hasBloodBank, hasCathLab: $hasCathLab, hasDiagnosticLab: $hasDiagnosticLab, hasImagingCenter: $hasImagingCenter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralInformationModel &&
            (identical(other.hasDialysisCenter, hasDialysisCenter) ||
                other.hasDialysisCenter == hasDialysisCenter) &&
            (identical(other.hasPharmacy, hasPharmacy) ||
                other.hasPharmacy == hasPharmacy) &&
            (identical(other.hasBloodBank, hasBloodBank) ||
                other.hasBloodBank == hasBloodBank) &&
            (identical(other.hasCathLab, hasCathLab) ||
                other.hasCathLab == hasCathLab) &&
            (identical(other.hasDiagnosticLab, hasDiagnosticLab) ||
                other.hasDiagnosticLab == hasDiagnosticLab) &&
            (identical(other.hasImagingCenter, hasImagingCenter) ||
                other.hasImagingCenter == hasImagingCenter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasDialysisCenter, hasPharmacy,
      hasBloodBank, hasCathLab, hasDiagnosticLab, hasImagingCenter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralInformationModelCopyWith<_$_GeneralInformationModel>
      get copyWith =>
          __$$_GeneralInformationModelCopyWithImpl<_$_GeneralInformationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralInformationModelToJson(
      this,
    );
  }
}

abstract class _GeneralInformationModel implements GeneralInformationModel {
  const factory _GeneralInformationModel(
      {final String? hasDialysisCenter,
      final String? hasPharmacy,
      final String? hasBloodBank,
      final String? hasCathLab,
      final String? hasDiagnosticLab,
      final String? hasImagingCenter}) = _$_GeneralInformationModel;

  factory _GeneralInformationModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralInformationModel.fromJson;

  @override
  String? get hasDialysisCenter;
  @override
  String? get hasPharmacy;
  @override
  String? get hasBloodBank;
  @override
  String? get hasCathLab;
  @override
  String? get hasDiagnosticLab;
  @override
  String? get hasImagingCenter;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralInformationModelCopyWith<_$_GeneralInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DocumentModelCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$_DocumentModelCopyWith(
          _$_DocumentModel value, $Res Function(_$_DocumentModel) then) =
      __$$_DocumentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value, String? osid});
}

/// @nodoc
class __$$_DocumentModelCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$_DocumentModel>
    implements _$$_DocumentModelCopyWith<$Res> {
  __$$_DocumentModelCopyWithImpl(
      _$_DocumentModel _value, $Res Function(_$_DocumentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_DocumentModel(
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
class _$_DocumentModel implements _DocumentModel {
  const _$_DocumentModel({this.name, this.value, this.osid});

  factory _$_DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentModelFromJson(json);

  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? osid;

  @override
  String toString() {
    return 'DocumentModel(name: $name, value: $value, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentModel &&
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
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      __$$_DocumentModelCopyWithImpl<_$_DocumentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentModelToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
      {final String? name,
      final String? value,
      final String? osid}) = _$_DocumentModel;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentModel.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
