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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_EuaOnSearchModelCopyWith<$Res>
    implements $EuaOnSearchModelCopyWith<$Res> {
  factory _$$_EuaOnSearchModelCopyWith(
          _$_EuaOnSearchModel value, $Res Function(_$_EuaOnSearchModel) then) =
      __$$_EuaOnSearchModelCopyWithImpl<$Res>;
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
class __$$_EuaOnSearchModelCopyWithImpl<$Res>
    extends _$EuaOnSearchModelCopyWithImpl<$Res, _$_EuaOnSearchModel>
    implements _$$_EuaOnSearchModelCopyWith<$Res> {
  __$$_EuaOnSearchModelCopyWithImpl(
      _$_EuaOnSearchModel _value, $Res Function(_$_EuaOnSearchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_EuaOnSearchModel(
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
class _$_EuaOnSearchModel implements _EuaOnSearchModel {
  const _$_EuaOnSearchModel({this.context, this.message, this.error});

  factory _$_EuaOnSearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_EuaOnSearchModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EuaOnSearchModel &&
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
  _$$_EuaOnSearchModelCopyWith<_$_EuaOnSearchModel> get copyWith =>
      __$$_EuaOnSearchModelCopyWithImpl<_$_EuaOnSearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EuaOnSearchModelToJson(
      this,
    );
  }
}

abstract class _EuaOnSearchModel implements EuaOnSearchModel {
  const factory _EuaOnSearchModel(
      {final Context? context,
      final Message? message,
      final Error? error}) = _$_EuaOnSearchModel;

  factory _EuaOnSearchModel.fromJson(Map<String, dynamic> json) =
      _$_EuaOnSearchModel.fromJson;

  @override
  Context? get context;
  @override
  Message? get message;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_EuaOnSearchModelCopyWith<_$_EuaOnSearchModel> get copyWith =>
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
abstract class _$$_ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$_ContextCopyWith(
          _$_Context value, $Res Function(_$_Context) then) =
      __$$_ContextCopyWithImpl<$Res>;
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
class __$$_ContextCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$_Context>
    implements _$$_ContextCopyWith<$Res> {
  __$$_ContextCopyWithImpl(_$_Context _value, $Res Function(_$_Context) _then)
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
    return _then(_$_Context(
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
class _$_Context implements _Context {
  const _$_Context(
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

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Context &&
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
  _$$_ContextCopyWith<_$_Context> get copyWith =>
      __$$_ContextCopyWithImpl<_$_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(
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
      final String? ttl}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

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
  _$$_ContextCopyWith<_$_Context> get copyWith =>
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
abstract class _$$_ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? code, String? path, String? message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? code = freezed,
    Object? path = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Error(
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
class _$_Error implements _Error {
  const _$_Error({this.type, this.code, this.path, this.message});

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
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
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(
      this,
    );
  }
}

abstract class _Error implements Error {
  const factory _Error(
      {final String? type,
      final String? code,
      final String? path,
      final String? message}) = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

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
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
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
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Catalog? catalog});

  @override
  $CatalogCopyWith<$Res>? get catalog;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalog = freezed,
  }) {
    return _then(_$_Message(
      catalog: freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message({this.catalog});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final Catalog? catalog;

  @override
  String toString() {
    return 'Message(catalog: $catalog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.catalog, catalog) || other.catalog == catalog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catalog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message({final Catalog? catalog}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  Catalog? get catalog;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
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
abstract class _$$_CatalogCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$_CatalogCopyWith(
          _$_Catalog value, $Res Function(_$_Catalog) then) =
      __$$_CatalogCopyWithImpl<$Res>;
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
class __$$_CatalogCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$_Catalog>
    implements _$$_CatalogCopyWith<$Res> {
  __$$_CatalogCopyWithImpl(_$_Catalog _value, $Res Function(_$_Catalog) _then)
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
    return _then(_$_Catalog(
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
class _$_Catalog implements _Catalog {
  const _$_Catalog(
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

  factory _$_Catalog.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Catalog &&
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
  _$$_CatalogCopyWith<_$_Catalog> get copyWith =>
      __$$_CatalogCopyWithImpl<_$_Catalog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogToJson(
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
      final DateTime? exp}) = _$_Catalog;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$_Catalog.fromJson;

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
  _$$_CatalogCopyWith<_$_Catalog> get copyWith =>
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
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
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
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentCategoryId = freezed,
    Object? descriptor = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_Category(
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
class _$_Category implements _Category {
  const _$_Category(
      {this.id, this.parentCategoryId, this.descriptor, this.time});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
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
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {final String? id,
      final ParentCategoryId? parentCategoryId,
      final InstructionsClass? descriptor,
      final Time? time}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

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
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
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
abstract class _$$_InstructionsClassCopyWith<$Res>
    implements $InstructionsClassCopyWith<$Res> {
  factory _$$_InstructionsClassCopyWith(_$_InstructionsClass value,
          $Res Function(_$_InstructionsClass) then) =
      __$$_InstructionsClassCopyWithImpl<$Res>;
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
class __$$_InstructionsClassCopyWithImpl<$Res>
    extends _$InstructionsClassCopyWithImpl<$Res, _$_InstructionsClass>
    implements _$$_InstructionsClassCopyWith<$Res> {
  __$$_InstructionsClassCopyWithImpl(
      _$_InstructionsClass _value, $Res Function(_$_InstructionsClass) _then)
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
    return _then(_$_InstructionsClass(
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
class _$_InstructionsClass implements _InstructionsClass {
  const _$_InstructionsClass(
      {this.name,
      this.code,
      this.symbol,
      this.shortDesc,
      this.longDesc,
      final List<String>? images,
      this.audio,
      this.the3DRender})
      : _images = images;

  factory _$_InstructionsClass.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionsClassFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionsClass &&
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
  _$$_InstructionsClassCopyWith<_$_InstructionsClass> get copyWith =>
      __$$_InstructionsClassCopyWithImpl<_$_InstructionsClass>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionsClassToJson(
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
      final String? the3DRender}) = _$_InstructionsClass;

  factory _InstructionsClass.fromJson(Map<String, dynamic> json) =
      _$_InstructionsClass.fromJson;

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
  _$$_InstructionsClassCopyWith<_$_InstructionsClass> get copyWith =>
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
abstract class _$$_ParentCategoryIdCopyWith<$Res> {
  factory _$$_ParentCategoryIdCopyWith(
          _$_ParentCategoryId value, $Res Function(_$_ParentCategoryId) then) =
      __$$_ParentCategoryIdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ParentCategoryIdCopyWithImpl<$Res>
    extends _$ParentCategoryIdCopyWithImpl<$Res, _$_ParentCategoryId>
    implements _$$_ParentCategoryIdCopyWith<$Res> {
  __$$_ParentCategoryIdCopyWithImpl(
      _$_ParentCategoryId _value, $Res Function(_$_ParentCategoryId) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ParentCategoryId implements _ParentCategoryId {
  const _$_ParentCategoryId();

  factory _$_ParentCategoryId.fromJson(Map<String, dynamic> json) =>
      _$$_ParentCategoryIdFromJson(json);

  @override
  String toString() {
    return 'ParentCategoryId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ParentCategoryId);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParentCategoryIdToJson(
      this,
    );
  }
}

abstract class _ParentCategoryId implements ParentCategoryId {
  const factory _ParentCategoryId() = _$_ParentCategoryId;

  factory _ParentCategoryId.fromJson(Map<String, dynamic> json) =
      _$_ParentCategoryId.fromJson;
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
abstract class _$$_TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$_TimeCopyWith(_$_Time value, $Res Function(_$_Time) then) =
      __$$_TimeCopyWithImpl<$Res>;
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
class __$$_TimeCopyWithImpl<$Res> extends _$TimeCopyWithImpl<$Res, _$_Time>
    implements _$$_TimeCopyWith<$Res> {
  __$$_TimeCopyWithImpl(_$_Time _value, $Res Function(_$_Time) _then)
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
    return _then(_$_Time(
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
class _$_Time implements _Time {
  const _$_Time(
      {this.label,
      this.timestamp,
      this.duration,
      this.range,
      this.days,
      this.schedule});

  factory _$_Time.fromJson(Map<String, dynamic> json) => _$$_TimeFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Time &&
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
  _$$_TimeCopyWith<_$_Time> get copyWith =>
      __$$_TimeCopyWithImpl<_$_Time>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeToJson(
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
      final Schedule? schedule}) = _$_Time;

  factory _Time.fromJson(Map<String, dynamic> json) = _$_Time.fromJson;

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
  _$$_TimeCopyWith<_$_Time> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_RangeCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$$_RangeCopyWith(_$_Range value, $Res Function(_$_Range) then) =
      __$$_RangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? start, String? end});
}

/// @nodoc
class __$$_RangeCopyWithImpl<$Res> extends _$RangeCopyWithImpl<$Res, _$_Range>
    implements _$$_RangeCopyWith<$Res> {
  __$$_RangeCopyWithImpl(_$_Range _value, $Res Function(_$_Range) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Range(
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
class _$_Range implements _Range {
  const _$_Range({this.start, this.end});

  factory _$_Range.fromJson(Map<String, dynamic> json) =>
      _$$_RangeFromJson(json);

  @override
  final String? start;
  @override
  final String? end;

  @override
  String toString() {
    return 'Range(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Range &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RangeCopyWith<_$_Range> get copyWith =>
      __$$_RangeCopyWithImpl<_$_Range>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RangeToJson(
      this,
    );
  }
}

abstract class _Range implements Range {
  const factory _Range({final String? start, final String? end}) = _$_Range;

  factory _Range.fromJson(Map<String, dynamic> json) = _$_Range.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  @JsonKey(ignore: true)
  _$$_RangeCopyWith<_$_Range> get copyWith =>
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
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? frequency, List<String>? holidays, List<String>? times});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$_Schedule>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = freezed,
    Object? holidays = freezed,
    Object? times = freezed,
  }) {
    return _then(_$_Schedule(
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
class _$_Schedule implements _Schedule {
  const _$_Schedule(
      {this.frequency, final List<String>? holidays, final List<String>? times})
      : _holidays = holidays,
        _times = times;

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
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
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {final String? frequency,
      final List<String>? holidays,
      final List<String>? times}) = _$_Schedule;

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  String? get frequency;
  @override
  List<String>? get holidays;
  @override
  List<String>? get times;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
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
abstract class _$$_FulfillmentCopyWith<$Res>
    implements $FulfillmentCopyWith<$Res> {
  factory _$$_FulfillmentCopyWith(
          _$_Fulfillment value, $Res Function(_$_Fulfillment) then) =
      __$$_FulfillmentCopyWithImpl<$Res>;
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
class __$$_FulfillmentCopyWithImpl<$Res>
    extends _$FulfillmentCopyWithImpl<$Res, _$_Fulfillment>
    implements _$$_FulfillmentCopyWith<$Res> {
  __$$_FulfillmentCopyWithImpl(
      _$_Fulfillment _value, $Res Function(_$_Fulfillment) _then)
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
    return _then(_$_Fulfillment(
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
class _$_Fulfillment implements _Fulfillment {
  const _$_Fulfillment(
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

  factory _$_Fulfillment.fromJson(Map<String, dynamic> json) =>
      _$$_FulfillmentFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fulfillment &&
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
  _$$_FulfillmentCopyWith<_$_Fulfillment> get copyWith =>
      __$$_FulfillmentCopyWithImpl<_$_Fulfillment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FulfillmentToJson(
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
      final ParentCategoryId? tags}) = _$_Fulfillment;

  factory _Fulfillment.fromJson(Map<String, dynamic> json) =
      _$_Fulfillment.fromJson;

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
  _$$_FulfillmentCopyWith<_$_Fulfillment> get copyWith =>
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
abstract class _$$_AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$_AgentCopyWith(_$_Agent value, $Res Function(_$_Agent) then) =
      __$$_AgentCopyWithImpl<$Res>;
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
class __$$_AgentCopyWithImpl<$Res> extends _$AgentCopyWithImpl<$Res, _$_Agent>
    implements _$$_AgentCopyWith<$Res> {
  __$$_AgentCopyWithImpl(_$_Agent _value, $Res Function(_$_Agent) _then)
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
    return _then(_$_Agent(
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
class _$_Agent implements _Agent {
  const _$_Agent(
      {this.id,
      this.name,
      this.image,
      this.dob,
      this.gender,
      this.cred,
      this.phone,
      this.email,
      this.tags});

  factory _$_Agent.fromJson(Map<String, dynamic> json) =>
      _$$_AgentFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agent &&
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
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      __$$_AgentCopyWithImpl<_$_Agent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentToJson(
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
      final ParentCategoryId? tags}) = _$_Agent;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$_Agent.fromJson;

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
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
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
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? email, ParentCategoryId? tags});

  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Contact(
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
class _$_Contact implements _Contact {
  const _$_Contact({this.phone, this.email, this.tags});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
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
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {final String? phone,
      final String? email,
      final ParentCategoryId? tags}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
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
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person? person, ParentCategoryId? tags});

  @override
  $PersonCopyWith<$Res>? get person;
  @override
  $ParentCategoryIdCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$_Customer>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Customer(
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
class _$_Customer implements _Customer {
  const _$_Customer({this.person, this.tags});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final Person? person;
  @override
  final ParentCategoryId? tags;

  @override
  String toString() {
    return 'Customer(person: $person, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, person, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final Person? person, final ParentCategoryId? tags}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  Person? get person;
  @override
  ParentCategoryId? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
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
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
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
class __$$_PersonCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$_Person>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
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
    return _then(_$_Person(
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
class _$_Person implements _Person {
  const _$_Person(
      {this.id, this.name, this.image, this.dob, this.gender, this.cred});

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
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
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(
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
      final String? cred}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

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
  _$$_PersonCopyWith<_$_Person> get copyWith =>
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
abstract class _$$_EndCopyWith<$Res> implements $EndCopyWith<$Res> {
  factory _$$_EndCopyWith(_$_End value, $Res Function(_$_End) then) =
      __$$_EndCopyWithImpl<$Res>;
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
class __$$_EndCopyWithImpl<$Res> extends _$EndCopyWithImpl<$Res, _$_End>
    implements _$$_EndCopyWith<$Res> {
  __$$_EndCopyWithImpl(_$_End _value, $Res Function(_$_End) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? instructions = freezed,
    Object? contact = freezed,
    Object? person = freezed,
  }) {
    return _then(_$_End(
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
class _$_End implements _End {
  const _$_End({this.time, this.instructions, this.contact, this.person});

  factory _$_End.fromJson(Map<String, dynamic> json) => _$$_EndFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_End &&
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
  _$$_EndCopyWith<_$_End> get copyWith =>
      __$$_EndCopyWithImpl<_$_End>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndToJson(
      this,
    );
  }
}

abstract class _End implements End {
  const factory _End(
      {final Time? time,
      final InstructionsClass? instructions,
      final Contact? contact,
      final Agent? person}) = _$_End;

  factory _End.fromJson(Map<String, dynamic> json) = _$_End.fromJson;

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
  _$$_EndCopyWith<_$_End> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InstructionsClass? descriptor, String? updatedAt, String? updatedBy});

  @override
  $InstructionsClassCopyWith<$Res>? get descriptor;
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res> extends _$StateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptor = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
  }) {
    return _then(_$_State(
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
class _$_State implements _State {
  const _$_State({this.descriptor, this.updatedAt, this.updatedBy});

  factory _$_State.fromJson(Map<String, dynamic> json) =>
      _$$_StateFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
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
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateToJson(
      this,
    );
  }
}

abstract class _State implements State {
  const factory _State(
      {final InstructionsClass? descriptor,
      final String? updatedAt,
      final String? updatedBy}) = _$_State;

  factory _State.fromJson(Map<String, dynamic> json) = _$_State.fromJson;

  @override
  InstructionsClass? get descriptor;
  @override
  String? get updatedAt;
  @override
  String? get updatedBy;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
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
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? status, Time? time});

  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_Payment(
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
class _$_Payment implements _Payment {
  const _$_Payment({this.type, this.status, this.time});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
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
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {final String? type,
      final String? status,
      final Time? time}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String? get type;
  @override
  String? get status;
  @override
  Time? get time;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
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
abstract class _$$_ProviderCopyWith<$Res> implements $ProviderCopyWith<$Res> {
  factory _$$_ProviderCopyWith(
          _$_Provider value, $Res Function(_$_Provider) then) =
      __$$_ProviderCopyWithImpl<$Res>;
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
class __$$_ProviderCopyWithImpl<$Res>
    extends _$ProviderCopyWithImpl<$Res, _$_Provider>
    implements _$$_ProviderCopyWith<$Res> {
  __$$_ProviderCopyWithImpl(
      _$_Provider _value, $Res Function(_$_Provider) _then)
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
    return _then(_$_Provider(
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
class _$_Provider implements _Provider {
  const _$_Provider(
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

  factory _$_Provider.fromJson(Map<String, dynamic> json) =>
      _$$_ProviderFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Provider &&
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
  _$$_ProviderCopyWith<_$_Provider> get copyWith =>
      __$$_ProviderCopyWithImpl<_$_Provider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProviderToJson(
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
      final Tags? tags}) = _$_Provider;

  factory _Provider.fromJson(Map<String, dynamic> json) = _$_Provider.fromJson;

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
  _$$_ProviderCopyWith<_$_Provider> get copyWith =>
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
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
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
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
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
    return _then(_$_Item(
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
class _$_Item implements _Item {
  const _$_Item(
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

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
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
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
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
      final Tags? tags}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

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
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
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
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
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
    return _then(_$_Price(
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
class _$_Price implements _Price {
  const _$_Price(
      {this.currency,
      this.value,
      this.estimatedValue,
      this.computedValue,
      this.listedValue,
      this.offeredValue,
      this.minimumValue,
      this.maximumValue});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
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
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
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
      final String? maximumValue}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

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
  _$$_PriceCopyWith<_$_Price> get copyWith =>
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
abstract class _$$_TagsCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$$_TagsCopyWith(_$_Tags value, $Res Function(_$_Tags) then) =
      __$$_TagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tag1, String? tag2});
}

/// @nodoc
class __$$_TagsCopyWithImpl<$Res> extends _$TagsCopyWithImpl<$Res, _$_Tags>
    implements _$$_TagsCopyWith<$Res> {
  __$$_TagsCopyWithImpl(_$_Tags _value, $Res Function(_$_Tags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag1 = freezed,
    Object? tag2 = freezed,
  }) {
    return _then(_$_Tags(
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
class _$_Tags implements _Tags {
  const _$_Tags({this.tag1, this.tag2});

  factory _$_Tags.fromJson(Map<String, dynamic> json) => _$$_TagsFromJson(json);

  @override
  final String? tag1;
  @override
  final String? tag2;

  @override
  String toString() {
    return 'Tags(tag1: $tag1, tag2: $tag2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tags &&
            (identical(other.tag1, tag1) || other.tag1 == tag1) &&
            (identical(other.tag2, tag2) || other.tag2 == tag2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag1, tag2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsCopyWith<_$_Tags> get copyWith =>
      __$$_TagsCopyWithImpl<_$_Tags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsToJson(
      this,
    );
  }
}

abstract class _Tags implements Tags {
  const factory _Tags({final String? tag1, final String? tag2}) = _$_Tags;

  factory _Tags.fromJson(Map<String, dynamic> json) = _$_Tags.fromJson;

  @override
  String? get tag1;
  @override
  String? get tag2;
  @override
  @JsonKey(ignore: true)
  _$$_TagsCopyWith<_$_Tags> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
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
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
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
    return _then(_$_Location(
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
class _$_Location implements _Location {
  const _$_Location(
      {this.id,
      this.descriptor,
      this.city,
      this.country,
      this.gps,
      this.address});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
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
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
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
      final String? address}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

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
  _$$_LocationCopyWith<_$_Location> get copyWith =>
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
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res, _$_City>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_City(
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
class _$_City implements _City {
  const _$_City({this.name, this.code});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final String? name;
  @override
  final String? code;

  @override
  String toString() {
    return 'City(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City({final String? name, final String? code}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$_LocationDescriptorCopyWith<$Res>
    implements $LocationDescriptorCopyWith<$Res> {
  factory _$$_LocationDescriptorCopyWith(_$_LocationDescriptor value,
          $Res Function(_$_LocationDescriptor) then) =
      __$$_LocationDescriptorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_LocationDescriptorCopyWithImpl<$Res>
    extends _$LocationDescriptorCopyWithImpl<$Res, _$_LocationDescriptor>
    implements _$$_LocationDescriptorCopyWith<$Res> {
  __$$_LocationDescriptorCopyWithImpl(
      _$_LocationDescriptor _value, $Res Function(_$_LocationDescriptor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_LocationDescriptor(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDescriptor implements _LocationDescriptor {
  const _$_LocationDescriptor({this.name});

  factory _$_LocationDescriptor.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDescriptorFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'LocationDescriptor(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationDescriptor &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationDescriptorCopyWith<_$_LocationDescriptor> get copyWith =>
      __$$_LocationDescriptorCopyWithImpl<_$_LocationDescriptor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDescriptorToJson(
      this,
    );
  }
}

abstract class _LocationDescriptor implements LocationDescriptor {
  const factory _LocationDescriptor({final String? name}) =
      _$_LocationDescriptor;

  factory _LocationDescriptor.fromJson(Map<String, dynamic> json) =
      _$_LocationDescriptor.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_LocationDescriptorCopyWith<_$_LocationDescriptor> get copyWith =>
      throw _privateConstructorUsedError;
}
