// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vg_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VgProfileModel _$VgProfileModelFromJson(Map<String, dynamic> json) {
  return _VgProfileModel.fromJson(json);
}

/// @nodoc
mixin _$VgProfileModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "healthProfessionalType")
  String? get healthProfessionalType => throw _privateConstructorUsedError;
  @JsonKey(name: "practitionerType")
  String? get practitionerType => throw _privateConstructorUsedError;
  @JsonKey(name: "officialMobileCode")
  String? get officialMobileCode => throw _privateConstructorUsedError;
  @JsonKey(name: "officialMobile")
  String? get officialMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "officialEmail")
  String? get officialEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "visibleProfilePicture")
  String? get visibleProfilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: "personalInformation")
  PersonalInformation? get personalInformation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "communicationAddress")
  CommunicationAddress? get communicationAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "contactInformation")
  ContactInformation? get contactInformation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "registrationAcademic")
  RegistrationAcademic? get registrationAcademic =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "currentWorkDetails")
  CurrentWorkDetails? get currentWorkDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "availableForTeleconsultation")
  bool? get availableForTeleconsultation => throw _privateConstructorUsedError;
  @JsonKey(name: "practiceGrants")
  List<PracticeGrant>? get practiceGrants => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VgProfileModelCopyWith<VgProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VgProfileModelCopyWith<$Res> {
  factory $VgProfileModelCopyWith(
          VgProfileModel value, $Res Function(VgProfileModel) then) =
      _$VgProfileModelCopyWithImpl<$Res, VgProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "healthProfessionalType") String? healthProfessionalType,
      @JsonKey(name: "practitionerType") String? practitionerType,
      @JsonKey(name: "officialMobileCode") String? officialMobileCode,
      @JsonKey(name: "officialMobile") String? officialMobile,
      @JsonKey(name: "officialEmail") String? officialEmail,
      @JsonKey(name: "visibleProfilePicture") String? visibleProfilePicture,
      @JsonKey(name: "personalInformation")
      PersonalInformation? personalInformation,
      @JsonKey(name: "communicationAddress")
      CommunicationAddress? communicationAddress,
      @JsonKey(name: "contactInformation")
      ContactInformation? contactInformation,
      @JsonKey(name: "registrationAcademic")
      RegistrationAcademic? registrationAcademic,
      @JsonKey(name: "currentWorkDetails")
      CurrentWorkDetails? currentWorkDetails,
      @JsonKey(name: "availableForTeleconsultation")
      bool? availableForTeleconsultation,
      @JsonKey(name: "practiceGrants") List<PracticeGrant>? practiceGrants,
      @JsonKey(name: "osid") String? osid});

  $PersonalInformationCopyWith<$Res>? get personalInformation;
  $CommunicationAddressCopyWith<$Res>? get communicationAddress;
  $ContactInformationCopyWith<$Res>? get contactInformation;
  $RegistrationAcademicCopyWith<$Res>? get registrationAcademic;
  $CurrentWorkDetailsCopyWith<$Res>? get currentWorkDetails;
}

