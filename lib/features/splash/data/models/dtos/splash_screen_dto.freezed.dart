// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashScreenDto {

 String get app; String get appName; AppVersionDto get version; BusinessSettingsDto get businessSettings;
/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenDtoCopyWith<SplashScreenDto> get copyWith => _$SplashScreenDtoCopyWithImpl<SplashScreenDto>(this as SplashScreenDto, _$identity);

  /// Serializes this SplashScreenDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenDto&&(identical(other.app, app) || other.app == app)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.businessSettings, businessSettings) || other.businessSettings == businessSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,app,appName,version,businessSettings);

@override
String toString() {
  return 'SplashScreenDto(app: $app, appName: $appName, version: $version, businessSettings: $businessSettings)';
}


}

/// @nodoc
abstract mixin class $SplashScreenDtoCopyWith<$Res>  {
  factory $SplashScreenDtoCopyWith(SplashScreenDto value, $Res Function(SplashScreenDto) _then) = _$SplashScreenDtoCopyWithImpl;
@useResult
$Res call({
 String app, String appName, AppVersionDto version, BusinessSettingsDto businessSettings
});


$AppVersionDtoCopyWith<$Res> get version;$BusinessSettingsDtoCopyWith<$Res> get businessSettings;

}
/// @nodoc
class _$SplashScreenDtoCopyWithImpl<$Res>
    implements $SplashScreenDtoCopyWith<$Res> {
  _$SplashScreenDtoCopyWithImpl(this._self, this._then);

  final SplashScreenDto _self;
  final $Res Function(SplashScreenDto) _then;

/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? app = null,Object? appName = null,Object? version = null,Object? businessSettings = null,}) {
  return _then(_self.copyWith(
app: null == app ? _self.app : app // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as AppVersionDto,businessSettings: null == businessSettings ? _self.businessSettings : businessSettings // ignore: cast_nullable_to_non_nullable
as BusinessSettingsDto,
  ));
}
/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<$Res> get version {
  
  return $AppVersionDtoCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessSettingsDtoCopyWith<$Res> get businessSettings {
  
  return $BusinessSettingsDtoCopyWith<$Res>(_self.businessSettings, (value) {
    return _then(_self.copyWith(businessSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [SplashScreenDto].
extension SplashScreenDtoPatterns on SplashScreenDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashScreenDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashScreenDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashScreenDto value)  $default,){
final _that = this;
switch (_that) {
case _SplashScreenDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashScreenDto value)?  $default,){
final _that = this;
switch (_that) {
case _SplashScreenDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String app,  String appName,  AppVersionDto version,  BusinessSettingsDto businessSettings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashScreenDto() when $default != null:
return $default(_that.app,_that.appName,_that.version,_that.businessSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String app,  String appName,  AppVersionDto version,  BusinessSettingsDto businessSettings)  $default,) {final _that = this;
switch (_that) {
case _SplashScreenDto():
return $default(_that.app,_that.appName,_that.version,_that.businessSettings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String app,  String appName,  AppVersionDto version,  BusinessSettingsDto businessSettings)?  $default,) {final _that = this;
switch (_that) {
case _SplashScreenDto() when $default != null:
return $default(_that.app,_that.appName,_that.version,_that.businessSettings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SplashScreenDto implements SplashScreenDto {
  const _SplashScreenDto({this.app = '', this.appName = '', required this.version, required this.businessSettings});
  factory _SplashScreenDto.fromJson(Map<String, dynamic> json) => _$SplashScreenDtoFromJson(json);

@override@JsonKey() final  String app;
@override@JsonKey() final  String appName;
@override final  AppVersionDto version;
@override final  BusinessSettingsDto businessSettings;

/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashScreenDtoCopyWith<_SplashScreenDto> get copyWith => __$SplashScreenDtoCopyWithImpl<_SplashScreenDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SplashScreenDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashScreenDto&&(identical(other.app, app) || other.app == app)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.businessSettings, businessSettings) || other.businessSettings == businessSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,app,appName,version,businessSettings);

@override
String toString() {
  return 'SplashScreenDto(app: $app, appName: $appName, version: $version, businessSettings: $businessSettings)';
}


}

/// @nodoc
abstract mixin class _$SplashScreenDtoCopyWith<$Res> implements $SplashScreenDtoCopyWith<$Res> {
  factory _$SplashScreenDtoCopyWith(_SplashScreenDto value, $Res Function(_SplashScreenDto) _then) = __$SplashScreenDtoCopyWithImpl;
@override @useResult
$Res call({
 String app, String appName, AppVersionDto version, BusinessSettingsDto businessSettings
});


@override $AppVersionDtoCopyWith<$Res> get version;@override $BusinessSettingsDtoCopyWith<$Res> get businessSettings;

}
/// @nodoc
class __$SplashScreenDtoCopyWithImpl<$Res>
    implements _$SplashScreenDtoCopyWith<$Res> {
  __$SplashScreenDtoCopyWithImpl(this._self, this._then);

  final _SplashScreenDto _self;
  final $Res Function(_SplashScreenDto) _then;

/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? app = null,Object? appName = null,Object? version = null,Object? businessSettings = null,}) {
  return _then(_SplashScreenDto(
app: null == app ? _self.app : app // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as AppVersionDto,businessSettings: null == businessSettings ? _self.businessSettings : businessSettings // ignore: cast_nullable_to_non_nullable
as BusinessSettingsDto,
  ));
}

/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<$Res> get version {
  
  return $AppVersionDtoCopyWith<$Res>(_self.version, (value) {
    return _then(_self.copyWith(version: value));
  });
}/// Create a copy of SplashScreenDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessSettingsDtoCopyWith<$Res> get businessSettings {
  
  return $BusinessSettingsDtoCopyWith<$Res>(_self.businessSettings, (value) {
    return _then(_self.copyWith(businessSettings: value));
  });
}
}


/// @nodoc
mixin _$AppVersionDto {

 String get platform; String get currentVersion; String get latestVersion; bool get isUpdateAvailable; bool get isForceUpdate; String? get whatsNewMessage; String? get storeUrl;
/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<AppVersionDto> get copyWith => _$AppVersionDtoCopyWithImpl<AppVersionDto>(this as AppVersionDto, _$identity);

  /// Serializes this AppVersionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionDto&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.isUpdateAvailable, isUpdateAvailable) || other.isUpdateAvailable == isUpdateAvailable)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate)&&(identical(other.whatsNewMessage, whatsNewMessage) || other.whatsNewMessage == whatsNewMessage)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,currentVersion,latestVersion,isUpdateAvailable,isForceUpdate,whatsNewMessage,storeUrl);

@override
String toString() {
  return 'AppVersionDto(platform: $platform, currentVersion: $currentVersion, latestVersion: $latestVersion, isUpdateAvailable: $isUpdateAvailable, isForceUpdate: $isForceUpdate, whatsNewMessage: $whatsNewMessage, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class $AppVersionDtoCopyWith<$Res>  {
  factory $AppVersionDtoCopyWith(AppVersionDto value, $Res Function(AppVersionDto) _then) = _$AppVersionDtoCopyWithImpl;
@useResult
$Res call({
 String platform, String currentVersion, String latestVersion, bool isUpdateAvailable, bool isForceUpdate, String? whatsNewMessage, String? storeUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? platform = null,Object? currentVersion = null,Object? latestVersion = null,Object? isUpdateAvailable = null,Object? isForceUpdate = null,Object? whatsNewMessage = freezed,Object? storeUrl = freezed,}) {
  return _then(_self.copyWith(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,isUpdateAvailable: null == isUpdateAvailable ? _self.isUpdateAvailable : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
as bool,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,whatsNewMessage: freezed == whatsNewMessage ? _self.whatsNewMessage : whatsNewMessage // ignore: cast_nullable_to_non_nullable
as String?,storeUrl: freezed == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate,  String? whatsNewMessage,  String? storeUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate,_that.whatsNewMessage,_that.storeUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate,  String? whatsNewMessage,  String? storeUrl)  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto():
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate,_that.whatsNewMessage,_that.storeUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String platform,  String currentVersion,  String latestVersion,  bool isUpdateAvailable,  bool isForceUpdate,  String? whatsNewMessage,  String? storeUrl)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.platform,_that.currentVersion,_that.latestVersion,_that.isUpdateAvailable,_that.isForceUpdate,_that.whatsNewMessage,_that.storeUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionDto implements AppVersionDto {
  const _AppVersionDto({this.platform = '', this.currentVersion = '', this.latestVersion = '', this.isUpdateAvailable = false, this.isForceUpdate = false, this.whatsNewMessage, this.storeUrl});
  factory _AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);

@override@JsonKey() final  String platform;
@override@JsonKey() final  String currentVersion;
@override@JsonKey() final  String latestVersion;
@override@JsonKey() final  bool isUpdateAvailable;
@override@JsonKey() final  bool isForceUpdate;
@override final  String? whatsNewMessage;
@override final  String? storeUrl;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionDto&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.isUpdateAvailable, isUpdateAvailable) || other.isUpdateAvailable == isUpdateAvailable)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate)&&(identical(other.whatsNewMessage, whatsNewMessage) || other.whatsNewMessage == whatsNewMessage)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platform,currentVersion,latestVersion,isUpdateAvailable,isForceUpdate,whatsNewMessage,storeUrl);

@override
String toString() {
  return 'AppVersionDto(platform: $platform, currentVersion: $currentVersion, latestVersion: $latestVersion, isUpdateAvailable: $isUpdateAvailable, isForceUpdate: $isForceUpdate, whatsNewMessage: $whatsNewMessage, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class _$AppVersionDtoCopyWith<$Res> implements $AppVersionDtoCopyWith<$Res> {
  factory _$AppVersionDtoCopyWith(_AppVersionDto value, $Res Function(_AppVersionDto) _then) = __$AppVersionDtoCopyWithImpl;
@override @useResult
$Res call({
 String platform, String currentVersion, String latestVersion, bool isUpdateAvailable, bool isForceUpdate, String? whatsNewMessage, String? storeUrl
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
@override @pragma('vm:prefer-inline') $Res call({Object? platform = null,Object? currentVersion = null,Object? latestVersion = null,Object? isUpdateAvailable = null,Object? isForceUpdate = null,Object? whatsNewMessage = freezed,Object? storeUrl = freezed,}) {
  return _then(_AppVersionDto(
platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,isUpdateAvailable: null == isUpdateAvailable ? _self.isUpdateAvailable : isUpdateAvailable // ignore: cast_nullable_to_non_nullable
as bool,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,whatsNewMessage: freezed == whatsNewMessage ? _self.whatsNewMessage : whatsNewMessage // ignore: cast_nullable_to_non_nullable
as String?,storeUrl: freezed == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BusinessSettingsDto {

 String get appEmail; String get appPhone; String get currencySymbol; String get privacyPolicy; String get termsAndConditions; String get aboutUs;
/// Create a copy of BusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessSettingsDtoCopyWith<BusinessSettingsDto> get copyWith => _$BusinessSettingsDtoCopyWithImpl<BusinessSettingsDto>(this as BusinessSettingsDto, _$identity);

  /// Serializes this BusinessSettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessSettingsDto&&(identical(other.appEmail, appEmail) || other.appEmail == appEmail)&&(identical(other.appPhone, appPhone) || other.appPhone == appPhone)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.privacyPolicy, privacyPolicy) || other.privacyPolicy == privacyPolicy)&&(identical(other.termsAndConditions, termsAndConditions) || other.termsAndConditions == termsAndConditions)&&(identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appEmail,appPhone,currencySymbol,privacyPolicy,termsAndConditions,aboutUs);

@override
String toString() {
  return 'BusinessSettingsDto(appEmail: $appEmail, appPhone: $appPhone, currencySymbol: $currencySymbol, privacyPolicy: $privacyPolicy, termsAndConditions: $termsAndConditions, aboutUs: $aboutUs)';
}


}

/// @nodoc
abstract mixin class $BusinessSettingsDtoCopyWith<$Res>  {
  factory $BusinessSettingsDtoCopyWith(BusinessSettingsDto value, $Res Function(BusinessSettingsDto) _then) = _$BusinessSettingsDtoCopyWithImpl;
@useResult
$Res call({
 String appEmail, String appPhone, String currencySymbol, String privacyPolicy, String termsAndConditions, String aboutUs
});




}
/// @nodoc
class _$BusinessSettingsDtoCopyWithImpl<$Res>
    implements $BusinessSettingsDtoCopyWith<$Res> {
  _$BusinessSettingsDtoCopyWithImpl(this._self, this._then);

  final BusinessSettingsDto _self;
  final $Res Function(BusinessSettingsDto) _then;

/// Create a copy of BusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appEmail = null,Object? appPhone = null,Object? currencySymbol = null,Object? privacyPolicy = null,Object? termsAndConditions = null,Object? aboutUs = null,}) {
  return _then(_self.copyWith(
appEmail: null == appEmail ? _self.appEmail : appEmail // ignore: cast_nullable_to_non_nullable
as String,appPhone: null == appPhone ? _self.appPhone : appPhone // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,privacyPolicy: null == privacyPolicy ? _self.privacyPolicy : privacyPolicy // ignore: cast_nullable_to_non_nullable
as String,termsAndConditions: null == termsAndConditions ? _self.termsAndConditions : termsAndConditions // ignore: cast_nullable_to_non_nullable
as String,aboutUs: null == aboutUs ? _self.aboutUs : aboutUs // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessSettingsDto].
extension BusinessSettingsDtoPatterns on BusinessSettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessSettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessSettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessSettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _BusinessSettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessSettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessSettingsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appEmail,  String appPhone,  String currencySymbol,  String privacyPolicy,  String termsAndConditions,  String aboutUs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessSettingsDto() when $default != null:
return $default(_that.appEmail,_that.appPhone,_that.currencySymbol,_that.privacyPolicy,_that.termsAndConditions,_that.aboutUs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appEmail,  String appPhone,  String currencySymbol,  String privacyPolicy,  String termsAndConditions,  String aboutUs)  $default,) {final _that = this;
switch (_that) {
case _BusinessSettingsDto():
return $default(_that.appEmail,_that.appPhone,_that.currencySymbol,_that.privacyPolicy,_that.termsAndConditions,_that.aboutUs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appEmail,  String appPhone,  String currencySymbol,  String privacyPolicy,  String termsAndConditions,  String aboutUs)?  $default,) {final _that = this;
switch (_that) {
case _BusinessSettingsDto() when $default != null:
return $default(_that.appEmail,_that.appPhone,_that.currencySymbol,_that.privacyPolicy,_that.termsAndConditions,_that.aboutUs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessSettingsDto implements BusinessSettingsDto {
  const _BusinessSettingsDto({this.appEmail = '', this.appPhone = '', this.currencySymbol = '', this.privacyPolicy = '', this.termsAndConditions = '', this.aboutUs = ''});
  factory _BusinessSettingsDto.fromJson(Map<String, dynamic> json) => _$BusinessSettingsDtoFromJson(json);

@override@JsonKey() final  String appEmail;
@override@JsonKey() final  String appPhone;
@override@JsonKey() final  String currencySymbol;
@override@JsonKey() final  String privacyPolicy;
@override@JsonKey() final  String termsAndConditions;
@override@JsonKey() final  String aboutUs;

/// Create a copy of BusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessSettingsDtoCopyWith<_BusinessSettingsDto> get copyWith => __$BusinessSettingsDtoCopyWithImpl<_BusinessSettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessSettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessSettingsDto&&(identical(other.appEmail, appEmail) || other.appEmail == appEmail)&&(identical(other.appPhone, appPhone) || other.appPhone == appPhone)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.privacyPolicy, privacyPolicy) || other.privacyPolicy == privacyPolicy)&&(identical(other.termsAndConditions, termsAndConditions) || other.termsAndConditions == termsAndConditions)&&(identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appEmail,appPhone,currencySymbol,privacyPolicy,termsAndConditions,aboutUs);

@override
String toString() {
  return 'BusinessSettingsDto(appEmail: $appEmail, appPhone: $appPhone, currencySymbol: $currencySymbol, privacyPolicy: $privacyPolicy, termsAndConditions: $termsAndConditions, aboutUs: $aboutUs)';
}


}

/// @nodoc
abstract mixin class _$BusinessSettingsDtoCopyWith<$Res> implements $BusinessSettingsDtoCopyWith<$Res> {
  factory _$BusinessSettingsDtoCopyWith(_BusinessSettingsDto value, $Res Function(_BusinessSettingsDto) _then) = __$BusinessSettingsDtoCopyWithImpl;
@override @useResult
$Res call({
 String appEmail, String appPhone, String currencySymbol, String privacyPolicy, String termsAndConditions, String aboutUs
});




}
/// @nodoc
class __$BusinessSettingsDtoCopyWithImpl<$Res>
    implements _$BusinessSettingsDtoCopyWith<$Res> {
  __$BusinessSettingsDtoCopyWithImpl(this._self, this._then);

  final _BusinessSettingsDto _self;
  final $Res Function(_BusinessSettingsDto) _then;

/// Create a copy of BusinessSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appEmail = null,Object? appPhone = null,Object? currencySymbol = null,Object? privacyPolicy = null,Object? termsAndConditions = null,Object? aboutUs = null,}) {
  return _then(_BusinessSettingsDto(
appEmail: null == appEmail ? _self.appEmail : appEmail // ignore: cast_nullable_to_non_nullable
as String,appPhone: null == appPhone ? _self.appPhone : appPhone // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,privacyPolicy: null == privacyPolicy ? _self.privacyPolicy : privacyPolicy // ignore: cast_nullable_to_non_nullable
as String,termsAndConditions: null == termsAndConditions ? _self.termsAndConditions : termsAndConditions // ignore: cast_nullable_to_non_nullable
as String,aboutUs: null == aboutUs ? _self.aboutUs : aboutUs // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
