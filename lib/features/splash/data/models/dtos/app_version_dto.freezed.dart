// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersionDto {

 String get platform; String get currentVersion; String get latestVersion; bool get isUpdateAvailable; bool get isForceUpdate;
/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<AppVersionDto> get copyWith => _$AppVersionDtoCopyWithImpl<AppVersionDto>(this as AppVersionDto, _$identity);

  /// Serializes this AppVersionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionDto&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.isUpdateAvailable, isUpdateAvailable) || other.isUpdateAvailable == isUpdateAvailable)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,currentVersion,latestVersion,isUpdateAvailable,isForceUpdate);

@override
String toString() {
  return 'AppVersionDto(platform: $platform, currentVersion: $currentVersion, latestVersion: $latestVersion, isUpdateAvailable: $isUpdateAvailable, isForceUpdate: $isForceUpdate)';
}


}

/// @nodoc
abstract mixin class $AppVersionDtoCopyWith<$Res>  {
  factory $AppVersionDtoCopyWith(AppVersionDto value, $Res Function(AppVersionDto) _then) = _$AppVersionDtoCopyWithImpl;
@useResult
$Res call({
 String platform, String currentVersion, String latestVersion, bool isUpdateAvailable, bool isForceUpdate
});




}
/// @nodoc
class _$AppVersionDtoCopyWithImpl<$Res>
    implements $AppVersionDtoCopyWith<$Res> {
  _$AppVersionDtoCopyWithImpl(this._self, this._then);

  final AppVersionDto _self;
  final $Res Function(AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platform = null,Object? currentVersion = null,Object? latestVersion = null,Object? isUpdateAvailable = null,Object? isForceUpdate = null,}) {
  return _then(_self.copyWith(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,isUpdateAvailable: null == isUpdateAvailable ? _self.isUpdateAvailable : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
as bool,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionDto].
extension AppVersionDtoPatterns on AppVersionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionDto value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate)  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto():
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionDto implements AppVersionDto {
  const _AppVersionDto({this.platform = '', this.currentVersion = '', this.latestVersion = '', this.isUpdateAvailable = false, this.isForceUpdate = false});
  factory _AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);

@override@JsonKey() final  String platform;
@override@JsonKey() final  String currentVersion;
@override@JsonKey() final  String latestVersion;
@override@JsonKey() final  bool isUpdateAvailable;
@override@JsonKey() final  bool isForceUpdate;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionDtoCopyWith<_AppVersionDto> get copyWith => __$AppVersionDtoCopyWithImpl<_AppVersionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionDto&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.isUpdateAvailable, isUpdateAvailable) || other.isUpdateAvailable == isUpdateAvailable)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,currentVersion,latestVersion,isUpdateAvailable,isForceUpdate);

@override
String toString() {
  return 'AppVersionDto(platform: $platform, currentVersion: $currentVersion, latestVersion: $latestVersion, isUpdateAvailable: $isUpdateAvailable, isForceUpdate: $isForceUpdate)';
}


}

/// @nodoc
abstract mixin class _$AppVersionDtoCopyWith<$Res> implements $AppVersionDtoCopyWith<$Res> {
  factory _$AppVersionDtoCopyWith(_AppVersionDto value, $Res Function(_AppVersionDto) _then) = __$AppVersionDtoCopyWithImpl;
@override @useResult
$Res call({
 String platform, String currentVersion, String latestVersion, bool isUpdateAvailable, bool isForceUpdate
});




}
/// @nodoc
class __$AppVersionDtoCopyWithImpl<$Res>
    implements _$AppVersionDtoCopyWith<$Res> {
  __$AppVersionDtoCopyWithImpl(this._self, this._then);

  final _AppVersionDto _self;
  final $Res Function(_AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platform = null,Object? currentVersion = null,Object? latestVersion = null,Object? isUpdateAvailable = null,Object? isForceUpdate = null,}) {
  return _then(_AppVersionDto(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,isUpdateAvailable: null == isUpdateAvailable ? _self.isUpdateAvailable : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
as bool,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
