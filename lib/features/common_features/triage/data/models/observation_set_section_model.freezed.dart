// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observation_set_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObservationSetSectionModel _$ObservationSetSectionModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetSectionModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetSectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ObservationSetModel? get observationSet => throw _privateConstructorUsedError;
  AssessmentModel? get assessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetSectionModelCopyWith<ObservationSetSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetSectionModelCopyWith<$Res> {
  factory $ObservationSetSectionModelCopyWith(ObservationSetSectionModel value,
          $Res Function(ObservationSetSectionModel) then) =
      _$ObservationSetSectionModelCopyWithImpl<$Res,
          ObservationSetSectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      ObservationSetModel? observationSet,
      AssessmentModel? assessment});

  $ObservationSetModelCopyWith<$Res>? get observationSet;
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class _$ObservationSetSectionModelCopyWithImpl<$Res,
        $Val extends ObservationSetSectionModel>
    implements $ObservationSetSectionModelCopyWith<$Res> {
  _$ObservationSetSectionModelCopyWithImpl(this._value, this._then);

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
    Object? observationSet = freezed,
    Object? assessment = freezed,
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
      observationSet: freezed == observationSet
          ? _value.observationSet
          : observationSet // ignore: cast_nullable_to_non_nullable
              as ObservationSetModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationSetModelCopyWith<$Res>? get observationSet {
    if (_value.observationSet == null) {
      return null;
    }

    return $ObservationSetModelCopyWith<$Res>(_value.observationSet!, (value) {
      return _then(_value.copyWith(observationSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentModelCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $AssessmentModelCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetSectionModelCopyWith<$Res>
    implements $ObservationSetSectionModelCopyWith<$Res> {
  factory _$$_ObservationSetSectionModelCopyWith(
          _$_ObservationSetSectionModel value,
          $Res Function(_$_ObservationSetSectionModel) then) =
      __$$_ObservationSetSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      ObservationSetModel? observationSet,
      AssessmentModel? assessment});

  @override
  $ObservationSetModelCopyWith<$Res>? get observationSet;
  @override
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class __$$_ObservationSetSectionModelCopyWithImpl<$Res>
    extends _$ObservationSetSectionModelCopyWithImpl<$Res,
        _$_ObservationSetSectionModel>
    implements _$$_ObservationSetSectionModelCopyWith<$Res> {
  __$$_ObservationSetSectionModelCopyWithImpl(
      _$_ObservationSetSectionModel _value,
      $Res Function(_$_ObservationSetSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSet = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_$_ObservationSetSectionModel(
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
      observationSet: freezed == observationSet
          ? _value.observationSet
          : observationSet // ignore: cast_nullable_to_non_nullable
              as ObservationSetModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetSectionModel implements _ObservationSetSectionModel {
  const _$_ObservationSetSectionModel(
      {this.id,
      this.index,
      this.description,
      this.observationSet,
      this.assessment});

  factory _$_ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationSetSectionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final ObservationSetModel? observationSet;
  @override
  final AssessmentModel? assessment;

  @override
  String toString() {
    return 'ObservationSetSectionModel(id: $id, index: $index, description: $description, observationSet: $observationSet, assessment: $assessment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.observationSet, observationSet) ||
                other.observationSet == observationSet) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, index, description, observationSet, assessment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetSectionModelCopyWith<_$_ObservationSetSectionModel>
      get copyWith => __$$_ObservationSetSectionModelCopyWithImpl<
          _$_ObservationSetSectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetSectionModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetSectionModel
    implements ObservationSetSectionModel {
  const factory _ObservationSetSectionModel(
      {final int? id,
      final int? index,
      final String? description,
      final ObservationSetModel? observationSet,
      final AssessmentModel? assessment}) = _$_ObservationSetSectionModel;

  factory _ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationSetSectionModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  ObservationSetModel? get observationSet;
  @override
  AssessmentModel? get assessment;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetSectionModelCopyWith<_$_ObservationSetSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}
