// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendOtpRequestDto {

@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(includeIfNull: false) String? get name;
/// Create a copy of SendOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpRequestDtoCopyWith<SendOtpRequestDto> get copyWith => _$SendOtpRequestDtoCopyWithImpl<SendOtpRequestDto>(this as SendOtpRequestDto, _$identity);

  /// Serializes this SendOtpRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpRequestDto&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,name);

@override
String toString() {
  return 'SendOtpRequestDto(phoneNumber: $phoneNumber, name: $name)';
}


}

/// @nodoc
abstract mixin class $SendOtpRequestDtoCopyWith<$Res>  {
  factory $SendOtpRequestDtoCopyWith(SendOtpRequestDto value, $Res Function(SendOtpRequestDto) _then) = _$SendOtpRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(includeIfNull: false) String? name
});




}
/// @nodoc
class _$SendOtpRequestDtoCopyWithImpl<$Res>
    implements $SendOtpRequestDtoCopyWith<$Res> {
  _$SendOtpRequestDtoCopyWithImpl(this._self, this._then);

  final SendOtpRequestDto _self;
  final $Res Function(SendOtpRequestDto) _then;

/// Create a copy of SendOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendOtpRequestDto].
extension SendOtpRequestDtoPatterns on SendOtpRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendOtpRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendOtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendOtpRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SendOtpRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendOtpRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SendOtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(includeIfNull: false)  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendOtpRequestDto() when $default != null:
return $default(_that.phoneNumber,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(includeIfNull: false)  String? name)  $default,) {final _that = this;
switch (_that) {
case _SendOtpRequestDto():
return $default(_that.phoneNumber,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(includeIfNull: false)  String? name)?  $default,) {final _that = this;
switch (_that) {
case _SendOtpRequestDto() when $default != null:
return $default(_that.phoneNumber,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendOtpRequestDto implements SendOtpRequestDto {
  const _SendOtpRequestDto({@JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(includeIfNull: false) this.name});
  factory _SendOtpRequestDto.fromJson(Map<String, dynamic> json) => _$SendOtpRequestDtoFromJson(json);

@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(includeIfNull: false) final  String? name;

/// Create a copy of SendOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendOtpRequestDtoCopyWith<_SendOtpRequestDto> get copyWith => __$SendOtpRequestDtoCopyWithImpl<_SendOtpRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendOtpRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpRequestDto&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,name);

@override
String toString() {
  return 'SendOtpRequestDto(phoneNumber: $phoneNumber, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SendOtpRequestDtoCopyWith<$Res> implements $SendOtpRequestDtoCopyWith<$Res> {
  factory _$SendOtpRequestDtoCopyWith(_SendOtpRequestDto value, $Res Function(_SendOtpRequestDto) _then) = __$SendOtpRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(includeIfNull: false) String? name
});




}
/// @nodoc
class __$SendOtpRequestDtoCopyWithImpl<$Res>
    implements _$SendOtpRequestDtoCopyWith<$Res> {
  __$SendOtpRequestDtoCopyWithImpl(this._self, this._then);

  final _SendOtpRequestDto _self;
  final $Res Function(_SendOtpRequestDto) _then;

/// Create a copy of SendOtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? name = freezed,}) {
  return _then(_SendOtpRequestDto(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
