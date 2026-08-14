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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckAuthentication value)?  checkAuthentication,TResult Function( LoginRequested value)?  login,TResult Function( RegisterRequested value)?  register,TResult Function( ForgotPasswordRequested value)?  forgotPassword,TResult Function( ResetPasswordRequested value)?  resetPassword,TResult Function( ChangePasswordRequested value)?  changePassword,TResult Function( SignOut value)?  signOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case LoginRequested() when login != null:
return login(_that);case RegisterRequested() when register != null:
return register(_that);case ForgotPasswordRequested() when forgotPassword != null:
return forgotPassword(_that);case ResetPasswordRequested() when resetPassword != null:
return resetPassword(_that);case ChangePasswordRequested() when changePassword != null:
return changePassword(_that);case SignOut() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckAuthentication value)  checkAuthentication,required TResult Function( LoginRequested value)  login,required TResult Function( RegisterRequested value)  register,required TResult Function( ForgotPasswordRequested value)  forgotPassword,required TResult Function( ResetPasswordRequested value)  resetPassword,required TResult Function( ChangePasswordRequested value)  changePassword,required TResult Function( SignOut value)  signOut,}){
final _that = this;
switch (_that) {
case CheckAuthentication():
return checkAuthentication(_that);case LoginRequested():
return login(_that);case RegisterRequested():
return register(_that);case ForgotPasswordRequested():
return forgotPassword(_that);case ResetPasswordRequested():
return resetPassword(_that);case ChangePasswordRequested():
return changePassword(_that);case SignOut():
return signOut(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckAuthentication value)?  checkAuthentication,TResult? Function( LoginRequested value)?  login,TResult? Function( RegisterRequested value)?  register,TResult? Function( ForgotPasswordRequested value)?  forgotPassword,TResult? Function( ResetPasswordRequested value)?  resetPassword,TResult? Function( ChangePasswordRequested value)?  changePassword,TResult? Function( SignOut value)?  signOut,}){
final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case LoginRequested() when login != null:
return login(_that);case RegisterRequested() when register != null:
return register(_that);case ForgotPasswordRequested() when forgotPassword != null:
return forgotPassword(_that);case ResetPasswordRequested() when resetPassword != null:
return resetPassword(_that);case ChangePasswordRequested() when changePassword != null:
return changePassword(_that);case SignOut() when signOut != null:
return signOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkAuthentication,TResult Function( LoginCredentials credentials)?  login,TResult Function( RegisterCredentials credentials)?  register,TResult Function( String email)?  forgotPassword,TResult Function( String email,  String password)?  resetPassword,TResult Function( String? currentPassword,  String newPassword)?  changePassword,TResult Function()?  signOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case LoginRequested() when login != null:
return login(_that.credentials);case RegisterRequested() when register != null:
return register(_that.credentials);case ForgotPasswordRequested() when forgotPassword != null:
return forgotPassword(_that.email);case ResetPasswordRequested() when resetPassword != null:
return resetPassword(_that.email,_that.password);case ChangePasswordRequested() when changePassword != null:
return changePassword(_that.currentPassword,_that.newPassword);case SignOut() when signOut != null:
return signOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkAuthentication,required TResult Function( LoginCredentials credentials)  login,required TResult Function( RegisterCredentials credentials)  register,required TResult Function( String email)  forgotPassword,required TResult Function( String email,  String password)  resetPassword,required TResult Function( String? currentPassword,  String newPassword)  changePassword,required TResult Function()  signOut,}) {final _that = this;
switch (_that) {
case CheckAuthentication():
return checkAuthentication();case LoginRequested():
return login(_that.credentials);case RegisterRequested():
return register(_that.credentials);case ForgotPasswordRequested():
return forgotPassword(_that.email);case ResetPasswordRequested():
return resetPassword(_that.email,_that.password);case ChangePasswordRequested():
return changePassword(_that.currentPassword,_that.newPassword);case SignOut():
return signOut();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkAuthentication,TResult? Function( LoginCredentials credentials)?  login,TResult? Function( RegisterCredentials credentials)?  register,TResult? Function( String email)?  forgotPassword,TResult? Function( String email,  String password)?  resetPassword,TResult? Function( String? currentPassword,  String newPassword)?  changePassword,TResult? Function()?  signOut,}) {final _that = this;
switch (_that) {
case CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case LoginRequested() when login != null:
return login(_that.credentials);case RegisterRequested() when register != null:
return register(_that.credentials);case ForgotPasswordRequested() when forgotPassword != null:
return forgotPassword(_that.email);case ResetPasswordRequested() when resetPassword != null:
return resetPassword(_that.email,_that.password);case ChangePasswordRequested() when changePassword != null:
return changePassword(_that.currentPassword,_that.newPassword);case SignOut() when signOut != null:
return signOut();case _:
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


class LoginRequested implements AuthEvent {
  const LoginRequested(this.credentials);
  

 final  LoginCredentials credentials;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestedCopyWith<LoginRequested> get copyWith => _$LoginRequestedCopyWithImpl<LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequested&&(identical(other.credentials, credentials) || other.credentials == credentials));
}


@override
int get hashCode => Object.hash(runtimeType,credentials);

@override
String toString() {
  return 'AuthEvent.login(credentials: $credentials)';
}


}

