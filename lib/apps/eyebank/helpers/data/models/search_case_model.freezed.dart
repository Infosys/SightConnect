// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_case_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchCaseModel _$SearchCaseModelFromJson(Map<String, dynamic> json) {
  return _SearchCaseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCaseModel {
  int? get caseId => throw _privateConstructorUsedError;
  String? get screeningStatus => throw _privateConstructorUsedError;
  DonarBrief? get donarBrief => throw _privateConstructorUsedError;
  DateTime? get intimateDate => throw _privateConstructorUsedError;
  int? get performerId => throw _privateConstructorUsedError;
  DateTime? get deathDate => throw _privateConstructorUsedError;
  BodyLocation? get bodyLocation => throw _privateConstructorUsedError;
  List<String>? get organExtracted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCaseModelCopyWith<SearchCaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCaseModelCopyWith<$Res> {
  factory $SearchCaseModelCopyWith(
          SearchCaseModel value, $Res Function(SearchCaseModel) then) =
      _$SearchCaseModelCopyWithImpl<$Res, SearchCaseModel>;
  @useResult
  $Res call(
      {int? caseId,
      String? screeningStatus,
      DonarBrief? donarBrief,
      DateTime? intimateDate,
      int? performerId,
      DateTime? deathDate,
      BodyLocation? bodyLocation,
      List<String>? organExtracted});

  $DonarBriefCopyWith<$Res>? get donarBrief;
  $BodyLocationCopyWith<$Res>? get bodyLocation;
}

/// @nodoc
class _$SearchCaseModelCopyWithImpl<$Res, $Val extends SearchCaseModel>
    implements $SearchCaseModelCopyWith<$Res> {
  _$SearchCaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseId = freezed,
    Object? screeningStatus = freezed,
    Object? donarBrief = freezed,
    Object? intimateDate = freezed,
    Object? performerId = freezed,
    Object? deathDate = freezed,
    Object? bodyLocation = freezed,
    Object? organExtracted = freezed,
  }) {
    return _then(_value.copyWith(
      caseId: freezed == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int?,
      screeningStatus: freezed == screeningStatus
          ? _value.screeningStatus
          : screeningStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      donarBrief: freezed == donarBrief
          ? _value.donarBrief
          : donarBrief // ignore: cast_nullable_to_non_nullable
              as DonarBrief?,
      intimateDate: freezed == intimateDate
          ? _value.intimateDate
          : intimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodyLocation: freezed == bodyLocation
          ? _value.bodyLocation
          : bodyLocation // ignore: cast_nullable_to_non_nullable
              as BodyLocation?,
      organExtracted: freezed == organExtracted
          ? _value.organExtracted
          : organExtracted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonarBriefCopyWith<$Res>? get donarBrief {
    if (_value.donarBrief == null) {
      return null;
    }

    return $DonarBriefCopyWith<$Res>(_value.donarBrief!, (value) {
      return _then(_value.copyWith(donarBrief: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyLocationCopyWith<$Res>? get bodyLocation {
    if (_value.bodyLocation == null) {
      return null;
    }

    return $BodyLocationCopyWith<$Res>(_value.bodyLocation!, (value) {
      return _then(_value.copyWith(bodyLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCaseModelImplCopyWith<$Res>
    implements $SearchCaseModelCopyWith<$Res> {
  factory _$$SearchCaseModelImplCopyWith(_$SearchCaseModelImpl value,
          $Res Function(_$SearchCaseModelImpl) then) =
      __$$SearchCaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? caseId,
      String? screeningStatus,
      DonarBrief? donarBrief,
      DateTime? intimateDate,
      int? performerId,
      DateTime? deathDate,
      BodyLocation? bodyLocation,
      List<String>? organExtracted});

  @override
  $DonarBriefCopyWith<$Res>? get donarBrief;
  @override
  $BodyLocationCopyWith<$Res>? get bodyLocation;
}

/// @nodoc
class __$$SearchCaseModelImplCopyWithImpl<$Res>
    extends _$SearchCaseModelCopyWithImpl<$Res, _$SearchCaseModelImpl>
    implements _$$SearchCaseModelImplCopyWith<$Res> {
  __$$SearchCaseModelImplCopyWithImpl(
      _$SearchCaseModelImpl _value, $Res Function(_$SearchCaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseId = freezed,
    Object? screeningStatus = freezed,
    Object? donarBrief = freezed,
    Object? intimateDate = freezed,
    Object? performerId = freezed,
    Object? deathDate = freezed,
    Object? bodyLocation = freezed,
    Object? organExtracted = freezed,
  }) {
    return _then(_$SearchCaseModelImpl(
      caseId: freezed == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int?,
      screeningStatus: freezed == screeningStatus
          ? _value.screeningStatus
          : screeningStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      donarBrief: freezed == donarBrief
          ? _value.donarBrief
          : donarBrief // ignore: cast_nullable_to_non_nullable
              as DonarBrief?,
      intimateDate: freezed == intimateDate
          ? _value.intimateDate
          : intimateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      performerId: freezed == performerId
          ? _value.performerId
          : performerId // ignore: cast_nullable_to_non_nullable
              as int?,
      deathDate: freezed == deathDate
          ? _value.deathDate
          : deathDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bodyLocation: freezed == bodyLocation
          ? _value.bodyLocation
          : bodyLocation // ignore: cast_nullable_to_non_nullable
              as BodyLocation?,
      organExtracted: freezed == organExtracted
          ? _value._organExtracted
          : organExtracted // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchCaseModelImpl implements _SearchCaseModel {
  const _$SearchCaseModelImpl(
      {this.caseId,
      this.screeningStatus,
      this.donarBrief,
      this.intimateDate,
      this.performerId,
      this.deathDate,
      this.bodyLocation,
      final List<String>? organExtracted})
      : _organExtracted = organExtracted;

  factory _$SearchCaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchCaseModelImplFromJson(json);

  @override
  final int? caseId;
  @override
  final String? screeningStatus;
  @override
  final DonarBrief? donarBrief;
  @override
  final DateTime? intimateDate;
  @override
  final int? performerId;
  @override
  final DateTime? deathDate;
  @override
  final BodyLocation? bodyLocation;
  final List<String>? _organExtracted;
  @override
  List<String>? get organExtracted {
    final value = _organExtracted;
    if (value == null) return null;
    if (_organExtracted is EqualUnmodifiableListView) return _organExtracted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchCaseModel(caseId: $caseId, screeningStatus: $screeningStatus, donarBrief: $donarBrief, intimateDate: $intimateDate, performerId: $performerId, deathDate: $deathDate, bodyLocation: $bodyLocation, organExtracted: $organExtracted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCaseModelImpl &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.screeningStatus, screeningStatus) ||
                other.screeningStatus == screeningStatus) &&
            (identical(other.donarBrief, donarBrief) ||
                other.donarBrief == donarBrief) &&
            (identical(other.intimateDate, intimateDate) ||
                other.intimateDate == intimateDate) &&
            (identical(other.performerId, performerId) ||
                other.performerId == performerId) &&
            (identical(other.deathDate, deathDate) ||
                other.deathDate == deathDate) &&
            (identical(other.bodyLocation, bodyLocation) ||
                other.bodyLocation == bodyLocation) &&
            const DeepCollectionEquality()
                .equals(other._organExtracted, _organExtracted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      caseId,
      screeningStatus,
      donarBrief,
      intimateDate,
      performerId,
      deathDate,
      bodyLocation,
      const DeepCollectionEquality().hash(_organExtracted));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCaseModelImplCopyWith<_$SearchCaseModelImpl> get copyWith =>
      __$$SearchCaseModelImplCopyWithImpl<_$SearchCaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchCaseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchCaseModel implements SearchCaseModel {
  const factory _SearchCaseModel(
      {final int? caseId,
      final String? screeningStatus,
      final DonarBrief? donarBrief,
      final DateTime? intimateDate,
      final int? performerId,
      final DateTime? deathDate,
      final BodyLocation? bodyLocation,
      final List<String>? organExtracted}) = _$SearchCaseModelImpl;

  factory _SearchCaseModel.fromJson(Map<String, dynamic> json) =
      _$SearchCaseModelImpl.fromJson;

  @override
  int? get caseId;
  @override
  String? get screeningStatus;
  @override
  DonarBrief? get donarBrief;
  @override
  DateTime? get intimateDate;
  @override
  int? get performerId;
  @override
  DateTime? get deathDate;
  @override
  BodyLocation? get bodyLocation;
  @override
  List<String>? get organExtracted;
  @override
  @JsonKey(ignore: true)
  _$$SearchCaseModelImplCopyWith<_$SearchCaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyLocation _$BodyLocationFromJson(Map<String, dynamic> json) {
  return _BodyLocation.fromJson(json);
}

/// @nodoc
mixin _$BodyLocation {
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyLocationCopyWith<BodyLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyLocationCopyWith<$Res> {
  factory $BodyLocationCopyWith(
          BodyLocation value, $Res Function(BodyLocation) then) =
      _$BodyLocationCopyWithImpl<$Res, BodyLocation>;
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country,
      String? landmark,
      String? village,
      String? district,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$BodyLocationCopyWithImpl<$Res, $Val extends BodyLocation>
    implements $BodyLocationCopyWith<$Res> {
  _$BodyLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? landmark = freezed,
    Object? village = freezed,
    Object? district = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyLocationImplCopyWith<$Res>
    implements $BodyLocationCopyWith<$Res> {
  factory _$$BodyLocationImplCopyWith(
          _$BodyLocationImpl value, $Res Function(_$BodyLocationImpl) then) =
      __$$BodyLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? zipCode,
      String? country,
      String? landmark,
      String? village,
      String? district,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$BodyLocationImplCopyWithImpl<$Res>
    extends _$BodyLocationCopyWithImpl<$Res, _$BodyLocationImpl>
    implements _$$BodyLocationImplCopyWith<$Res> {
  __$$BodyLocationImplCopyWithImpl(
      _$BodyLocationImpl _value, $Res Function(_$BodyLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? country = freezed,
    Object? landmark = freezed,
    Object? village = freezed,
    Object? district = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$BodyLocationImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyLocationImpl implements _BodyLocation {
  const _$BodyLocationImpl(
      {this.street,
      this.city,
      this.state,
      this.zipCode,
      this.country,
      this.landmark,
      this.village,
      this.district,
      this.latitude,
      this.longitude});

  factory _$BodyLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyLocationImplFromJson(json);

  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zipCode;
  @override
  final String? country;
  @override
  final String? landmark;
  @override
  final String? village;
  @override
  final String? district;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'BodyLocation(street: $street, city: $city, state: $state, zipCode: $zipCode, country: $country, landmark: $landmark, village: $village, district: $district, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyLocationImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, state, zipCode,
      country, landmark, village, district, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyLocationImplCopyWith<_$BodyLocationImpl> get copyWith =>
      __$$BodyLocationImplCopyWithImpl<_$BodyLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyLocationImplToJson(
      this,
    );
  }
}

abstract class _BodyLocation implements BodyLocation {
  const factory _BodyLocation(
      {final String? street,
      final String? city,
      final String? state,
      final String? zipCode,
      final String? country,
      final String? landmark,
      final String? village,
      final String? district,
      final String? latitude,
      final String? longitude}) = _$BodyLocationImpl;

  factory _BodyLocation.fromJson(Map<String, dynamic> json) =
      _$BodyLocationImpl.fromJson;

  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zipCode;
  @override
  String? get country;
  @override
  String? get landmark;
  @override
  String? get village;
  @override
  String? get district;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$BodyLocationImplCopyWith<_$BodyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DonarBrief _$DonarBriefFromJson(Map<String, dynamic> json) {
  return _DonarBrief.fromJson(json);
}

/// @nodoc
mixin _$DonarBrief {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonarBriefCopyWith<DonarBrief> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonarBriefCopyWith<$Res> {
  factory $DonarBriefCopyWith(
          DonarBrief value, $Res Function(DonarBrief) then) =
      _$DonarBriefCopyWithImpl<$Res, DonarBrief>;
  @useResult
  $Res call({int? id, String? name, String? contact});
}

/// @nodoc
class _$DonarBriefCopyWithImpl<$Res, $Val extends DonarBrief>
    implements $DonarBriefCopyWith<$Res> {
  _$DonarBriefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? contact = freezed,
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
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonarBriefImplCopyWith<$Res>
    implements $DonarBriefCopyWith<$Res> {
  factory _$$DonarBriefImplCopyWith(
          _$DonarBriefImpl value, $Res Function(_$DonarBriefImpl) then) =
      __$$DonarBriefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? contact});
}

/// @nodoc
class __$$DonarBriefImplCopyWithImpl<$Res>
    extends _$DonarBriefCopyWithImpl<$Res, _$DonarBriefImpl>
    implements _$$DonarBriefImplCopyWith<$Res> {
  __$$DonarBriefImplCopyWithImpl(
      _$DonarBriefImpl _value, $Res Function(_$DonarBriefImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$DonarBriefImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonarBriefImpl implements _DonarBrief {
  const _$DonarBriefImpl({this.id, this.name, this.contact});

  factory _$DonarBriefImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonarBriefImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? contact;

  @override
  String toString() {
    return 'DonarBrief(id: $id, name: $name, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonarBriefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonarBriefImplCopyWith<_$DonarBriefImpl> get copyWith =>
      __$$DonarBriefImplCopyWithImpl<_$DonarBriefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonarBriefImplToJson(
      this,
    );
  }
}

abstract class _DonarBrief implements DonarBrief {
  const factory _DonarBrief(
      {final int? id,
      final String? name,
      final String? contact}) = _$DonarBriefImpl;

  factory _DonarBrief.fromJson(Map<String, dynamic> json) =
      _$DonarBriefImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get contact;
  @override
  @JsonKey(ignore: true)
  _$$DonarBriefImplCopyWith<_$DonarBriefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
