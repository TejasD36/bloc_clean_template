// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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
