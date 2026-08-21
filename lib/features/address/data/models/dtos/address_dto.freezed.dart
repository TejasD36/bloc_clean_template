// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressDto {

 int get id; int get userId; String get type; String get flatNumberOrBuildingName; String get areaStreetName; String get landmark; String get pincode; String get state; String get city; String get latitude; String get longitude;
/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<AddressDto> get copyWith => _$AddressDtoCopyWithImpl<AddressDto>(this as AddressDto, _$identity);

  /// Serializes this AddressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.flatNumberOrBuildingName, flatNumberOrBuildingName) || other.flatNumberOrBuildingName == flatNumberOrBuildingName)&&(identical(other.areaStreetName, areaStreetName) || other.areaStreetName == areaStreetName)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,flatNumberOrBuildingName,areaStreetName,landmark,pincode,state,city,latitude,longitude);

@override
String toString() {
  return 'AddressDto(id: $id, userId: $userId, type: $type, flatNumberOrBuildingName: $flatNumberOrBuildingName, areaStreetName: $areaStreetName, landmark: $landmark, pincode: $pincode, state: $state, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $AddressDtoCopyWith<$Res>  {
  factory $AddressDtoCopyWith(AddressDto value, $Res Function(AddressDto) _then) = _$AddressDtoCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String type, String flatNumberOrBuildingName, String areaStreetName, String landmark, String pincode, String state, String city, String latitude, String longitude
});




}
/// @nodoc
class _$AddressDtoCopyWithImpl<$Res>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._self, this._then);

  final AddressDto _self;
  final $Res Function(AddressDto) _then;

/// Create a copy of AddressDto
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
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressDto].
extension AddressDtoPatterns on AddressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  String latitude,  String longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  String latitude,  String longitude)  $default,) {final _that = this;
switch (_that) {
case _AddressDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String type,  String flatNumberOrBuildingName,  String areaStreetName,  String landmark,  String pincode,  String state,  String city,  String latitude,  String longitude)?  $default,) {final _that = this;
switch (_that) {
case _AddressDto() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.flatNumberOrBuildingName,_that.areaStreetName,_that.landmark,_that.pincode,_that.state,_that.city,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressDto implements AddressDto {
  const _AddressDto({this.id = 0, this.userId = 0, this.type = 'home', this.flatNumberOrBuildingName = '', this.areaStreetName = '', this.landmark = '', this.pincode = '', this.state = '', this.city = '', this.latitude = '', this.longitude = ''});
  factory _AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int userId;
@override@JsonKey() final  String type;
@override@JsonKey() final  String flatNumberOrBuildingName;
@override@JsonKey() final  String areaStreetName;
@override@JsonKey() final  String landmark;
@override@JsonKey() final  String pincode;
@override@JsonKey() final  String state;
@override@JsonKey() final  String city;
@override@JsonKey() final  String latitude;
@override@JsonKey() final  String longitude;

/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDtoCopyWith<_AddressDto> get copyWith => __$AddressDtoCopyWithImpl<_AddressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.flatNumberOrBuildingName, flatNumberOrBuildingName) || other.flatNumberOrBuildingName == flatNumberOrBuildingName)&&(identical(other.areaStreetName, areaStreetName) || other.areaStreetName == areaStreetName)&&(identical(other.landmark, landmark) || other.landmark == landmark)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,flatNumberOrBuildingName,areaStreetName,landmark,pincode,state,city,latitude,longitude);

