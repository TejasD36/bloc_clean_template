// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_tank_cleaning_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterTankCleaningDetailDto {

 String get slug; List<CleaningOptionDto> get tankTypes; List<CleaningCapacityDto> get capacities; List<CleaningMethodDto> get cleaningMethods;
/// Create a copy of WaterTankCleaningDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTankCleaningDetailDtoCopyWith<WaterTankCleaningDetailDto> get copyWith => _$WaterTankCleaningDetailDtoCopyWithImpl<WaterTankCleaningDetailDto>(this as WaterTankCleaningDetailDto, _$identity);

  /// Serializes this WaterTankCleaningDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningDetailDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.tankTypes, tankTypes)&&const DeepCollectionEquality().equals(other.capacities, capacities)&&const DeepCollectionEquality().equals(other.cleaningMethods, cleaningMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(tankTypes),const DeepCollectionEquality().hash(capacities),const DeepCollectionEquality().hash(cleaningMethods));

@override
String toString() {
  return 'WaterTankCleaningDetailDto(slug: $slug, tankTypes: $tankTypes, capacities: $capacities, cleaningMethods: $cleaningMethods)';
}


}

/// @nodoc
abstract mixin class $WaterTankCleaningDetailDtoCopyWith<$Res>  {
  factory $WaterTankCleaningDetailDtoCopyWith(WaterTankCleaningDetailDto value, $Res Function(WaterTankCleaningDetailDto) _then) = _$WaterTankCleaningDetailDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<CleaningOptionDto> tankTypes, List<CleaningCapacityDto> capacities, List<CleaningMethodDto> cleaningMethods
});




}
/// @nodoc
class _$WaterTankCleaningDetailDtoCopyWithImpl<$Res>
    implements $WaterTankCleaningDetailDtoCopyWith<$Res> {
  _$WaterTankCleaningDetailDtoCopyWithImpl(this._self, this._then);

  final WaterTankCleaningDetailDto _self;
  final $Res Function(WaterTankCleaningDetailDto) _then;

/// Create a copy of WaterTankCleaningDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? tankTypes = null,Object? capacities = null,Object? cleaningMethods = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,tankTypes: null == tankTypes ? _self.tankTypes : tankTypes // ignore: cast_nullable_to_non_nullable
as List<CleaningOptionDto>,capacities: null == capacities ? _self.capacities : capacities // ignore: cast_nullable_to_non_nullable
as List<CleaningCapacityDto>,cleaningMethods: null == cleaningMethods ? _self.cleaningMethods : cleaningMethods // ignore: cast_nullable_to_non_nullable
as List<CleaningMethodDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterTankCleaningDetailDto].
extension WaterTankCleaningDetailDtoPatterns on WaterTankCleaningDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterTankCleaningDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterTankCleaningDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterTankCleaningDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<CleaningOptionDto> tankTypes,  List<CleaningCapacityDto> capacities,  List<CleaningMethodDto> cleaningMethods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto() when $default != null:
return $default(_that.slug,_that.tankTypes,_that.capacities,_that.cleaningMethods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<CleaningOptionDto> tankTypes,  List<CleaningCapacityDto> capacities,  List<CleaningMethodDto> cleaningMethods)  $default,) {final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto():
return $default(_that.slug,_that.tankTypes,_that.capacities,_that.cleaningMethods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<CleaningOptionDto> tankTypes,  List<CleaningCapacityDto> capacities,  List<CleaningMethodDto> cleaningMethods)?  $default,) {final _that = this;
switch (_that) {
case _WaterTankCleaningDetailDto() when $default != null:
return $default(_that.slug,_that.tankTypes,_that.capacities,_that.cleaningMethods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterTankCleaningDetailDto implements WaterTankCleaningDetailDto {
  const _WaterTankCleaningDetailDto({this.slug = '', final  List<CleaningOptionDto> tankTypes = const <CleaningOptionDto>[], final  List<CleaningCapacityDto> capacities = const <CleaningCapacityDto>[], final  List<CleaningMethodDto> cleaningMethods = const <CleaningMethodDto>[]}): _tankTypes = tankTypes,_capacities = capacities,_cleaningMethods = cleaningMethods;
  factory _WaterTankCleaningDetailDto.fromJson(Map<String, dynamic> json) => _$WaterTankCleaningDetailDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<CleaningOptionDto> _tankTypes;
@override@JsonKey() List<CleaningOptionDto> get tankTypes {
  if (_tankTypes is EqualUnmodifiableListView) return _tankTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tankTypes);
}

 final  List<CleaningCapacityDto> _capacities;
@override@JsonKey() List<CleaningCapacityDto> get capacities {
  if (_capacities is EqualUnmodifiableListView) return _capacities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capacities);
}

 final  List<CleaningMethodDto> _cleaningMethods;
@override@JsonKey() List<CleaningMethodDto> get cleaningMethods {
  if (_cleaningMethods is EqualUnmodifiableListView) return _cleaningMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cleaningMethods);
}


/// Create a copy of WaterTankCleaningDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterTankCleaningDetailDtoCopyWith<_WaterTankCleaningDetailDto> get copyWith => __$WaterTankCleaningDetailDtoCopyWithImpl<_WaterTankCleaningDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterTankCleaningDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterTankCleaningDetailDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._tankTypes, _tankTypes)&&const DeepCollectionEquality().equals(other._capacities, _capacities)&&const DeepCollectionEquality().equals(other._cleaningMethods, _cleaningMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_tankTypes),const DeepCollectionEquality().hash(_capacities),const DeepCollectionEquality().hash(_cleaningMethods));

@override
String toString() {
  return 'WaterTankCleaningDetailDto(slug: $slug, tankTypes: $tankTypes, capacities: $capacities, cleaningMethods: $cleaningMethods)';
}


}