/// @nodoc
class _$VgProfileModelCopyWithImpl<$Res, $Val extends VgProfileModel>
    implements $VgProfileModelCopyWith<$Res> {
  _$VgProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profilePhoto = freezed,
    Object? healthProfessionalType = freezed,
    Object? practitionerType = freezed,
    Object? officialMobileCode = freezed,
    Object? officialMobile = freezed,
    Object? officialEmail = freezed,
    Object? visibleProfilePicture = freezed,
    Object? personalInformation = freezed,
    Object? communicationAddress = freezed,
    Object? contactInformation = freezed,
    Object? registrationAcademic = freezed,
    Object? currentWorkDetails = freezed,
    Object? availableForTeleconsultation = freezed,
    Object? practiceGrants = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      healthProfessionalType: freezed == healthProfessionalType
          ? _value.healthProfessionalType
          : healthProfessionalType // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerType: freezed == practitionerType
          ? _value.practitionerType
          : practitionerType // ignore: cast_nullable_to_non_nullable
              as String?,
      officialMobileCode: freezed == officialMobileCode
          ? _value.officialMobileCode
          : officialMobileCode // ignore: cast_nullable_to_non_nullable
              as String?,
      officialMobile: freezed == officialMobile
          ? _value.officialMobile
          : officialMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      officialEmail: freezed == officialEmail
          ? _value.officialEmail
          : officialEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleProfilePicture: freezed == visibleProfilePicture
          ? _value.visibleProfilePicture
          : visibleProfilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInformation: freezed == personalInformation
          ? _value.personalInformation
          : personalInformation // ignore: cast_nullable_to_non_nullable
              as PersonalInformation?,
      communicationAddress: freezed == communicationAddress
          ? _value.communicationAddress
          : communicationAddress // ignore: cast_nullable_to_non_nullable
              as CommunicationAddress?,
      contactInformation: freezed == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as ContactInformation?,
      registrationAcademic: freezed == registrationAcademic
          ? _value.registrationAcademic
          : registrationAcademic // ignore: cast_nullable_to_non_nullable
              as RegistrationAcademic?,
      currentWorkDetails: freezed == currentWorkDetails
          ? _value.currentWorkDetails
          : currentWorkDetails // ignore: cast_nullable_to_non_nullable
              as CurrentWorkDetails?,
      availableForTeleconsultation: freezed == availableForTeleconsultation
          ? _value.availableForTeleconsultation
          : availableForTeleconsultation // ignore: cast_nullable_to_non_nullable
              as bool?,
      practiceGrants: freezed == practiceGrants
          ? _value.practiceGrants
          : practiceGrants // ignore: cast_nullable_to_non_nullable
              as List<PracticeGrant>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalInformationCopyWith<$Res>? get personalInformation {
    if (_value.personalInformation == null) {
      return null;
    }

    return $PersonalInformationCopyWith<$Res>(_value.personalInformation!,
        (value) {
      return _then(_value.copyWith(personalInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunicationAddressCopyWith<$Res>? get communicationAddress {
    if (_value.communicationAddress == null) {
      return null;
    }

    return $CommunicationAddressCopyWith<$Res>(_value.communicationAddress!,
        (value) {
      return _then(_value.copyWith(communicationAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactInformationCopyWith<$Res>? get contactInformation {
    if (_value.contactInformation == null) {
      return null;
    }

    return $ContactInformationCopyWith<$Res>(_value.contactInformation!,
        (value) {
      return _then(_value.copyWith(contactInformation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegistrationAcademicCopyWith<$Res>? get registrationAcademic {
    if (_value.registrationAcademic == null) {
      return null;
    }

    return $RegistrationAcademicCopyWith<$Res>(_value.registrationAcademic!,
        (value) {
      return _then(_value.copyWith(registrationAcademic: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWorkDetailsCopyWith<$Res>? get currentWorkDetails {
    if (_value.currentWorkDetails == null) {
      return null;
    }

    return $CurrentWorkDetailsCopyWith<$Res>(_value.currentWorkDetails!,
        (value) {
      return _then(_value.copyWith(currentWorkDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VgProfileModelCopyWith<$Res>
    implements $VgProfileModelCopyWith<$Res> {
  factory _$$_VgProfileModelCopyWith(
          _$_VgProfileModel value, $Res Function(_$_VgProfileModel) then) =
      __$$_VgProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "healthProfessionalType") String? healthProfessionalType,
      @JsonKey(name: "practitionerType") String? practitionerType,
      @JsonKey(name: "officialMobileCode") String? officialMobileCode,
      @JsonKey(name: "officialMobile") String? officialMobile,
      @JsonKey(name: "officialEmail") String? officialEmail,
      @JsonKey(name: "visibleProfilePicture") String? visibleProfilePicture,
      @JsonKey(name: "personalInformation")
      PersonalInformation? personalInformation,
      @JsonKey(name: "communicationAddress")
      CommunicationAddress? communicationAddress,
      @JsonKey(name: "contactInformation")
      ContactInformation? contactInformation,
      @JsonKey(name: "registrationAcademic")
      RegistrationAcademic? registrationAcademic,
      @JsonKey(name: "currentWorkDetails")
      CurrentWorkDetails? currentWorkDetails,
      @JsonKey(name: "availableForTeleconsultation")
      bool? availableForTeleconsultation,
      @JsonKey(name: "practiceGrants") List<PracticeGrant>? practiceGrants,
      @JsonKey(name: "osid") String? osid});

  @override
  $PersonalInformationCopyWith<$Res>? get personalInformation;
  @override
  $CommunicationAddressCopyWith<$Res>? get communicationAddress;
  @override
  $ContactInformationCopyWith<$Res>? get contactInformation;
  @override
  $RegistrationAcademicCopyWith<$Res>? get registrationAcademic;
  @override
  $CurrentWorkDetailsCopyWith<$Res>? get currentWorkDetails;
}

/// @nodoc
class __$$_VgProfileModelCopyWithImpl<$Res>
    extends _$VgProfileModelCopyWithImpl<$Res, _$_VgProfileModel>
    implements _$$_VgProfileModelCopyWith<$Res> {
  __$$_VgProfileModelCopyWithImpl(
      _$_VgProfileModel _value, $Res Function(_$_VgProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profilePhoto = freezed,
    Object? healthProfessionalType = freezed,
    Object? practitionerType = freezed,
    Object? officialMobileCode = freezed,
    Object? officialMobile = freezed,
    Object? officialEmail = freezed,
    Object? visibleProfilePicture = freezed,
    Object? personalInformation = freezed,
    Object? communicationAddress = freezed,
    Object? contactInformation = freezed,
    Object? registrationAcademic = freezed,
    Object? currentWorkDetails = freezed,
    Object? availableForTeleconsultation = freezed,
    Object? practiceGrants = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_VgProfileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      healthProfessionalType: freezed == healthProfessionalType
          ? _value.healthProfessionalType
          : healthProfessionalType // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerType: freezed == practitionerType
          ? _value.practitionerType
          : practitionerType // ignore: cast_nullable_to_non_nullable
              as String?,
      officialMobileCode: freezed == officialMobileCode
          ? _value.officialMobileCode
          : officialMobileCode // ignore: cast_nullable_to_non_nullable
              as String?,
      officialMobile: freezed == officialMobile
          ? _value.officialMobile
          : officialMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      officialEmail: freezed == officialEmail
          ? _value.officialEmail
          : officialEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleProfilePicture: freezed == visibleProfilePicture
          ? _value.visibleProfilePicture
          : visibleProfilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInformation: freezed == personalInformation
          ? _value.personalInformation
          : personalInformation // ignore: cast_nullable_to_non_nullable
              as PersonalInformation?,
      communicationAddress: freezed == communicationAddress
          ? _value.communicationAddress
          : communicationAddress // ignore: cast_nullable_to_non_nullable
              as CommunicationAddress?,
      contactInformation: freezed == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as ContactInformation?,
      registrationAcademic: freezed == registrationAcademic
          ? _value.registrationAcademic
          : registrationAcademic // ignore: cast_nullable_to_non_nullable
              as RegistrationAcademic?,
      currentWorkDetails: freezed == currentWorkDetails
          ? _value.currentWorkDetails
          : currentWorkDetails // ignore: cast_nullable_to_non_nullable
              as CurrentWorkDetails?,
      availableForTeleconsultation: freezed == availableForTeleconsultation
          ? _value.availableForTeleconsultation
          : availableForTeleconsultation // ignore: cast_nullable_to_non_nullable
              as bool?,
      practiceGrants: freezed == practiceGrants
          ? _value._practiceGrants
          : practiceGrants // ignore: cast_nullable_to_non_nullable
              as List<PracticeGrant>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VgProfileModel implements _VgProfileModel {
  const _$_VgProfileModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "healthProfessionalType") this.healthProfessionalType,
      @JsonKey(name: "practitionerType") this.practitionerType,
      @JsonKey(name: "officialMobileCode") this.officialMobileCode,
      @JsonKey(name: "officialMobile") this.officialMobile,
      @JsonKey(name: "officialEmail") this.officialEmail,
      @JsonKey(name: "visibleProfilePicture") this.visibleProfilePicture,
      @JsonKey(name: "personalInformation") this.personalInformation,
      @JsonKey(name: "communicationAddress") this.communicationAddress,
      @JsonKey(name: "contactInformation") this.contactInformation,
      @JsonKey(name: "registrationAcademic") this.registrationAcademic,
      @JsonKey(name: "currentWorkDetails") this.currentWorkDetails,
      @JsonKey(name: "availableForTeleconsultation")
      this.availableForTeleconsultation,
      @JsonKey(name: "practiceGrants")
      final List<PracticeGrant>? practiceGrants,
      @JsonKey(name: "osid") this.osid})
      : _practiceGrants = practiceGrants;

  factory _$_VgProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_VgProfileModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
  @override
  @JsonKey(name: "healthProfessionalType")
  final String? healthProfessionalType;
  @override
  @JsonKey(name: "practitionerType")
  final String? practitionerType;
  @override
  @JsonKey(name: "officialMobileCode")
  final String? officialMobileCode;
  @override
  @JsonKey(name: "officialMobile")
  final String? officialMobile;
  @override
  @JsonKey(name: "officialEmail")
  final String? officialEmail;
  @override
  @JsonKey(name: "visibleProfilePicture")
  final String? visibleProfilePicture;
  @override
  @JsonKey(name: "personalInformation")
  final PersonalInformation? personalInformation;
  @override
  @JsonKey(name: "communicationAddress")
  final CommunicationAddress? communicationAddress;
  @override
  @JsonKey(name: "contactInformation")
  final ContactInformation? contactInformation;
  @override
  @JsonKey(name: "registrationAcademic")
  final RegistrationAcademic? registrationAcademic;
  @override
  @JsonKey(name: "currentWorkDetails")
  final CurrentWorkDetails? currentWorkDetails;
  @override
  @JsonKey(name: "availableForTeleconsultation")
  final bool? availableForTeleconsultation;
  final List<PracticeGrant>? _practiceGrants;
  @override
  @JsonKey(name: "practiceGrants")
  List<PracticeGrant>? get practiceGrants {
    final value = _practiceGrants;
    if (value == null) return null;
    if (_practiceGrants is EqualUnmodifiableListView) return _practiceGrants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'VgProfileModel(id: $id, profilePhoto: $profilePhoto, healthProfessionalType: $healthProfessionalType, practitionerType: $practitionerType, officialMobileCode: $officialMobileCode, officialMobile: $officialMobile, officialEmail: $officialEmail, visibleProfilePicture: $visibleProfilePicture, personalInformation: $personalInformation, communicationAddress: $communicationAddress, contactInformation: $contactInformation, registrationAcademic: $registrationAcademic, currentWorkDetails: $currentWorkDetails, availableForTeleconsultation: $availableForTeleconsultation, practiceGrants: $practiceGrants, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VgProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.healthProfessionalType, healthProfessionalType) ||
                other.healthProfessionalType == healthProfessionalType) &&
            (identical(other.practitionerType, practitionerType) ||
                other.practitionerType == practitionerType) &&
            (identical(other.officialMobileCode, officialMobileCode) ||
                other.officialMobileCode == officialMobileCode) &&
            (identical(other.officialMobile, officialMobile) ||
                other.officialMobile == officialMobile) &&
            (identical(other.officialEmail, officialEmail) ||
                other.officialEmail == officialEmail) &&
            (identical(other.visibleProfilePicture, visibleProfilePicture) ||
                other.visibleProfilePicture == visibleProfilePicture) &&
            (identical(other.personalInformation, personalInformation) ||
                other.personalInformation == personalInformation) &&
            (identical(other.communicationAddress, communicationAddress) ||
                other.communicationAddress == communicationAddress) &&
            (identical(other.contactInformation, contactInformation) ||
                other.contactInformation == contactInformation) &&
            (identical(other.registrationAcademic, registrationAcademic) ||
                other.registrationAcademic == registrationAcademic) &&
            (identical(other.currentWorkDetails, currentWorkDetails) ||
                other.currentWorkDetails == currentWorkDetails) &&
            (identical(other.availableForTeleconsultation,
                    availableForTeleconsultation) ||
                other.availableForTeleconsultation ==
                    availableForTeleconsultation) &&
            const DeepCollectionEquality()
                .equals(other._practiceGrants, _practiceGrants) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profilePhoto,
      healthProfessionalType,
      practitionerType,
      officialMobileCode,
      officialMobile,
      officialEmail,
      visibleProfilePicture,
      personalInformation,
      communicationAddress,
      contactInformation,
      registrationAcademic,
      currentWorkDetails,
      availableForTeleconsultation,
      const DeepCollectionEquality().hash(_practiceGrants),
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VgProfileModelCopyWith<_$_VgProfileModel> get copyWith =>
      __$$_VgProfileModelCopyWithImpl<_$_VgProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VgProfileModelToJson(
      this,
    );
  }
}

abstract class _VgProfileModel implements VgProfileModel {
  const factory _VgProfileModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "healthProfessionalType")
      final String? healthProfessionalType,
      @JsonKey(name: "practitionerType") final String? practitionerType,
      @JsonKey(name: "officialMobileCode") final String? officialMobileCode,
      @JsonKey(name: "officialMobile") final String? officialMobile,
      @JsonKey(name: "officialEmail") final String? officialEmail,
      @JsonKey(name: "visibleProfilePicture")
      final String? visibleProfilePicture,
      @JsonKey(name: "personalInformation")
      final PersonalInformation? personalInformation,
      @JsonKey(name: "communicationAddress")
      final CommunicationAddress? communicationAddress,
      @JsonKey(name: "contactInformation")
      final ContactInformation? contactInformation,
      @JsonKey(name: "registrationAcademic")
      final RegistrationAcademic? registrationAcademic,
      @JsonKey(name: "currentWorkDetails")
      final CurrentWorkDetails? currentWorkDetails,
      @JsonKey(name: "availableForTeleconsultation")
      final bool? availableForTeleconsultation,
      @JsonKey(name: "practiceGrants")
      final List<PracticeGrant>? practiceGrants,
      @JsonKey(name: "osid") final String? osid}) = _$_VgProfileModel;

  factory _VgProfileModel.fromJson(Map<String, dynamic> json) =
      _$_VgProfileModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "healthProfessionalType")
  String? get healthProfessionalType;
  @override
  @JsonKey(name: "practitionerType")
  String? get practitionerType;
  @override
  @JsonKey(name: "officialMobileCode")
  String? get officialMobileCode;
  @override
  @JsonKey(name: "officialMobile")
  String? get officialMobile;
  @override
  @JsonKey(name: "officialEmail")
  String? get officialEmail;
  @override
  @JsonKey(name: "visibleProfilePicture")
  String? get visibleProfilePicture;
  @override
  @JsonKey(name: "personalInformation")
  PersonalInformation? get personalInformation;
  @override
  @JsonKey(name: "communicationAddress")
  CommunicationAddress? get communicationAddress;
  @override
  @JsonKey(name: "contactInformation")
  ContactInformation? get contactInformation;
  @override
  @JsonKey(name: "registrationAcademic")
  RegistrationAcademic? get registrationAcademic;
  @override
  @JsonKey(name: "currentWorkDetails")
  CurrentWorkDetails? get currentWorkDetails;
  @override
  @JsonKey(name: "availableForTeleconsultation")
  bool? get availableForTeleconsultation;
  @override
  @JsonKey(name: "practiceGrants")
  List<PracticeGrant>? get practiceGrants;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_VgProfileModelCopyWith<_$_VgProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunicationAddress _$CommunicationAddressFromJson(Map<String, dynamic> json) {
  return _CommunicationAddress.fromJson(json);
}

/// @nodoc
mixin _$CommunicationAddress {
  @JsonKey(name: "isCommunicationAddressAsPerKYC")
  String? get isCommunicationAddressAsPerKyc =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "postalCode")
  String? get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationAddressCopyWith<CommunicationAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationAddressCopyWith<$Res> {
  factory $CommunicationAddressCopyWith(CommunicationAddress value,
          $Res Function(CommunicationAddress) then) =
      _$CommunicationAddressCopyWithImpl<$Res, CommunicationAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "isCommunicationAddressAsPerKYC")
      String? isCommunicationAddressAsPerKyc,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "postalCode") String? postalCode,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$CommunicationAddressCopyWithImpl<$Res,
        $Val extends CommunicationAddress>
    implements $CommunicationAddressCopyWith<$Res> {
  _$CommunicationAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCommunicationAddressAsPerKyc = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      isCommunicationAddressAsPerKyc: freezed == isCommunicationAddressAsPerKyc
          ? _value.isCommunicationAddressAsPerKyc
          : isCommunicationAddressAsPerKyc // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommunicationAddressCopyWith<$Res>
    implements $CommunicationAddressCopyWith<$Res> {
  factory _$$_CommunicationAddressCopyWith(_$_CommunicationAddress value,
          $Res Function(_$_CommunicationAddress) then) =
      __$$_CommunicationAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isCommunicationAddressAsPerKYC")
      String? isCommunicationAddressAsPerKyc,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "postalCode") String? postalCode,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_CommunicationAddressCopyWithImpl<$Res>
    extends _$CommunicationAddressCopyWithImpl<$Res, _$_CommunicationAddress>
    implements _$$_CommunicationAddressCopyWith<$Res> {
  __$$_CommunicationAddressCopyWithImpl(_$_CommunicationAddress _value,
      $Res Function(_$_CommunicationAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCommunicationAddressAsPerKyc = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_CommunicationAddress(
      isCommunicationAddressAsPerKyc: freezed == isCommunicationAddressAsPerKyc
          ? _value.isCommunicationAddressAsPerKyc
          : isCommunicationAddressAsPerKyc // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
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
class _$_CommunicationAddress implements _CommunicationAddress {
  const _$_CommunicationAddress(
      {@JsonKey(name: "isCommunicationAddressAsPerKYC")
      this.isCommunicationAddressAsPerKyc,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "postalCode") this.postalCode,
      @JsonKey(name: "osid") this.osid});

  factory _$_CommunicationAddress.fromJson(Map<String, dynamic> json) =>
      _$$_CommunicationAddressFromJson(json);

  @override
  @JsonKey(name: "isCommunicationAddressAsPerKYC")
  final String? isCommunicationAddressAsPerKyc;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "postalCode")
  final String? postalCode;
  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'CommunicationAddress(isCommunicationAddressAsPerKyc: $isCommunicationAddressAsPerKyc, address: $address, name: $name, country: $country, state: $state, city: $city, postalCode: $postalCode, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommunicationAddress &&
            (identical(other.isCommunicationAddressAsPerKyc,
                    isCommunicationAddressAsPerKyc) ||
                other.isCommunicationAddressAsPerKyc ==
                    isCommunicationAddressAsPerKyc) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCommunicationAddressAsPerKyc,
      address, name, country, state, city, postalCode, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommunicationAddressCopyWith<_$_CommunicationAddress> get copyWith =>
      __$$_CommunicationAddressCopyWithImpl<_$_CommunicationAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunicationAddressToJson(
      this,
    );
  }
}

abstract class _CommunicationAddress implements CommunicationAddress {
  const factory _CommunicationAddress(
      {@JsonKey(name: "isCommunicationAddressAsPerKYC")
      final String? isCommunicationAddressAsPerKyc,
      @JsonKey(name: "address") final String? address,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "postalCode") final String? postalCode,
      @JsonKey(name: "osid") final String? osid}) = _$_CommunicationAddress;

  factory _CommunicationAddress.fromJson(Map<String, dynamic> json) =
      _$_CommunicationAddress.fromJson;

  @override
  @JsonKey(name: "isCommunicationAddressAsPerKYC")
  String? get isCommunicationAddressAsPerKyc;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "postalCode")
  String? get postalCode;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_CommunicationAddressCopyWith<_$_CommunicationAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactInformation _$ContactInformationFromJson(Map<String, dynamic> json) {
  return _ContactInformation.fromJson(json);
}

/// @nodoc
mixin _$ContactInformation {
  @JsonKey(name: "publicMobileNumber")
  String? get publicMobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "publicMobileNumberCode")
  String? get publicMobileNumberCode => throw _privateConstructorUsedError;
  @JsonKey(name: "publicMobileNumberStatus")
  String? get publicMobileNumberStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "landLineNumber")
  String? get landLineNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "landLineNumberCode")
  String? get landLineNumberCode => throw _privateConstructorUsedError;
  @JsonKey(name: "publicEmail")
  String? get publicEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "publicEmailStatus")
  String? get publicEmailStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInformationCopyWith<ContactInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInformationCopyWith<$Res> {
  factory $ContactInformationCopyWith(
          ContactInformation value, $Res Function(ContactInformation) then) =
      _$ContactInformationCopyWithImpl<$Res, ContactInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: "publicMobileNumber") String? publicMobileNumber,
      @JsonKey(name: "publicMobileNumberCode") String? publicMobileNumberCode,
      @JsonKey(name: "publicMobileNumberStatus")
      String? publicMobileNumberStatus,
      @JsonKey(name: "landLineNumber") String? landLineNumber,
      @JsonKey(name: "landLineNumberCode") String? landLineNumberCode,
      @JsonKey(name: "publicEmail") String? publicEmail,
      @JsonKey(name: "publicEmailStatus") String? publicEmailStatus,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$ContactInformationCopyWithImpl<$Res, $Val extends ContactInformation>
    implements $ContactInformationCopyWith<$Res> {
  _$ContactInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicMobileNumber = freezed,
    Object? publicMobileNumberCode = freezed,
    Object? publicMobileNumberStatus = freezed,
    Object? landLineNumber = freezed,
    Object? landLineNumberCode = freezed,
    Object? publicEmail = freezed,
    Object? publicEmailStatus = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      publicMobileNumber: freezed == publicMobileNumber
          ? _value.publicMobileNumber
          : publicMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      publicMobileNumberCode: freezed == publicMobileNumberCode
          ? _value.publicMobileNumberCode
          : publicMobileNumberCode // ignore: cast_nullable_to_non_nullable
              as String?,
      publicMobileNumberStatus: freezed == publicMobileNumberStatus
          ? _value.publicMobileNumberStatus
          : publicMobileNumberStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      landLineNumber: freezed == landLineNumber
          ? _value.landLineNumber
          : landLineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      landLineNumberCode: freezed == landLineNumberCode
          ? _value.landLineNumberCode
          : landLineNumberCode // ignore: cast_nullable_to_non_nullable
              as String?,
      publicEmail: freezed == publicEmail
          ? _value.publicEmail
          : publicEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      publicEmailStatus: freezed == publicEmailStatus
          ? _value.publicEmailStatus
          : publicEmailStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactInformationCopyWith<$Res>
    implements $ContactInformationCopyWith<$Res> {
  factory _$$_ContactInformationCopyWith(_$_ContactInformation value,
          $Res Function(_$_ContactInformation) then) =
      __$$_ContactInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "publicMobileNumber") String? publicMobileNumber,
      @JsonKey(name: "publicMobileNumberCode") String? publicMobileNumberCode,
      @JsonKey(name: "publicMobileNumberStatus")
      String? publicMobileNumberStatus,
      @JsonKey(name: "landLineNumber") String? landLineNumber,
      @JsonKey(name: "landLineNumberCode") String? landLineNumberCode,
      @JsonKey(name: "publicEmail") String? publicEmail,
      @JsonKey(name: "publicEmailStatus") String? publicEmailStatus,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_ContactInformationCopyWithImpl<$Res>
    extends _$ContactInformationCopyWithImpl<$Res, _$_ContactInformation>
    implements _$$_ContactInformationCopyWith<$Res> {
  __$$_ContactInformationCopyWithImpl(
      _$_ContactInformation _value, $Res Function(_$_ContactInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicMobileNumber = freezed,
    Object? publicMobileNumberCode = freezed,
    Object? publicMobileNumberStatus = freezed,
    Object? landLineNumber = freezed,
    Object? landLineNumberCode = freezed,
    Object? publicEmail = freezed,
    Object? publicEmailStatus = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_ContactInformation(
      publicMobileNumber: freezed == publicMobileNumber
          ? _value.publicMobileNumber
          : publicMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      publicMobileNumberCode: freezed == publicMobileNumberCode
          ? _value.publicMobileNumberCode
          : publicMobileNumberCode // ignore: cast_nullable_to_non_nullable
              as String?,
      publicMobileNumberStatus: freezed == publicMobileNumberStatus
          ? _value.publicMobileNumberStatus
          : publicMobileNumberStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      landLineNumber: freezed == landLineNumber
          ? _value.landLineNumber
          : landLineNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      landLineNumberCode: freezed == landLineNumberCode
          ? _value.landLineNumberCode
          : landLineNumberCode // ignore: cast_nullable_to_non_nullable
              as String?,
      publicEmail: freezed == publicEmail
          ? _value.publicEmail
          : publicEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      publicEmailStatus: freezed == publicEmailStatus
          ? _value.publicEmailStatus
          : publicEmailStatus // ignore: cast_nullable_to_non_nullable
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
class _$_ContactInformation implements _ContactInformation {
  const _$_ContactInformation(
      {@JsonKey(name: "publicMobileNumber") this.publicMobileNumber,
      @JsonKey(name: "publicMobileNumberCode") this.publicMobileNumberCode,
      @JsonKey(name: "publicMobileNumberStatus") this.publicMobileNumberStatus,
      @JsonKey(name: "landLineNumber") this.landLineNumber,
      @JsonKey(name: "landLineNumberCode") this.landLineNumberCode,
      @JsonKey(name: "publicEmail") this.publicEmail,
      @JsonKey(name: "publicEmailStatus") this.publicEmailStatus,
      @JsonKey(name: "osid") this.osid});

  factory _$_ContactInformation.fromJson(Map<String, dynamic> json) =>
      _$$_ContactInformationFromJson(json);

  @override
  @JsonKey(name: "publicMobileNumber")
  final String? publicMobileNumber;
  @override
  @JsonKey(name: "publicMobileNumberCode")
  final String? publicMobileNumberCode;
  @override
  @JsonKey(name: "publicMobileNumberStatus")
  final String? publicMobileNumberStatus;
  @override
  @JsonKey(name: "landLineNumber")
  final String? landLineNumber;
  @override
  @JsonKey(name: "landLineNumberCode")
  final String? landLineNumberCode;
  @override
  @JsonKey(name: "publicEmail")
  final String? publicEmail;
  @override
  @JsonKey(name: "publicEmailStatus")
  final String? publicEmailStatus;
  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'ContactInformation(publicMobileNumber: $publicMobileNumber, publicMobileNumberCode: $publicMobileNumberCode, publicMobileNumberStatus: $publicMobileNumberStatus, landLineNumber: $landLineNumber, landLineNumberCode: $landLineNumberCode, publicEmail: $publicEmail, publicEmailStatus: $publicEmailStatus, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactInformation &&
            (identical(other.publicMobileNumber, publicMobileNumber) ||
                other.publicMobileNumber == publicMobileNumber) &&
            (identical(other.publicMobileNumberCode, publicMobileNumberCode) ||
                other.publicMobileNumberCode == publicMobileNumberCode) &&
            (identical(
                    other.publicMobileNumberStatus, publicMobileNumberStatus) ||
                other.publicMobileNumberStatus == publicMobileNumberStatus) &&
            (identical(other.landLineNumber, landLineNumber) ||
                other.landLineNumber == landLineNumber) &&
            (identical(other.landLineNumberCode, landLineNumberCode) ||
                other.landLineNumberCode == landLineNumberCode) &&
            (identical(other.publicEmail, publicEmail) ||
                other.publicEmail == publicEmail) &&
            (identical(other.publicEmailStatus, publicEmailStatus) ||
                other.publicEmailStatus == publicEmailStatus) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      publicMobileNumber,
      publicMobileNumberCode,
      publicMobileNumberStatus,
      landLineNumber,
      landLineNumberCode,
      publicEmail,
      publicEmailStatus,
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactInformationCopyWith<_$_ContactInformation> get copyWith =>
      __$$_ContactInformationCopyWithImpl<_$_ContactInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactInformationToJson(
      this,
    );
  }
}

abstract class _ContactInformation implements ContactInformation {
  const factory _ContactInformation(
      {@JsonKey(name: "publicMobileNumber") final String? publicMobileNumber,
      @JsonKey(name: "publicMobileNumberCode")
      final String? publicMobileNumberCode,
      @JsonKey(name: "publicMobileNumberStatus")
      final String? publicMobileNumberStatus,
      @JsonKey(name: "landLineNumber") final String? landLineNumber,
      @JsonKey(name: "landLineNumberCode") final String? landLineNumberCode,
      @JsonKey(name: "publicEmail") final String? publicEmail,
      @JsonKey(name: "publicEmailStatus") final String? publicEmailStatus,
      @JsonKey(name: "osid") final String? osid}) = _$_ContactInformation;

  factory _ContactInformation.fromJson(Map<String, dynamic> json) =
      _$_ContactInformation.fromJson;

  @override
  @JsonKey(name: "publicMobileNumber")
  String? get publicMobileNumber;
  @override
  @JsonKey(name: "publicMobileNumberCode")
  String? get publicMobileNumberCode;
  @override
  @JsonKey(name: "publicMobileNumberStatus")
  String? get publicMobileNumberStatus;
  @override
  @JsonKey(name: "landLineNumber")
  String? get landLineNumber;
  @override
  @JsonKey(name: "landLineNumberCode")
  String? get landLineNumberCode;
  @override
  @JsonKey(name: "publicEmail")
  String? get publicEmail;
  @override
  @JsonKey(name: "publicEmailStatus")
  String? get publicEmailStatus;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_ContactInformationCopyWith<_$_ContactInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWorkDetails _$CurrentWorkDetailsFromJson(Map<String, dynamic> json) {
  return _CurrentWorkDetails.fromJson(json);
}

/// @nodoc
mixin _$CurrentWorkDetails {
  @JsonKey(name: "currentlyWorking")
  String? get currentlyWorking => throw _privateConstructorUsedError;
  @JsonKey(name: "purposeOfWork")
  String? get purposeOfWork => throw _privateConstructorUsedError;
  @JsonKey(name: "chooseWorkStatus")
  String? get chooseWorkStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "reasonForNotWorking")
  String? get reasonForNotWorking => throw _privateConstructorUsedError;
  @JsonKey(name: "certificateAttachment")
  String? get certificateAttachment => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWorkDetailsCopyWith<CurrentWorkDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWorkDetailsCopyWith<$Res> {
  factory $CurrentWorkDetailsCopyWith(
          CurrentWorkDetails value, $Res Function(CurrentWorkDetails) then) =
      _$CurrentWorkDetailsCopyWithImpl<$Res, CurrentWorkDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "currentlyWorking") String? currentlyWorking,
      @JsonKey(name: "purposeOfWork") String? purposeOfWork,
      @JsonKey(name: "chooseWorkStatus") String? chooseWorkStatus,
      @JsonKey(name: "reasonForNotWorking") String? reasonForNotWorking,
      @JsonKey(name: "certificateAttachment") String? certificateAttachment,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$CurrentWorkDetailsCopyWithImpl<$Res, $Val extends CurrentWorkDetails>
    implements $CurrentWorkDetailsCopyWith<$Res> {
  _$CurrentWorkDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentlyWorking = freezed,
    Object? purposeOfWork = freezed,
    Object? chooseWorkStatus = freezed,
    Object? reasonForNotWorking = freezed,
    Object? certificateAttachment = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      currentlyWorking: freezed == currentlyWorking
          ? _value.currentlyWorking
          : currentlyWorking // ignore: cast_nullable_to_non_nullable
              as String?,
      purposeOfWork: freezed == purposeOfWork
          ? _value.purposeOfWork
          : purposeOfWork // ignore: cast_nullable_to_non_nullable
              as String?,
      chooseWorkStatus: freezed == chooseWorkStatus
          ? _value.chooseWorkStatus
          : chooseWorkStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonForNotWorking: freezed == reasonForNotWorking
          ? _value.reasonForNotWorking
          : reasonForNotWorking // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateAttachment: freezed == certificateAttachment
          ? _value.certificateAttachment
          : certificateAttachment // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentWorkDetailsCopyWith<$Res>
    implements $CurrentWorkDetailsCopyWith<$Res> {
  factory _$$_CurrentWorkDetailsCopyWith(_$_CurrentWorkDetails value,
          $Res Function(_$_CurrentWorkDetails) then) =
      __$$_CurrentWorkDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currentlyWorking") String? currentlyWorking,
      @JsonKey(name: "purposeOfWork") String? purposeOfWork,
      @JsonKey(name: "chooseWorkStatus") String? chooseWorkStatus,
      @JsonKey(name: "reasonForNotWorking") String? reasonForNotWorking,
      @JsonKey(name: "certificateAttachment") String? certificateAttachment,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_CurrentWorkDetailsCopyWithImpl<$Res>
    extends _$CurrentWorkDetailsCopyWithImpl<$Res, _$_CurrentWorkDetails>
    implements _$$_CurrentWorkDetailsCopyWith<$Res> {
  __$$_CurrentWorkDetailsCopyWithImpl(
      _$_CurrentWorkDetails _value, $Res Function(_$_CurrentWorkDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentlyWorking = freezed,
    Object? purposeOfWork = freezed,
    Object? chooseWorkStatus = freezed,
    Object? reasonForNotWorking = freezed,
    Object? certificateAttachment = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_CurrentWorkDetails(
      currentlyWorking: freezed == currentlyWorking
          ? _value.currentlyWorking
          : currentlyWorking // ignore: cast_nullable_to_non_nullable
              as String?,
      purposeOfWork: freezed == purposeOfWork
          ? _value.purposeOfWork
          : purposeOfWork // ignore: cast_nullable_to_non_nullable
              as String?,
      chooseWorkStatus: freezed == chooseWorkStatus
          ? _value.chooseWorkStatus
          : chooseWorkStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonForNotWorking: freezed == reasonForNotWorking
          ? _value.reasonForNotWorking
          : reasonForNotWorking // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateAttachment: freezed == certificateAttachment
          ? _value.certificateAttachment
          : certificateAttachment // ignore: cast_nullable_to_non_nullable
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
class _$_CurrentWorkDetails implements _CurrentWorkDetails {
  const _$_CurrentWorkDetails(
      {@JsonKey(name: "currentlyWorking") this.currentlyWorking,
      @JsonKey(name: "purposeOfWork") this.purposeOfWork,
      @JsonKey(name: "chooseWorkStatus") this.chooseWorkStatus,
      @JsonKey(name: "reasonForNotWorking") this.reasonForNotWorking,
      @JsonKey(name: "certificateAttachment") this.certificateAttachment,
      @JsonKey(name: "osid") this.osid});

  factory _$_CurrentWorkDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWorkDetailsFromJson(json);

  @override
  @JsonKey(name: "currentlyWorking")
  final String? currentlyWorking;
  @override
  @JsonKey(name: "purposeOfWork")
  final String? purposeOfWork;
  @override
  @JsonKey(name: "chooseWorkStatus")
  final String? chooseWorkStatus;
  @override
  @JsonKey(name: "reasonForNotWorking")
  final String? reasonForNotWorking;
  @override
  @JsonKey(name: "certificateAttachment")
  final String? certificateAttachment;
  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'CurrentWorkDetails(currentlyWorking: $currentlyWorking, purposeOfWork: $purposeOfWork, chooseWorkStatus: $chooseWorkStatus, reasonForNotWorking: $reasonForNotWorking, certificateAttachment: $certificateAttachment, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWorkDetails &&
            (identical(other.currentlyWorking, currentlyWorking) ||
                other.currentlyWorking == currentlyWorking) &&
            (identical(other.purposeOfWork, purposeOfWork) ||
                other.purposeOfWork == purposeOfWork) &&
            (identical(other.chooseWorkStatus, chooseWorkStatus) ||
                other.chooseWorkStatus == chooseWorkStatus) &&
            (identical(other.reasonForNotWorking, reasonForNotWorking) ||
                other.reasonForNotWorking == reasonForNotWorking) &&
            (identical(other.certificateAttachment, certificateAttachment) ||
                other.certificateAttachment == certificateAttachment) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentlyWorking, purposeOfWork,
      chooseWorkStatus, reasonForNotWorking, certificateAttachment, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWorkDetailsCopyWith<_$_CurrentWorkDetails> get copyWith =>
      __$$_CurrentWorkDetailsCopyWithImpl<_$_CurrentWorkDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWorkDetailsToJson(
      this,
    );
  }
}

abstract class _CurrentWorkDetails implements CurrentWorkDetails {
  const factory _CurrentWorkDetails(
      {@JsonKey(name: "currentlyWorking") final String? currentlyWorking,
      @JsonKey(name: "purposeOfWork") final String? purposeOfWork,
      @JsonKey(name: "chooseWorkStatus") final String? chooseWorkStatus,
      @JsonKey(name: "reasonForNotWorking") final String? reasonForNotWorking,
      @JsonKey(name: "certificateAttachment")
      final String? certificateAttachment,
      @JsonKey(name: "osid") final String? osid}) = _$_CurrentWorkDetails;

  factory _CurrentWorkDetails.fromJson(Map<String, dynamic> json) =
      _$_CurrentWorkDetails.fromJson;

  @override
  @JsonKey(name: "currentlyWorking")
  String? get currentlyWorking;
  @override
  @JsonKey(name: "purposeOfWork")
  String? get purposeOfWork;
  @override
  @JsonKey(name: "chooseWorkStatus")
  String? get chooseWorkStatus;
  @override
  @JsonKey(name: "reasonForNotWorking")
  String? get reasonForNotWorking;
  @override
  @JsonKey(name: "certificateAttachment")
  String? get certificateAttachment;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWorkDetailsCopyWith<_$_CurrentWorkDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalInformation _$PersonalInformationFromJson(Map<String, dynamic> json) {
  return _PersonalInformation.fromJson(json);
}

/// @nodoc
mixin _$PersonalInformation {
  @JsonKey(name: "salutation")
  String? get salutation => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "nationality")
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: "placeOfBirthState")
  String? get placeOfBirthState => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "languagesSpoken")
  String? get languagesSpoken => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInformationCopyWith<PersonalInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInformationCopyWith<$Res> {
  factory $PersonalInformationCopyWith(
          PersonalInformation value, $Res Function(PersonalInformation) then) =
      _$PersonalInformationCopyWithImpl<$Res, PersonalInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: "salutation") String? salutation,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "nationality") String? nationality,
      @JsonKey(name: "placeOfBirthState") String? placeOfBirthState,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "languagesSpoken") String? languagesSpoken,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$PersonalInformationCopyWithImpl<$Res, $Val extends PersonalInformation>
    implements $PersonalInformationCopyWith<$Res> {
  _$PersonalInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nationality = freezed,
    Object? placeOfBirthState = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? languagesSpoken = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirthState: freezed == placeOfBirthState
          ? _value.placeOfBirthState
          : placeOfBirthState // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      languagesSpoken: freezed == languagesSpoken
          ? _value.languagesSpoken
          : languagesSpoken // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalInformationCopyWith<$Res>
    implements $PersonalInformationCopyWith<$Res> {
  factory _$$_PersonalInformationCopyWith(_$_PersonalInformation value,
          $Res Function(_$_PersonalInformation) then) =
      __$$_PersonalInformationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "salutation") String? salutation,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "nationality") String? nationality,
      @JsonKey(name: "placeOfBirthState") String? placeOfBirthState,
      @JsonKey(name: "district") String? district,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "languagesSpoken") String? languagesSpoken,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_PersonalInformationCopyWithImpl<$Res>
    extends _$PersonalInformationCopyWithImpl<$Res, _$_PersonalInformation>
    implements _$$_PersonalInformationCopyWith<$Res> {
  __$$_PersonalInformationCopyWithImpl(_$_PersonalInformation _value,
      $Res Function(_$_PersonalInformation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salutation = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nationality = freezed,
    Object? placeOfBirthState = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? languagesSpoken = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_PersonalInformation(
      salutation: freezed == salutation
          ? _value.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirthState: freezed == placeOfBirthState
          ? _value.placeOfBirthState
          : placeOfBirthState // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      languagesSpoken: freezed == languagesSpoken
          ? _value.languagesSpoken
          : languagesSpoken // ignore: cast_nullable_to_non_nullable
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
class _$_PersonalInformation implements _PersonalInformation {
  const _$_PersonalInformation(
      {@JsonKey(name: "salutation") this.salutation,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "nationality") this.nationality,
      @JsonKey(name: "placeOfBirthState") this.placeOfBirthState,
      @JsonKey(name: "district") this.district,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "languagesSpoken") this.languagesSpoken,
      @JsonKey(name: "osid") this.osid});

  factory _$_PersonalInformation.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInformationFromJson(json);

  @override
  @JsonKey(name: "salutation")
  final String? salutation;
  @override
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "nationality")
  final String? nationality;
  @override
  @JsonKey(name: "placeOfBirthState")
  final String? placeOfBirthState;
  @override
  @JsonKey(name: "district")
  final String? district;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "languagesSpoken")
  final String? languagesSpoken;
  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'PersonalInformation(salutation: $salutation, firstName: $firstName, lastName: $lastName, nationality: $nationality, placeOfBirthState: $placeOfBirthState, district: $district, city: $city, languagesSpoken: $languagesSpoken, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInformation &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.placeOfBirthState, placeOfBirthState) ||
                other.placeOfBirthState == placeOfBirthState) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.languagesSpoken, languagesSpoken) ||
                other.languagesSpoken == languagesSpoken) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, salutation, firstName, lastName,
      nationality, placeOfBirthState, district, city, languagesSpoken, osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalInformationCopyWith<_$_PersonalInformation> get copyWith =>
      __$$_PersonalInformationCopyWithImpl<_$_PersonalInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInformationToJson(
      this,
    );
  }
}

abstract class _PersonalInformation implements PersonalInformation {
  const factory _PersonalInformation(
      {@JsonKey(name: "salutation") final String? salutation,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "nationality") final String? nationality,
      @JsonKey(name: "placeOfBirthState") final String? placeOfBirthState,
      @JsonKey(name: "district") final String? district,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "languagesSpoken") final String? languagesSpoken,
      @JsonKey(name: "osid") final String? osid}) = _$_PersonalInformation;

  factory _PersonalInformation.fromJson(Map<String, dynamic> json) =
      _$_PersonalInformation.fromJson;

  @override
  @JsonKey(name: "salutation")
  String? get salutation;
  @override
  @JsonKey(name: "firstName")
  String? get firstName;
  @override
  @JsonKey(name: "lastName")
  String? get lastName;
  @override
  @JsonKey(name: "nationality")
  String? get nationality;
  @override
  @JsonKey(name: "placeOfBirthState")
  String? get placeOfBirthState;
  @override
  @JsonKey(name: "district")
  String? get district;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "languagesSpoken")
  String? get languagesSpoken;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInformationCopyWith<_$_PersonalInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

PracticeGrant _$PracticeGrantFromJson(Map<String, dynamic> json) {
  return _PracticeGrant.fromJson(json);
}

/// @nodoc
mixin _$PracticeGrant {
  @TimestampConverter()
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "grantType")
  String? get grantType => throw _privateConstructorUsedError;
  @JsonKey(name: "grantRole")
  String? get grantRole => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: "organization")
  Organization? get organization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticeGrantCopyWith<PracticeGrant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeGrantCopyWith<$Res> {
  factory $PracticeGrantCopyWith(
          PracticeGrant value, $Res Function(PracticeGrant) then) =
      _$PracticeGrantCopyWithImpl<$Res, PracticeGrant>;
  @useResult
  $Res call(
      {@TimestampConverter() DateTime? registrationDate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "grantType") String? grantType,
      @JsonKey(name: "grantRole") String? grantRole,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "organization") Organization? organization});

  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$PracticeGrantCopyWithImpl<$Res, $Val extends PracticeGrant>
    implements $PracticeGrantCopyWith<$Res> {
  _$PracticeGrantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationDate = freezed,
    Object? id = freezed,
    Object? grantType = freezed,
    Object? grantRole = freezed,
    Object? department = freezed,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      grantRole: freezed == grantRole
          ? _value.grantRole
          : grantRole // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PracticeGrantCopyWith<$Res>
    implements $PracticeGrantCopyWith<$Res> {
  factory _$$_PracticeGrantCopyWith(
          _$_PracticeGrant value, $Res Function(_$_PracticeGrant) then) =
      __$$_PracticeGrantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() DateTime? registrationDate,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "grantType") String? grantType,
      @JsonKey(name: "grantRole") String? grantRole,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "organization") Organization? organization});

  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$_PracticeGrantCopyWithImpl<$Res>
    extends _$PracticeGrantCopyWithImpl<$Res, _$_PracticeGrant>
    implements _$$_PracticeGrantCopyWith<$Res> {
  __$$_PracticeGrantCopyWithImpl(
      _$_PracticeGrant _value, $Res Function(_$_PracticeGrant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationDate = freezed,
    Object? id = freezed,
    Object? grantType = freezed,
    Object? grantRole = freezed,
    Object? department = freezed,
    Object? organization = freezed,
  }) {
    return _then(_$_PracticeGrant(
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      grantRole: freezed == grantRole
          ? _value.grantRole
          : grantRole // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PracticeGrant implements _PracticeGrant {
  const _$_PracticeGrant(
      {@TimestampConverter() this.registrationDate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "grantType") this.grantType,
      @JsonKey(name: "grantRole") this.grantRole,
      @JsonKey(name: "department") this.department,
      @JsonKey(name: "organization") this.organization});

  factory _$_PracticeGrant.fromJson(Map<String, dynamic> json) =>
      _$$_PracticeGrantFromJson(json);

  @override
  @TimestampConverter()
  final DateTime? registrationDate;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "grantType")
  final String? grantType;
  @override
  @JsonKey(name: "grantRole")
  final String? grantRole;
  @override
  @JsonKey(name: "department")
  final String? department;
  @override
  @JsonKey(name: "organization")
  final Organization? organization;

  @override
  String toString() {
    return 'PracticeGrant(registrationDate: $registrationDate, id: $id, grantType: $grantType, grantRole: $grantRole, department: $department, organization: $organization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PracticeGrant &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.grantRole, grantRole) ||
                other.grantRole == grantRole) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, registrationDate, id, grantType,
      grantRole, department, organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PracticeGrantCopyWith<_$_PracticeGrant> get copyWith =>
      __$$_PracticeGrantCopyWithImpl<_$_PracticeGrant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PracticeGrantToJson(
      this,
    );
  }
}

abstract class _PracticeGrant implements PracticeGrant {
  const factory _PracticeGrant(
          {@TimestampConverter() final DateTime? registrationDate,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "grantType") final String? grantType,
          @JsonKey(name: "grantRole") final String? grantRole,
          @JsonKey(name: "department") final String? department,
          @JsonKey(name: "organization") final Organization? organization}) =
      _$_PracticeGrant;

  factory _PracticeGrant.fromJson(Map<String, dynamic> json) =
      _$_PracticeGrant.fromJson;

  @override
  @TimestampConverter()
  DateTime? get registrationDate;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "grantType")
  String? get grantType;
  @override
  @JsonKey(name: "grantRole")
  String? get grantRole;
  @override
  @JsonKey(name: "department")
  String? get department;
  @override
  @JsonKey(name: "organization")
  Organization? get organization;
  @override
  @JsonKey(ignore: true)
  _$$_PracticeGrantCopyWith<_$_PracticeGrant> get copyWith =>
      throw _privateConstructorUsedError;
}

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "regRef")
  String? get regRef => throw _privateConstructorUsedError;
  @JsonKey(name: "facilityType")
  String? get facilityType => throw _privateConstructorUsedError;
  @JsonKey(name: "tenant")
  Tenant? get tenant => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "governingOrganization")
  dynamic get governingOrganization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "regRef") String? regRef,
      @JsonKey(name: "facilityType") String? facilityType,
      @JsonKey(name: "tenant") Tenant? tenant,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "governingOrganization") dynamic governingOrganization});

  $TenantCopyWith<$Res>? get tenant;
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? regRef = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? status = freezed,
    Object? governingOrganization = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      governingOrganization: freezed == governingOrganization
          ? _value.governingOrganization
          : governingOrganization // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TenantCopyWith<$Res>? get tenant {
    if (_value.tenant == null) {
      return null;
    }

    return $TenantCopyWith<$Res>(_value.tenant!, (value) {
      return _then(_value.copyWith(tenant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrganizationCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$_OrganizationCopyWith(
          _$_Organization value, $Res Function(_$_Organization) then) =
      __$$_OrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "regRef") String? regRef,
      @JsonKey(name: "facilityType") String? facilityType,
      @JsonKey(name: "tenant") Tenant? tenant,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "governingOrganization") dynamic governingOrganization});

  @override
  $TenantCopyWith<$Res>? get tenant;
}

/// @nodoc
class __$$_OrganizationCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$_Organization>
    implements _$$_OrganizationCopyWith<$Res> {
  __$$_OrganizationCopyWithImpl(
      _$_Organization _value, $Res Function(_$_Organization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? regRef = freezed,
    Object? facilityType = freezed,
    Object? tenant = freezed,
    Object? status = freezed,
    Object? governingOrganization = freezed,
  }) {
    return _then(_$_Organization(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as Tenant?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      governingOrganization: freezed == governingOrganization
          ? _value.governingOrganization
          : governingOrganization // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Organization implements _Organization {
  const _$_Organization(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "regRef") this.regRef,
      @JsonKey(name: "facilityType") this.facilityType,
      @JsonKey(name: "tenant") this.tenant,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "governingOrganization") this.governingOrganization});

  factory _$_Organization.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizationFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "regRef")
  final String? regRef;
  @override
  @JsonKey(name: "facilityType")
  final String? facilityType;
  @override
  @JsonKey(name: "tenant")
  final Tenant? tenant;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "governingOrganization")
  final dynamic governingOrganization;

  @override
  String toString() {
    return 'Organization(id: $id, regRef: $regRef, facilityType: $facilityType, tenant: $tenant, status: $status, governingOrganization: $governingOrganization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Organization &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.facilityType, facilityType) ||
                other.facilityType == facilityType) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.governingOrganization, governingOrganization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, regRef, facilityType, tenant,
      status, const DeepCollectionEquality().hash(governingOrganization));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      __$$_OrganizationCopyWithImpl<_$_Organization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizationToJson(
      this,
    );
  }
}