/// @nodoc
abstract mixin class $LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginRequestedCopyWith(LoginRequested value, $Res Function(LoginRequested) _then) = _$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 LoginCredentials credentials
});




}
/// @nodoc
class _$LoginRequestedCopyWithImpl<$Res>
    implements $LoginRequestedCopyWith<$Res> {
  _$LoginRequestedCopyWithImpl(this._self, this._then);

  final LoginRequested _self;
  final $Res Function(LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? credentials = null,}) {
  return _then(LoginRequested(
null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as LoginCredentials,
  ));
}


}

/// @nodoc


class RegisterRequested implements AuthEvent {
  const RegisterRequested(this.credentials);
  

 final  RegisterCredentials credentials;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestedCopyWith<RegisterRequested> get copyWith => _$RegisterRequestedCopyWithImpl<RegisterRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequested&&(identical(other.credentials, credentials) || other.credentials == credentials));
}


@override
int get hashCode => Object.hash(runtimeType,credentials);

@override
String toString() {
  return 'AuthEvent.register(credentials: $credentials)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterRequestedCopyWith(RegisterRequested value, $Res Function(RegisterRequested) _then) = _$RegisterRequestedCopyWithImpl;
@useResult
$Res call({
 RegisterCredentials credentials
});




}
/// @nodoc
class _$RegisterRequestedCopyWithImpl<$Res>
    implements $RegisterRequestedCopyWith<$Res> {
  _$RegisterRequestedCopyWithImpl(this._self, this._then);

  final RegisterRequested _self;
  final $Res Function(RegisterRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? credentials = null,}) {
  return _then(RegisterRequested(
null == credentials ? _self.credentials : credentials // ignore: cast_nullable_to_non_nullable
as RegisterCredentials,
  ));
}


}

/// @nodoc


class ForgotPasswordRequested implements AuthEvent {
  const ForgotPasswordRequested(this.email);
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordRequestedCopyWith<ForgotPasswordRequested> get copyWith => _$ForgotPasswordRequestedCopyWithImpl<ForgotPasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.forgotPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ForgotPasswordRequestedCopyWith(ForgotPasswordRequested value, $Res Function(ForgotPasswordRequested) _then) = _$ForgotPasswordRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ForgotPasswordRequestedCopyWithImpl<$Res>
    implements $ForgotPasswordRequestedCopyWith<$Res> {
  _$ForgotPasswordRequestedCopyWithImpl(this._self, this._then);

  final ForgotPasswordRequested _self;
  final $Res Function(ForgotPasswordRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ForgotPasswordRequested(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetPasswordRequested implements AuthEvent {
  const ResetPasswordRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordRequestedCopyWith<ResetPasswordRequested> get copyWith => _$ResetPasswordRequestedCopyWithImpl<ResetPasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.resetPassword(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordRequestedCopyWith(ResetPasswordRequested value, $Res Function(ResetPasswordRequested) _then) = _$ResetPasswordRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$ResetPasswordRequestedCopyWithImpl<$Res>
    implements $ResetPasswordRequestedCopyWith<$Res> {
  _$ResetPasswordRequestedCopyWithImpl(this._self, this._then);

  final ResetPasswordRequested _self;
  final $Res Function(ResetPasswordRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(ResetPasswordRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePasswordRequested implements AuthEvent {
  const ChangePasswordRequested({this.currentPassword, required this.newPassword});
  

 final  String? currentPassword;
 final  String newPassword;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordRequestedCopyWith<ChangePasswordRequested> get copyWith => _$ChangePasswordRequestedCopyWithImpl<ChangePasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordRequested&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'AuthEvent.changePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ChangePasswordRequestedCopyWith(ChangePasswordRequested value, $Res Function(ChangePasswordRequested) _then) = _$ChangePasswordRequestedCopyWithImpl;
@useResult
$Res call({
 String? currentPassword, String newPassword
});




}
/// @nodoc
class _$ChangePasswordRequestedCopyWithImpl<$Res>
    implements $ChangePasswordRequestedCopyWith<$Res> {
  _$ChangePasswordRequestedCopyWithImpl(this._self, this._then);

  final ChangePasswordRequested _self;
  final $Res Function(ChangePasswordRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentPassword = freezed,Object? newPassword = null,}) {
  return _then(ChangePasswordRequested(
currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignOut implements AuthEvent {
  const SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




// dart format on
