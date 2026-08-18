// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpRequestDto {

@JsonKey(name: 'phone_number') String get phoneNumber; String get otp;@JsonKey(name: 'firebase_token', includeIfNull: false) String? get firebaseToken;
/// Create a copy of VerifyOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpRequestDtoCopyWith<VerifyOtpRequestDto> get copyWith => _$VerifyOtpRequestDtoCopyWithImpl<VerifyOtpRequestDto>(this as VerifyOtpRequestDto, _$identity);

  /// Serializes this VerifyOtpRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpRequestDto&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.firebaseToken, firebaseToken) || other.firebaseToken == firebaseToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,otp,firebaseToken);

@override
String toString() {
  return 'VerifyOtpRequestDto(phoneNumber: $phoneNumber, otp: $otp, firebaseToken: $firebaseToken)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpRequestDtoCopyWith<$Res>  {
  factory $VerifyOtpRequestDtoCopyWith(VerifyOtpRequestDto value, $Res Function(VerifyOtpRequestDto) _then) = _$VerifyOtpRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'phone_number') String phoneNumber, String otp,@JsonKey(name: 'firebase_token', includeIfNull: false) String? firebaseToken
});




}
/// @nodoc
class _$VerifyOtpRequestDtoCopyWithImpl<$Res>
    implements $VerifyOtpRequestDtoCopyWith<$Res> {
  _$VerifyOtpRequestDtoCopyWithImpl(this._self, this._then);

  final VerifyOtpRequestDto _self;
  final $Res Function(VerifyOtpRequestDto) _then;

/// Create a copy of VerifyOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? otp = null,Object? firebaseToken = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,firebaseToken: freezed == firebaseToken ? _self.firebaseToken : firebaseToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyOtpRequestDto].
extension VerifyOtpRequestDtoPatterns on VerifyOtpRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber,  String otp, @JsonKey(name: 'firebase_token', includeIfNull: false)  String? firebaseToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpRequestDto() when $default != null:
return $default(_that.phoneNumber,_that.otp,_that.firebaseToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber,  String otp, @JsonKey(name: 'firebase_token', includeIfNull: false)  String? firebaseToken)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpRequestDto():
return $default(_that.phoneNumber,_that.otp,_that.firebaseToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'phone_number')  String phoneNumber,  String otp, @JsonKey(name: 'firebase_token', includeIfNull: false)  String? firebaseToken)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpRequestDto() when $default != null:
return $default(_that.phoneNumber,_that.otp,_that.firebaseToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyOtpRequestDto implements VerifyOtpRequestDto {
  const _VerifyOtpRequestDto({@JsonKey(name: 'phone_number') required this.phoneNumber, required this.otp, @JsonKey(name: 'firebase_token', includeIfNull: false) this.firebaseToken});
  factory _VerifyOtpRequestDto.fromJson(Map<String, dynamic> json) => _$VerifyOtpRequestDtoFromJson(json);

@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override final  String otp;
@override@JsonKey(name: 'firebase_token', includeIfNull: false) final  String? firebaseToken;

/// Create a copy of VerifyOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpRequestDtoCopyWith<_VerifyOtpRequestDto> get copyWith => __$VerifyOtpRequestDtoCopyWithImpl<_VerifyOtpRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpRequestDto&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.firebaseToken, firebaseToken) || other.firebaseToken == firebaseToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,otp,firebaseToken);

@override
String toString() {
  return 'VerifyOtpRequestDto(phoneNumber: $phoneNumber, otp: $otp, firebaseToken: $firebaseToken)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpRequestDtoCopyWith<$Res> implements $VerifyOtpRequestDtoCopyWith<$Res> {
  factory _$VerifyOtpRequestDtoCopyWith(_VerifyOtpRequestDto value, $Res Function(_VerifyOtpRequestDto) _then) = __$VerifyOtpRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'phone_number') String phoneNumber, String otp,@JsonKey(name: 'firebase_token', includeIfNull: false) String? firebaseToken
});




}
/// @nodoc
class __$VerifyOtpRequestDtoCopyWithImpl<$Res>
    implements _$VerifyOtpRequestDtoCopyWith<$Res> {
  __$VerifyOtpRequestDtoCopyWithImpl(this._self, this._then);

  final _VerifyOtpRequestDto _self;
  final $Res Function(_VerifyOtpRequestDto) _then;

/// Create a copy of VerifyOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? otp = null,Object? firebaseToken = freezed,}) {
  return _then(_VerifyOtpRequestDto(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,firebaseToken: freezed == firebaseToken ? _self.firebaseToken : firebaseToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