/// @nodoc
abstract mixin class _$WaterTankCleaningDetailDtoCopyWith<$Res> implements $WaterTankCleaningDetailDtoCopyWith<$Res> {
  factory _$WaterTankCleaningDetailDtoCopyWith(_WaterTankCleaningDetailDto value, $Res Function(_WaterTankCleaningDetailDto) _then) = __$WaterTankCleaningDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<CleaningOptionDto> tankTypes, List<CleaningCapacityDto> capacities, List<CleaningMethodDto> cleaningMethods
});




}
/// @nodoc
class __$WaterTankCleaningDetailDtoCopyWithImpl<$Res>
    implements _$WaterTankCleaningDetailDtoCopyWith<$Res> {
  __$WaterTankCleaningDetailDtoCopyWithImpl(this._self, this._then);

  final _WaterTankCleaningDetailDto _self;
  final $Res Function(_WaterTankCleaningDetailDto) _then;

/// Create a copy of WaterTankCleaningDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? tankTypes = null,Object? capacities = null,Object? cleaningMethods = null,}) {
  return _then(_WaterTankCleaningDetailDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,tankTypes: null == tankTypes ? _self._tankTypes : tankTypes // ignore: cast_nullable_to_non_nullable
as List<CleaningOptionDto>,capacities: null == capacities ? _self._capacities : capacities // ignore: cast_nullable_to_non_nullable
as List<CleaningCapacityDto>,cleaningMethods: null == cleaningMethods ? _self._cleaningMethods : cleaningMethods // ignore: cast_nullable_to_non_nullable
as List<CleaningMethodDto>,
  ));
}


}


