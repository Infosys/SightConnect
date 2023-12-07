// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientResponseModel _$PatientResponseModelFromJson(Map<String, dynamic> json) {
  return _PatientResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PatientResponseModel {
  String? get intent => throw _privateConstructorUsedError;
  MetaDataModel? get metaData => throw _privateConstructorUsedError;
  ProfileModel? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientResponseModelCopyWith<PatientResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientResponseModelCopyWith<$Res> {
  factory $PatientResponseModelCopyWith(PatientResponseModel value,
          $Res Function(PatientResponseModel) then) =
      _$PatientResponseModelCopyWithImpl<$Res, PatientResponseModel>;
  @useResult
  $Res call({String? intent, MetaDataModel? metaData, ProfileModel? profile});

  $MetaDataModelCopyWith<$Res>? get metaData;
  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$PatientResponseModelCopyWithImpl<$Res,
        $Val extends PatientResponseModel>
    implements $PatientResponseModelCopyWith<$Res> {
  _$PatientResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataModelCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientResponseModelCopyWith<$Res>
    implements $PatientResponseModelCopyWith<$Res> {
  factory _$$_PatientResponseModelCopyWith(_$_PatientResponseModel value,
          $Res Function(_$_PatientResponseModel) then) =
      __$$_PatientResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? intent, MetaDataModel? metaData, ProfileModel? profile});

  @override
  $MetaDataModelCopyWith<$Res>? get metaData;
  @override
  $ProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_PatientResponseModelCopyWithImpl<$Res>
    extends _$PatientResponseModelCopyWithImpl<$Res, _$_PatientResponseModel>
    implements _$$_PatientResponseModelCopyWith<$Res> {
  __$$_PatientResponseModelCopyWithImpl(_$_PatientResponseModel _value,
      $Res Function(_$_PatientResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = freezed,
    Object? metaData = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_PatientResponseModel(
      intent: freezed == intent
          ? _value.intent
          : intent // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientResponseModel implements _PatientResponseModel {
  const _$_PatientResponseModel({this.intent, this.metaData, this.profile});

  factory _$_PatientResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatientResponseModelFromJson(json);

  @override
  final String? intent;
  @override
  final MetaDataModel? metaData;
  @override
  final ProfileModel? profile;

  @override
  String toString() {
    return 'PatientResponseModel(intent: $intent, metaData: $metaData, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientResponseModel &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, intent, metaData, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientResponseModelCopyWith<_$_PatientResponseModel> get copyWith =>
      __$$_PatientResponseModelCopyWithImpl<_$_PatientResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientResponseModelToJson(
      this,
    );
  }
}

abstract class _PatientResponseModel implements PatientResponseModel {
  const factory _PatientResponseModel(
      {final String? intent,
      final MetaDataModel? metaData,
      final ProfileModel? profile}) = _$_PatientResponseModel;

  factory _PatientResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PatientResponseModel.fromJson;

  @override
  String? get intent;
  @override
  MetaDataModel? get metaData;
  @override
  ProfileModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_PatientResponseModelCopyWith<_$_PatientResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
