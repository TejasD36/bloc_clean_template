// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tanker_capacity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TankerCapacitiesDto {

 String get slug; List<TankerCapacityDto> get capacityOptions;
/// Create a copy of TankerCapacitiesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TankerCapacitiesDtoCopyWith<TankerCapacitiesDto> get copyWith => _$TankerCapacitiesDtoCopyWithImpl<TankerCapacitiesDto>(this as TankerCapacitiesDto, _$identity);

  /// Serializes this TankerCapacitiesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacitiesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.capacityOptions, capacityOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(capacityOptions));

@override
String toString() {
  return 'TankerCapacitiesDto(slug: $slug, capacityOptions: $capacityOptions)';
}


}

/// @nodoc
abstract mixin class $TankerCapacitiesDtoCopyWith<$Res>  {
  factory $TankerCapacitiesDtoCopyWith(TankerCapacitiesDto value, $Res Function(TankerCapacitiesDto) _then) = _$TankerCapacitiesDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<TankerCapacityDto> capacityOptions
});




}
/// @nodoc
class _$TankerCapacitiesDtoCopyWithImpl<$Res>
    implements $TankerCapacitiesDtoCopyWith<$Res> {
  _$TankerCapacitiesDtoCopyWithImpl(this._self, this._then);

  final TankerCapacitiesDto _self;
  final $Res Function(TankerCapacitiesDto) _then;

/// Create a copy of TankerCapacitiesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? capacityOptions = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,capacityOptions: null == capacityOptions ? _self.capacityOptions : capacityOptions // ignore: cast_nullable_to_non_nullable
as List<TankerCapacityDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TankerCapacitiesDto].
extension TankerCapacitiesDtoPatterns on TankerCapacitiesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TankerCapacitiesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TankerCapacitiesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TankerCapacitiesDto value)  $default,){
final _that = this;
switch (_that) {
case _TankerCapacitiesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TankerCapacitiesDto value)?  $default,){
final _that = this;
switch (_that) {
case _TankerCapacitiesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<TankerCapacityDto> capacityOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TankerCapacitiesDto() when $default != null:
return $default(_that.slug,_that.capacityOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<TankerCapacityDto> capacityOptions)  $default,) {final _that = this;
switch (_that) {
case _TankerCapacitiesDto():
return $default(_that.slug,_that.capacityOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<TankerCapacityDto> capacityOptions)?  $default,) {final _that = this;
switch (_that) {
case _TankerCapacitiesDto() when $default != null:
return $default(_that.slug,_that.capacityOptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TankerCapacitiesDto implements TankerCapacitiesDto {
  const _TankerCapacitiesDto({this.slug = '', final  List<TankerCapacityDto> capacityOptions = const <TankerCapacityDto>[]}): _capacityOptions = capacityOptions;
  factory _TankerCapacitiesDto.fromJson(Map<String, dynamic> json) => _$TankerCapacitiesDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<TankerCapacityDto> _capacityOptions;
@override@JsonKey() List<TankerCapacityDto> get capacityOptions {
  if (_capacityOptions is EqualUnmodifiableListView) return _capacityOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capacityOptions);
}


/// Create a copy of TankerCapacitiesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TankerCapacitiesDtoCopyWith<_TankerCapacitiesDto> get copyWith => __$TankerCapacitiesDtoCopyWithImpl<_TankerCapacitiesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TankerCapacitiesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TankerCapacitiesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._capacityOptions, _capacityOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_capacityOptions));

@override
String toString() {
  return 'TankerCapacitiesDto(slug: $slug, capacityOptions: $capacityOptions)';
}


}

/// @nodoc
abstract mixin class _$TankerCapacitiesDtoCopyWith<$Res> implements $TankerCapacitiesDtoCopyWith<$Res> {
  factory _$TankerCapacitiesDtoCopyWith(_TankerCapacitiesDto value, $Res Function(_TankerCapacitiesDto) _then) = __$TankerCapacitiesDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<TankerCapacityDto> capacityOptions
});




}
/// @nodoc
class __$TankerCapacitiesDtoCopyWithImpl<$Res>
    implements _$TankerCapacitiesDtoCopyWith<$Res> {
  __$TankerCapacitiesDtoCopyWithImpl(this._self, this._then);

  final _TankerCapacitiesDto _self;
  final $Res Function(_TankerCapacitiesDto) _then;

/// Create a copy of TankerCapacitiesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? capacityOptions = null,}) {
  return _then(_TankerCapacitiesDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,capacityOptions: null == capacityOptions ? _self._capacityOptions : capacityOptions // ignore: cast_nullable_to_non_nullable
as List<TankerCapacityDto>,
  ));
}


}


