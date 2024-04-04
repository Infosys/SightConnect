// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keycloak.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeycloakResponse _$KeycloakResponseFromJson(Map<String, dynamic> json) {
  return _KeycloakResponse.fromJson(json);
}

/// @nodoc
mixin _$KeycloakResponse {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "id_token")
  String get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in")
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_expires_in")
  int get refreshExpiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeycloakResponseCopyWith<KeycloakResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeycloakResponseCopyWith<$Res> {
  factory $KeycloakResponseCopyWith(
          KeycloakResponse value, $Res Function(KeycloakResponse) then) =
      _$KeycloakResponseCopyWithImpl<$Res, KeycloakResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "id_token") String idToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expires_in") int expiresIn,
      @JsonKey(name: "refresh_expires_in") int refreshExpiresIn});
}

/// @nodoc
class _$KeycloakResponseCopyWithImpl<$Res, $Val extends KeycloakResponse>
    implements $KeycloakResponseCopyWith<$Res> {
  _$KeycloakResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? idToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
    Object? refreshExpiresIn = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeycloakResponseImplCopyWith<$Res>
    implements $KeycloakResponseCopyWith<$Res> {
  factory _$$KeycloakResponseImplCopyWith(_$KeycloakResponseImpl value,
          $Res Function(_$KeycloakResponseImpl) then) =
      __$$KeycloakResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "id_token") String idToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "expires_in") int expiresIn,
      @JsonKey(name: "refresh_expires_in") int refreshExpiresIn});
}

/// @nodoc
class __$$KeycloakResponseImplCopyWithImpl<$Res>
    extends _$KeycloakResponseCopyWithImpl<$Res, _$KeycloakResponseImpl>
    implements _$$KeycloakResponseImplCopyWith<$Res> {
  __$$KeycloakResponseImplCopyWithImpl(_$KeycloakResponseImpl _value,
      $Res Function(_$KeycloakResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? idToken = null,
    Object? refreshToken = null,
    Object? expiresIn = null,
    Object? refreshExpiresIn = null,
  }) {
    return _then(_$KeycloakResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeycloakResponseImpl implements _KeycloakResponse {
  _$KeycloakResponseImpl(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "id_token") required this.idToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "expires_in") required this.expiresIn,
      @JsonKey(name: "refresh_expires_in") required this.refreshExpiresIn});

  factory _$KeycloakResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeycloakResponseImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "id_token")
  final String idToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "expires_in")
  final int expiresIn;
  @override
  @JsonKey(name: "refresh_expires_in")
  final int refreshExpiresIn;

  @override
  String toString() {
    return 'KeycloakResponse(accessToken: $accessToken, idToken: $idToken, refreshToken: $refreshToken, expiresIn: $expiresIn, refreshExpiresIn: $refreshExpiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeycloakResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshExpiresIn, refreshExpiresIn) ||
                other.refreshExpiresIn == refreshExpiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, idToken,
      refreshToken, expiresIn, refreshExpiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeycloakResponseImplCopyWith<_$KeycloakResponseImpl> get copyWith =>
      __$$KeycloakResponseImplCopyWithImpl<_$KeycloakResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeycloakResponseImplToJson(
      this,
    );
  }
}

abstract class _KeycloakResponse implements KeycloakResponse {
  factory _KeycloakResponse(
      {@JsonKey(name: "access_token") required final String accessToken,
      @JsonKey(name: "id_token") required final String idToken,
      @JsonKey(name: "refresh_token") required final String refreshToken,
      @JsonKey(name: "expires_in") required final int expiresIn,
      @JsonKey(name: "refresh_expires_in")
      required final int refreshExpiresIn}) = _$KeycloakResponseImpl;

  factory _KeycloakResponse.fromJson(Map<String, dynamic> json) =
      _$KeycloakResponseImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "id_token")
  String get idToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(name: "expires_in")
  int get expiresIn;
  @override
  @JsonKey(name: "refresh_expires_in")
  int get refreshExpiresIn;
  @override
  @JsonKey(ignore: true)
  _$$KeycloakResponseImplCopyWith<_$KeycloakResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
