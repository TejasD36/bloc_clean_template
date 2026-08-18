// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckAuthentication value)?  checkAuthentication,TResult Function( SendOtpRequested value)?  sendOtp,TResult Function( ResendOtpRequested value)?  resendOtp,TResult Function( VerifyOtpRequested value)?  verifyOtp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case SendOtpRequested() when sendOtp != null:
return sendOtp(_that);case ResendOtpRequested() when resendOtp != null:
return resendOtp(_that);case VerifyOtpRequested() when verifyOtp != null:
return verifyOtp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckAuthentication value)  checkAuthentication,required TResult Function( SendOtpRequested value)  sendOtp,required TResult Function( ResendOtpRequested value)  resendOtp,required TResult Function( VerifyOtpRequested value)  verifyOtp,}){
final _that = this;
switch (_that) {
case CheckAuthentication():
return checkAuthentication(_that);case SendOtpRequested():
return sendOtp(_that);case ResendOtpRequested():
return resendOtp(_that);case VerifyOtpRequested():
return verifyOtp(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckAuthentication value)?  checkAuthentication,TResult? Function( SendOtpRequested value)?  sendOtp,TResult? Function( ResendOtpRequested value)?  resendOtp,TResult? Function( VerifyOtpRequested value)?  verifyOtp,}){
final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case SendOtpRequested() when sendOtp != null:
return sendOtp(_that);case ResendOtpRequested() when resendOtp != null:
return resendOtp(_that);case VerifyOtpRequested() when verifyOtp != null:
return verifyOtp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkAuthentication,TResult Function( String phoneNumber,  String? name)?  sendOtp,TResult Function( String phoneNumber)?  resendOtp,TResult Function( String phoneNumber,  String otp,  String? firebaseToken)?  verifyOtp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case SendOtpRequested() when sendOtp != null:
return sendOtp(_that.phoneNumber,_that.name);case ResendOtpRequested() when resendOtp != null:
return resendOtp(_that.phoneNumber);case VerifyOtpRequested() when verifyOtp != null:
return verifyOtp(_that.phoneNumber,_that.otp,_that.firebaseToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkAuthentication,required TResult Function( String phoneNumber,  String? name)  sendOtp,required TResult Function( String phoneNumber)  resendOtp,required TResult Function( String phoneNumber,  String otp,  String? firebaseToken)  verifyOtp,}) {final _that = this;
switch (_that) {
case CheckAuthentication():
return checkAuthentication();case SendOtpRequested():
return sendOtp(_that.phoneNumber,_that.name);case ResendOtpRequested():
return resendOtp(_that.phoneNumber);case VerifyOtpRequested():
return verifyOtp(_that.phoneNumber,_that.otp,_that.firebaseToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkAuthentication,TResult? Function( String phoneNumber,  String? name)?  sendOtp,TResult? Function( String phoneNumber)?  resendOtp,TResult? Function( String phoneNumber,  String otp,  String? firebaseToken)?  verifyOtp,}) {final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case SendOtpRequested() when sendOtp != null:
return sendOtp(_that.phoneNumber,_that.name);case ResendOtpRequested() when resendOtp != null:
return resendOtp(_that.phoneNumber);case VerifyOtpRequested() when verifyOtp != null:
return verifyOtp(_that.phoneNumber,_that.otp,_that.firebaseToken);case _:
  return null;

}
}

}

/// @nodoc


class CheckAuthentication implements AuthEvent {
  const CheckAuthentication();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAuthentication);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuthentication()';
}


}




/// @nodoc


class SendOtpRequested implements AuthEvent {
  const SendOtpRequested({required this.phoneNumber, this.name});
  

 final  String phoneNumber;
 final  String? name;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpRequestedCopyWith<SendOtpRequested> get copyWith => _$SendOtpRequestedCopyWithImpl<SendOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpRequested&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,name);

@override
String toString() {
  return 'AuthEvent.sendOtp(phoneNumber: $phoneNumber, name: $name)';
}


}

/// @nodoc
abstract mixin class $SendOtpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SendOtpRequestedCopyWith(SendOtpRequested value, $Res Function(SendOtpRequested) _then) = _$SendOtpRequestedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String? name
});




}
/// @nodoc
class _$SendOtpRequestedCopyWithImpl<$Res>
    implements $SendOtpRequestedCopyWith<$Res> {
  _$SendOtpRequestedCopyWithImpl(this._self, this._then);

  final SendOtpRequested _self;
  final $Res Function(SendOtpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? name = freezed,}) {
  return _then(SendOtpRequested(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ResendOtpRequested implements AuthEvent {
  const ResendOtpRequested({required this.phoneNumber});
  

 final  String phoneNumber;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpRequestedCopyWith<ResendOtpRequested> get copyWith => _$ResendOtpRequestedCopyWithImpl<ResendOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpRequested&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'AuthEvent.resendOtp(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $ResendOtpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResendOtpRequestedCopyWith(ResendOtpRequested value, $Res Function(ResendOtpRequested) _then) = _$ResendOtpRequestedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$ResendOtpRequestedCopyWithImpl<$Res>
    implements $ResendOtpRequestedCopyWith<$Res> {
  _$ResendOtpRequestedCopyWithImpl(this._self, this._then);

  final ResendOtpRequested _self;
  final $Res Function(ResendOtpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(ResendOtpRequested(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerifyOtpRequested implements AuthEvent {
  const VerifyOtpRequested({required this.phoneNumber, required this.otp, this.firebaseToken});
  

 final  String phoneNumber;
 final  String otp;
 final  String? firebaseToken;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpRequestedCopyWith<VerifyOtpRequested> get copyWith => _$VerifyOtpRequestedCopyWithImpl<VerifyOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpRequested&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.firebaseToken, firebaseToken) || other.firebaseToken == firebaseToken));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,otp,firebaseToken);

@override
String toString() {
  return 'AuthEvent.verifyOtp(phoneNumber: $phoneNumber, otp: $otp, firebaseToken: $firebaseToken)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $VerifyOtpRequestedCopyWith(VerifyOtpRequested value, $Res Function(VerifyOtpRequested) _then) = _$VerifyOtpRequestedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String otp, String? firebaseToken
});




}
/// @nodoc
class _$VerifyOtpRequestedCopyWithImpl<$Res>
    implements $VerifyOtpRequestedCopyWith<$Res> {
  _$VerifyOtpRequestedCopyWithImpl(this._self, this._then);

  final VerifyOtpRequested _self;
  final $Res Function(VerifyOtpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? otp = null,Object? firebaseToken = freezed,}) {
  return _then(VerifyOtpRequested(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,firebaseToken: freezed == firebaseToken ? _self.firebaseToken : firebaseToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
