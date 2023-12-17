// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_imaging_selection_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostImagingSelectionDTO _$PostImagingSelectionDTOFromJson(
    Map<String, dynamic> json) {
  return _PostImagingSelectionDTO.fromJson(json);
}

/// @nodoc
mixin _$PostImagingSelectionDTO {
  int? get identifier => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostImagingSelectionDTOCopyWith<PostImagingSelectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImagingSelectionDTOCopyWith<$Res> {
  factory $PostImagingSelectionDTOCopyWith(PostImagingSelectionDTO value,
          $Res Function(PostImagingSelectionDTO) then) =
      _$PostImagingSelectionDTOCopyWithImpl<$Res, PostImagingSelectionDTO>;
  @useResult
  $Res call(
      {int? identifier, String? endpoint, String? baseUrl, double? score});
}

/// @nodoc
class _$PostImagingSelectionDTOCopyWithImpl<$Res,
        $Val extends PostImagingSelectionDTO>
    implements $PostImagingSelectionDTOCopyWith<$Res> {
  _$PostImagingSelectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostImagingSelectionDTOCopyWith<$Res>
    implements $PostImagingSelectionDTOCopyWith<$Res> {
  factory _$$_PostImagingSelectionDTOCopyWith(_$_PostImagingSelectionDTO value,
          $Res Function(_$_PostImagingSelectionDTO) then) =
      __$$_PostImagingSelectionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier, String? endpoint, String? baseUrl, double? score});
}

/// @nodoc
class __$$_PostImagingSelectionDTOCopyWithImpl<$Res>
    extends _$PostImagingSelectionDTOCopyWithImpl<$Res,
        _$_PostImagingSelectionDTO>
    implements _$$_PostImagingSelectionDTOCopyWith<$Res> {
  __$$_PostImagingSelectionDTOCopyWithImpl(_$_PostImagingSelectionDTO _value,
      $Res Function(_$_PostImagingSelectionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostImagingSelectionDTO(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostImagingSelectionDTO implements _PostImagingSelectionDTO {
  const _$_PostImagingSelectionDTO(
      {this.identifier, this.endpoint, this.baseUrl, this.score});

  factory _$_PostImagingSelectionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostImagingSelectionDTOFromJson(json);

  @override
  final int? identifier;
  @override
  final String? endpoint;
  @override
  final String? baseUrl;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostImagingSelectionDTO(identifier: $identifier, endpoint: $endpoint, baseUrl: $baseUrl, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostImagingSelectionDTO &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, endpoint, baseUrl, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostImagingSelectionDTOCopyWith<_$_PostImagingSelectionDTO>
      get copyWith =>
          __$$_PostImagingSelectionDTOCopyWithImpl<_$_PostImagingSelectionDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostImagingSelectionDTOToJson(
      this,
    );
  }
}

abstract class _PostImagingSelectionDTO implements PostImagingSelectionDTO {
  const factory _PostImagingSelectionDTO(
      {final int? identifier,
      final String? endpoint,
      final String? baseUrl,
      final double? score}) = _$_PostImagingSelectionDTO;

  factory _PostImagingSelectionDTO.fromJson(Map<String, dynamic> json) =
      _$_PostImagingSelectionDTO.fromJson;

  @override
  int? get identifier;
  @override
  String? get endpoint;
  @override
  String? get baseUrl;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostImagingSelectionDTOCopyWith<_$_PostImagingSelectionDTO>
      get copyWith => throw _privateConstructorUsedError;
}