/// @nodoc
mixin _$CleaningOptionDto {

 String get id; String get title;
/// Create a copy of CleaningOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleaningOptionDtoCopyWith<CleaningOptionDto> get copyWith => _$CleaningOptionDtoCopyWithImpl<CleaningOptionDto>(this as CleaningOptionDto, _$identity);

  /// Serializes this CleaningOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleaningOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CleaningOptionDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $CleaningOptionDtoCopyWith<$Res>  {
  factory $CleaningOptionDtoCopyWith(CleaningOptionDto value, $Res Function(CleaningOptionDto) _then) = _$CleaningOptionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$CleaningOptionDtoCopyWithImpl<$Res>
    implements $CleaningOptionDtoCopyWith<$Res> {
  _$CleaningOptionDtoCopyWithImpl(this._self, this._then);

  final CleaningOptionDto _self;
  final $Res Function(CleaningOptionDto) _then;

/// Create a copy of CleaningOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CleaningOptionDto].
extension CleaningOptionDtoPatterns on CleaningOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleaningOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleaningOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleaningOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _CleaningOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleaningOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _CleaningOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleaningOptionDto() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title)  $default,) {final _that = this;
switch (_that) {
case _CleaningOptionDto():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title)?  $default,) {final _that = this;
switch (_that) {
case _CleaningOptionDto() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleaningOptionDto implements CleaningOptionDto {
  const _CleaningOptionDto({this.id = '', this.title = ''});
  factory _CleaningOptionDto.fromJson(Map<String, dynamic> json) => _$CleaningOptionDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;

/// Create a copy of CleaningOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleaningOptionDtoCopyWith<_CleaningOptionDto> get copyWith => __$CleaningOptionDtoCopyWithImpl<_CleaningOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleaningOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleaningOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'CleaningOptionDto(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$CleaningOptionDtoCopyWith<$Res> implements $CleaningOptionDtoCopyWith<$Res> {
  factory _$CleaningOptionDtoCopyWith(_CleaningOptionDto value, $Res Function(_CleaningOptionDto) _then) = __$CleaningOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class __$CleaningOptionDtoCopyWithImpl<$Res>
    implements _$CleaningOptionDtoCopyWith<$Res> {
  __$CleaningOptionDtoCopyWithImpl(this._self, this._then);

  final _CleaningOptionDto _self;
  final $Res Function(_CleaningOptionDto) _then;

/// Create a copy of CleaningOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_CleaningOptionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CleaningCapacityDto {

 String get id; String get title; int get capacityLiters;
/// Create a copy of CleaningCapacityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleaningCapacityDtoCopyWith<CleaningCapacityDto> get copyWith => _$CleaningCapacityDtoCopyWithImpl<CleaningCapacityDto>(this as CleaningCapacityDto, _$identity);

  /// Serializes this CleaningCapacityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleaningCapacityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.capacityLiters, capacityLiters) || other.capacityLiters == capacityLiters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,capacityLiters);

@override
String toString() {
  return 'CleaningCapacityDto(id: $id, title: $title, capacityLiters: $capacityLiters)';
}


}

/// @nodoc
abstract mixin class $CleaningCapacityDtoCopyWith<$Res>  {
  factory $CleaningCapacityDtoCopyWith(CleaningCapacityDto value, $Res Function(CleaningCapacityDto) _then) = _$CleaningCapacityDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, int capacityLiters
});




}
/// @nodoc
class _$CleaningCapacityDtoCopyWithImpl<$Res>
    implements $CleaningCapacityDtoCopyWith<$Res> {
  _$CleaningCapacityDtoCopyWithImpl(this._self, this._then);

  final CleaningCapacityDto _self;
  final $Res Function(CleaningCapacityDto) _then;

/// Create a copy of CleaningCapacityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? capacityLiters = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,capacityLiters: null == capacityLiters ? _self.capacityLiters : capacityLiters // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CleaningCapacityDto].
extension CleaningCapacityDtoPatterns on CleaningCapacityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleaningCapacityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleaningCapacityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleaningCapacityDto value)  $default,){
final _that = this;
switch (_that) {
case _CleaningCapacityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleaningCapacityDto value)?  $default,){
final _that = this;
switch (_that) {
case _CleaningCapacityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int capacityLiters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleaningCapacityDto() when $default != null:
return $default(_that.id,_that.title,_that.capacityLiters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int capacityLiters)  $default,) {final _that = this;
switch (_that) {
case _CleaningCapacityDto():
return $default(_that.id,_that.title,_that.capacityLiters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int capacityLiters)?  $default,) {final _that = this;
switch (_that) {
case _CleaningCapacityDto() when $default != null:
return $default(_that.id,_that.title,_that.capacityLiters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleaningCapacityDto implements CleaningCapacityDto {
  const _CleaningCapacityDto({this.id = '', this.title = '', this.capacityLiters = 0});
  factory _CleaningCapacityDto.fromJson(Map<String, dynamic> json) => _$CleaningCapacityDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  int capacityLiters;

/// Create a copy of CleaningCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleaningCapacityDtoCopyWith<_CleaningCapacityDto> get copyWith => __$CleaningCapacityDtoCopyWithImpl<_CleaningCapacityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleaningCapacityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleaningCapacityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.capacityLiters, capacityLiters) || other.capacityLiters == capacityLiters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,capacityLiters);

@override
String toString() {
  return 'CleaningCapacityDto(id: $id, title: $title, capacityLiters: $capacityLiters)';
}


}

/// @nodoc
abstract mixin class _$CleaningCapacityDtoCopyWith<$Res> implements $CleaningCapacityDtoCopyWith<$Res> {
  factory _$CleaningCapacityDtoCopyWith(_CleaningCapacityDto value, $Res Function(_CleaningCapacityDto) _then) = __$CleaningCapacityDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int capacityLiters
});




}
/// @nodoc
class __$CleaningCapacityDtoCopyWithImpl<$Res>
    implements _$CleaningCapacityDtoCopyWith<$Res> {
  __$CleaningCapacityDtoCopyWithImpl(this._self, this._then);

  final _CleaningCapacityDto _self;
  final $Res Function(_CleaningCapacityDto) _then;

/// Create a copy of CleaningCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? capacityLiters = null,}) {
  return _then(_CleaningCapacityDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,capacityLiters: null == capacityLiters ? _self.capacityLiters : capacityLiters // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CleaningMethodDto {

 String get id; String get title; String get description; double get price; String get currency; bool get isRecommended; List<CleaningCapacityPriceDto> get capacityPrices;
/// Create a copy of CleaningMethodDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleaningMethodDtoCopyWith<CleaningMethodDto> get copyWith => _$CleaningMethodDtoCopyWithImpl<CleaningMethodDto>(this as CleaningMethodDto, _$identity);

  /// Serializes this CleaningMethodDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleaningMethodDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&const DeepCollectionEquality().equals(other.capacityPrices, capacityPrices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,currency,isRecommended,const DeepCollectionEquality().hash(capacityPrices));

@override
String toString() {
  return 'CleaningMethodDto(id: $id, title: $title, description: $description, price: $price, currency: $currency, isRecommended: $isRecommended, capacityPrices: $capacityPrices)';
}


}

/// @nodoc
abstract mixin class $CleaningMethodDtoCopyWith<$Res>  {
  factory $CleaningMethodDtoCopyWith(CleaningMethodDto value, $Res Function(CleaningMethodDto) _then) = _$CleaningMethodDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, double price, String currency, bool isRecommended, List<CleaningCapacityPriceDto> capacityPrices
});




}
/// @nodoc
class _$CleaningMethodDtoCopyWithImpl<$Res>
    implements $CleaningMethodDtoCopyWith<$Res> {
  _$CleaningMethodDtoCopyWithImpl(this._self, this._then);

  final CleaningMethodDto _self;
  final $Res Function(CleaningMethodDto) _then;

/// Create a copy of CleaningMethodDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? currency = null,Object? isRecommended = null,Object? capacityPrices = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,capacityPrices: null == capacityPrices ? _self.capacityPrices : capacityPrices // ignore: cast_nullable_to_non_nullable
as List<CleaningCapacityPriceDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CleaningMethodDto].
extension CleaningMethodDtoPatterns on CleaningMethodDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleaningMethodDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleaningMethodDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleaningMethodDto value)  $default,){
final _that = this;
switch (_that) {
case _CleaningMethodDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleaningMethodDto value)?  $default,){
final _that = this;
switch (_that) {
case _CleaningMethodDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  String currency,  bool isRecommended,  List<CleaningCapacityPriceDto> capacityPrices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleaningMethodDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.currency,_that.isRecommended,_that.capacityPrices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  String currency,  bool isRecommended,  List<CleaningCapacityPriceDto> capacityPrices)  $default,) {final _that = this;
switch (_that) {
case _CleaningMethodDto():
return $default(_that.id,_that.title,_that.description,_that.price,_that.currency,_that.isRecommended,_that.capacityPrices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  double price,  String currency,  bool isRecommended,  List<CleaningCapacityPriceDto> capacityPrices)?  $default,) {final _that = this;
switch (_that) {
case _CleaningMethodDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.currency,_that.isRecommended,_that.capacityPrices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleaningMethodDto implements CleaningMethodDto {
  const _CleaningMethodDto({this.id = '', this.title = '', this.description = '', this.price = 0, this.currency = '₹', this.isRecommended = false, final  List<CleaningCapacityPriceDto> capacityPrices = const <CleaningCapacityPriceDto>[]}): _capacityPrices = capacityPrices;
  factory _CleaningMethodDto.fromJson(Map<String, dynamic> json) => _$CleaningMethodDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  double price;
@override@JsonKey() final  String currency;
@override@JsonKey() final  bool isRecommended;
 final  List<CleaningCapacityPriceDto> _capacityPrices;
@override@JsonKey() List<CleaningCapacityPriceDto> get capacityPrices {
  if (_capacityPrices is EqualUnmodifiableListView) return _capacityPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capacityPrices);
}


/// Create a copy of CleaningMethodDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleaningMethodDtoCopyWith<_CleaningMethodDto> get copyWith => __$CleaningMethodDtoCopyWithImpl<_CleaningMethodDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleaningMethodDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleaningMethodDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&const DeepCollectionEquality().equals(other._capacityPrices, _capacityPrices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,currency,isRecommended,const DeepCollectionEquality().hash(_capacityPrices));

@override
String toString() {
  return 'CleaningMethodDto(id: $id, title: $title, description: $description, price: $price, currency: $currency, isRecommended: $isRecommended, capacityPrices: $capacityPrices)';
}


}

/// @nodoc
abstract mixin class _$CleaningMethodDtoCopyWith<$Res> implements $CleaningMethodDtoCopyWith<$Res> {
  factory _$CleaningMethodDtoCopyWith(_CleaningMethodDto value, $Res Function(_CleaningMethodDto) _then) = __$CleaningMethodDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, double price, String currency, bool isRecommended, List<CleaningCapacityPriceDto> capacityPrices
});




}
/// @nodoc
class __$CleaningMethodDtoCopyWithImpl<$Res>
    implements _$CleaningMethodDtoCopyWith<$Res> {
  __$CleaningMethodDtoCopyWithImpl(this._self, this._then);

  final _CleaningMethodDto _self;
  final $Res Function(_CleaningMethodDto) _then;

/// Create a copy of CleaningMethodDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? currency = null,Object? isRecommended = null,Object? capacityPrices = null,}) {
  return _then(_CleaningMethodDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,capacityPrices: null == capacityPrices ? _self._capacityPrices : capacityPrices // ignore: cast_nullable_to_non_nullable
as List<CleaningCapacityPriceDto>,
  ));
}


}


