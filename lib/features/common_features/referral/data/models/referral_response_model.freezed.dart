// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferralRequestModel _$ReferralRequestModelFromJson(Map<String, dynamic> json) {
  return _ReferralRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ReferralRequestModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get registeredMobile => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get referredDate => throw _privateConstructorUsedError;
  String? get referredBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralRequestModelCopyWith<ReferralRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralRequestModelCopyWith<$Res> {
  factory $ReferralRequestModelCopyWith(ReferralRequestModel value,
          $Res Function(ReferralRequestModel) then) =
      _$ReferralRequestModelCopyWithImpl<$Res, ReferralRequestModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? registeredMobile,
      int? patientId,
      @TimestampConverter() DateTime? referredDate,
      String? referredBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ReferralRequestModelCopyWithImpl<$Res,
        $Val extends ReferralRequestModel>
    implements $ReferralRequestModelCopyWith<$Res> {
  _$ReferralRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? registeredMobile = freezed,
    Object? patientId = freezed,
    Object? referredDate = freezed,
    Object? referredBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredMobile: freezed == registeredMobile
          ? _value.registeredMobile
          : registeredMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      referredDate: freezed == referredDate
          ? _value.referredDate
          : referredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralRequestModelImplCopyWith<$Res>
    implements $ReferralRequestModelCopyWith<$Res> {
  factory _$$ReferralRequestModelImplCopyWith(_$ReferralRequestModelImpl value,
          $Res Function(_$ReferralRequestModelImpl) then) =
      __$$ReferralRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? registeredMobile,
      int? patientId,
      @TimestampConverter() DateTime? referredDate,
      String? referredBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ReferralRequestModelImplCopyWithImpl<$Res>
    extends _$ReferralRequestModelCopyWithImpl<$Res, _$ReferralRequestModelImpl>
    implements _$$ReferralRequestModelImplCopyWith<$Res> {
  __$$ReferralRequestModelImplCopyWithImpl(_$ReferralRequestModelImpl _value,
      $Res Function(_$ReferralRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? registeredMobile = freezed,
    Object? patientId = freezed,
    Object? referredDate = freezed,
    Object? referredBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ReferralRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredMobile: freezed == registeredMobile
          ? _value.registeredMobile
          : registeredMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      referredDate: freezed == referredDate
          ? _value.referredDate
          : referredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralRequestModelImpl implements _ReferralRequestModel {
  const _$ReferralRequestModelImpl(
      {this.id,
      this.code,
      this.registeredMobile,
      this.patientId,
      @TimestampConverter() this.referredDate,
      this.referredBy,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ReferralRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralRequestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? registeredMobile;
  @override
  final int? patientId;
  @override
  @TimestampConverter()
  final DateTime? referredDate;
  @override
  final String? referredBy;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReferralRequestModel(id: $id, code: $code, registeredMobile: $registeredMobile, patientId: $patientId, referredDate: $referredDate, referredBy: $referredBy, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.registeredMobile, registeredMobile) ||
                other.registeredMobile == registeredMobile) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.referredDate, referredDate) ||
                other.referredDate == referredDate) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      registeredMobile,
      patientId,
      referredDate,
      referredBy,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralRequestModelImplCopyWith<_$ReferralRequestModelImpl>
      get copyWith =>
          __$$ReferralRequestModelImplCopyWithImpl<_$ReferralRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ReferralRequestModel implements ReferralRequestModel {
  const factory _ReferralRequestModel(
      {final int? id,
      final String? code,
      final String? registeredMobile,
      final int? patientId,
      @TimestampConverter() final DateTime? referredDate,
      final String? referredBy,
      final Map<String, dynamic>? metadata}) = _$ReferralRequestModelImpl;

  factory _ReferralRequestModel.fromJson(Map<String, dynamic> json) =
      _$ReferralRequestModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get registeredMobile;
  @override
  int? get patientId;
  @override
  @TimestampConverter()
  DateTime? get referredDate;
  @override
  String? get referredBy;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ReferralRequestModelImplCopyWith<_$ReferralRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReferralCodeModel _$ReferralCodeModelFromJson(Map<String, dynamic> json) {
  return _ReferralCodeModel.fromJson(json);
}

/// @nodoc
mixin _$ReferralCodeModel {
  String? get code => throw _privateConstructorUsedError;
  Map<String, dynamic>? get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralCodeModelCopyWith<ReferralCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeModelCopyWith<$Res> {
  factory $ReferralCodeModelCopyWith(
          ReferralCodeModel value, $Res Function(ReferralCodeModel) then) =
      _$ReferralCodeModelCopyWithImpl<$Res, ReferralCodeModel>;
  @useResult
  $Res call({String? code, Map<String, dynamic>? statistics});
}

/// @nodoc
class _$ReferralCodeModelCopyWithImpl<$Res, $Val extends ReferralCodeModel>
    implements $ReferralCodeModelCopyWith<$Res> {
  _$ReferralCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralCodeModelImplCopyWith<$Res>
    implements $ReferralCodeModelCopyWith<$Res> {
  factory _$$ReferralCodeModelImplCopyWith(_$ReferralCodeModelImpl value,
          $Res Function(_$ReferralCodeModelImpl) then) =
      __$$ReferralCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, Map<String, dynamic>? statistics});
}

/// @nodoc
class __$$ReferralCodeModelImplCopyWithImpl<$Res>
    extends _$ReferralCodeModelCopyWithImpl<$Res, _$ReferralCodeModelImpl>
    implements _$$ReferralCodeModelImplCopyWith<$Res> {
  __$$ReferralCodeModelImplCopyWithImpl(_$ReferralCodeModelImpl _value,
      $Res Function(_$ReferralCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$ReferralCodeModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      statistics: freezed == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralCodeModelImpl implements _ReferralCodeModel {
  const _$ReferralCodeModelImpl(
      {this.code, final Map<String, dynamic>? statistics})
      : _statistics = statistics;

  factory _$ReferralCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralCodeModelImplFromJson(json);

  @override
  final String? code;
  final Map<String, dynamic>? _statistics;
  @override
  Map<String, dynamic>? get statistics {
    final value = _statistics;
    if (value == null) return null;
    if (_statistics is EqualUnmodifiableMapView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReferralCodeModel(code: $code, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralCodeModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralCodeModelImplCopyWith<_$ReferralCodeModelImpl> get copyWith =>
      __$$ReferralCodeModelImplCopyWithImpl<_$ReferralCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralCodeModelImplToJson(
      this,
    );
  }
}

abstract class _ReferralCodeModel implements ReferralCodeModel {
  const factory _ReferralCodeModel(
      {final String? code,
      final Map<String, dynamic>? statistics}) = _$ReferralCodeModelImpl;

  factory _ReferralCodeModel.fromJson(Map<String, dynamic> json) =
      _$ReferralCodeModelImpl.fromJson;

  @override
  String? get code;
  @override
  Map<String, dynamic>? get statistics;
  @override
  @JsonKey(ignore: true)
  _$$ReferralCodeModelImplCopyWith<_$ReferralCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyReferralModel _$MyReferralModelFromJson(Map<String, dynamic> json) {
  return _MyReferralModel.fromJson(json);
}

/// @nodoc
mixin _$MyReferralModel {
  List<ReferralModel>? get referrals => throw _privateConstructorUsedError;
  bool? get statistics => throw _privateConstructorUsedError;
  ReferralsTriageStatistics? get referralsTriageStatistics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyReferralModelCopyWith<MyReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReferralModelCopyWith<$Res> {
  factory $MyReferralModelCopyWith(
          MyReferralModel value, $Res Function(MyReferralModel) then) =
      _$MyReferralModelCopyWithImpl<$Res, MyReferralModel>;
  @useResult
  $Res call(
      {List<ReferralModel>? referrals,
      bool? statistics,
      ReferralsTriageStatistics? referralsTriageStatistics});

  $ReferralsTriageStatisticsCopyWith<$Res>? get referralsTriageStatistics;
}

/// @nodoc
class _$MyReferralModelCopyWithImpl<$Res, $Val extends MyReferralModel>
    implements $MyReferralModelCopyWith<$Res> {
  _$MyReferralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referrals = freezed,
    Object? statistics = freezed,
    Object? referralsTriageStatistics = freezed,
  }) {
    return _then(_value.copyWith(
      referrals: freezed == referrals
          ? _value.referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<ReferralModel>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as bool?,
      referralsTriageStatistics: freezed == referralsTriageStatistics
          ? _value.referralsTriageStatistics
          : referralsTriageStatistics // ignore: cast_nullable_to_non_nullable
              as ReferralsTriageStatistics?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferralsTriageStatisticsCopyWith<$Res>? get referralsTriageStatistics {
    if (_value.referralsTriageStatistics == null) {
      return null;
    }

    return $ReferralsTriageStatisticsCopyWith<$Res>(
        _value.referralsTriageStatistics!, (value) {
      return _then(_value.copyWith(referralsTriageStatistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyReferralModelImplCopyWith<$Res>
    implements $MyReferralModelCopyWith<$Res> {
  factory _$$MyReferralModelImplCopyWith(_$MyReferralModelImpl value,
          $Res Function(_$MyReferralModelImpl) then) =
      __$$MyReferralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReferralModel>? referrals,
      bool? statistics,
      ReferralsTriageStatistics? referralsTriageStatistics});

  @override
  $ReferralsTriageStatisticsCopyWith<$Res>? get referralsTriageStatistics;
}

/// @nodoc
class __$$MyReferralModelImplCopyWithImpl<$Res>
    extends _$MyReferralModelCopyWithImpl<$Res, _$MyReferralModelImpl>
    implements _$$MyReferralModelImplCopyWith<$Res> {
  __$$MyReferralModelImplCopyWithImpl(
      _$MyReferralModelImpl _value, $Res Function(_$MyReferralModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referrals = freezed,
    Object? statistics = freezed,
    Object? referralsTriageStatistics = freezed,
  }) {
    return _then(_$MyReferralModelImpl(
      referrals: freezed == referrals
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<ReferralModel>?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as bool?,
      referralsTriageStatistics: freezed == referralsTriageStatistics
          ? _value.referralsTriageStatistics
          : referralsTriageStatistics // ignore: cast_nullable_to_non_nullable
              as ReferralsTriageStatistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyReferralModelImpl implements _MyReferralModel {
  const _$MyReferralModelImpl(
      {final List<ReferralModel>? referrals,
      this.statistics,
      this.referralsTriageStatistics})
      : _referrals = referrals;

  factory _$MyReferralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyReferralModelImplFromJson(json);

  final List<ReferralModel>? _referrals;
  @override
  List<ReferralModel>? get referrals {
    final value = _referrals;
    if (value == null) return null;
    if (_referrals is EqualUnmodifiableListView) return _referrals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? statistics;
  @override
  final ReferralsTriageStatistics? referralsTriageStatistics;

  @override
  String toString() {
    return 'MyReferralModel(referrals: $referrals, statistics: $statistics, referralsTriageStatistics: $referralsTriageStatistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReferralModelImpl &&
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            (identical(other.referralsTriageStatistics,
                    referralsTriageStatistics) ||
                other.referralsTriageStatistics == referralsTriageStatistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_referrals),
      statistics,
      referralsTriageStatistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyReferralModelImplCopyWith<_$MyReferralModelImpl> get copyWith =>
      __$$MyReferralModelImplCopyWithImpl<_$MyReferralModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyReferralModelImplToJson(
      this,
    );
  }
}

abstract class _MyReferralModel implements MyReferralModel {
  const factory _MyReferralModel(
          {final List<ReferralModel>? referrals,
          final bool? statistics,
          final ReferralsTriageStatistics? referralsTriageStatistics}) =
      _$MyReferralModelImpl;

  factory _MyReferralModel.fromJson(Map<String, dynamic> json) =
      _$MyReferralModelImpl.fromJson;

  @override
  List<ReferralModel>? get referrals;
  @override
  bool? get statistics;
  @override
  ReferralsTriageStatistics? get referralsTriageStatistics;
  @override
  @JsonKey(ignore: true)
  _$$MyReferralModelImplCopyWith<_$MyReferralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralModel _$ReferralModelFromJson(Map<String, dynamic> json) {
  return _ReferralModel.fromJson(json);
}

/// @nodoc
mixin _$ReferralModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get registeredMobile => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get referredDate => throw _privateConstructorUsedError;
  String? get referredBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralModelCopyWith<ReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralModelCopyWith<$Res> {
  factory $ReferralModelCopyWith(
          ReferralModel value, $Res Function(ReferralModel) then) =
      _$ReferralModelCopyWithImpl<$Res, ReferralModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? registeredMobile,
      int? patientId,
      @TimestampConverter() DateTime? referredDate,
      String? referredBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ReferralModelCopyWithImpl<$Res, $Val extends ReferralModel>
    implements $ReferralModelCopyWith<$Res> {
  _$ReferralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? registeredMobile = freezed,
    Object? patientId = freezed,
    Object? referredDate = freezed,
    Object? referredBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredMobile: freezed == registeredMobile
          ? _value.registeredMobile
          : registeredMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      referredDate: freezed == referredDate
          ? _value.referredDate
          : referredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralModelImplCopyWith<$Res>
    implements $ReferralModelCopyWith<$Res> {
  factory _$$ReferralModelImplCopyWith(
          _$ReferralModelImpl value, $Res Function(_$ReferralModelImpl) then) =
      __$$ReferralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? registeredMobile,
      int? patientId,
      @TimestampConverter() DateTime? referredDate,
      String? referredBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ReferralModelImplCopyWithImpl<$Res>
    extends _$ReferralModelCopyWithImpl<$Res, _$ReferralModelImpl>
    implements _$$ReferralModelImplCopyWith<$Res> {
  __$$ReferralModelImplCopyWithImpl(
      _$ReferralModelImpl _value, $Res Function(_$ReferralModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? registeredMobile = freezed,
    Object? patientId = freezed,
    Object? referredDate = freezed,
    Object? referredBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ReferralModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      registeredMobile: freezed == registeredMobile
          ? _value.registeredMobile
          : registeredMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      referredDate: freezed == referredDate
          ? _value.referredDate
          : referredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralModelImpl implements _ReferralModel {
  const _$ReferralModelImpl(
      {this.id,
      this.code,
      this.registeredMobile,
      this.patientId,
      @TimestampConverter() this.referredDate,
      this.referredBy,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ReferralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? registeredMobile;
  @override
  final int? patientId;
  @override
  @TimestampConverter()
  final DateTime? referredDate;
  @override
  final String? referredBy;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ReferralModel(id: $id, code: $code, registeredMobile: $registeredMobile, patientId: $patientId, referredDate: $referredDate, referredBy: $referredBy, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.registeredMobile, registeredMobile) ||
                other.registeredMobile == registeredMobile) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.referredDate, referredDate) ||
                other.referredDate == referredDate) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      registeredMobile,
      patientId,
      referredDate,
      referredBy,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralModelImplCopyWith<_$ReferralModelImpl> get copyWith =>
      __$$ReferralModelImplCopyWithImpl<_$ReferralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralModelImplToJson(
      this,
    );
  }
}

abstract class _ReferralModel implements ReferralModel {
  const factory _ReferralModel(
      {final int? id,
      final String? code,
      final String? registeredMobile,
      final int? patientId,
      @TimestampConverter() final DateTime? referredDate,
      final String? referredBy,
      final Map<String, dynamic>? metadata}) = _$ReferralModelImpl;

  factory _ReferralModel.fromJson(Map<String, dynamic> json) =
      _$ReferralModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get registeredMobile;
  @override
  int? get patientId;
  @override
  @TimestampConverter()
  DateTime? get referredDate;
  @override
  String? get referredBy;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ReferralModelImplCopyWith<_$ReferralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralsTriageStatistics _$ReferralsTriageStatisticsFromJson(
    Map<String, dynamic> json) {
  return _ReferralsTriageStatistics.fromJson(json);
}

/// @nodoc
mixin _$ReferralsTriageStatistics {
  List<String>? get referred => throw _privateConstructorUsedError;
  int? get totalReferredCounts => throw _privateConstructorUsedError;
  int? get totalTriagedCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralsTriageStatisticsCopyWith<ReferralsTriageStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralsTriageStatisticsCopyWith<$Res> {
  factory $ReferralsTriageStatisticsCopyWith(ReferralsTriageStatistics value,
          $Res Function(ReferralsTriageStatistics) then) =
      _$ReferralsTriageStatisticsCopyWithImpl<$Res, ReferralsTriageStatistics>;
  @useResult
  $Res call(
      {List<String>? referred,
      int? totalReferredCounts,
      int? totalTriagedCounts});
}

/// @nodoc
class _$ReferralsTriageStatisticsCopyWithImpl<$Res,
        $Val extends ReferralsTriageStatistics>
    implements $ReferralsTriageStatisticsCopyWith<$Res> {
  _$ReferralsTriageStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referred = freezed,
    Object? totalReferredCounts = freezed,
    Object? totalTriagedCounts = freezed,
  }) {
    return _then(_value.copyWith(
      referred: freezed == referred
          ? _value.referred
          : referred // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalReferredCounts: freezed == totalReferredCounts
          ? _value.totalReferredCounts
          : totalReferredCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTriagedCounts: freezed == totalTriagedCounts
          ? _value.totalTriagedCounts
          : totalTriagedCounts // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralsTriageStatisticsImplCopyWith<$Res>
    implements $ReferralsTriageStatisticsCopyWith<$Res> {
  factory _$$ReferralsTriageStatisticsImplCopyWith(
          _$ReferralsTriageStatisticsImpl value,
          $Res Function(_$ReferralsTriageStatisticsImpl) then) =
      __$$ReferralsTriageStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? referred,
      int? totalReferredCounts,
      int? totalTriagedCounts});
}

/// @nodoc
class __$$ReferralsTriageStatisticsImplCopyWithImpl<$Res>
    extends _$ReferralsTriageStatisticsCopyWithImpl<$Res,
        _$ReferralsTriageStatisticsImpl>
    implements _$$ReferralsTriageStatisticsImplCopyWith<$Res> {
  __$$ReferralsTriageStatisticsImplCopyWithImpl(
      _$ReferralsTriageStatisticsImpl _value,
      $Res Function(_$ReferralsTriageStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referred = freezed,
    Object? totalReferredCounts = freezed,
    Object? totalTriagedCounts = freezed,
  }) {
    return _then(_$ReferralsTriageStatisticsImpl(
      referred: freezed == referred
          ? _value._referred
          : referred // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      totalReferredCounts: freezed == totalReferredCounts
          ? _value.totalReferredCounts
          : totalReferredCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTriagedCounts: freezed == totalTriagedCounts
          ? _value.totalTriagedCounts
          : totalTriagedCounts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralsTriageStatisticsImpl implements _ReferralsTriageStatistics {
  const _$ReferralsTriageStatisticsImpl(
      {final List<String>? referred,
      this.totalReferredCounts,
      this.totalTriagedCounts})
      : _referred = referred;

  factory _$ReferralsTriageStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralsTriageStatisticsImplFromJson(json);

  final List<String>? _referred;
  @override
  List<String>? get referred {
    final value = _referred;
    if (value == null) return null;
    if (_referred is EqualUnmodifiableListView) return _referred;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalReferredCounts;
  @override
  final int? totalTriagedCounts;

  @override
  String toString() {
    return 'ReferralsTriageStatistics(referred: $referred, totalReferredCounts: $totalReferredCounts, totalTriagedCounts: $totalTriagedCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralsTriageStatisticsImpl &&
            const DeepCollectionEquality().equals(other._referred, _referred) &&
            (identical(other.totalReferredCounts, totalReferredCounts) ||
                other.totalReferredCounts == totalReferredCounts) &&
            (identical(other.totalTriagedCounts, totalTriagedCounts) ||
                other.totalTriagedCounts == totalTriagedCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_referred),
      totalReferredCounts,
      totalTriagedCounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralsTriageStatisticsImplCopyWith<_$ReferralsTriageStatisticsImpl>
      get copyWith => __$$ReferralsTriageStatisticsImplCopyWithImpl<
          _$ReferralsTriageStatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralsTriageStatisticsImplToJson(
      this,
    );
  }
}

abstract class _ReferralsTriageStatistics implements ReferralsTriageStatistics {
  const factory _ReferralsTriageStatistics(
      {final List<String>? referred,
      final int? totalReferredCounts,
      final int? totalTriagedCounts}) = _$ReferralsTriageStatisticsImpl;

  factory _ReferralsTriageStatistics.fromJson(Map<String, dynamic> json) =
      _$ReferralsTriageStatisticsImpl.fromJson;

  @override
  List<String>? get referred;
  @override
  int? get totalReferredCounts;
  @override
  int? get totalTriagedCounts;
  @override
  @JsonKey(ignore: true)
  _$$ReferralsTriageStatisticsImplCopyWith<_$ReferralsTriageStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
