// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_timeline_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssessmentTimelineViewModel _$AssessmentTimelineViewModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentTimelineViewModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentTimelineViewModel {
  int? get encounterId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get date => throw _privateConstructorUsedError;
  int? get assessmentId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  TimelineSource? get source => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentTimelineViewModelCopyWith<AssessmentTimelineViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentTimelineViewModelCopyWith<$Res> {
  factory $AssessmentTimelineViewModelCopyWith(
          AssessmentTimelineViewModel value,
          $Res Function(AssessmentTimelineViewModel) then) =
      _$AssessmentTimelineViewModelCopyWithImpl<$Res,
          AssessmentTimelineViewModel>;
  @useResult
  $Res call(
      {int? encounterId,
      String? title,
      String? description,
      @TimestampConverter() DateTime? date,
      int? assessmentId,
      String? status,
      TimelineSource? source,
      String? type});
}

/// @nodoc
class _$AssessmentTimelineViewModelCopyWithImpl<$Res,
        $Val extends AssessmentTimelineViewModel>
    implements $AssessmentTimelineViewModelCopyWith<$Res> {
  _$AssessmentTimelineViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? assessmentId = freezed,
    Object? status = freezed,
    Object? source = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentId: freezed == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TimelineSource?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentTimelineViewModelImplCopyWith<$Res>
    implements $AssessmentTimelineViewModelCopyWith<$Res> {
  factory _$$AssessmentTimelineViewModelImplCopyWith(
          _$AssessmentTimelineViewModelImpl value,
          $Res Function(_$AssessmentTimelineViewModelImpl) then) =
      __$$AssessmentTimelineViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? encounterId,
      String? title,
      String? description,
      @TimestampConverter() DateTime? date,
      int? assessmentId,
      String? status,
      TimelineSource? source,
      String? type});
}

/// @nodoc
class __$$AssessmentTimelineViewModelImplCopyWithImpl<$Res>
    extends _$AssessmentTimelineViewModelCopyWithImpl<$Res,
        _$AssessmentTimelineViewModelImpl>
    implements _$$AssessmentTimelineViewModelImplCopyWith<$Res> {
  __$$AssessmentTimelineViewModelImplCopyWithImpl(
      _$AssessmentTimelineViewModelImpl _value,
      $Res Function(_$AssessmentTimelineViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encounterId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? assessmentId = freezed,
    Object? status = freezed,
    Object? source = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AssessmentTimelineViewModelImpl(
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentId: freezed == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TimelineSource?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentTimelineViewModelImpl
    implements _AssessmentTimelineViewModel {
  const _$AssessmentTimelineViewModelImpl(
      {this.encounterId,
      this.title,
      this.description,
      @TimestampConverter() this.date,
      this.assessmentId,
      this.status,
      this.source,
      this.type});

  factory _$AssessmentTimelineViewModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AssessmentTimelineViewModelImplFromJson(json);

  @override
  final int? encounterId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? date;
  @override
  final int? assessmentId;
  @override
  final String? status;
  @override
  final TimelineSource? source;
  @override
  final String? type;

  @override
  String toString() {
    return 'AssessmentTimelineViewModel(encounterId: $encounterId, title: $title, description: $description, date: $date, assessmentId: $assessmentId, status: $status, source: $source, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentTimelineViewModelImpl &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.assessmentId, assessmentId) ||
                other.assessmentId == assessmentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, encounterId, title, description,
      date, assessmentId, status, source, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentTimelineViewModelImplCopyWith<_$AssessmentTimelineViewModelImpl>
      get copyWith => __$$AssessmentTimelineViewModelImplCopyWithImpl<
          _$AssessmentTimelineViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentTimelineViewModelImplToJson(
      this,
    );
  }
}

abstract class _AssessmentTimelineViewModel
    implements AssessmentTimelineViewModel {
  const factory _AssessmentTimelineViewModel(
      {final int? encounterId,
      final String? title,
      final String? description,
      @TimestampConverter() final DateTime? date,
      final int? assessmentId,
      final String? status,
      final TimelineSource? source,
      final String? type}) = _$AssessmentTimelineViewModelImpl;

  factory _AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =
      _$AssessmentTimelineViewModelImpl.fromJson;

  @override
  int? get encounterId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get date;
  @override
  int? get assessmentId;
  @override
  String? get status;
  @override
  TimelineSource? get source;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$AssessmentTimelineViewModelImplCopyWith<_$AssessmentTimelineViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
