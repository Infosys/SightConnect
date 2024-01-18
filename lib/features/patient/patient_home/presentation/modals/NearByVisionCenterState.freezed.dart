// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'NearByVisionCenterState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NearByVisionCenterState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<OrganizationResponseModel>? get visionCenters =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  PermissionStatus? get permissionStatus => throw _privateConstructorUsedError;
  bool get shouldForceReload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NearByVisionCenterStateCopyWith<NearByVisionCenterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearByVisionCenterStateCopyWith<$Res> {
  factory $NearByVisionCenterStateCopyWith(NearByVisionCenterState value,
          $Res Function(NearByVisionCenterState) then) =
      _$NearByVisionCenterStateCopyWithImpl<$Res, NearByVisionCenterState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<OrganizationResponseModel>? visionCenters,
      String? errorMessage,
      PermissionStatus? permissionStatus,
      bool shouldForceReload});
}

/// @nodoc
class _$NearByVisionCenterStateCopyWithImpl<$Res,
        $Val extends NearByVisionCenterState>
    implements $NearByVisionCenterStateCopyWith<$Res> {
  _$NearByVisionCenterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? visionCenters = freezed,
    Object? errorMessage = freezed,
    Object? permissionStatus = freezed,
    Object? shouldForceReload = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      visionCenters: freezed == visionCenters
          ? _value.visionCenters
          : visionCenters // ignore: cast_nullable_to_non_nullable
              as List<OrganizationResponseModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionStatus: freezed == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      shouldForceReload: null == shouldForceReload
          ? _value.shouldForceReload
          : shouldForceReload // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NearByVisionCenterStateCopyWith<$Res>
    implements $NearByVisionCenterStateCopyWith<$Res> {
  factory _$$_NearByVisionCenterStateCopyWith(_$_NearByVisionCenterState value,
          $Res Function(_$_NearByVisionCenterState) then) =
      __$$_NearByVisionCenterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<OrganizationResponseModel>? visionCenters,
      String? errorMessage,
      PermissionStatus? permissionStatus,
      bool shouldForceReload});
}

/// @nodoc
class __$$_NearByVisionCenterStateCopyWithImpl<$Res>
    extends _$NearByVisionCenterStateCopyWithImpl<$Res,
        _$_NearByVisionCenterState>
    implements _$$_NearByVisionCenterStateCopyWith<$Res> {
  __$$_NearByVisionCenterStateCopyWithImpl(_$_NearByVisionCenterState _value,
      $Res Function(_$_NearByVisionCenterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? visionCenters = freezed,
    Object? errorMessage = freezed,
    Object? permissionStatus = freezed,
    Object? shouldForceReload = null,
  }) {
    return _then(_$_NearByVisionCenterState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      visionCenters: freezed == visionCenters
          ? _value._visionCenters
          : visionCenters // ignore: cast_nullable_to_non_nullable
              as List<OrganizationResponseModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionStatus: freezed == permissionStatus
          ? _value.permissionStatus
          : permissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      shouldForceReload: null == shouldForceReload
          ? _value.shouldForceReload
          : shouldForceReload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NearByVisionCenterState
    with DiagnosticableTreeMixin
    implements _NearByVisionCenterState {
  const _$_NearByVisionCenterState(
      {required this.isLoading,
      required final List<OrganizationResponseModel>? visionCenters,
      this.errorMessage,
      this.permissionStatus,
      this.shouldForceReload = false})
      : _visionCenters = visionCenters;

  @override
  final bool isLoading;
  final List<OrganizationResponseModel>? _visionCenters;
  @override
  List<OrganizationResponseModel>? get visionCenters {
    final value = _visionCenters;
    if (value == null) return null;
    if (_visionCenters is EqualUnmodifiableListView) return _visionCenters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;
  @override
  final PermissionStatus? permissionStatus;
  @override
  @JsonKey()
  final bool shouldForceReload;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NearByVisionCenterState(isLoading: $isLoading, visionCenters: $visionCenters, errorMessage: $errorMessage, permissionStatus: $permissionStatus, shouldForceReload: $shouldForceReload)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NearByVisionCenterState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('visionCenters', visionCenters))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('permissionStatus', permissionStatus))
      ..add(DiagnosticsProperty('shouldForceReload', shouldForceReload));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NearByVisionCenterState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._visionCenters, _visionCenters) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.permissionStatus, permissionStatus) ||
                other.permissionStatus == permissionStatus) &&
            (identical(other.shouldForceReload, shouldForceReload) ||
                other.shouldForceReload == shouldForceReload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_visionCenters),
      errorMessage,
      permissionStatus,
      shouldForceReload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NearByVisionCenterStateCopyWith<_$_NearByVisionCenterState>
      get copyWith =>
          __$$_NearByVisionCenterStateCopyWithImpl<_$_NearByVisionCenterState>(
              this, _$identity);
}

abstract class _NearByVisionCenterState implements NearByVisionCenterState {
  const factory _NearByVisionCenterState(
      {required final bool isLoading,
      required final List<OrganizationResponseModel>? visionCenters,
      final String? errorMessage,
      final PermissionStatus? permissionStatus,
      final bool shouldForceReload}) = _$_NearByVisionCenterState;

  @override
  bool get isLoading;
  @override
  List<OrganizationResponseModel>? get visionCenters;
  @override
  String? get errorMessage;
  @override
  PermissionStatus? get permissionStatus;
  @override
  bool get shouldForceReload;
  @override
  @JsonKey(ignore: true)
  _$$_NearByVisionCenterStateCopyWith<_$_NearByVisionCenterState>
      get copyWith => throw _privateConstructorUsedError;
}
