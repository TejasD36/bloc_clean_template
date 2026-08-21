// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressEntity {

 int get id; int get userId; String get type; String get flatNumberOrBuildingName; String get areaStreetName; String get landmark; String get pincode; String get state; String get city; double get latitude; double get longitude;
/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<AddressEntity> get copyWith => _$AddressEntityCopyWithImpl<AddressEntity>(this as AddressEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.flatNumberOrBuildingName, flatNumberOrBuildingName) || other.flatNumberOrBuildingName == flatNumberOrBuildingName)&&(identical(other.areaStreetName, areaStreetName) || other.areaStreetName == areaStreetName)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,flatNumberOrBuildingName,areaStreetName,landmark,pincode,state,city,latitude,longitude);

@override
String toString() {
  return 'AddressEntity(id: $id, userId: $userId, type: $type, flatNumberOrBuildingName: $flatNumberOrBuildingName, areaStreetName: $areaStreetName, landmark: $landmark, pincode: $pincode, state: $state, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AddressEntityCopyWith<$Res>  {
  factory $AddressEntityCopyWith(AddressEntity value, $Res Function(AddressEntity) _then) = _$AddressEntityCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String type, String flatNumberOrBuildingName, String areaStreetName, String landmark, String pincode, String state, String city, double latitude, double longitude
});




}
/// @nodoc
class _$AddressEntityCopyWithImpl<$Res>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._self, this._then);

  final AddressEntity _self;
  final $Res Function(AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? flatNumberOrBuildingName = null,Object? areaStreetName = null,Object? landmark = null,Object? pincode = null,Object? state = null,Object? city = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,flatNumberOrBuildingName: null == flatNumberOrBuildingName ? _self.flatNumberOrBuildingName : flatNumberOrBuildingName // ignore: cast_nullable_to_non_nullable
as String,areaStreetName: null == areaStreetName ? _self.areaStreetName : areaStreetName // ignore: cast_nullable_to_non_nullable
as String,landmark: null == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String,pincode: null == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressEntity].
extension AddressEntityPatterns on AddressEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressEntity value)  $default,){
final _that = this;
switch (_that) {
case _AddressEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.flatNumberOrBuildingName,_that.areaStreetName,_that.landmark,_that.pincode,_that.state,_that.city,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _AddressEntity():
return $default(_that.id,_that.userId,_that.type,_that.flatNumberOrBuildingName,_that.areaStreetName,_that.landmark,_that.pincode,_that.state,_that.city,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.flatNumberOrBuildingName,_that.areaStreetName,_that.landmark,_that.pincode,_that.state,_that.city,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _AddressEntity implements AddressEntity {
  const _AddressEntity({this.id = 0, this.userId = 0, this.type = 'home', this.flatNumberOrBuildingName = '', this.areaStreetName = '', this.landmark = '', this.pincode = '', this.state = '', this.city = '', this.latitude = 0, this.longitude = 0});
  

@override@JsonKey() final  int id;
@override@JsonKey() final  int userId;
@override@JsonKey() final  String type;
@override@JsonKey() final  String flatNumberOrBuildingName;
@override@JsonKey() final  String areaStreetName;
@override@JsonKey() final  String landmark;
@override@JsonKey() final  String pincode;
@override@JsonKey() final  String state;
@override@JsonKey() final  String city;
@override@JsonKey() final  double latitude;
@override@JsonKey() final  double longitude;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressEntityCopyWith<_AddressEntity> get copyWith => __$AddressEntityCopyWithImpl<_AddressEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.flatNumberOrBuildingName, flatNumberOrBuildingName) || other.flatNumberOrBuildingName == flatNumberOrBuildingName)&&(identical(other.areaStreetName, areaStreetName) || other.areaStreetName == areaStreetName)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,flatNumberOrBuildingName,areaStreetName,landmark,pincode,state,city,latitude,longitude);

@override
String toString() {
  return 'AddressEntity(id: $id, userId: $userId, type: $type, flatNumberOrBuildingName: $flatNumberOrBuildingName, areaStreetName: $areaStreetName, landmark: $landmark, pincode: $pincode, state: $state, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AddressEntityCopyWith<$Res> implements $AddressEntityCopyWith<$Res> {
  factory _$AddressEntityCopyWith(_AddressEntity value, $Res Function(_AddressEntity) _then) = __$AddressEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String type, String flatNumberOrBuildingName, String areaStreetName, String landmark, String pincode, String state, String city, double latitude, double longitude
});




}
/// @nodoc
class __$AddressEntityCopyWithImpl<$Res>
    implements _$AddressEntityCopyWith<$Res> {
  __$AddressEntityCopyWithImpl(this._self, this._then);

  final _AddressEntity _self;
  final $Res Function(_AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? flatNumberOrBuildingName = null,Object? areaStreetName = null,Object? landmark = null,Object? pincode = null,Object? state = null,Object? city = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_AddressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,flatNumberOrBuildingName: null == flatNumberOrBuildingName ? _self.flatNumberOrBuildingName : flatNumberOrBuildingName // ignore: cast_nullable_to_non_nullable
as String,areaStreetName: null == areaStreetName ? _self.areaStreetName : areaStreetName // ignore: cast_nullable_to_non_nullable
as String,landmark: null == landmark ? _self.landmark : landmark // ignore: cast_nullable_to_non_nullable
as String,pincode: null == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
