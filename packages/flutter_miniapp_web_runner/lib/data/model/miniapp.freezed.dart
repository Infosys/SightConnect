// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miniapp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiniApps _$MiniAppsFromJson(Map<String, dynamic> json) {
  return _MiniApps.fromJson(json);
}

/// @nodoc
mixin _$MiniApps {
  List<MiniApp> get allMiniApps => throw _privateConstructorUsedError;
  String get miniAppInSessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniAppsCopyWith<MiniApps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniAppsCopyWith<$Res> {
  factory $MiniAppsCopyWith(MiniApps value, $Res Function(MiniApps) then) =
      _$MiniAppsCopyWithImpl<$Res, MiniApps>;
  @useResult
  $Res call({List<MiniApp> allMiniApps, String miniAppInSessionId});
}

/// @nodoc
class _$MiniAppsCopyWithImpl<$Res, $Val extends MiniApps>
    implements $MiniAppsCopyWith<$Res> {
  _$MiniAppsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMiniApps = null,
    Object? miniAppInSessionId = null,
  }) {
    return _then(_value.copyWith(
      allMiniApps: null == allMiniApps
          ? _value.allMiniApps
          : allMiniApps // ignore: cast_nullable_to_non_nullable
              as List<MiniApp>,
      miniAppInSessionId: null == miniAppInSessionId
          ? _value.miniAppInSessionId
          : miniAppInSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiniAppsImplCopyWith<$Res>
    implements $MiniAppsCopyWith<$Res> {
  factory _$$MiniAppsImplCopyWith(
          _$MiniAppsImpl value, $Res Function(_$MiniAppsImpl) then) =
      __$$MiniAppsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MiniApp> allMiniApps, String miniAppInSessionId});
}

/// @nodoc
class __$$MiniAppsImplCopyWithImpl<$Res>
    extends _$MiniAppsCopyWithImpl<$Res, _$MiniAppsImpl>
    implements _$$MiniAppsImplCopyWith<$Res> {
  __$$MiniAppsImplCopyWithImpl(
      _$MiniAppsImpl _value, $Res Function(_$MiniAppsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMiniApps = null,
    Object? miniAppInSessionId = null,
  }) {
    return _then(_$MiniAppsImpl(
      allMiniApps: null == allMiniApps
          ? _value._allMiniApps
          : allMiniApps // ignore: cast_nullable_to_non_nullable
              as List<MiniApp>,
      miniAppInSessionId: null == miniAppInSessionId
          ? _value.miniAppInSessionId
          : miniAppInSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiniAppsImpl implements _MiniApps {
  _$MiniAppsImpl(
      {final List<MiniApp> allMiniApps = const [],
      this.miniAppInSessionId = ""})
      : _allMiniApps = allMiniApps;

  factory _$MiniAppsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiniAppsImplFromJson(json);

  final List<MiniApp> _allMiniApps;
  @override
  @JsonKey()
  List<MiniApp> get allMiniApps {
    if (_allMiniApps is EqualUnmodifiableListView) return _allMiniApps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMiniApps);
  }

  @override
  @JsonKey()
  final String miniAppInSessionId;

  @override
  String toString() {
    return 'MiniApps(allMiniApps: $allMiniApps, miniAppInSessionId: $miniAppInSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiniAppsImpl &&
            const DeepCollectionEquality()
                .equals(other._allMiniApps, _allMiniApps) &&
            (identical(other.miniAppInSessionId, miniAppInSessionId) ||
                other.miniAppInSessionId == miniAppInSessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_allMiniApps), miniAppInSessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiniAppsImplCopyWith<_$MiniAppsImpl> get copyWith =>
      __$$MiniAppsImplCopyWithImpl<_$MiniAppsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiniAppsImplToJson(
      this,
    );
  }
}

abstract class _MiniApps implements MiniApps {
  factory _MiniApps(
      {final List<MiniApp> allMiniApps,
      final String miniAppInSessionId}) = _$MiniAppsImpl;

  factory _MiniApps.fromJson(Map<String, dynamic> json) =
      _$MiniAppsImpl.fromJson;

  @override
  List<MiniApp> get allMiniApps;
  @override
  String get miniAppInSessionId;
  @override
  @JsonKey(ignore: true)
  _$$MiniAppsImplCopyWith<_$MiniAppsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MiniApp _$MiniAppFromJson(Map<String, dynamic> json) {
  return _MiniApp.fromJson(json);
}

/// @nodoc
mixin _$MiniApp {
  dynamic get type => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get version => throw _privateConstructorUsedError;
  dynamic get identifier => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get summary => throw _privateConstructorUsedError;
  dynamic get owner => throw _privateConstructorUsedError;
  dynamic get iconUrl => throw _privateConstructorUsedError;
  dynamic get displayName => throw _privateConstructorUsedError;
  dynamic get redirectPage => throw _privateConstructorUsedError;
  dynamic get tags => throw _privateConstructorUsedError;
  dynamic get sourceurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniAppCopyWith<MiniApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniAppCopyWith<$Res> {
  factory $MiniAppCopyWith(MiniApp value, $Res Function(MiniApp) then) =
      _$MiniAppCopyWithImpl<$Res, MiniApp>;
  @useResult
  $Res call(
      {dynamic type,
      dynamic id,
      dynamic version,
      dynamic identifier,
      dynamic name,
      dynamic summary,
      dynamic owner,
      dynamic iconUrl,
      dynamic displayName,
      dynamic redirectPage,
      dynamic tags,
      dynamic sourceurl});
}

/// @nodoc
class _$MiniAppCopyWithImpl<$Res, $Val extends MiniApp>
    implements $MiniAppCopyWith<$Res> {
  _$MiniAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? version = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? summary = freezed,
    Object? owner = freezed,
    Object? iconUrl = freezed,
    Object? displayName = freezed,
    Object? redirectPage = freezed,
    Object? tags = freezed,
    Object? sourceurl = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectPage: freezed == redirectPage
          ? _value.redirectPage
          : redirectPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sourceurl: freezed == sourceurl
          ? _value.sourceurl
          : sourceurl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiniAppImplCopyWith<$Res> implements $MiniAppCopyWith<$Res> {
  factory _$$MiniAppImplCopyWith(
          _$MiniAppImpl value, $Res Function(_$MiniAppImpl) then) =
      __$$MiniAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic type,
      dynamic id,
      dynamic version,
      dynamic identifier,
      dynamic name,
      dynamic summary,
      dynamic owner,
      dynamic iconUrl,
      dynamic displayName,
      dynamic redirectPage,
      dynamic tags,
      dynamic sourceurl});
}

/// @nodoc
class __$$MiniAppImplCopyWithImpl<$Res>
    extends _$MiniAppCopyWithImpl<$Res, _$MiniAppImpl>
    implements _$$MiniAppImplCopyWith<$Res> {
  __$$MiniAppImplCopyWithImpl(
      _$MiniAppImpl _value, $Res Function(_$MiniAppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? version = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? summary = freezed,
    Object? owner = freezed,
    Object? iconUrl = freezed,
    Object? displayName = freezed,
    Object? redirectPage = freezed,
    Object? tags = freezed,
    Object? sourceurl = freezed,
  }) {
    return _then(_$MiniAppImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectPage: freezed == redirectPage
          ? _value.redirectPage
          : redirectPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sourceurl: freezed == sourceurl
          ? _value.sourceurl
          : sourceurl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiniAppImpl implements _MiniApp {
  _$MiniAppImpl(
      {this.type,
      this.id,
      this.version,
      this.identifier,
      this.name,
      this.summary,
      this.owner,
      this.iconUrl,
      this.displayName,
      this.redirectPage,
      this.tags,
      this.sourceurl});

  factory _$MiniAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiniAppImplFromJson(json);

  @override
  final dynamic type;
  @override
  final dynamic id;
  @override
  final dynamic version;
  @override
  final dynamic identifier;
  @override
  final dynamic name;
  @override
  final dynamic summary;
  @override
  final dynamic owner;
  @override
  final dynamic iconUrl;
  @override
  final dynamic displayName;
  @override
  final dynamic redirectPage;
  @override
  final dynamic tags;
  @override
  final dynamic sourceurl;

  @override
  String toString() {
    return 'MiniApp(type: $type, id: $id, version: $version, identifier: $identifier, name: $name, summary: $summary, owner: $owner, iconUrl: $iconUrl, displayName: $displayName, redirectPage: $redirectPage, tags: $tags, sourceurl: $sourceurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiniAppImpl &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.redirectPage, redirectPage) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.sourceurl, sourceurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(identifier),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(redirectPage),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(sourceurl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiniAppImplCopyWith<_$MiniAppImpl> get copyWith =>
      __$$MiniAppImplCopyWithImpl<_$MiniAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiniAppImplToJson(
      this,
    );
  }
}

abstract class _MiniApp implements MiniApp {
  factory _MiniApp(
      {final dynamic type,
      final dynamic id,
      final dynamic version,
      final dynamic identifier,
      final dynamic name,
      final dynamic summary,
      final dynamic owner,
      final dynamic iconUrl,
      final dynamic displayName,
      final dynamic redirectPage,
      final dynamic tags,
      final dynamic sourceurl}) = _$MiniAppImpl;

  factory _MiniApp.fromJson(Map<String, dynamic> json) = _$MiniAppImpl.fromJson;

  @override
  dynamic get type;
  @override
  dynamic get id;
  @override
  dynamic get version;
  @override
  dynamic get identifier;
  @override
  dynamic get name;
  @override
  dynamic get summary;
  @override
  dynamic get owner;
  @override
  dynamic get iconUrl;
  @override
  dynamic get displayName;
  @override
  dynamic get redirectPage;
  @override
  dynamic get tags;
  @override
  dynamic get sourceurl;
  @override
  @JsonKey(ignore: true)
  _$$MiniAppImplCopyWith<_$MiniAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