@override
String toString() {
  return 'AddressDto(id: $id, userId: $userId, type: $type, flatNumberOrBuildingName: $flatNumberOrBuildingName, areaStreetName: $areaStreetName, landmark: $landmark, pincode: $pincode, state: $state, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$AddressDtoCopyWith<$Res> implements $AddressDtoCopyWith<$Res> {
  factory _$AddressDtoCopyWith(_AddressDto value, $Res Function(_AddressDto) _then) = __$AddressDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String type, String flatNumberOrBuildingName, String areaStreetName, String landmark, String pincode, String state, String city, String latitude, String longitude
});




}
/// @nodoc
class __$AddressDtoCopyWithImpl<$Res>
    implements _$AddressDtoCopyWith<$Res> {
  __$AddressDtoCopyWithImpl(this._self, this._then);

  final _AddressDto _self;
  final $Res Function(_AddressDto) _then;

/// Create a copy of AddressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? flatNumberOrBuildingName = null,Object? areaStreetName = null,Object? landmark = null,Object? pincode = null,Object? state = null,Object? city = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_AddressDto(
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
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AddressListDto {

 List<AddressDto> get addresses;
/// Create a copy of AddressListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressListDtoCopyWith<AddressListDto> get copyWith => _$AddressListDtoCopyWithImpl<AddressListDto>(this as AddressListDto, _$identity);

  /// Serializes this AddressListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressListDto&&const DeepCollectionEquality().equals(other.addresses, addresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(addresses));

@override
String toString() {
  return 'AddressListDto(addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class $AddressListDtoCopyWith<$Res>  {
  factory $AddressListDtoCopyWith(AddressListDto value, $Res Function(AddressListDto) _then) = _$AddressListDtoCopyWithImpl;
@useResult
$Res call({
 List<AddressDto> addresses
});




}
/// @nodoc
class _$AddressListDtoCopyWithImpl<$Res>
    implements $AddressListDtoCopyWith<$Res> {
  _$AddressListDtoCopyWithImpl(this._self, this._then);

  final AddressListDto _self;
  final $Res Function(AddressListDto) _then;

/// Create a copy of AddressListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addresses = null,}) {
  return _then(_self.copyWith(
addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressListDto].
extension AddressListDtoPatterns on AddressListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressListDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressListDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AddressDto> addresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressListDto() when $default != null:
return $default(_that.addresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AddressDto> addresses)  $default,) {final _that = this;
switch (_that) {
case _AddressListDto():
return $default(_that.addresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AddressDto> addresses)?  $default,) {final _that = this;
switch (_that) {
case _AddressListDto() when $default != null:
return $default(_that.addresses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressListDto implements AddressListDto {
  const _AddressListDto({final  List<AddressDto> addresses = const <AddressDto>[]}): _addresses = addresses;
  factory _AddressListDto.fromJson(Map<String, dynamic> json) => _$AddressListDtoFromJson(json);

 final  List<AddressDto> _addresses;
@override@JsonKey() List<AddressDto> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}


/// Create a copy of AddressListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressListDtoCopyWith<_AddressListDto> get copyWith => __$AddressListDtoCopyWithImpl<_AddressListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressListDto&&const DeepCollectionEquality().equals(other._addresses, _addresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_addresses));

@override
String toString() {
  return 'AddressListDto(addresses: $addresses)';
}


}

/// @nodoc
abstract mixin class _$AddressListDtoCopyWith<$Res> implements $AddressListDtoCopyWith<$Res> {
  factory _$AddressListDtoCopyWith(_AddressListDto value, $Res Function(_AddressListDto) _then) = __$AddressListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<AddressDto> addresses
});




}
/// @nodoc
class __$AddressListDtoCopyWithImpl<$Res>
    implements _$AddressListDtoCopyWith<$Res> {
  __$AddressListDtoCopyWithImpl(this._self, this._then);

  final _AddressListDto _self;
  final $Res Function(_AddressListDto) _then;

/// Create a copy of AddressListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addresses = null,}) {
  return _then(_AddressListDto(
addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressDto>,
  ));
}


}


/// @nodoc
mixin _$AddressMutationDto {

 AddressDto get address;
/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressMutationDtoCopyWith<AddressMutationDto> get copyWith => _$AddressMutationDtoCopyWithImpl<AddressMutationDto>(this as AddressMutationDto, _$identity);

  /// Serializes this AddressMutationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressMutationDto&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'AddressMutationDto(address: $address)';
}


}

/// @nodoc
abstract mixin class $AddressMutationDtoCopyWith<$Res>  {
  factory $AddressMutationDtoCopyWith(AddressMutationDto value, $Res Function(AddressMutationDto) _then) = _$AddressMutationDtoCopyWithImpl;
@useResult
$Res call({
 AddressDto address
});


$AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class _$AddressMutationDtoCopyWithImpl<$Res>
    implements $AddressMutationDtoCopyWith<$Res> {
  _$AddressMutationDtoCopyWithImpl(this._self, this._then);

  final AddressMutationDto _self;
  final $Res Function(AddressMutationDto) _then;

/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}
/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressMutationDto].
extension AddressMutationDtoPatterns on AddressMutationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressMutationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressMutationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressMutationDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressMutationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressMutationDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressMutationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressDto address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressMutationDto() when $default != null:
return $default(_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressDto address)  $default,) {final _that = this;
switch (_that) {
case _AddressMutationDto():
return $default(_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressDto address)?  $default,) {final _that = this;
switch (_that) {
case _AddressMutationDto() when $default != null:
return $default(_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressMutationDto implements AddressMutationDto {
  const _AddressMutationDto({required this.address});
  factory _AddressMutationDto.fromJson(Map<String, dynamic> json) => _$AddressMutationDtoFromJson(json);

@override final  AddressDto address;

/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressMutationDtoCopyWith<_AddressMutationDto> get copyWith => __$AddressMutationDtoCopyWithImpl<_AddressMutationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressMutationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressMutationDto&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'AddressMutationDto(address: $address)';
}


}

/// @nodoc
abstract mixin class _$AddressMutationDtoCopyWith<$Res> implements $AddressMutationDtoCopyWith<$Res> {
  factory _$AddressMutationDtoCopyWith(_AddressMutationDto value, $Res Function(_AddressMutationDto) _then) = __$AddressMutationDtoCopyWithImpl;
@override @useResult
$Res call({
 AddressDto address
});


@override $AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class __$AddressMutationDtoCopyWithImpl<$Res>
    implements _$AddressMutationDtoCopyWith<$Res> {
  __$AddressMutationDtoCopyWithImpl(this._self, this._then);

  final _AddressMutationDto _self;
  final $Res Function(_AddressMutationDto) _then;

/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_AddressMutationDto(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}

/// Create a copy of AddressMutationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
