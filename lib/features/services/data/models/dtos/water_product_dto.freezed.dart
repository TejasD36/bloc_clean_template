// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterProductsDto {

 String get slug; List<WaterProductDto> get products;
/// Create a copy of WaterProductsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterProductsDtoCopyWith<WaterProductsDto> get copyWith => _$WaterProductsDtoCopyWithImpl<WaterProductsDto>(this as WaterProductsDto, _$identity);

  /// Serializes this WaterProductsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductsDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'WaterProductsDto(slug: $slug, products: $products)';
}


}

/// @nodoc
abstract mixin class $WaterProductsDtoCopyWith<$Res>  {
  factory $WaterProductsDtoCopyWith(WaterProductsDto value, $Res Function(WaterProductsDto) _then) = _$WaterProductsDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<WaterProductDto> products
});




}
/// @nodoc
class _$WaterProductsDtoCopyWithImpl<$Res>
    implements $WaterProductsDtoCopyWith<$Res> {
  _$WaterProductsDtoCopyWithImpl(this._self, this._then);

  final WaterProductsDto _self;
  final $Res Function(WaterProductsDto) _then;

/// Create a copy of WaterProductsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? products = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<WaterProductDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterProductsDto].
extension WaterProductsDtoPatterns on WaterProductsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterProductsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterProductsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterProductsDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterProductsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterProductsDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterProductsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<WaterProductDto> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterProductsDto() when $default != null:
return $default(_that.slug,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<WaterProductDto> products)  $default,) {final _that = this;
switch (_that) {
case _WaterProductsDto():
return $default(_that.slug,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<WaterProductDto> products)?  $default,) {final _that = this;
switch (_that) {
case _WaterProductsDto() when $default != null:
return $default(_that.slug,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterProductsDto implements WaterProductsDto {
  const _WaterProductsDto({this.slug = '', final  List<WaterProductDto> products = const <WaterProductDto>[]}): _products = products;
  factory _WaterProductsDto.fromJson(Map<String, dynamic> json) => _$WaterProductsDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<WaterProductDto> _products;
@override@JsonKey() List<WaterProductDto> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of WaterProductsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterProductsDtoCopyWith<_WaterProductsDto> get copyWith => __$WaterProductsDtoCopyWithImpl<_WaterProductsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterProductsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterProductsDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'WaterProductsDto(slug: $slug, products: $products)';
}


}

/// @nodoc
abstract mixin class _$WaterProductsDtoCopyWith<$Res> implements $WaterProductsDtoCopyWith<$Res> {
  factory _$WaterProductsDtoCopyWith(_WaterProductsDto value, $Res Function(_WaterProductsDto) _then) = __$WaterProductsDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<WaterProductDto> products
});




}
/// @nodoc
class __$WaterProductsDtoCopyWithImpl<$Res>
    implements _$WaterProductsDtoCopyWith<$Res> {
  __$WaterProductsDtoCopyWithImpl(this._self, this._then);

  final _WaterProductsDto _self;
  final $Res Function(_WaterProductsDto) _then;

/// Create a copy of WaterProductsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? products = null,}) {
  return _then(_WaterProductsDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<WaterProductDto>,
  ));
}


}


/// @nodoc
mixin _$WaterProductDto {

 String get id; String get title; double get price; String get currency; String? get image; int get defaultQuantity;
/// Create a copy of WaterProductDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterProductDtoCopyWith<WaterProductDto> get copyWith => _$WaterProductDtoCopyWithImpl<WaterProductDto>(this as WaterProductDto, _$identity);

  /// Serializes this WaterProductDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.image, image) || other.image == image)&&(identical(other.defaultQuantity, defaultQuantity) || other.defaultQuantity == defaultQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,currency,image,defaultQuantity);

@override
String toString() {
  return 'WaterProductDto(id: $id, title: $title, price: $price, currency: $currency, image: $image, defaultQuantity: $defaultQuantity)';
}


}

/// @nodoc
abstract mixin class $WaterProductDtoCopyWith<$Res>  {
  factory $WaterProductDtoCopyWith(WaterProductDto value, $Res Function(WaterProductDto) _then) = _$WaterProductDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, double price, String currency, String? image, int defaultQuantity
});




}
/// @nodoc
class _$WaterProductDtoCopyWithImpl<$Res>
    implements $WaterProductDtoCopyWith<$Res> {
  _$WaterProductDtoCopyWithImpl(this._self, this._then);

  final WaterProductDto _self;
  final $Res Function(WaterProductDto) _then;

/// Create a copy of WaterProductDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? currency = null,Object? image = freezed,Object? defaultQuantity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,defaultQuantity: null == defaultQuantity ? _self.defaultQuantity : defaultQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterProductDto].
extension WaterProductDtoPatterns on WaterProductDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterProductDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterProductDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterProductDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterProductDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterProductDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterProductDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String currency,  String? image,  int defaultQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterProductDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.currency,_that.image,_that.defaultQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String currency,  String? image,  int defaultQuantity)  $default,) {final _that = this;
switch (_that) {
case _WaterProductDto():
return $default(_that.id,_that.title,_that.price,_that.currency,_that.image,_that.defaultQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double price,  String currency,  String? image,  int defaultQuantity)?  $default,) {final _that = this;
switch (_that) {
case _WaterProductDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.currency,_that.image,_that.defaultQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterProductDto implements WaterProductDto {
  const _WaterProductDto({this.id = '', this.title = '', this.price = 0, this.currency = '₹', this.image, this.defaultQuantity = 0});
  factory _WaterProductDto.fromJson(Map<String, dynamic> json) => _$WaterProductDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  double price;
@override@JsonKey() final  String currency;
@override final  String? image;
@override@JsonKey() final  int defaultQuantity;

/// Create a copy of WaterProductDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterProductDtoCopyWith<_WaterProductDto> get copyWith => __$WaterProductDtoCopyWithImpl<_WaterProductDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterProductDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterProductDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.image, image) || other.image == image)&&(identical(other.defaultQuantity, defaultQuantity) || other.defaultQuantity == defaultQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,currency,image,defaultQuantity);

@override
String toString() {
  return 'WaterProductDto(id: $id, title: $title, price: $price, currency: $currency, image: $image, defaultQuantity: $defaultQuantity)';
}


}

/// @nodoc
abstract mixin class _$WaterProductDtoCopyWith<$Res> implements $WaterProductDtoCopyWith<$Res> {
  factory _$WaterProductDtoCopyWith(_WaterProductDto value, $Res Function(_WaterProductDto) _then) = __$WaterProductDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double price, String currency, String? image, int defaultQuantity
});




}
/// @nodoc
class __$WaterProductDtoCopyWithImpl<$Res>
    implements _$WaterProductDtoCopyWith<$Res> {
  __$WaterProductDtoCopyWithImpl(this._self, this._then);

  final _WaterProductDto _self;
  final $Res Function(_WaterProductDto) _then;

/// Create a copy of WaterProductDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? currency = null,Object? image = freezed,Object? defaultQuantity = null,}) {
  return _then(_WaterProductDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,defaultQuantity: null == defaultQuantity ? _self.defaultQuantity : defaultQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
