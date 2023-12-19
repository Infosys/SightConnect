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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentTimelineViewModel _$AssessmentTimelineViewModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentTimelineViewModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentTimelineViewModel {
  String? get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get subtitle => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get call => throw _privateConstructorUsedError;
  String get assessmentId => throw _privateConstructorUsedError;
  String get encounterId => throw _privateConstructorUsedError;

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
      {String? type,
      String title,
      @JsonKey(name: "description") String subtitle,
      DateTime date,
      String call,
      String assessmentId,
      String encounterId});
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
    Object? type = freezed,
    Object? title = null,
    Object? subtitle = null,
    Object? date = null,
    Object? call = null,
    Object? assessmentId = null,
    Object? encounterId = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      assessmentId: null == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as String,
      encounterId: null == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssessmentTimelineViewModelCopyWith<$Res>
    implements $AssessmentTimelineViewModelCopyWith<$Res> {
  factory _$$_AssessmentTimelineViewModelCopyWith(
          _$_AssessmentTimelineViewModel value,
          $Res Function(_$_AssessmentTimelineViewModel) then) =
      __$$_AssessmentTimelineViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String title,
      @JsonKey(name: "description") String subtitle,
      DateTime date,
      String call,
      String assessmentId,
      String encounterId});
}

/// @nodoc
class __$$_AssessmentTimelineViewModelCopyWithImpl<$Res>
    extends _$AssessmentTimelineViewModelCopyWithImpl<$Res,
        _$_AssessmentTimelineViewModel>
    implements _$$_AssessmentTimelineViewModelCopyWith<$Res> {
  __$$_AssessmentTimelineViewModelCopyWithImpl(
      _$_AssessmentTimelineViewModel _value,
      $Res Function(_$_AssessmentTimelineViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = null,
    Object? subtitle = null,
    Object? date = null,
    Object? call = null,
    Object? assessmentId = null,
    Object? encounterId = null,
  }) {
    return _then(_$_AssessmentTimelineViewModel(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      assessmentId: null == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as String,
      encounterId: null == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentTimelineViewModel implements _AssessmentTimelineViewModel {
  const _$_AssessmentTimelineViewModel(
      {this.type,
      required this.title,
      @JsonKey(name: "description") required this.subtitle,
      required this.date,
      required this.call,
      required this.assessmentId,
      required this.encounterId});

  factory _$_AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentTimelineViewModelFromJson(json);

  @override
  final String? type;
  @override
  final String title;
  @override
  @JsonKey(name: "description")
  final String subtitle;
  @override
  final DateTime date;
  @override
  final String call;
  @override
  final String assessmentId;
  @override
  final String encounterId;

  @override
  String toString() {
    return 'AssessmentTimelineViewModel(type: $type, title: $title, subtitle: $subtitle, date: $date, call: $call, assessmentId: $assessmentId, encounterId: $encounterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentTimelineViewModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.call, call) || other.call == call) &&
            (identical(other.assessmentId, assessmentId) ||
                other.assessmentId == assessmentId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, subtitle, date,
      call, assessmentId, encounterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssessmentTimelineViewModelCopyWith<_$_AssessmentTimelineViewModel>
      get copyWith => __$$_AssessmentTimelineViewModelCopyWithImpl<
          _$_AssessmentTimelineViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentTimelineViewModelToJson(
      this,
    );
  }
}

abstract class _AssessmentTimelineViewModel
    implements AssessmentTimelineViewModel {
  const factory _AssessmentTimelineViewModel(
      {final String? type,
      required final String title,
      @JsonKey(name: "description") required final String subtitle,
      required final DateTime date,
      required final String call,
      required final String assessmentId,
      required final String encounterId}) = _$_AssessmentTimelineViewModel;

  factory _AssessmentTimelineViewModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentTimelineViewModel.fromJson;

  @override
  String? get type;
  @override
  String get title;
  @override
  @JsonKey(name: "description")
  String get subtitle;
  @override
  DateTime get date;
  @override
  String get call;
  @override
  String get assessmentId;
  @override
  String get encounterId;
  @override
  @JsonKey(ignore: true)
  _$$_AssessmentTimelineViewModelCopyWith<_$_AssessmentTimelineViewModel>
      get copyWith => throw _privateConstructorUsedError;
}
