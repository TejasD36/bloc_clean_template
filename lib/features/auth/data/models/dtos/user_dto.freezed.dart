// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

@HiveField(0)@JsonKey(fromJson: _stringFromJson) String get id;@HiveField(1) String? get name;@HiveField(2) String? get email;@HiveField(3) String? get photoUrl;@HiveField(4)@JsonKey(fromJson: _boolFromJson) bool get isEmailVerified;@HiveField(5) String get phoneNumber;@HiveField(8)@JsonKey(fromJson: _boolFromJson) bool get isAnonymous;@HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true) bool get status;@HiveField(13)@JsonKey(fromJson: _nullableIntFromJson) int? get role;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,photoUrl,isEmailVerified,phoneNumber,isAnonymous,status,role);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, email: $email, photoUrl: $photoUrl, isEmailVerified: $isEmailVerified, phoneNumber: $phoneNumber, isAnonymous: $isAnonymous, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
@HiveField(0)@JsonKey(fromJson: _stringFromJson) String id,@HiveField(1) String? name,@HiveField(2) String? email,@HiveField(3) String? photoUrl,@HiveField(4)@JsonKey(fromJson: _boolFromJson) bool isEmailVerified,@HiveField(5) String phoneNumber,@HiveField(8)@JsonKey(fromJson: _boolFromJson) bool isAnonymous,@HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true) bool status,@HiveField(13)@JsonKey(fromJson: _nullableIntFromJson) int? role
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? isEmailVerified = null,Object? phoneNumber = null,Object? isAnonymous = null,Object? status = null,Object? role = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)@JsonKey(fromJson: _stringFromJson)  String id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? photoUrl, @HiveField(4)@JsonKey(fromJson: _boolFromJson)  bool isEmailVerified, @HiveField(5)  String phoneNumber, @HiveField(8)@JsonKey(fromJson: _boolFromJson)  bool isAnonymous, @HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true)  bool status, @HiveField(13)@JsonKey(fromJson: _nullableIntFromJson)  int? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.phoneNumber,_that.isAnonymous,_that.status,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)@JsonKey(fromJson: _stringFromJson)  String id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? photoUrl, @HiveField(4)@JsonKey(fromJson: _boolFromJson)  bool isEmailVerified, @HiveField(5)  String phoneNumber, @HiveField(8)@JsonKey(fromJson: _boolFromJson)  bool isAnonymous, @HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true)  bool status, @HiveField(13)@JsonKey(fromJson: _nullableIntFromJson)  int? role)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.phoneNumber,_that.isAnonymous,_that.status,_that.role);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)@JsonKey(fromJson: _stringFromJson)  String id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? photoUrl, @HiveField(4)@JsonKey(fromJson: _boolFromJson)  bool isEmailVerified, @HiveField(5)  String phoneNumber, @HiveField(8)@JsonKey(fromJson: _boolFromJson)  bool isAnonymous, @HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true)  bool status, @HiveField(13)@JsonKey(fromJson: _nullableIntFromJson)  int? role)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.photoUrl,_that.isEmailVerified,_that.phoneNumber,_that.isAnonymous,_that.status,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({@HiveField(0)@JsonKey(fromJson: _stringFromJson) required this.id, @HiveField(1) this.name, @HiveField(2) this.email, @HiveField(3) this.photoUrl, @HiveField(4)@JsonKey(fromJson: _boolFromJson) this.isEmailVerified = false, @HiveField(5) this.phoneNumber = '', @HiveField(8)@JsonKey(fromJson: _boolFromJson) this.isAnonymous = false, @HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true) this.status = true, @HiveField(13)@JsonKey(fromJson: _nullableIntFromJson) this.role});
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override@HiveField(0)@JsonKey(fromJson: _stringFromJson) final  String id;
@override@HiveField(1) final  String? name;
@override@HiveField(2) final  String? email;
@override@HiveField(3) final  String? photoUrl;
@override@HiveField(4)@JsonKey(fromJson: _boolFromJson) final  bool isEmailVerified;
@override@JsonKey()@HiveField(5) final  String phoneNumber;
@override@HiveField(8)@JsonKey(fromJson: _boolFromJson) final  bool isAnonymous;
@override@HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true) final  bool status;
@override@HiveField(13)@JsonKey(fromJson: _nullableIntFromJson) final  int? role;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,photoUrl,isEmailVerified,phoneNumber,isAnonymous,status,role);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, email: $email, photoUrl: $photoUrl, isEmailVerified: $isEmailVerified, phoneNumber: $phoneNumber, isAnonymous: $isAnonymous, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0)@JsonKey(fromJson: _stringFromJson) String id,@HiveField(1) String? name,@HiveField(2) String? email,@HiveField(3) String? photoUrl,@HiveField(4)@JsonKey(fromJson: _boolFromJson) bool isEmailVerified,@HiveField(5) String phoneNumber,@HiveField(8)@JsonKey(fromJson: _boolFromJson) bool isAnonymous,@HiveField(12)@JsonKey(fromJson: _boolFromJson, defaultValue: true) bool status,@HiveField(13)@JsonKey(fromJson: _nullableIntFromJson) int? role
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? isEmailVerified = null,Object? phoneNumber = null,Object? isAnonymous = null,Object? status = null,Object? role = freezed,}) {
  return _then(_UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