/// @nodoc
mixin _$TankerCapacityDto {

 String get id; String get title; int get capacityLiters; String get description; double get price; String get currency; String? get image;
/// Create a copy of TankerCapacityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TankerCapacityDtoCopyWith<TankerCapacityDto> get copyWith => _$TankerCapacityDtoCopyWithImpl<TankerCapacityDto>(this as TankerCapacityDto, _$identity);

  /// Serializes this TankerCapacityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.capacityLiters, capacityLiters) || other.capacityLiters == capacityLiters)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,capacityLiters,description,price,currency,image);

@override
String toString() {
  return 'TankerCapacityDto(id: $id, title: $title, capacityLiters: $capacityLiters, description: $description, price: $price, currency: $currency, image: $image)';
}


}

/// @nodoc
abstract mixin class $TankerCapacityDtoCopyWith<$Res>  {
  factory $TankerCapacityDtoCopyWith(TankerCapacityDto value, $Res Function(TankerCapacityDto) _then) = _$TankerCapacityDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, int capacityLiters, String description, double price, String currency, String? image
});




}
/// @nodoc
class _$TankerCapacityDtoCopyWithImpl<$Res>
    implements $TankerCapacityDtoCopyWith<$Res> {
  _$TankerCapacityDtoCopyWithImpl(this._self, this._then);

  final TankerCapacityDto _self;
  final $Res Function(TankerCapacityDto) _then;

/// Create a copy of TankerCapacityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? capacityLiters = null,Object? description = null,Object? price = null,Object? currency = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,capacityLiters: null == capacityLiters ? _self.capacityLiters : capacityLiters // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TankerCapacityDto].
extension TankerCapacityDtoPatterns on TankerCapacityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TankerCapacityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TankerCapacityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TankerCapacityDto value)  $default,){
final _that = this;
switch (_that) {
case _TankerCapacityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TankerCapacityDto value)?  $default,){
final _that = this;
switch (_that) {
case _TankerCapacityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int capacityLiters,  String description,  double price,  String currency,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TankerCapacityDto() when $default != null:
return $default(_that.id,_that.title,_that.capacityLiters,_that.description,_that.price,_that.currency,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int capacityLiters,  String description,  double price,  String currency,  String? image)  $default,) {final _that = this;
switch (_that) {
case _TankerCapacityDto():
return $default(_that.id,_that.title,_that.capacityLiters,_that.description,_that.price,_that.currency,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int capacityLiters,  String description,  double price,  String currency,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _TankerCapacityDto() when $default != null:
return $default(_that.id,_that.title,_that.capacityLiters,_that.description,_that.price,_that.currency,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TankerCapacityDto implements TankerCapacityDto {
  const _TankerCapacityDto({this.id = '', this.title = '', this.capacityLiters = 0, this.description = '', this.price = 0, this.currency = '₹', this.image});
  factory _TankerCapacityDto.fromJson(Map<String, dynamic> json) => _$TankerCapacityDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  int capacityLiters;
@override@JsonKey() final  String description;
@override@JsonKey() final  double price;
@override@JsonKey() final  String currency;
@override final  String? image;

/// Create a copy of TankerCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TankerCapacityDtoCopyWith<_TankerCapacityDto> get copyWith => __$TankerCapacityDtoCopyWithImpl<_TankerCapacityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TankerCapacityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TankerCapacityDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.capacityLiters, capacityLiters) || other.capacityLiters == capacityLiters)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,capacityLiters,description,price,currency,image);

@override
String toString() {
  return 'TankerCapacityDto(id: $id, title: $title, capacityLiters: $capacityLiters, description: $description, price: $price, currency: $currency, image: $image)';
}


}

/// @nodoc
abstract mixin class _$TankerCapacityDtoCopyWith<$Res> implements $TankerCapacityDtoCopyWith<$Res> {
  factory _$TankerCapacityDtoCopyWith(_TankerCapacityDto value, $Res Function(_TankerCapacityDto) _then) = __$TankerCapacityDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int capacityLiters, String description, double price, String currency, String? image
});




}
/// @nodoc
class __$TankerCapacityDtoCopyWithImpl<$Res>
    implements _$TankerCapacityDtoCopyWith<$Res> {
  __$TankerCapacityDtoCopyWithImpl(this._self, this._then);

  final _TankerCapacityDto _self;
  final $Res Function(_TankerCapacityDto) _then;

/// Create a copy of TankerCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? capacityLiters = null,Object? description = null,Object? price = null,Object? currency = null,Object? image = freezed,}) {
  return _then(_TankerCapacityDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,capacityLiters: null == capacityLiters ? _self.capacityLiters : capacityLiters // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