abstract class _Organization implements Organization {
  const factory _Organization(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "regRef") final String? regRef,
      @JsonKey(name: "facilityType") final String? facilityType,
      @JsonKey(name: "tenant") final Tenant? tenant,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "governingOrganization")
      final dynamic governingOrganization}) = _$_Organization;

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$_Organization.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "regRef")
  String? get regRef;
  @override
  @JsonKey(name: "facilityType")
  String? get facilityType;
  @override
  @JsonKey(name: "tenant")
  Tenant? get tenant;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "governingOrganization")
  dynamic get governingOrganization;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

Tenant _$TenantFromJson(Map<String, dynamic> json) {
  return _Tenant.fromJson(json);
}

/// @nodoc
mixin _$Tenant {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantCopyWith<Tenant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantCopyWith<$Res> {
  factory $TenantCopyWith(Tenant value, $Res Function(Tenant) then) =
      _$TenantCopyWithImpl<$Res, Tenant>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$TenantCopyWithImpl<$Res, $Val extends Tenant>
    implements $TenantCopyWith<$Res> {
  _$TenantCopyWithImpl(this._value, this._then);

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
abstract class _$$_TenantCopyWith<$Res> implements $TenantCopyWith<$Res> {
  factory _$$_TenantCopyWith(_$_Tenant value, $Res Function(_$_Tenant) then) =
      __$$_TenantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$_TenantCopyWithImpl<$Res>
    extends _$TenantCopyWithImpl<$Res, _$_Tenant>
    implements _$$_TenantCopyWith<$Res> {
  __$$_TenantCopyWithImpl(_$_Tenant _value, $Res Function(_$_Tenant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Tenant(
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
class _$_Tenant implements _Tenant {
  const _$_Tenant(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});

  factory _$_Tenant.fromJson(Map<String, dynamic> json) =>
      _$$_TenantFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'Tenant(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tenant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TenantCopyWith<_$_Tenant> get copyWith =>
      __$$_TenantCopyWithImpl<_$_Tenant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenantToJson(
      this,
    );
  }
}

abstract class _Tenant implements Tenant {
  const factory _Tenant(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name}) = _$_Tenant;

  factory _Tenant.fromJson(Map<String, dynamic> json) = _$_Tenant.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TenantCopyWith<_$_Tenant> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistrationAcademic _$RegistrationAcademicFromJson(Map<String, dynamic> json) {
  return _RegistrationAcademic.fromJson(json);
}

/// @nodoc
mixin _$RegistrationAcademic {
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "registrationData")
  List<RegistrationDatum>? get registrationData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationAcademicCopyWith<RegistrationAcademic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationAcademicCopyWith<$Res> {
  factory $RegistrationAcademicCopyWith(RegistrationAcademic value,
          $Res Function(RegistrationAcademic) then) =
      _$RegistrationAcademicCopyWithImpl<$Res, RegistrationAcademic>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String? category,
      @JsonKey(name: "registrationData")
      List<RegistrationDatum>? registrationData,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$RegistrationAcademicCopyWithImpl<$Res,
        $Val extends RegistrationAcademic>
    implements $RegistrationAcademicCopyWith<$Res> {
  _$RegistrationAcademicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? registrationData = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationData: freezed == registrationData
          ? _value.registrationData
          : registrationData // ignore: cast_nullable_to_non_nullable
              as List<RegistrationDatum>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationAcademicCopyWith<$Res>
    implements $RegistrationAcademicCopyWith<$Res> {
  factory _$$_RegistrationAcademicCopyWith(_$_RegistrationAcademic value,
          $Res Function(_$_RegistrationAcademic) then) =
      __$$_RegistrationAcademicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String? category,
      @JsonKey(name: "registrationData")
      List<RegistrationDatum>? registrationData,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_RegistrationAcademicCopyWithImpl<$Res>
    extends _$RegistrationAcademicCopyWithImpl<$Res, _$_RegistrationAcademic>
    implements _$$_RegistrationAcademicCopyWith<$Res> {
  __$$_RegistrationAcademicCopyWithImpl(_$_RegistrationAcademic _value,
      $Res Function(_$_RegistrationAcademic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? registrationData = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_RegistrationAcademic(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationData: freezed == registrationData
          ? _value._registrationData
          : registrationData // ignore: cast_nullable_to_non_nullable
              as List<RegistrationDatum>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationAcademic implements _RegistrationAcademic {
  const _$_RegistrationAcademic(
      {@JsonKey(name: "category") this.category,
      @JsonKey(name: "registrationData")
      final List<RegistrationDatum>? registrationData,
      @JsonKey(name: "osid") this.osid})
      : _registrationData = registrationData;

  factory _$_RegistrationAcademic.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationAcademicFromJson(json);

  @override
  @JsonKey(name: "category")
  final String? category;
  final List<RegistrationDatum>? _registrationData;
  @override
  @JsonKey(name: "registrationData")
  List<RegistrationDatum>? get registrationData {
    final value = _registrationData;
    if (value == null) return null;
    if (_registrationData is EqualUnmodifiableListView)
      return _registrationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'RegistrationAcademic(category: $category, registrationData: $registrationData, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationAcademic &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._registrationData, _registrationData) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category,
      const DeepCollectionEquality().hash(_registrationData), osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationAcademicCopyWith<_$_RegistrationAcademic> get copyWith =>
      __$$_RegistrationAcademicCopyWithImpl<_$_RegistrationAcademic>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationAcademicToJson(
      this,
    );
  }
}

abstract class _RegistrationAcademic implements RegistrationAcademic {
  const factory _RegistrationAcademic(
      {@JsonKey(name: "category") final String? category,
      @JsonKey(name: "registrationData")
      final List<RegistrationDatum>? registrationData,
      @JsonKey(name: "osid") final String? osid}) = _$_RegistrationAcademic;

  factory _RegistrationAcademic.fromJson(Map<String, dynamic> json) =
      _$_RegistrationAcademic.fromJson;

  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "registrationData")
  List<RegistrationDatum>? get registrationData;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationAcademicCopyWith<_$_RegistrationAcademic> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistrationDatum _$RegistrationDatumFromJson(Map<String, dynamic> json) {
  return _RegistrationDatum.fromJson(json);
}

/// @nodoc
mixin _$RegistrationDatum {
  @JsonKey(name: "registeredWithCouncil")
  String? get registeredWithCouncil => throw _privateConstructorUsedError;
  @JsonKey(name: "registrationNumber")
  String? get registrationNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "registrationCertificate")
  String? get registrationCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: "isNameDifferentInCertificate")
  String? get isNameDifferentInCertificate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "proofOfNameChangeCertificate")
  String? get proofOfNameChangeCertificate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "qualifications")
  List<Qualification>? get qualifications => throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationDatumCopyWith<RegistrationDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationDatumCopyWith<$Res> {
  factory $RegistrationDatumCopyWith(
          RegistrationDatum value, $Res Function(RegistrationDatum) then) =
      _$RegistrationDatumCopyWithImpl<$Res, RegistrationDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "registeredWithCouncil") String? registeredWithCouncil,
      @JsonKey(name: "registrationNumber") String? registrationNumber,
      @JsonKey(name: "registrationCertificate") String? registrationCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      String? proofOfNameChangeCertificate,
      @JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "qualifications") List<Qualification>? qualifications,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$RegistrationDatumCopyWithImpl<$Res, $Val extends RegistrationDatum>
    implements $RegistrationDatumCopyWith<$Res> {
  _$RegistrationDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredWithCouncil = freezed,
    Object? registrationNumber = freezed,
    Object? registrationCertificate = freezed,
    Object? isNameDifferentInCertificate = freezed,
    Object? proofOfNameChangeCertificate = freezed,
    Object? categoryId = freezed,
    Object? qualifications = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      registeredWithCouncil: freezed == registeredWithCouncil
          ? _value.registeredWithCouncil
          : registeredWithCouncil // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCertificate: freezed == registrationCertificate
          ? _value.registrationCertificate
          : registrationCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      isNameDifferentInCertificate: freezed == isNameDifferentInCertificate
          ? _value.isNameDifferentInCertificate
          : isNameDifferentInCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proofOfNameChangeCertificate: freezed == proofOfNameChangeCertificate
          ? _value.proofOfNameChangeCertificate
          : proofOfNameChangeCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      qualifications: freezed == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<Qualification>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationDatumCopyWith<$Res>
    implements $RegistrationDatumCopyWith<$Res> {
  factory _$$_RegistrationDatumCopyWith(_$_RegistrationDatum value,
          $Res Function(_$_RegistrationDatum) then) =
      __$$_RegistrationDatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "registeredWithCouncil") String? registeredWithCouncil,
      @JsonKey(name: "registrationNumber") String? registrationNumber,
      @JsonKey(name: "registrationCertificate") String? registrationCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      String? proofOfNameChangeCertificate,
      @JsonKey(name: "categoryId") String? categoryId,
      @JsonKey(name: "qualifications") List<Qualification>? qualifications,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_RegistrationDatumCopyWithImpl<$Res>
    extends _$RegistrationDatumCopyWithImpl<$Res, _$_RegistrationDatum>
    implements _$$_RegistrationDatumCopyWith<$Res> {
  __$$_RegistrationDatumCopyWithImpl(
      _$_RegistrationDatum _value, $Res Function(_$_RegistrationDatum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registeredWithCouncil = freezed,
    Object? registrationNumber = freezed,
    Object? registrationCertificate = freezed,
    Object? isNameDifferentInCertificate = freezed,
    Object? proofOfNameChangeCertificate = freezed,
    Object? categoryId = freezed,
    Object? qualifications = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_RegistrationDatum(
      registeredWithCouncil: freezed == registeredWithCouncil
          ? _value.registeredWithCouncil
          : registeredWithCouncil // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationCertificate: freezed == registrationCertificate
          ? _value.registrationCertificate
          : registrationCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      isNameDifferentInCertificate: freezed == isNameDifferentInCertificate
          ? _value.isNameDifferentInCertificate
          : isNameDifferentInCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proofOfNameChangeCertificate: freezed == proofOfNameChangeCertificate
          ? _value.proofOfNameChangeCertificate
          : proofOfNameChangeCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      qualifications: freezed == qualifications
          ? _value._qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as List<Qualification>?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationDatum implements _RegistrationDatum {
  const _$_RegistrationDatum(
      {@JsonKey(name: "registeredWithCouncil") this.registeredWithCouncil,
      @JsonKey(name: "registrationNumber") this.registrationNumber,
      @JsonKey(name: "registrationCertificate") this.registrationCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      this.isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      this.proofOfNameChangeCertificate,
      @JsonKey(name: "categoryId") this.categoryId,
      @JsonKey(name: "qualifications")
      final List<Qualification>? qualifications,
      @JsonKey(name: "osid") this.osid})
      : _qualifications = qualifications;

  factory _$_RegistrationDatum.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationDatumFromJson(json);

  @override
  @JsonKey(name: "registeredWithCouncil")
  final String? registeredWithCouncil;
  @override
  @JsonKey(name: "registrationNumber")
  final String? registrationNumber;
  @override
  @JsonKey(name: "registrationCertificate")
  final String? registrationCertificate;
  @override
  @JsonKey(name: "isNameDifferentInCertificate")
  final String? isNameDifferentInCertificate;
  @override
  @JsonKey(name: "proofOfNameChangeCertificate")
  final String? proofOfNameChangeCertificate;
  @override
  @JsonKey(name: "categoryId")
  final String? categoryId;
  final List<Qualification>? _qualifications;
  @override
  @JsonKey(name: "qualifications")
  List<Qualification>? get qualifications {
    final value = _qualifications;
    if (value == null) return null;
    if (_qualifications is EqualUnmodifiableListView) return _qualifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'RegistrationDatum(registeredWithCouncil: $registeredWithCouncil, registrationNumber: $registrationNumber, registrationCertificate: $registrationCertificate, isNameDifferentInCertificate: $isNameDifferentInCertificate, proofOfNameChangeCertificate: $proofOfNameChangeCertificate, categoryId: $categoryId, qualifications: $qualifications, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationDatum &&
            (identical(other.registeredWithCouncil, registeredWithCouncil) ||
                other.registeredWithCouncil == registeredWithCouncil) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(
                    other.registrationCertificate, registrationCertificate) ||
                other.registrationCertificate == registrationCertificate) &&
            (identical(other.isNameDifferentInCertificate,
                    isNameDifferentInCertificate) ||
                other.isNameDifferentInCertificate ==
                    isNameDifferentInCertificate) &&
            (identical(other.proofOfNameChangeCertificate,
                    proofOfNameChangeCertificate) ||
                other.proofOfNameChangeCertificate ==
                    proofOfNameChangeCertificate) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality()
                .equals(other._qualifications, _qualifications) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      registeredWithCouncil,
      registrationNumber,
      registrationCertificate,
      isNameDifferentInCertificate,
      proofOfNameChangeCertificate,
      categoryId,
      const DeepCollectionEquality().hash(_qualifications),
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationDatumCopyWith<_$_RegistrationDatum> get copyWith =>
      __$$_RegistrationDatumCopyWithImpl<_$_RegistrationDatum>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationDatumToJson(
      this,
    );
  }
}

abstract class _RegistrationDatum implements RegistrationDatum {
  const factory _RegistrationDatum(
      {@JsonKey(name: "registeredWithCouncil")
      final String? registeredWithCouncil,
      @JsonKey(name: "registrationNumber") final String? registrationNumber,
      @JsonKey(name: "registrationCertificate")
      final String? registrationCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      final String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      final String? proofOfNameChangeCertificate,
      @JsonKey(name: "categoryId") final String? categoryId,
      @JsonKey(name: "qualifications")
      final List<Qualification>? qualifications,
      @JsonKey(name: "osid") final String? osid}) = _$_RegistrationDatum;

  factory _RegistrationDatum.fromJson(Map<String, dynamic> json) =
      _$_RegistrationDatum.fromJson;

  @override
  @JsonKey(name: "registeredWithCouncil")
  String? get registeredWithCouncil;
  @override
  @JsonKey(name: "registrationNumber")
  String? get registrationNumber;
  @override
  @JsonKey(name: "registrationCertificate")
  String? get registrationCertificate;
  @override
  @JsonKey(name: "isNameDifferentInCertificate")
  String? get isNameDifferentInCertificate;
  @override
  @JsonKey(name: "proofOfNameChangeCertificate")
  String? get proofOfNameChangeCertificate;
  @override
  @JsonKey(name: "categoryId")
  String? get categoryId;
  @override
  @JsonKey(name: "qualifications")
  List<Qualification>? get qualifications;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationDatumCopyWith<_$_RegistrationDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

Qualification _$QualificationFromJson(Map<String, dynamic> json) {
  return _Qualification.fromJson(json);
}

/// @nodoc
mixin _$Qualification {
  @JsonKey(name: "nameOfDegreeOrDiplomaObtained")
  String? get nameOfDegreeOrDiplomaObtained =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "college")
  String? get college => throw _privateConstructorUsedError;
  @JsonKey(name: "university")
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: "monthOfAwardingDegreeDiploma")
  String? get monthOfAwardingDegreeDiploma =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "yearOfAwardingDegreeDiploma")
  String? get yearOfAwardingDegreeDiploma => throw _privateConstructorUsedError;
  @JsonKey(name: "degreeCertificate")
  String? get degreeCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: "isNameDifferentInCertificate")
  String? get isNameDifferentInCertificate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "proofOfNameChangeCertificate")
  String? get proofOfNameChangeCertificate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "osid")
  String? get osid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualificationCopyWith<Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationCopyWith<$Res> {
  factory $QualificationCopyWith(
          Qualification value, $Res Function(Qualification) then) =
      _$QualificationCopyWithImpl<$Res, Qualification>;
  @useResult
  $Res call(
      {@JsonKey(name: "nameOfDegreeOrDiplomaObtained")
      String? nameOfDegreeOrDiplomaObtained,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "college") String? college,
      @JsonKey(name: "university") String? university,
      @JsonKey(name: "monthOfAwardingDegreeDiploma")
      String? monthOfAwardingDegreeDiploma,
      @JsonKey(name: "yearOfAwardingDegreeDiploma")
      String? yearOfAwardingDegreeDiploma,
      @JsonKey(name: "degreeCertificate") String? degreeCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      String? proofOfNameChangeCertificate,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class _$QualificationCopyWithImpl<$Res, $Val extends Qualification>
    implements $QualificationCopyWith<$Res> {
  _$QualificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameOfDegreeOrDiplomaObtained = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? college = freezed,
    Object? university = freezed,
    Object? monthOfAwardingDegreeDiploma = freezed,
    Object? yearOfAwardingDegreeDiploma = freezed,
    Object? degreeCertificate = freezed,
    Object? isNameDifferentInCertificate = freezed,
    Object? proofOfNameChangeCertificate = freezed,
    Object? osid = freezed,
  }) {
    return _then(_value.copyWith(
      nameOfDegreeOrDiplomaObtained: freezed == nameOfDegreeOrDiplomaObtained
          ? _value.nameOfDegreeOrDiplomaObtained
          : nameOfDegreeOrDiplomaObtained // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      college: freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfAwardingDegreeDiploma: freezed == monthOfAwardingDegreeDiploma
          ? _value.monthOfAwardingDegreeDiploma
          : monthOfAwardingDegreeDiploma // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfAwardingDegreeDiploma: freezed == yearOfAwardingDegreeDiploma
          ? _value.yearOfAwardingDegreeDiploma
          : yearOfAwardingDegreeDiploma // ignore: cast_nullable_to_non_nullable
              as String?,
      degreeCertificate: freezed == degreeCertificate
          ? _value.degreeCertificate
          : degreeCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      isNameDifferentInCertificate: freezed == isNameDifferentInCertificate
          ? _value.isNameDifferentInCertificate
          : isNameDifferentInCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proofOfNameChangeCertificate: freezed == proofOfNameChangeCertificate
          ? _value.proofOfNameChangeCertificate
          : proofOfNameChangeCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      osid: freezed == osid
          ? _value.osid
          : osid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QualificationCopyWith<$Res>
    implements $QualificationCopyWith<$Res> {
  factory _$$_QualificationCopyWith(
          _$_Qualification value, $Res Function(_$_Qualification) then) =
      __$$_QualificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nameOfDegreeOrDiplomaObtained")
      String? nameOfDegreeOrDiplomaObtained,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "college") String? college,
      @JsonKey(name: "university") String? university,
      @JsonKey(name: "monthOfAwardingDegreeDiploma")
      String? monthOfAwardingDegreeDiploma,
      @JsonKey(name: "yearOfAwardingDegreeDiploma")
      String? yearOfAwardingDegreeDiploma,
      @JsonKey(name: "degreeCertificate") String? degreeCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      String? proofOfNameChangeCertificate,
      @JsonKey(name: "osid") String? osid});
}

/// @nodoc
class __$$_QualificationCopyWithImpl<$Res>
    extends _$QualificationCopyWithImpl<$Res, _$_Qualification>
    implements _$$_QualificationCopyWith<$Res> {
  __$$_QualificationCopyWithImpl(
      _$_Qualification _value, $Res Function(_$_Qualification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameOfDegreeOrDiplomaObtained = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? college = freezed,
    Object? university = freezed,
    Object? monthOfAwardingDegreeDiploma = freezed,
    Object? yearOfAwardingDegreeDiploma = freezed,
    Object? degreeCertificate = freezed,
    Object? isNameDifferentInCertificate = freezed,
    Object? proofOfNameChangeCertificate = freezed,
    Object? osid = freezed,
  }) {
    return _then(_$_Qualification(
      nameOfDegreeOrDiplomaObtained: freezed == nameOfDegreeOrDiplomaObtained
          ? _value.nameOfDegreeOrDiplomaObtained
          : nameOfDegreeOrDiplomaObtained // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      college: freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      monthOfAwardingDegreeDiploma: freezed == monthOfAwardingDegreeDiploma
          ? _value.monthOfAwardingDegreeDiploma
          : monthOfAwardingDegreeDiploma // ignore: cast_nullable_to_non_nullable
              as String?,
      yearOfAwardingDegreeDiploma: freezed == yearOfAwardingDegreeDiploma
          ? _value.yearOfAwardingDegreeDiploma
          : yearOfAwardingDegreeDiploma // ignore: cast_nullable_to_non_nullable
              as String?,
      degreeCertificate: freezed == degreeCertificate
          ? _value.degreeCertificate
          : degreeCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      isNameDifferentInCertificate: freezed == isNameDifferentInCertificate
          ? _value.isNameDifferentInCertificate
          : isNameDifferentInCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      proofOfNameChangeCertificate: freezed == proofOfNameChangeCertificate
          ? _value.proofOfNameChangeCertificate
          : proofOfNameChangeCertificate // ignore: cast_nullable_to_non_nullable
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
class _$_Qualification implements _Qualification {
  const _$_Qualification(
      {@JsonKey(name: "nameOfDegreeOrDiplomaObtained")
      this.nameOfDegreeOrDiplomaObtained,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "college") this.college,
      @JsonKey(name: "university") this.university,
      @JsonKey(name: "monthOfAwardingDegreeDiploma")
      this.monthOfAwardingDegreeDiploma,
      @JsonKey(name: "yearOfAwardingDegreeDiploma")
      this.yearOfAwardingDegreeDiploma,
      @JsonKey(name: "degreeCertificate") this.degreeCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      this.isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      this.proofOfNameChangeCertificate,
      @JsonKey(name: "osid") this.osid});

  factory _$_Qualification.fromJson(Map<String, dynamic> json) =>
      _$$_QualificationFromJson(json);

  @override
  @JsonKey(name: "nameOfDegreeOrDiplomaObtained")
  final String? nameOfDegreeOrDiplomaObtained;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "college")
  final String? college;
  @override
  @JsonKey(name: "university")
  final String? university;
  @override
  @JsonKey(name: "monthOfAwardingDegreeDiploma")
  final String? monthOfAwardingDegreeDiploma;
  @override
  @JsonKey(name: "yearOfAwardingDegreeDiploma")
  final String? yearOfAwardingDegreeDiploma;
  @override
  @JsonKey(name: "degreeCertificate")
  final String? degreeCertificate;
  @override
  @JsonKey(name: "isNameDifferentInCertificate")
  final String? isNameDifferentInCertificate;
  @override
  @JsonKey(name: "proofOfNameChangeCertificate")
  final String? proofOfNameChangeCertificate;
  @override
  @JsonKey(name: "osid")
  final String? osid;

  @override
  String toString() {
    return 'Qualification(nameOfDegreeOrDiplomaObtained: $nameOfDegreeOrDiplomaObtained, country: $country, state: $state, college: $college, university: $university, monthOfAwardingDegreeDiploma: $monthOfAwardingDegreeDiploma, yearOfAwardingDegreeDiploma: $yearOfAwardingDegreeDiploma, degreeCertificate: $degreeCertificate, isNameDifferentInCertificate: $isNameDifferentInCertificate, proofOfNameChangeCertificate: $proofOfNameChangeCertificate, osid: $osid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Qualification &&
            (identical(other.nameOfDegreeOrDiplomaObtained,
                    nameOfDegreeOrDiplomaObtained) ||
                other.nameOfDegreeOrDiplomaObtained ==
                    nameOfDegreeOrDiplomaObtained) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.monthOfAwardingDegreeDiploma,
                    monthOfAwardingDegreeDiploma) ||
                other.monthOfAwardingDegreeDiploma ==
                    monthOfAwardingDegreeDiploma) &&
            (identical(other.yearOfAwardingDegreeDiploma,
                    yearOfAwardingDegreeDiploma) ||
                other.yearOfAwardingDegreeDiploma ==
                    yearOfAwardingDegreeDiploma) &&
            (identical(other.degreeCertificate, degreeCertificate) ||
                other.degreeCertificate == degreeCertificate) &&
            (identical(other.isNameDifferentInCertificate,
                    isNameDifferentInCertificate) ||
                other.isNameDifferentInCertificate ==
                    isNameDifferentInCertificate) &&
            (identical(other.proofOfNameChangeCertificate,
                    proofOfNameChangeCertificate) ||
                other.proofOfNameChangeCertificate ==
                    proofOfNameChangeCertificate) &&
            (identical(other.osid, osid) || other.osid == osid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nameOfDegreeOrDiplomaObtained,
      country,
      state,
      college,
      university,
      monthOfAwardingDegreeDiploma,
      yearOfAwardingDegreeDiploma,
      degreeCertificate,
      isNameDifferentInCertificate,
      proofOfNameChangeCertificate,
      osid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QualificationCopyWith<_$_Qualification> get copyWith =>
      __$$_QualificationCopyWithImpl<_$_Qualification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QualificationToJson(
      this,
    );
  }
}

abstract class _Qualification implements Qualification {
  const factory _Qualification(
      {@JsonKey(name: "nameOfDegreeOrDiplomaObtained")
      final String? nameOfDegreeOrDiplomaObtained,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "college") final String? college,
      @JsonKey(name: "university") final String? university,
      @JsonKey(name: "monthOfAwardingDegreeDiploma")
      final String? monthOfAwardingDegreeDiploma,
      @JsonKey(name: "yearOfAwardingDegreeDiploma")
      final String? yearOfAwardingDegreeDiploma,
      @JsonKey(name: "degreeCertificate") final String? degreeCertificate,
      @JsonKey(name: "isNameDifferentInCertificate")
      final String? isNameDifferentInCertificate,
      @JsonKey(name: "proofOfNameChangeCertificate")
      final String? proofOfNameChangeCertificate,
      @JsonKey(name: "osid") final String? osid}) = _$_Qualification;

  factory _Qualification.fromJson(Map<String, dynamic> json) =
      _$_Qualification.fromJson;

  @override
  @JsonKey(name: "nameOfDegreeOrDiplomaObtained")
  String? get nameOfDegreeOrDiplomaObtained;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "college")
  String? get college;
  @override
  @JsonKey(name: "university")
  String? get university;
  @override
  @JsonKey(name: "monthOfAwardingDegreeDiploma")
  String? get monthOfAwardingDegreeDiploma;
  @override
  @JsonKey(name: "yearOfAwardingDegreeDiploma")
  String? get yearOfAwardingDegreeDiploma;
  @override
  @JsonKey(name: "degreeCertificate")
  String? get degreeCertificate;
  @override
  @JsonKey(name: "isNameDifferentInCertificate")
  String? get isNameDifferentInCertificate;
  @override
  @JsonKey(name: "proofOfNameChangeCertificate")
  String? get proofOfNameChangeCertificate;
  @override
  @JsonKey(name: "osid")
  String? get osid;
  @override
  @JsonKey(ignore: true)
  _$$_QualificationCopyWith<_$_Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}
