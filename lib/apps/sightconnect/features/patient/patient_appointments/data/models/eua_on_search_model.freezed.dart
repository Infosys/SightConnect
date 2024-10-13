/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eua_on_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EuaOnSearchModel _$EuaOnSearchModelFromJson(Map<String, dynamic> json) {
  return _EuaOnSearchModel.fromJson(json);
}

/// @nodoc
mixin _$EuaOnSearchModel {
  Context? get context => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EuaOnSearchModelCopyWith<EuaOnSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EuaOnSearchModelCopyWith<$Res> {
  factory $EuaOnSearchModelCopyWith(
          EuaOnSearchModel value, $Res Function(EuaOnSearchModel) then) =
      _$EuaOnSearchModelCopyWithImpl<$Res, EuaOnSearchModel>;
  @useResult
  $Res call({Context? context, Message? message, Error? error});

  $ContextCopyWith<$Res>? get context;
  $MessageCopyWith<$Res>? get message;
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$EuaOnSearchModelCopyWithImpl<$Res, $Val extends EuaOnSearchModel>
    implements $EuaOnSearchModelCopyWith<$Res> {
  _$EuaOnSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EuaOnSearchModelImplCopyWith<$Res>
    implements $EuaOnSearchModelCopyWith<$Res> {
  factory _$$EuaOnSearchModelImplCopyWith(_$EuaOnSearchModelImpl value,
          $Res Function(_$EuaOnSearchModelImpl) then) =
      __$$EuaOnSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Context? context, Message? message, Error? error});

  @override
  $ContextCopyWith<$Res>? get context;
  @override
  $MessageCopyWith<$Res>? get message;
  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$EuaOnSearchModelImplCopyWithImpl<$Res>
    extends _$EuaOnSearchModelCopyWithImpl<$Res, _$EuaOnSearchModelImpl>
    implements _$$EuaOnSearchModelImplCopyWith<$Res> {
  __$$EuaOnSearchModelImplCopyWithImpl(_$EuaOnSearchModelImpl _value,
      $Res Function(_$EuaOnSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$EuaOnSearchModelImpl(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EuaOnSearchModelImpl implements _EuaOnSearchModel {
  const _$EuaOnSearchModelImpl({this.context, this.message, this.error});

  factory _$EuaOnSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EuaOnSearchModelImplFromJson(json);

  @override
  final Context? context;
  @override
  final Message? message;
  @override
  final Error? error;

  @override
  String toString() {
    return 'EuaOnSearchModel(context: $context, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EuaOnSearchModelImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, context, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EuaOnSearchModelImplCopyWith<_$EuaOnSearchModelImpl> get copyWith =>
      __$$EuaOnSearchModelImplCopyWithImpl<_$EuaOnSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EuaOnSearchModelImplToJson(
      this,
    );
  }
}

abstract class _EuaOnSearchModel implements EuaOnSearchModel {
  const factory _EuaOnSearchModel(
      {final Context? context,
      final Message? message,
      final Error? error}) = _$EuaOnSearchModelImpl;

  factory _EuaOnSearchModel.fromJson(Map<String, dynamic> json) =
      _$EuaOnSearchModelImpl.fromJson;

  @override
  Context? get context;
  @override
  Message? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$EuaOnSearchModelImplCopyWith<_$EuaOnSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  String? get domain => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get coreVersion => throw _privateConstructorUsedError;
  String? get consumerId => throw _privateConstructorUsedError;
  String? get consumerUri => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  String? get providerUri => throw _privateConstructorUsedError;
  String? get transactionId => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get ttl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
  @useResult
  $Res call(
      {String? domain,
      String? country,
      String? city,
      String? action,
      String? coreVersion,
      String? consumerId,
      String? consumerUri,
      String? providerId,
      String? providerUri,
      String? transactionId,
      String? messageId,
      String? timestamp,
      String? key,
      String? ttl});
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? action = freezed,
    Object? coreVersion = freezed,
    Object? consumerId = freezed,
    Object? consumerUri = freezed,
    Object? providerId = freezed,
    Object? providerUri = freezed,
    Object? transactionId = freezed,
    Object? messageId = freezed,
    Object? timestamp = freezed,
    Object? key = freezed,
    Object? ttl = freezed,
  }) {
    return _then(_value.copyWith(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      coreVersion: freezed == coreVersion
          ? _value.coreVersion
          : coreVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerId: freezed == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerUri: freezed == consumerUri
          ? _value.consumerUri
          : consumerUri // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerUri: freezed == providerUri
          ? _value.providerUri
          : providerUri // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? domain,
      String? country,
      String? city,
      String? action,
      String? coreVersion,
      String? consumerId,
      String? consumerUri,
      String? providerId,
      String? providerUri,
      String? transactionId,
      String? messageId,
      String? timestamp,
      String? key,
      String? ttl});
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? action = freezed,
    Object? coreVersion = freezed,
    Object? consumerId = freezed,
    Object? consumerUri = freezed,
    Object? providerId = freezed,
    Object? providerUri = freezed,
    Object? transactionId = freezed,
    Object? messageId = freezed,
    Object? timestamp = freezed,
    Object? key = freezed,
    Object? ttl = freezed,
  }) {
    return _then(_$ContextImpl(
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      coreVersion: freezed == coreVersion
          ? _value.coreVersion
          : coreVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerId: freezed == consumerId
          ? _value.consumerId
          : consumerId // ignore: cast_nullable_to_non_nullable
              as String?,
      consumerUri: freezed == consumerUri
          ? _value.consumerUri
          : consumerUri // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerUri: freezed == providerUri
          ? _value.providerUri
          : providerUri // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextImpl implements _Context {
  const _$ContextImpl(
      {this.domain,
      this.country,
      this.city,
      this.action,
      this.coreVersion,
      this.consumerId,
      this.consumerUri,
      this.providerId,
      this.providerUri,
      this.transactionId,
      this.messageId,
      this.timestamp,
      this.key,
      this.ttl});

  factory _$ContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextImplFromJson(json);

  @override
  final String? domain;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? action;
  @override
  final String? coreVersion;
  @override
  final String? consumerId;
  @override
  final String? consumerUri;
  @override
  final String? providerId;
  @override
  final String? providerUri;
  @override
  final String? transactionId;
  @override
  final String? messageId;
  @override
  final String? timestamp;
  @override
  final String? key;
  @override
  final String? ttl;

  @override
  String toString() {
    return 'Context(domain: $domain, country: $country, city: $city, action: $action, coreVersion: $coreVersion, consumerId: $consumerId, consumerUri: $consumerUri, providerId: $providerId, providerUri: $providerUri, transactionId: $transactionId, messageId: $messageId, timestamp: $timestamp, key: $key, ttl: $ttl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.coreVersion, coreVersion) ||
                other.coreVersion == coreVersion) &&
            (identical(other.consumerId, consumerId) ||
                other.consumerId == consumerId) &&
            (identical(other.consumerUri, consumerUri) ||
                other.consumerUri == consumerUri) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.providerUri, providerUri) ||
                other.providerUri == providerUri) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.ttl, ttl) || other.ttl == ttl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      domain,
      country,
      city,
      action,
      coreVersion,
      consumerId,
      consumerUri,
      providerId,
      providerUri,
      transactionId,
      messageId,
      timestamp,
      key,
      ttl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextImplToJson(
      this,
    );
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {final String? domain,
      final String? country,
      final String? city,
      final String? action,
      final String? coreVersion,
      final String? consumerId,
      final String? consumerUri,
      final String? providerId,
      final String? providerUri,
      final String? transactionId,
      final String? messageId,
      final String? timestamp,
      final String? key,
      final String? ttl}) = _$ContextImpl;

  factory _Context.fromJson(Map<String, dynamic> json) = _$ContextImpl.fromJson;

  @override
  String? get domain;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get action;
  @override
  String? get coreVersion;
  @override
  String? get consumerId;
  @override
  String? get consumerUri;
  @override
  String? get providerId;
  @override
  String? get providerUri;
  @override
  String? get transactionId;
  @override
  String? get messageId;
  @override
  String? get timestamp;
  @override
  String? get key;
  @override
  String? get ttl;
  @override
  @JsonKey(ignore: true)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
mixin _$Error {
  String? get type => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res, Error>;
  @useResult
  $Res call({String? type, String? code, String? path, String? message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res, $Val extends Error>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? code = freezed,
    Object? path = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? code, String? path, String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ErrorCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? code = freezed,
    Object? path = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl({this.type, this.code, this.path, this.message});

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final String? type;
  @override
  final String? code;
  @override
  final String? path;
  @override
  final String? message;

  @override
  String toString() {
    return 'Error(type: $type, code: $code, path: $path, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, code, path, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {final String? type,
      final String? code,
      final String? path,
      final String? message}) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  @override
  String? get type;
  @override
  String? get code;
  @override
  String? get path;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  Catalog? get catalog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({Catalog? catalog});

  $CatalogCopyWith<$Res>? get catalog;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = freezed,
  }) {
    return _then(_value.copyWith(
      catalog: freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatalogCopyWith<$Res>? get catalog {
    if (_value.catalog == null) {
      return null;
    }

    return $CatalogCopyWith<$Res>(_value.catalog!, (value) {
      return _then(_value.copyWith(catalog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Catalog? catalog});

  @override
  $CatalogCopyWith<$Res>? get catalog;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = freezed,
  }) {
    return _then(_$MessageImpl(
      catalog: freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({this.catalog});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final Catalog? catalog;

  @override
  String toString() {
    return 'Message(catalog: $catalog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.catalog, catalog) || other.catalog == catalog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catalog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message({final Catalog? catalog}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  Catalog? get catalog;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Catalog _$CatalogFromJson(Map<String, dynamic> json) {
  return _Catalog.fromJson(json);
}

/// @nodoc
mixin _$Catalog {
  InstructionsClass? get descriptor => throw _privateConstructorUsedError;
  List<Provider>? get providers => throw _privateConstructorUsedError;
  List<Fulfillment>? get fulfillments => throw _privateConstructorUsedError;
  List<Payment>? get payments => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  DateTime? get exp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogCopyWith<Catalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCopyWith<$Res> {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) then) =
      _$CatalogCopyWithImpl<$Res, Catalog>;
  @useResult
  $Res call(
      {InstructionsClass? descriptor,
      List<Provider>? providers,
      List<Fulfillment>? fulfillments,
      List<Payment>? payments,
      List<Category>? categories,
      DateTime? exp});

  $InstructionsClassCopyWith<$Res>? get descriptor;
}

/// @nodoc
class _$CatalogCopyWithImpl<$Res, $Val extends Catalog>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptor = freezed,
    Object? providers = freezed,
    Object? fulfillments = freezed,
    Object? payments = freezed,
    Object? categories = freezed,
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      providers: freezed == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<Provider>?,
      fulfillments: freezed == fulfillments
          ? _value.fulfillments
          : fulfillments // ignore: cast_nullable_to_non_nullable
              as List<Fulfillment>?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
          _$CatalogImpl value, $Res Function(_$CatalogImpl) then) =
      __$$CatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InstructionsClass? descriptor,
      List<Provider>? providers,
      List<Fulfillment>? fulfillments,
      List<Payment>? payments,
      List<Category>? categories,
      DateTime? exp});

  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
      _$CatalogImpl _value, $Res Function(_$CatalogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptor = freezed,
    Object? providers = freezed,
    Object? fulfillments = freezed,
    Object? payments = freezed,
    Object? categories = freezed,
    Object? exp = freezed,
  }) {
    return _then(_$CatalogImpl(
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      providers: freezed == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<Provider>?,
      fulfillments: freezed == fulfillments
          ? _value._fulfillments
          : fulfillments // ignore: cast_nullable_to_non_nullable
              as List<Fulfillment>?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl(
      {this.descriptor,
      final List<Provider>? providers,
      final List<Fulfillment>? fulfillments,
      final List<Payment>? payments,
      final List<Category>? categories,
      this.exp})
      : _providers = providers,
        _fulfillments = fulfillments,
        _payments = payments,
        _categories = categories;

  factory _$CatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogImplFromJson(json);

  @override
  final InstructionsClass? descriptor;
  final List<Provider>? _providers;
  @override
  List<Provider>? get providers {
    final value = _providers;
    if (value == null) return null;
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Fulfillment>? _fulfillments;
  @override
  List<Fulfillment>? get fulfillments {
    final value = _fulfillments;
    if (value == null) return null;
    if (_fulfillments is EqualUnmodifiableListView) return _fulfillments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Payment>? _payments;
  @override
  List<Payment>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? exp;

  @override
  String toString() {
    return 'Catalog(descriptor: $descriptor, providers: $providers, fulfillments: $fulfillments, payments: $payments, categories: $categories, exp: $exp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers) &&
            const DeepCollectionEquality()
                .equals(other._fulfillments, _fulfillments) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.exp, exp) || other.exp == exp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      descriptor,
      const DeepCollectionEquality().hash(_providers),
      const DeepCollectionEquality().hash(_fulfillments),
      const DeepCollectionEquality().hash(_payments),
      const DeepCollectionEquality().hash(_categories),
      exp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogImplToJson(
      this,
    );
  }
}

abstract class _Catalog implements Catalog {
  const factory _Catalog(
      {final InstructionsClass? descriptor,
      final List<Provider>? providers,
      final List<Fulfillment>? fulfillments,
      final List<Payment>? payments,
      final List<Category>? categories,
      final DateTime? exp}) = _$CatalogImpl;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$CatalogImpl.fromJson;

  @override
  InstructionsClass? get descriptor;
  @override
  List<Provider>? get providers;
  @override
  List<Fulfillment>? get fulfillments;
  @override
  List<Payment>? get payments;
  @override
  List<Category>? get categories;
  @override
  DateTime? get exp;
  @override
  @JsonKey(ignore: true)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get id => throw _privateConstructorUsedError;
  ParentCategoryId? get parentCategoryId => throw _privateConstructorUsedError;
  InstructionsClass? get descriptor => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String? id,
      ParentCategoryId? parentCategoryId,
      InstructionsClass? descriptor,
      Time? time});

  $ParentCategoryIdCopyWith<$Res>? get parentCategoryId;
  $InstructionsClassCopyWith<$Res>? get descriptor;
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentCategoryId = freezed,
    Object? descriptor = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCategoryIdCopyWith<$Res>? get parentCategoryId {
    if (_value.parentCategoryId == null) {
      return null;
    }

    return $ParentCategoryIdCopyWith<$Res>(_value.parentCategoryId!, (value) {
      return _then(_value.copyWith(parentCategoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      ParentCategoryId? parentCategoryId,
      InstructionsClass? descriptor,
      Time? time});

  @override
  $ParentCategoryIdCopyWith<$Res>? get parentCategoryId;
  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentCategoryId = freezed,
    Object? descriptor = freezed,
    Object? time = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {this.id, this.parentCategoryId, this.descriptor, this.time});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String? id;
  @override
  final ParentCategoryId? parentCategoryId;
  @override
  final InstructionsClass? descriptor;
  @override
  final Time? time;

  @override
  String toString() {
    return 'Category(id: $id, parentCategoryId: $parentCategoryId, descriptor: $descriptor, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentCategoryId, descriptor, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {final String? id,
      final ParentCategoryId? parentCategoryId,
      final InstructionsClass? descriptor,
      final Time? time}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String? get id;
  @override
  ParentCategoryId? get parentCategoryId;
  @override
  InstructionsClass? get descriptor;
  @override
  Time? get time;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstructionsClass _$InstructionsClassFromJson(Map<String, dynamic> json) {
  return _InstructionsClass.fromJson(json);
}

/// @nodoc
mixin _$InstructionsClass {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get shortDesc => throw _privateConstructorUsedError;
  String? get longDesc => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get the3DRender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionsClassCopyWith<InstructionsClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsClassCopyWith<$Res> {
  factory $InstructionsClassCopyWith(
          InstructionsClass value, $Res Function(InstructionsClass) then) =
      _$InstructionsClassCopyWithImpl<$Res, InstructionsClass>;
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? symbol,
      String? shortDesc,
      String? longDesc,
      List<String>? images,
      String? audio,
      String? the3DRender});
}

/// @nodoc
class _$InstructionsClassCopyWithImpl<$Res, $Val extends InstructionsClass>
    implements $InstructionsClassCopyWith<$Res> {
  _$InstructionsClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? symbol = freezed,
    Object? shortDesc = freezed,
    Object? longDesc = freezed,
    Object? images = freezed,
    Object? audio = freezed,
    Object? the3DRender = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDesc: freezed == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      longDesc: freezed == longDesc
          ? _value.longDesc
          : longDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      the3DRender: freezed == the3DRender
          ? _value.the3DRender
          : the3DRender // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructionsClassImplCopyWith<$Res>
    implements $InstructionsClassCopyWith<$Res> {
  factory _$$InstructionsClassImplCopyWith(_$InstructionsClassImpl value,
          $Res Function(_$InstructionsClassImpl) then) =
      __$$InstructionsClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? code,
      String? symbol,
      String? shortDesc,
      String? longDesc,
      List<String>? images,
      String? audio,
      String? the3DRender});
}

/// @nodoc
class __$$InstructionsClassImplCopyWithImpl<$Res>
    extends _$InstructionsClassCopyWithImpl<$Res, _$InstructionsClassImpl>
    implements _$$InstructionsClassImplCopyWith<$Res> {
  __$$InstructionsClassImplCopyWithImpl(_$InstructionsClassImpl _value,
      $Res Function(_$InstructionsClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? symbol = freezed,
    Object? shortDesc = freezed,
    Object? longDesc = freezed,
    Object? images = freezed,
    Object? audio = freezed,
    Object? the3DRender = freezed,
  }) {
    return _then(_$InstructionsClassImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDesc: freezed == shortDesc
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      longDesc: freezed == longDesc
          ? _value.longDesc
          : longDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      the3DRender: freezed == the3DRender
          ? _value.the3DRender
          : the3DRender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionsClassImpl implements _InstructionsClass {
  const _$InstructionsClassImpl(
      {this.name,
      this.code,
      this.symbol,
      this.shortDesc,
      this.longDesc,
      final List<String>? images,
      this.audio,
      this.the3DRender})
      : _images = images;

  factory _$InstructionsClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionsClassImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? symbol;
  @override
  final String? shortDesc;
  @override
  final String? longDesc;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? audio;
  @override
  final String? the3DRender;

  @override
  String toString() {
    return 'InstructionsClass(name: $name, code: $code, symbol: $symbol, shortDesc: $shortDesc, longDesc: $longDesc, images: $images, audio: $audio, the3DRender: $the3DRender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionsClassImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.shortDesc, shortDesc) ||
                other.shortDesc == shortDesc) &&
            (identical(other.longDesc, longDesc) ||
                other.longDesc == longDesc) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.the3DRender, the3DRender) ||
                other.the3DRender == the3DRender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      code,
      symbol,
      shortDesc,
      longDesc,
      const DeepCollectionEquality().hash(_images),
      audio,
      the3DRender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionsClassImplCopyWith<_$InstructionsClassImpl> get copyWith =>
      __$$InstructionsClassImplCopyWithImpl<_$InstructionsClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionsClassImplToJson(
      this,
    );
  }
}

abstract class _InstructionsClass implements InstructionsClass {
  const factory _InstructionsClass(
      {final String? name,
      final String? code,
      final String? symbol,
      final String? shortDesc,
      final String? longDesc,
      final List<String>? images,
      final String? audio,
      final String? the3DRender}) = _$InstructionsClassImpl;

  factory _InstructionsClass.fromJson(Map<String, dynamic> json) =
      _$InstructionsClassImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get symbol;
  @override
  String? get shortDesc;
  @override
  String? get longDesc;
  @override
  List<String>? get images;
  @override
  String? get audio;
  @override
  String? get the3DRender;
  @override
  @JsonKey(ignore: true)
  _$$InstructionsClassImplCopyWith<_$InstructionsClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParentCategoryId _$ParentCategoryIdFromJson(Map<String, dynamic> json) {
  return _ParentCategoryId.fromJson(json);
}

/// @nodoc
mixin _$ParentCategoryId {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCategoryIdCopyWith<$Res> {
  factory $ParentCategoryIdCopyWith(
          ParentCategoryId value, $Res Function(ParentCategoryId) then) =
      _$ParentCategoryIdCopyWithImpl<$Res, ParentCategoryId>;
}

/// @nodoc
class _$ParentCategoryIdCopyWithImpl<$Res, $Val extends ParentCategoryId>
    implements $ParentCategoryIdCopyWith<$Res> {
  _$ParentCategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParentCategoryIdImplCopyWith<$Res> {
  factory _$$ParentCategoryIdImplCopyWith(_$ParentCategoryIdImpl value,
          $Res Function(_$ParentCategoryIdImpl) then) =
      __$$ParentCategoryIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParentCategoryIdImplCopyWithImpl<$Res>
    extends _$ParentCategoryIdCopyWithImpl<$Res, _$ParentCategoryIdImpl>
    implements _$$ParentCategoryIdImplCopyWith<$Res> {
  __$$ParentCategoryIdImplCopyWithImpl(_$ParentCategoryIdImpl _value,
      $Res Function(_$ParentCategoryIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ParentCategoryIdImpl implements _ParentCategoryId {
  const _$ParentCategoryIdImpl();

  factory _$ParentCategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentCategoryIdImplFromJson(json);

  @override
  String toString() {
    return 'ParentCategoryId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParentCategoryIdImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentCategoryIdImplToJson(
      this,
    );
  }
}

abstract class _ParentCategoryId implements ParentCategoryId {
  const factory _ParentCategoryId() = _$ParentCategoryIdImpl;

  factory _ParentCategoryId.fromJson(Map<String, dynamic> json) =
      _$ParentCategoryIdImpl.fromJson;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  String? get label => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  Range? get range => throw _privateConstructorUsedError;
  String? get days => throw _privateConstructorUsedError;
  Schedule? get schedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call(
      {String? label,
      String? timestamp,
      String? duration,
      Range? range,
      String? days,
      Schedule? schedule});

  $RangeCopyWith<$Res>? get range;
  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? timestamp = freezed,
    Object? duration = freezed,
    Object? range = freezed,
    Object? days = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      String? timestamp,
      String? duration,
      Range? range,
      String? days,
      Schedule? schedule});

  @override
  $RangeCopyWith<$Res>? get range;
  @override
  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? timestamp = freezed,
    Object? duration = freezed,
    Object? range = freezed,
    Object? days = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_$TimeImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  const _$TimeImpl(
      {this.label,
      this.timestamp,
      this.duration,
      this.range,
      this.days,
      this.schedule});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final String? label;
  @override
  final String? timestamp;
  @override
  final String? duration;
  @override
  final Range? range;
  @override
  final String? days;
  @override
  final Schedule? schedule;

  @override
  String toString() {
    return 'Time(label: $label, timestamp: $timestamp, duration: $duration, range: $range, days: $days, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, timestamp, duration, range, days, schedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {final String? label,
      final String? timestamp,
      final String? duration,
      final Range? range,
      final String? days,
      final Schedule? schedule}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  String? get label;
  @override
  String? get timestamp;
  @override
  String? get duration;
  @override
  Range? get range;
  @override
  String? get days;
  @override
  Schedule? get schedule;
  @override
  @JsonKey(ignore: true)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Range _$RangeFromJson(Map<String, dynamic> json) {
  return _Range.fromJson(json);
}

/// @nodoc
mixin _$Range {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RangeCopyWith<Range> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) then) =
      _$RangeCopyWithImpl<$Res, Range>;
  @useResult
  $Res call({String? start, String? end});
}

/// @nodoc
class _$RangeCopyWithImpl<$Res, $Val extends Range>
    implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RangeImplCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$$RangeImplCopyWith(
          _$RangeImpl value, $Res Function(_$RangeImpl) then) =
      __$$RangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? start, String? end});
}

/// @nodoc
class __$$RangeImplCopyWithImpl<$Res>
    extends _$RangeCopyWithImpl<$Res, _$RangeImpl>
    implements _$$RangeImplCopyWith<$Res> {
  __$$RangeImplCopyWithImpl(
      _$RangeImpl _value, $Res Function(_$RangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$RangeImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RangeImpl implements _Range {
  const _$RangeImpl({this.start, this.end});

  factory _$RangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RangeImplFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'Range(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      __$$RangeImplCopyWithImpl<_$RangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RangeImplToJson(
      this,
    );
  }
}

abstract class _Range implements Range {
  const factory _Range({final String? start, final String? end}) = _$RangeImpl;

  factory _Range.fromJson(Map<String, dynamic> json) = _$RangeImpl.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  String? get frequency => throw _privateConstructorUsedError;
  List<String>? get holidays => throw _privateConstructorUsedError;
  List<String>? get times => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call({String? frequency, List<String>? holidays, List<String>? times});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = freezed,
    Object? holidays = freezed,
    Object? times = freezed,
  }) {
    return _then(_value.copyWith(
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      holidays: freezed == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frequency, List<String>? holidays, List<String>? times});
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = freezed,
    Object? holidays = freezed,
    Object? times = freezed,
  }) {
    return _then(_$ScheduleImpl(
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      holidays: freezed == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      times: freezed == times
          ? _value._times
          : times // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl(
      {this.frequency, final List<String>? holidays, final List<String>? times})
      : _holidays = holidays,
        _times = times;

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final String? frequency;
  final List<String>? _holidays;
  @override
  List<String>? get holidays {
    final value = _holidays;
    if (value == null) return null;
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _times;
  @override
  List<String>? get times {
    final value = _times;
    if (value == null) return null;
    if (_times is EqualUnmodifiableListView) return _times;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Schedule(frequency: $frequency, holidays: $holidays, times: $times)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays) &&
            const DeepCollectionEquality().equals(other._times, _times));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      frequency,
      const DeepCollectionEquality().hash(_holidays),
      const DeepCollectionEquality().hash(_times));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {final String? frequency,
      final List<String>? holidays,
      final List<String>? times}) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  String? get frequency;
  @override
  List<String>? get holidays;
  @override
  List<String>? get times;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fulfillment _$FulfillmentFromJson(Map<String, dynamic> json) {
  return _Fulfillment.fromJson(json);
}

/// @nodoc
mixin _$Fulfillment {
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  State? get state => throw _privateConstructorUsedError;
  bool? get tracking => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  Agent? get agent => throw _privateConstructorUsedError;
  Agent? get person => throw _privateConstructorUsedError;
  End? get start => throw _privateConstructorUsedError;
  End? get end => throw _privateConstructorUsedError;
  ParentCategoryId? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FulfillmentCopyWith<Fulfillment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FulfillmentCopyWith<$Res> {
  factory $FulfillmentCopyWith(
          Fulfillment value, $Res Function(Fulfillment) then) =
      _$FulfillmentCopyWithImpl<$Res, Fulfillment>;
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? providerId,
      State? state,
      bool? tracking,
      Customer? customer,
      Contact? contact,
      Agent? agent,
      Agent? person,
      End? start,
      End? end,
      ParentCategoryId? tags});

  $StateCopyWith<$Res>? get state;
  $CustomerCopyWith<$Res>? get customer;
  $ContactCopyWith<$Res>? get contact;
  $AgentCopyWith<$Res>? get agent;
  $AgentCopyWith<$Res>? get person;
  $EndCopyWith<$Res>? get start;
  $EndCopyWith<$Res>? get end;
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class _$FulfillmentCopyWithImpl<$Res, $Val extends Fulfillment>
    implements $FulfillmentCopyWith<$Res> {
  _$FulfillmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? providerId = freezed,
    Object? state = freezed,
    Object? tracking = freezed,
    Object? customer = freezed,
    Object? contact = freezed,
    Object? agent = freezed,
    Object? person = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
      tracking: freezed == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Agent?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as End?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as End?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $StateCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get agent {
    if (_value.agent == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.agent!, (value) {
      return _then(_value.copyWith(agent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EndCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $EndCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EndCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $EndCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCategoryIdCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ParentCategoryIdCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FulfillmentImplCopyWith<$Res>
    implements $FulfillmentCopyWith<$Res> {
  factory _$$FulfillmentImplCopyWith(
          _$FulfillmentImpl value, $Res Function(_$FulfillmentImpl) then) =
      __$$FulfillmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? type,
      String? providerId,
      State? state,
      bool? tracking,
      Customer? customer,
      Contact? contact,
      Agent? agent,
      Agent? person,
      End? start,
      End? end,
      ParentCategoryId? tags});

  @override
  $StateCopyWith<$Res>? get state;
  @override
  $CustomerCopyWith<$Res>? get customer;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $AgentCopyWith<$Res>? get agent;
  @override
  $AgentCopyWith<$Res>? get person;
  @override
  $EndCopyWith<$Res>? get start;
  @override
  $EndCopyWith<$Res>? get end;
  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$FulfillmentImplCopyWithImpl<$Res>
    extends _$FulfillmentCopyWithImpl<$Res, _$FulfillmentImpl>
    implements _$$FulfillmentImplCopyWith<$Res> {
  __$$FulfillmentImplCopyWithImpl(
      _$FulfillmentImpl _value, $Res Function(_$FulfillmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? providerId = freezed,
    Object? state = freezed,
    Object? tracking = freezed,
    Object? customer = freezed,
    Object? contact = freezed,
    Object? agent = freezed,
    Object? person = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$FulfillmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State?,
      tracking: freezed == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as bool?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      agent: freezed == agent
          ? _value.agent
          : agent // ignore: cast_nullable_to_non_nullable
              as Agent?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Agent?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as End?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as End?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FulfillmentImpl implements _Fulfillment {
  const _$FulfillmentImpl(
      {this.id,
      this.type,
      this.providerId,
      this.state,
      this.tracking,
      this.customer,
      this.contact,
      this.agent,
      this.person,
      this.start,
      this.end,
      this.tags});

  factory _$FulfillmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FulfillmentImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? providerId;
  @override
  final State? state;
  @override
  final bool? tracking;
  @override
  final Customer? customer;
  @override
  final Contact? contact;
  @override
  final Agent? agent;
  @override
  final Agent? person;
  @override
  final End? start;
  @override
  final End? end;
  @override
  final ParentCategoryId? tags;

  @override
  String toString() {
    return 'Fulfillment(id: $id, type: $type, providerId: $providerId, state: $state, tracking: $tracking, customer: $customer, contact: $contact, agent: $agent, person: $person, start: $start, end: $end, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FulfillmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.tracking, tracking) ||
                other.tracking == tracking) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.agent, agent) || other.agent == agent) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, providerId, state,
      tracking, customer, contact, agent, person, start, end, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FulfillmentImplCopyWith<_$FulfillmentImpl> get copyWith =>
      __$$FulfillmentImplCopyWithImpl<_$FulfillmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FulfillmentImplToJson(
      this,
    );
  }
}

abstract class _Fulfillment implements Fulfillment {
  const factory _Fulfillment(
      {final String? id,
      final String? type,
      final String? providerId,
      final State? state,
      final bool? tracking,
      final Customer? customer,
      final Contact? contact,
      final Agent? agent,
      final Agent? person,
      final End? start,
      final End? end,
      final ParentCategoryId? tags}) = _$FulfillmentImpl;

  factory _Fulfillment.fromJson(Map<String, dynamic> json) =
      _$FulfillmentImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get providerId;
  @override
  State? get state;
  @override
  bool? get tracking;
  @override
  Customer? get customer;
  @override
  Contact? get contact;
  @override
  Agent? get agent;
  @override
  Agent? get person;
  @override
  End? get start;
  @override
  End? get end;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$FulfillmentImplCopyWith<_$FulfillmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
mixin _$Agent {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get cred => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ParentCategoryId? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? dob,
      String? gender,
      String? cred,
      String? phone,
      String? email,
      ParentCategoryId? tags});

  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? cred = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: freezed == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCategoryIdCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ParentCategoryIdCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentImplCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$AgentImplCopyWith(
          _$AgentImpl value, $Res Function(_$AgentImpl) then) =
      __$$AgentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? dob,
      String? gender,
      String? cred,
      String? phone,
      String? email,
      ParentCategoryId? tags});

  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$AgentImplCopyWithImpl<$Res>
    extends _$AgentCopyWithImpl<$Res, _$AgentImpl>
    implements _$$AgentImplCopyWith<$Res> {
  __$$AgentImplCopyWithImpl(
      _$AgentImpl _value, $Res Function(_$AgentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? cred = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$AgentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: freezed == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentImpl implements _Agent {
  const _$AgentImpl(
      {this.id,
      this.name,
      this.image,
      this.dob,
      this.gender,
      this.cred,
      this.phone,
      this.email,
      this.tags});

  factory _$AgentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? dob;
  @override
  final String? gender;
  @override
  final String? cred;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final ParentCategoryId? tags;

  @override
  String toString() {
    return 'Agent(id: $id, name: $name, image: $image, dob: $dob, gender: $gender, cred: $cred, phone: $phone, email: $email, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.cred, cred) || other.cred == cred) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, dob, gender, cred, phone, email, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      __$$AgentImplCopyWithImpl<_$AgentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentImplToJson(
      this,
    );
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
      {final String? id,
      final String? name,
      final String? image,
      final String? dob,
      final String? gender,
      final String? cred,
      final String? phone,
      final String? email,
      final ParentCategoryId? tags}) = _$AgentImpl;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$AgentImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get dob;
  @override
  String? get gender;
  @override
  String? get cred;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$AgentImplCopyWith<_$AgentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ParentCategoryId? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({String? phone, String? email, ParentCategoryId? tags});

  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCategoryIdCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ParentCategoryIdCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? email, ParentCategoryId? tags});

  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ContactImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl({this.phone, this.email, this.tags});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final ParentCategoryId? tags;

  @override
  String toString() {
    return 'Contact(phone: $phone, email: $email, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final String? phone,
      final String? email,
      final ParentCategoryId? tags}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  Person? get person => throw _privateConstructorUsedError;
  ParentCategoryId? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call({Person? person, ParentCategoryId? tags});

  $PersonCopyWith<$Res>? get person;
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCategoryIdCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $ParentCategoryIdCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person? person, ParentCategoryId? tags});

  @override
  $PersonCopyWith<$Res>? get person;
  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$CustomerImpl(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as ParentCategoryId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl({this.person, this.tags});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final Person? person;
  @override
  final ParentCategoryId? tags;

  @override
  String toString() {
    return 'Customer(person: $person, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, person, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final Person? person, final ParentCategoryId? tags}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  Person? get person;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get cred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? dob,
      String? gender,
      String? cred});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? cred = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: freezed == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? dob,
      String? gender,
      String? cred});
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? cred = freezed,
  }) {
    return _then(_$PersonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: freezed == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonImpl implements _Person {
  const _$PersonImpl(
      {this.id, this.name, this.image, this.dob, this.gender, this.cred});

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? dob;
  @override
  final String? gender;
  @override
  final String? cred;

  @override
  String toString() {
    return 'Person(id: $id, name: $name, image: $image, dob: $dob, gender: $gender, cred: $cred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.cred, cred) || other.cred == cred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, dob, gender, cred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  const factory _Person(
      {final String? id,
      final String? name,
      final String? image,
      final String? dob,
      final String? gender,
      final String? cred}) = _$PersonImpl;

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get dob;
  @override
  String? get gender;
  @override
  String? get cred;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

End _$EndFromJson(Map<String, dynamic> json) {
  return _End.fromJson(json);
}

/// @nodoc
mixin _$End {
  Time? get time => throw _privateConstructorUsedError;
  InstructionsClass? get instructions => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  Agent? get person => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndCopyWith<End> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndCopyWith<$Res> {
  factory $EndCopyWith(End value, $Res Function(End) then) =
      _$EndCopyWithImpl<$Res, End>;
  @useResult
  $Res call(
      {Time? time,
      InstructionsClass? instructions,
      Contact? contact,
      Agent? person});

  $TimeCopyWith<$Res>? get time;
  $InstructionsClassCopyWith<$Res>? get instructions;
  $ContactCopyWith<$Res>? get contact;
  $AgentCopyWith<$Res>? get person;
}

/// @nodoc
class _$EndCopyWithImpl<$Res, $Val extends End> implements $EndCopyWith<$Res> {
  _$EndCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? instructions = freezed,
    Object? contact = freezed,
    Object? person = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Agent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get instructions {
    if (_value.instructions == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.instructions!, (value) {
      return _then(_value.copyWith(instructions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $AgentCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EndImplCopyWith<$Res> implements $EndCopyWith<$Res> {
  factory _$$EndImplCopyWith(_$EndImpl value, $Res Function(_$EndImpl) then) =
      __$$EndImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Time? time,
      InstructionsClass? instructions,
      Contact? contact,
      Agent? person});

  @override
  $TimeCopyWith<$Res>? get time;
  @override
  $InstructionsClassCopyWith<$Res>? get instructions;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $AgentCopyWith<$Res>? get person;
}

/// @nodoc
class __$$EndImplCopyWithImpl<$Res> extends _$EndCopyWithImpl<$Res, _$EndImpl>
    implements _$$EndImplCopyWith<$Res> {
  __$$EndImplCopyWithImpl(_$EndImpl _value, $Res Function(_$EndImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? instructions = freezed,
    Object? contact = freezed,
    Object? person = freezed,
  }) {
    return _then(_$EndImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Agent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndImpl implements _End {
  const _$EndImpl({this.time, this.instructions, this.contact, this.person});

  factory _$EndImpl.fromJson(Map<String, dynamic> json) =>
      _$$EndImplFromJson(json);

  @override
  final Time? time;
  @override
  final InstructionsClass? instructions;
  @override
  final Contact? contact;
  @override
  final Agent? person;

  @override
  String toString() {
    return 'End(time: $time, instructions: $instructions, contact: $contact, person: $person)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.person, person) || other.person == person));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, instructions, contact, person);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndImplCopyWith<_$EndImpl> get copyWith =>
      __$$EndImplCopyWithImpl<_$EndImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EndImplToJson(
      this,
    );
  }
}

abstract class _End implements End {
  const factory _End(
      {final Time? time,
      final InstructionsClass? instructions,
      final Contact? contact,
      final Agent? person}) = _$EndImpl;

  factory _End.fromJson(Map<String, dynamic> json) = _$EndImpl.fromJson;

  @override
  Time? get time;
  @override
  InstructionsClass? get instructions;
  @override
  Contact? get contact;
  @override
  Agent? get person;
  @override
  @JsonKey(ignore: true)
  _$$EndImplCopyWith<_$EndImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

State _$StateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
mixin _$State {
  InstructionsClass? get descriptor => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res, State>;
  @useResult
  $Res call(
      {InstructionsClass? descriptor, String? updatedAt, String? updatedBy});

  $InstructionsClassCopyWith<$Res>? get descriptor;
}

/// @nodoc
class _$StateCopyWithImpl<$Res, $Val extends State>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptor = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_value.copyWith(
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InstructionsClass? descriptor, String? updatedAt, String? updatedBy});

  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$StateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptor = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_$StateImpl(
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StateImpl implements _State {
  const _$StateImpl({this.descriptor, this.updatedAt, this.updatedBy});

  factory _$StateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateImplFromJson(json);

  @override
  final InstructionsClass? descriptor;
  @override
  final String? updatedAt;
  @override
  final String? updatedBy;

  @override
  String toString() {
    return 'State(descriptor: $descriptor, updatedAt: $updatedAt, updatedBy: $updatedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, descriptor, updatedAt, updatedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateImplToJson(
      this,
    );
  }
}

abstract class _State implements State {
  const factory _State(
      {final InstructionsClass? descriptor,
      final String? updatedAt,
      final String? updatedBy}) = _$StateImpl;

  factory _State.fromJson(Map<String, dynamic> json) = _$StateImpl.fromJson;

  @override
  InstructionsClass? get descriptor;
  @override
  String? get updatedAt;
  @override
  String? get updatedBy;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({String? type, String? status, Time? time});

  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? status, Time? time});

  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? time = freezed,
  }) {
    return _then(_$PaymentImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({this.type, this.status, this.time});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String? type;
  @override
  final String? status;
  @override
  final Time? time;

  @override
  String toString() {
    return 'Payment(type: $type, status: $status, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, status, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {final String? type,
      final String? status,
      final Time? time}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String? get type;
  @override
  String? get status;
  @override
  Time? get time;
  @override
  @JsonKey(ignore: true)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Provider _$ProviderFromJson(Map<String, dynamic> json) {
  return _Provider.fromJson(json);
}

/// @nodoc
mixin _$Provider {
  String? get id => throw _privateConstructorUsedError;
  InstructionsClass? get descriptor => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  List<Fulfillment>? get fulfillments => throw _privateConstructorUsedError;
  List<Payment>? get payments => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  DateTime? get exp => throw _privateConstructorUsedError;
  Tags? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProviderCopyWith<Provider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderCopyWith<$Res> {
  factory $ProviderCopyWith(Provider value, $Res Function(Provider) then) =
      _$ProviderCopyWithImpl<$Res, Provider>;
  @useResult
  $Res call(
      {String? id,
      InstructionsClass? descriptor,
      String? categoryId,
      Time? time,
      List<Category>? categories,
      List<Fulfillment>? fulfillments,
      List<Payment>? payments,
      List<Item>? items,
      Location? location,
      DateTime? exp,
      Tags? tags});

  $InstructionsClassCopyWith<$Res>? get descriptor;
  $TimeCopyWith<$Res>? get time;
  $LocationCopyWith<$Res>? get location;
  $TagsCopyWith<$Res>? get tags;
}

/// @nodoc
class _$ProviderCopyWithImpl<$Res, $Val extends Provider>
    implements $ProviderCopyWith<$Res> {
  _$ProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? categoryId = freezed,
    Object? time = freezed,
    Object? categories = freezed,
    Object? fulfillments = freezed,
    Object? payments = freezed,
    Object? items = freezed,
    Object? location = freezed,
    Object? exp = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      fulfillments: freezed == fulfillments
          ? _value.fulfillments
          : fulfillments // ignore: cast_nullable_to_non_nullable
              as List<Fulfillment>?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $TagsCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProviderImplCopyWith<$Res>
    implements $ProviderCopyWith<$Res> {
  factory _$$ProviderImplCopyWith(
          _$ProviderImpl value, $Res Function(_$ProviderImpl) then) =
      __$$ProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      InstructionsClass? descriptor,
      String? categoryId,
      Time? time,
      List<Category>? categories,
      List<Fulfillment>? fulfillments,
      List<Payment>? payments,
      List<Item>? items,
      Location? location,
      DateTime? exp,
      Tags? tags});

  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
  @override
  $TimeCopyWith<$Res>? get time;
  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $TagsCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$ProviderImplCopyWithImpl<$Res>
    extends _$ProviderCopyWithImpl<$Res, _$ProviderImpl>
    implements _$$ProviderImplCopyWith<$Res> {
  __$$ProviderImplCopyWithImpl(
      _$ProviderImpl _value, $Res Function(_$ProviderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? categoryId = freezed,
    Object? time = freezed,
    Object? categories = freezed,
    Object? fulfillments = freezed,
    Object? payments = freezed,
    Object? items = freezed,
    Object? location = freezed,
    Object? exp = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ProviderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      fulfillments: freezed == fulfillments
          ? _value._fulfillments
          : fulfillments // ignore: cast_nullable_to_non_nullable
              as List<Fulfillment>?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderImpl implements _Provider {
  const _$ProviderImpl(
      {this.id,
      this.descriptor,
      this.categoryId,
      this.time,
      final List<Category>? categories,
      final List<Fulfillment>? fulfillments,
      final List<Payment>? payments,
      final List<Item>? items,
      this.location,
      this.exp,
      this.tags})
      : _categories = categories,
        _fulfillments = fulfillments,
        _payments = payments,
        _items = items;

  factory _$ProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderImplFromJson(json);

  @override
  final String? id;
  @override
  final InstructionsClass? descriptor;
  @override
  final String? categoryId;
  @override
  final Time? time;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Fulfillment>? _fulfillments;
  @override
  List<Fulfillment>? get fulfillments {
    final value = _fulfillments;
    if (value == null) return null;
    if (_fulfillments is EqualUnmodifiableListView) return _fulfillments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Payment>? _payments;
  @override
  List<Payment>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? location;
  @override
  final DateTime? exp;
  @override
  final Tags? tags;

  @override
  String toString() {
    return 'Provider(id: $id, descriptor: $descriptor, categoryId: $categoryId, time: $time, categories: $categories, fulfillments: $fulfillments, payments: $payments, items: $items, location: $location, exp: $exp, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._fulfillments, _fulfillments) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      descriptor,
      categoryId,
      time,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_fulfillments),
      const DeepCollectionEquality().hash(_payments),
      const DeepCollectionEquality().hash(_items),
      location,
      exp,
      tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderImplCopyWith<_$ProviderImpl> get copyWith =>
      __$$ProviderImplCopyWithImpl<_$ProviderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderImplToJson(
      this,
    );
  }
}

abstract class _Provider implements Provider {
  const factory _Provider(
      {final String? id,
      final InstructionsClass? descriptor,
      final String? categoryId,
      final Time? time,
      final List<Category>? categories,
      final List<Fulfillment>? fulfillments,
      final List<Payment>? payments,
      final List<Item>? items,
      final Location? location,
      final DateTime? exp,
      final Tags? tags}) = _$ProviderImpl;

  factory _Provider.fromJson(Map<String, dynamic> json) =
      _$ProviderImpl.fromJson;

  @override
  String? get id;
  @override
  InstructionsClass? get descriptor;
  @override
  String? get categoryId;
  @override
  Time? get time;
  @override
  List<Category>? get categories;
  @override
  List<Fulfillment>? get fulfillments;
  @override
  List<Payment>? get payments;
  @override
  List<Item>? get items;
  @override
  Location? get location;
  @override
  DateTime? get exp;
  @override
  Tags? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ProviderImplCopyWith<_$ProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get id => throw _privateConstructorUsedError;
  InstructionsClass? get descriptor => throw _privateConstructorUsedError;
  Price? get price => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get fulfillmentId => throw _privateConstructorUsedError;
  Time? get time => throw _privateConstructorUsedError;
  bool? get matched => throw _privateConstructorUsedError;
  bool? get related => throw _privateConstructorUsedError;
  bool? get recommended => throw _privateConstructorUsedError;
  Tags? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? id,
      InstructionsClass? descriptor,
      Price? price,
      String? categoryId,
      String? fulfillmentId,
      Time? time,
      bool? matched,
      bool? related,
      bool? recommended,
      Tags? tags});

  $InstructionsClassCopyWith<$Res>? get descriptor;
  $PriceCopyWith<$Res>? get price;
  $TimeCopyWith<$Res>? get time;
  $TagsCopyWith<$Res>? get tags;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? price = freezed,
    Object? categoryId = freezed,
    Object? fulfillmentId = freezed,
    Object? time = freezed,
    Object? matched = freezed,
    Object? related = freezed,
    Object? recommended = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      fulfillmentId: freezed == fulfillmentId
          ? _value.fulfillmentId
          : fulfillmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      matched: freezed == matched
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as bool?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstructionsClassCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $InstructionsClassCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $TagsCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      InstructionsClass? descriptor,
      Price? price,
      String? categoryId,
      String? fulfillmentId,
      Time? time,
      bool? matched,
      bool? related,
      bool? recommended,
      Tags? tags});

  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
  @override
  $PriceCopyWith<$Res>? get price;
  @override
  $TimeCopyWith<$Res>? get time;
  @override
  $TagsCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? price = freezed,
    Object? categoryId = freezed,
    Object? fulfillmentId = freezed,
    Object? time = freezed,
    Object? matched = freezed,
    Object? related = freezed,
    Object? recommended = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as InstructionsClass?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      fulfillmentId: freezed == fulfillmentId
          ? _value.fulfillmentId
          : fulfillmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      matched: freezed == matched
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as bool?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Tags?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {this.id,
      this.descriptor,
      this.price,
      this.categoryId,
      this.fulfillmentId,
      this.time,
      this.matched,
      this.related,
      this.recommended,
      this.tags});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? id;
  @override
  final InstructionsClass? descriptor;
  @override
  final Price? price;
  @override
  final String? categoryId;
  @override
  final String? fulfillmentId;
  @override
  final Time? time;
  @override
  final bool? matched;
  @override
  final bool? related;
  @override
  final bool? recommended;
  @override
  final Tags? tags;

  @override
  String toString() {
    return 'Item(id: $id, descriptor: $descriptor, price: $price, categoryId: $categoryId, fulfillmentId: $fulfillmentId, time: $time, matched: $matched, related: $related, recommended: $recommended, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.fulfillmentId, fulfillmentId) ||
                other.fulfillmentId == fulfillmentId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.matched, matched) || other.matched == matched) &&
            (identical(other.related, related) || other.related == related) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, descriptor, price,
      categoryId, fulfillmentId, time, matched, related, recommended, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? id,
      final InstructionsClass? descriptor,
      final Price? price,
      final String? categoryId,
      final String? fulfillmentId,
      final Time? time,
      final bool? matched,
      final bool? related,
      final bool? recommended,
      final Tags? tags}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get id;
  @override
  InstructionsClass? get descriptor;
  @override
  Price? get price;
  @override
  String? get categoryId;
  @override
  String? get fulfillmentId;
  @override
  Time? get time;
  @override
  bool? get matched;
  @override
  bool? get related;
  @override
  bool? get recommended;
  @override
  Tags? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String? get currency => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get estimatedValue => throw _privateConstructorUsedError;
  String? get computedValue => throw _privateConstructorUsedError;
  String? get listedValue => throw _privateConstructorUsedError;
  String? get offeredValue => throw _privateConstructorUsedError;
  String? get minimumValue => throw _privateConstructorUsedError;
  String? get maximumValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {String? currency,
      String? value,
      String? estimatedValue,
      String? computedValue,
      String? listedValue,
      String? offeredValue,
      String? minimumValue,
      String? maximumValue});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? value = freezed,
    Object? estimatedValue = freezed,
    Object? computedValue = freezed,
    Object? listedValue = freezed,
    Object? offeredValue = freezed,
    Object? minimumValue = freezed,
    Object? maximumValue = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedValue: freezed == estimatedValue
          ? _value.estimatedValue
          : estimatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      computedValue: freezed == computedValue
          ? _value.computedValue
          : computedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      listedValue: freezed == listedValue
          ? _value.listedValue
          : listedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      offeredValue: freezed == offeredValue
          ? _value.offeredValue
          : offeredValue // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumValue: freezed == minimumValue
          ? _value.minimumValue
          : minimumValue // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumValue: freezed == maximumValue
          ? _value.maximumValue
          : maximumValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currency,
      String? value,
      String? estimatedValue,
      String? computedValue,
      String? listedValue,
      String? offeredValue,
      String? minimumValue,
      String? maximumValue});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? value = freezed,
    Object? estimatedValue = freezed,
    Object? computedValue = freezed,
    Object? listedValue = freezed,
    Object? offeredValue = freezed,
    Object? minimumValue = freezed,
    Object? maximumValue = freezed,
  }) {
    return _then(_$PriceImpl(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedValue: freezed == estimatedValue
          ? _value.estimatedValue
          : estimatedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      computedValue: freezed == computedValue
          ? _value.computedValue
          : computedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      listedValue: freezed == listedValue
          ? _value.listedValue
          : listedValue // ignore: cast_nullable_to_non_nullable
              as String?,
      offeredValue: freezed == offeredValue
          ? _value.offeredValue
          : offeredValue // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumValue: freezed == minimumValue
          ? _value.minimumValue
          : minimumValue // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumValue: freezed == maximumValue
          ? _value.maximumValue
          : maximumValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  const _$PriceImpl(
      {this.currency,
      this.value,
      this.estimatedValue,
      this.computedValue,
      this.listedValue,
      this.offeredValue,
      this.minimumValue,
      this.maximumValue});

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  final String? currency;
  @override
  final String? value;
  @override
  final String? estimatedValue;
  @override
  final String? computedValue;
  @override
  final String? listedValue;
  @override
  final String? offeredValue;
  @override
  final String? minimumValue;
  @override
  final String? maximumValue;

  @override
  String toString() {
    return 'Price(currency: $currency, value: $value, estimatedValue: $estimatedValue, computedValue: $computedValue, listedValue: $listedValue, offeredValue: $offeredValue, minimumValue: $minimumValue, maximumValue: $maximumValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.estimatedValue, estimatedValue) ||
                other.estimatedValue == estimatedValue) &&
            (identical(other.computedValue, computedValue) ||
                other.computedValue == computedValue) &&
            (identical(other.listedValue, listedValue) ||
                other.listedValue == listedValue) &&
            (identical(other.offeredValue, offeredValue) ||
                other.offeredValue == offeredValue) &&
            (identical(other.minimumValue, minimumValue) ||
                other.minimumValue == minimumValue) &&
            (identical(other.maximumValue, maximumValue) ||
                other.maximumValue == maximumValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, value, estimatedValue,
      computedValue, listedValue, offeredValue, minimumValue, maximumValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {final String? currency,
      final String? value,
      final String? estimatedValue,
      final String? computedValue,
      final String? listedValue,
      final String? offeredValue,
      final String? minimumValue,
      final String? maximumValue}) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  String? get currency;
  @override
  String? get value;
  @override
  String? get estimatedValue;
  @override
  String? get computedValue;
  @override
  String? get listedValue;
  @override
  String? get offeredValue;
  @override
  String? get minimumValue;
  @override
  String? get maximumValue;
  @override
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return _Tags.fromJson(json);
}

/// @nodoc
mixin _$Tags {
  String? get tag1 => throw _privateConstructorUsedError;
  String? get tag2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsCopyWith<Tags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<$Res> {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) then) =
      _$TagsCopyWithImpl<$Res, Tags>;
  @useResult
  $Res call({String? tag1, String? tag2});
}

/// @nodoc
class _$TagsCopyWithImpl<$Res, $Val extends Tags>
    implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag1 = freezed,
    Object? tag2 = freezed,
  }) {
    return _then(_value.copyWith(
      tag1: freezed == tag1
          ? _value.tag1
          : tag1 // ignore: cast_nullable_to_non_nullable
              as String?,
      tag2: freezed == tag2
          ? _value.tag2
          : tag2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsImplCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$$TagsImplCopyWith(
          _$TagsImpl value, $Res Function(_$TagsImpl) then) =
      __$$TagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tag1, String? tag2});
}

/// @nodoc
class __$$TagsImplCopyWithImpl<$Res>
    extends _$TagsCopyWithImpl<$Res, _$TagsImpl>
    implements _$$TagsImplCopyWith<$Res> {
  __$$TagsImplCopyWithImpl(_$TagsImpl _value, $Res Function(_$TagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag1 = freezed,
    Object? tag2 = freezed,
  }) {
    return _then(_$TagsImpl(
      tag1: freezed == tag1
          ? _value.tag1
          : tag1 // ignore: cast_nullable_to_non_nullable
              as String?,
      tag2: freezed == tag2
          ? _value.tag2
          : tag2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagsImpl implements _Tags {
  const _$TagsImpl({this.tag1, this.tag2});

  factory _$TagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsImplFromJson(json);

  @override
  final String? tag1;
  @override
  final String? tag2;

  @override
  String toString() {
    return 'Tags(tag1: $tag1, tag2: $tag2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsImpl &&
            (identical(other.tag1, tag1) || other.tag1 == tag1) &&
            (identical(other.tag2, tag2) || other.tag2 == tag2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag1, tag2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsImplCopyWith<_$TagsImpl> get copyWith =>
      __$$TagsImplCopyWithImpl<_$TagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsImplToJson(
      this,
    );
  }
}

abstract class _Tags implements Tags {
  const factory _Tags({final String? tag1, final String? tag2}) = _$TagsImpl;

  factory _Tags.fromJson(Map<String, dynamic> json) = _$TagsImpl.fromJson;

  @override
  String? get tag1;
  @override
  String? get tag2;
  @override
  @JsonKey(ignore: true)
  _$$TagsImplCopyWith<_$TagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get id => throw _privateConstructorUsedError;
  LocationDescriptor? get descriptor => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  City? get country => throw _privateConstructorUsedError;
  String? get gps => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String? id,
      LocationDescriptor? descriptor,
      City? city,
      City? country,
      String? gps,
      String? address});

  $LocationDescriptorCopyWith<$Res>? get descriptor;
  $CityCopyWith<$Res>? get city;
  $CityCopyWith<$Res>? get country;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? gps = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as LocationDescriptor?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as City?,
      gps: freezed == gps
          ? _value.gps
          : gps // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDescriptorCopyWith<$Res>? get descriptor {
    if (_value.descriptor == null) {
      return null;
    }

    return $LocationDescriptorCopyWith<$Res>(_value.descriptor!, (value) {
      return _then(_value.copyWith(descriptor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      LocationDescriptor? descriptor,
      City? city,
      City? country,
      String? gps,
      String? address});

  @override
  $LocationDescriptorCopyWith<$Res>? get descriptor;
  @override
  $CityCopyWith<$Res>? get city;
  @override
  $CityCopyWith<$Res>? get country;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? descriptor = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? gps = freezed,
    Object? address = freezed,
  }) {
    return _then(_$LocationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as LocationDescriptor?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as City?,
      gps: freezed == gps
          ? _value.gps
          : gps // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.id,
      this.descriptor,
      this.city,
      this.country,
      this.gps,
      this.address});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? id;
  @override
  final LocationDescriptor? descriptor;
  @override
  final City? city;
  @override
  final City? country;
  @override
  final String? gps;
  @override
  final String? address;

  @override
  String toString() {
    return 'Location(id: $id, descriptor: $descriptor, city: $city, country: $country, gps: $gps, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.gps, gps) || other.gps == gps) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, descriptor, city, country, gps, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? id,
      final LocationDescriptor? descriptor,
      final City? city,
      final City? country,
      final String? gps,
      final String? address}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get id;
  @override
  LocationDescriptor? get descriptor;
  @override
  City? get city;
  @override
  City? get country;
  @override
  String? get gps;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$CityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl({this.name, this.code});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'City(name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City({final String? name, final String? code}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDescriptor _$LocationDescriptorFromJson(Map<String, dynamic> json) {
  return _LocationDescriptor.fromJson(json);
}

/// @nodoc
mixin _$LocationDescriptor {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDescriptorCopyWith<LocationDescriptor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDescriptorCopyWith<$Res> {
  factory $LocationDescriptorCopyWith(
          LocationDescriptor value, $Res Function(LocationDescriptor) then) =
      _$LocationDescriptorCopyWithImpl<$Res, LocationDescriptor>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$LocationDescriptorCopyWithImpl<$Res, $Val extends LocationDescriptor>
    implements $LocationDescriptorCopyWith<$Res> {
  _$LocationDescriptorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDescriptorImplCopyWith<$Res>
    implements $LocationDescriptorCopyWith<$Res> {
  factory _$$LocationDescriptorImplCopyWith(_$LocationDescriptorImpl value,
          $Res Function(_$LocationDescriptorImpl) then) =
      __$$LocationDescriptorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$LocationDescriptorImplCopyWithImpl<$Res>
    extends _$LocationDescriptorCopyWithImpl<$Res, _$LocationDescriptorImpl>
    implements _$$LocationDescriptorImplCopyWith<$Res> {
  __$$LocationDescriptorImplCopyWithImpl(_$LocationDescriptorImpl _value,
      $Res Function(_$LocationDescriptorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$LocationDescriptorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDescriptorImpl implements _LocationDescriptor {
  const _$LocationDescriptorImpl({this.name});

  factory _$LocationDescriptorImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDescriptorImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'LocationDescriptor(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDescriptorImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDescriptorImplCopyWith<_$LocationDescriptorImpl> get copyWith =>
      __$$LocationDescriptorImplCopyWithImpl<_$LocationDescriptorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDescriptorImplToJson(
      this,
    );
  }
}

abstract class _LocationDescriptor implements LocationDescriptor {
  const factory _LocationDescriptor({final String? name}) =
      _$LocationDescriptorImpl;

  factory _LocationDescriptor.fromJson(Map<String, dynamic> json) =
      _$LocationDescriptorImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$LocationDescriptorImplCopyWith<_$LocationDescriptorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