/// @nodoc
mixin _$CleaningCapacityPriceDto {

 String get capacityId; double get price;
/// Create a copy of CleaningCapacityPriceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleaningCapacityPriceDtoCopyWith<CleaningCapacityPriceDto> get copyWith => _$CleaningCapacityPriceDtoCopyWithImpl<CleaningCapacityPriceDto>(this as CleaningCapacityPriceDto, _$identity);

  /// Serializes this CleaningCapacityPriceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleaningCapacityPriceDto&&(identical(other.capacityId, capacityId) || other.capacityId == capacityId)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,capacityId,price);

@override
String toString() {
  return 'CleaningCapacityPriceDto(capacityId: $capacityId, price: $price)';
}


}

/// @nodoc
abstract mixin class $CleaningCapacityPriceDtoCopyWith<$Res>  {
  factory $CleaningCapacityPriceDtoCopyWith(CleaningCapacityPriceDto value, $Res Function(CleaningCapacityPriceDto) _then) = _$CleaningCapacityPriceDtoCopyWithImpl;
@useResult
$Res call({
 String capacityId, double price
});




}
/// @nodoc
class _$CleaningCapacityPriceDtoCopyWithImpl<$Res>
    implements $CleaningCapacityPriceDtoCopyWith<$Res> {
  _$CleaningCapacityPriceDtoCopyWithImpl(this._self, this._then);

  final CleaningCapacityPriceDto _self;
  final $Res Function(CleaningCapacityPriceDto) _then;

/// Create a copy of CleaningCapacityPriceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? capacityId = null,Object? price = null,}) {
  return _then(_self.copyWith(
capacityId: null == capacityId ? _self.capacityId : capacityId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CleaningCapacityPriceDto].
extension CleaningCapacityPriceDtoPatterns on CleaningCapacityPriceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleaningCapacityPriceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleaningCapacityPriceDto value)  $default,){
final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleaningCapacityPriceDto value)?  $default,){
final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String capacityId,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto() when $default != null:
return $default(_that.capacityId,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String capacityId,  double price)  $default,) {final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto():
return $default(_that.capacityId,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String capacityId,  double price)?  $default,) {final _that = this;
switch (_that) {
case _CleaningCapacityPriceDto() when $default != null:
return $default(_that.capacityId,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleaningCapacityPriceDto implements CleaningCapacityPriceDto {
  const _CleaningCapacityPriceDto({this.capacityId = '', this.price = 0});
  factory _CleaningCapacityPriceDto.fromJson(Map<String, dynamic> json) => _$CleaningCapacityPriceDtoFromJson(json);

@override@JsonKey() final  String capacityId;
@override@JsonKey() final  double price;

/// Create a copy of CleaningCapacityPriceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleaningCapacityPriceDtoCopyWith<_CleaningCapacityPriceDto> get copyWith => __$CleaningCapacityPriceDtoCopyWithImpl<_CleaningCapacityPriceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleaningCapacityPriceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleaningCapacityPriceDto&&(identical(other.capacityId, capacityId) || other.capacityId == capacityId)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,capacityId,price);

@override
String toString() {
  return 'CleaningCapacityPriceDto(capacityId: $capacityId, price: $price)';
}


}

/// @nodoc
abstract mixin class _$CleaningCapacityPriceDtoCopyWith<$Res> implements $CleaningCapacityPriceDtoCopyWith<$Res> {
  factory _$CleaningCapacityPriceDtoCopyWith(_CleaningCapacityPriceDto value, $Res Function(_CleaningCapacityPriceDto) _then) = __$CleaningCapacityPriceDtoCopyWithImpl;
@override @useResult
$Res call({
 String capacityId, double price
});




}
/// @nodoc
class __$CleaningCapacityPriceDtoCopyWithImpl<$Res>
    implements _$CleaningCapacityPriceDtoCopyWith<$Res> {
  __$CleaningCapacityPriceDtoCopyWithImpl(this._self, this._then);

  final _CleaningCapacityPriceDto _self;
  final $Res Function(_CleaningCapacityPriceDto) _then;

/// Create a copy of CleaningCapacityPriceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? capacityId = null,Object? price = null,}) {
  return _then(_CleaningCapacityPriceDto(
capacityId: null == capacityId ? _self.capacityId : capacityId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
