// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendOtpResponseDto {

 bool get isRegistered; bool get isNameRequired;
/// Create a copy of SendOtpResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpResponseDtoCopyWith<SendOtpResponseDto> get copyWith => _$SendOtpResponseDtoCopyWithImpl<SendOtpResponseDto>(this as SendOtpResponseDto, _$identity);

  /// Serializes this SendOtpResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpResponseDto&&(identical(other.isRegistered, isRegistered) || other.isRegistered == isRegistered)&&(identical(other.isNameRequired, isNameRequired) || other.isNameRequired == isNameRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isRegistered,isNameRequired);

@override
String toString() {
  return 'SendOtpResponseDto(isRegistered: $isRegistered, isNameRequired: $isNameRequired)';
}


}

/// @nodoc
abstract mixin class $SendOtpResponseDtoCopyWith<$Res>  {
  factory $SendOtpResponseDtoCopyWith(SendOtpResponseDto value, $Res Function(SendOtpResponseDto) _then) = _$SendOtpResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool isRegistered, bool isNameRequired
});




}
/// @nodoc
class _$SendOtpResponseDtoCopyWithImpl<$Res>
    implements $SendOtpResponseDtoCopyWith<$Res> {
  _$SendOtpResponseDtoCopyWithImpl(this._self, this._then);

  final SendOtpResponseDto _self;
  final $Res Function(SendOtpResponseDto) _then;

/// Create a copy of SendOtpResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isRegistered = null,Object? isNameRequired = null,}) {
  return _then(_self.copyWith(
isRegistered: null == isRegistered ? _self.isRegistered : isRegistered // ignore: cast_nullable_to_non_nullable
as bool,isNameRequired: null == isNameRequired ? _self.isNameRequired : isNameRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SendOtpResponseDto].
extension SendOtpResponseDtoPatterns on SendOtpResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendOtpResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendOtpResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendOtpResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SendOtpResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendOtpResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SendOtpResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isRegistered,  bool isNameRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendOtpResponseDto() when $default != null:
return $default(_that.isRegistered,_that.isNameRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isRegistered,  bool isNameRequired)  $default,) {final _that = this;
switch (_that) {
case _SendOtpResponseDto():
return $default(_that.isRegistered,_that.isNameRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isRegistered,  bool isNameRequired)?  $default,) {final _that = this;
switch (_that) {
case _SendOtpResponseDto() when $default != null:
return $default(_that.isRegistered,_that.isNameRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendOtpResponseDto implements SendOtpResponseDto {
  const _SendOtpResponseDto({this.isRegistered = false, this.isNameRequired = false});
  factory _SendOtpResponseDto.fromJson(Map<String, dynamic> json) => _$SendOtpResponseDtoFromJson(json);

@override@JsonKey() final  bool isRegistered;
@override@JsonKey() final  bool isNameRequired;

/// Create a copy of SendOtpResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendOtpResponseDtoCopyWith<_SendOtpResponseDto> get copyWith => __$SendOtpResponseDtoCopyWithImpl<_SendOtpResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendOtpResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpResponseDto&&(identical(other.isRegistered, isRegistered) || other.isRegistered == isRegistered)&&(identical(other.isNameRequired, isNameRequired) || other.isNameRequired == isNameRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isRegistered,isNameRequired);

@override
String toString() {
  return 'SendOtpResponseDto(isRegistered: $isRegistered, isNameRequired: $isNameRequired)';
}


}

/// @nodoc
abstract mixin class _$SendOtpResponseDtoCopyWith<$Res> implements $SendOtpResponseDtoCopyWith<$Res> {
  factory _$SendOtpResponseDtoCopyWith(_SendOtpResponseDto value, $Res Function(_SendOtpResponseDto) _then) = __$SendOtpResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool isRegistered, bool isNameRequired
});




}
/// @nodoc
class __$SendOtpResponseDtoCopyWithImpl<$Res>
    implements _$SendOtpResponseDtoCopyWith<$Res> {
  __$SendOtpResponseDtoCopyWithImpl(this._self, this._then);

  final _SendOtpResponseDto _self;
  final $Res Function(_SendOtpResponseDto) _then;

/// Create a copy of SendOtpResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isRegistered = null,Object? isNameRequired = null,}) {
  return _then(_SendOtpResponseDto(
isRegistered: null == isRegistered ? _self.isRegistered : isRegistered // ignore: cast_nullable_to_non_nullable
as bool,isNameRequired: null == isNameRequired ? _self.isNameRequired : isNameRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
