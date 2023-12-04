// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_set_section_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationSetSectionResponseModel _$ObservationSetSectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetSectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetSectionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ObservationSetResponseModel>? get observationSetResponseDTOList =>
      throw _privateConstructorUsedError;
  ObservationSetSectionModel? get supersection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetSectionResponseModelCopyWith<
          ObservationSetSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetSectionResponseModelCopyWith<$Res> {
  factory $ObservationSetSectionResponseModelCopyWith(
          ObservationSetSectionResponseModel value,
          $Res Function(ObservationSetSectionResponseModel) then) =
      _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
          ObservationSetSectionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      List<ObservationSetResponseModel>? observationSetResponseDTOList,
      ObservationSetSectionModel? supersection});

  $ObservationSetSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
        $Val extends ObservationSetSectionResponseModel>
    implements $ObservationSetSectionResponseModelCopyWith<$Res> {
  _$ObservationSetSectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSetResponseDTOList = freezed,
    Object? supersection = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSetResponseDTOList: freezed == observationSetResponseDTOList
          ? _value.observationSetResponseDTOList
          : observationSetResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetResponseModel>?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as ObservationSetSectionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationSetSectionModelCopyWith<$Res>? get supersection {
    if (_value.supersection == null) {
      return null;
    }

    return $ObservationSetSectionModelCopyWith<$Res>(_value.supersection!,
        (value) {
      return _then(_value.copyWith(supersection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetSectionResponseModelCopyWith<$Res>
    implements $ObservationSetSectionResponseModelCopyWith<$Res> {
  factory _$$_ObservationSetSectionResponseModelCopyWith(
          _$_ObservationSetSectionResponseModel value,
          $Res Function(_$_ObservationSetSectionResponseModel) then) =
      __$$_ObservationSetSectionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      List<ObservationSetResponseModel>? observationSetResponseDTOList,
      ObservationSetSectionModel? supersection});

  @override
  $ObservationSetSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class __$$_ObservationSetSectionResponseModelCopyWithImpl<$Res>
    extends _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
        _$_ObservationSetSectionResponseModel>
    implements _$$_ObservationSetSectionResponseModelCopyWith<$Res> {
  __$$_ObservationSetSectionResponseModelCopyWithImpl(
      _$_ObservationSetSectionResponseModel _value,
      $Res Function(_$_ObservationSetSectionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSetResponseDTOList = freezed,
    Object? supersection = freezed,
  }) {
    return _then(_$_ObservationSetSectionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSetResponseDTOList: freezed == observationSetResponseDTOList
          ? _value._observationSetResponseDTOList
          : observationSetResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetResponseModel>?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as ObservationSetSectionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetSectionResponseModel
    implements _ObservationSetSectionResponseModel {
  const _$_ObservationSetSectionResponseModel(
      {this.id,
      this.index,
      this.description,
      final List<ObservationSetResponseModel>? observationSetResponseDTOList,
      this.supersection})
      : _observationSetResponseDTOList = observationSetResponseDTOList;

  factory _$_ObservationSetSectionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ObservationSetSectionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  final List<ObservationSetResponseModel>? _observationSetResponseDTOList;
  @override
  List<ObservationSetResponseModel>? get observationSetResponseDTOList {
    final value = _observationSetResponseDTOList;
    if (value == null) return null;
    if (_observationSetResponseDTOList is EqualUnmodifiableListView)
      return _observationSetResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ObservationSetSectionModel? supersection;

  @override
  String toString() {
    return 'ObservationSetSectionResponseModel(id: $id, index: $index, description: $description, observationSetResponseDTOList: $observationSetResponseDTOList, supersection: $supersection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetSectionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
                other._observationSetResponseDTOList,
                _observationSetResponseDTOList) &&
            (identical(other.supersection, supersection) ||
                other.supersection == supersection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      const DeepCollectionEquality().hash(_observationSetResponseDTOList),
      supersection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetSectionResponseModelCopyWith<
          _$_ObservationSetSectionResponseModel>
      get copyWith => __$$_ObservationSetSectionResponseModelCopyWithImpl<
          _$_ObservationSetSectionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetSectionResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetSectionResponseModel
    implements ObservationSetSectionResponseModel {
  const factory _ObservationSetSectionResponseModel(
      {final int? id,
      final int? index,
      final String? description,
      final List<ObservationSetResponseModel>? observationSetResponseDTOList,
      final ObservationSetSectionModel?
          supersection}) = _$_ObservationSetSectionResponseModel;

  factory _ObservationSetSectionResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ObservationSetSectionResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  List<ObservationSetResponseModel>? get observationSetResponseDTOList;
  @override
  ObservationSetSectionModel? get supersection;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetSectionResponseModelCopyWith<
          _$_ObservationSetSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
