// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_testing_packages_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterTestingPackagesDto {

 String get slug; List<WaterTestingPackageDto> get testPackages;
/// Create a copy of WaterTestingPackagesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTestingPackagesDtoCopyWith<WaterTestingPackagesDto> get copyWith => _$WaterTestingPackagesDtoCopyWithImpl<WaterTestingPackagesDto>(this as WaterTestingPackagesDto, _$identity);

  /// Serializes this WaterTestingPackagesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTestingPackagesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.testPackages, testPackages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(testPackages));

@override
String toString() {
  return 'WaterTestingPackagesDto(slug: $slug, testPackages: $testPackages)';
}


}

/// @nodoc
abstract mixin class $WaterTestingPackagesDtoCopyWith<$Res>  {
  factory $WaterTestingPackagesDtoCopyWith(WaterTestingPackagesDto value, $Res Function(WaterTestingPackagesDto) _then) = _$WaterTestingPackagesDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<WaterTestingPackageDto> testPackages
});




}
/// @nodoc
class _$WaterTestingPackagesDtoCopyWithImpl<$Res>
    implements $WaterTestingPackagesDtoCopyWith<$Res> {
  _$WaterTestingPackagesDtoCopyWithImpl(this._self, this._then);

  final WaterTestingPackagesDto _self;
  final $Res Function(WaterTestingPackagesDto) _then;

/// Create a copy of WaterTestingPackagesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? testPackages = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testPackages: null == testPackages ? _self.testPackages : testPackages // ignore: cast_nullable_to_non_nullable
as List<WaterTestingPackageDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterTestingPackagesDto].
extension WaterTestingPackagesDtoPatterns on WaterTestingPackagesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterTestingPackagesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterTestingPackagesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterTestingPackagesDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterTestingPackagesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterTestingPackagesDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterTestingPackagesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<WaterTestingPackageDto> testPackages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterTestingPackagesDto() when $default != null:
return $default(_that.slug,_that.testPackages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<WaterTestingPackageDto> testPackages)  $default,) {final _that = this;
switch (_that) {
case _WaterTestingPackagesDto():
return $default(_that.slug,_that.testPackages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<WaterTestingPackageDto> testPackages)?  $default,) {final _that = this;
switch (_that) {
case _WaterTestingPackagesDto() when $default != null:
return $default(_that.slug,_that.testPackages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterTestingPackagesDto implements WaterTestingPackagesDto {
  const _WaterTestingPackagesDto({this.slug = '', final  List<WaterTestingPackageDto> testPackages = const <WaterTestingPackageDto>[]}): _testPackages = testPackages;
  factory _WaterTestingPackagesDto.fromJson(Map<String, dynamic> json) => _$WaterTestingPackagesDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<WaterTestingPackageDto> _testPackages;
@override@JsonKey() List<WaterTestingPackageDto> get testPackages {
  if (_testPackages is EqualUnmodifiableListView) return _testPackages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_testPackages);
}


/// Create a copy of WaterTestingPackagesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterTestingPackagesDtoCopyWith<_WaterTestingPackagesDto> get copyWith => __$WaterTestingPackagesDtoCopyWithImpl<_WaterTestingPackagesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterTestingPackagesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterTestingPackagesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._testPackages, _testPackages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_testPackages));

@override
String toString() {
  return 'WaterTestingPackagesDto(slug: $slug, testPackages: $testPackages)';
}


}

/// @nodoc
abstract mixin class _$WaterTestingPackagesDtoCopyWith<$Res> implements $WaterTestingPackagesDtoCopyWith<$Res> {
  factory _$WaterTestingPackagesDtoCopyWith(_WaterTestingPackagesDto value, $Res Function(_WaterTestingPackagesDto) _then) = __$WaterTestingPackagesDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<WaterTestingPackageDto> testPackages
});




}
/// @nodoc
class __$WaterTestingPackagesDtoCopyWithImpl<$Res>
    implements _$WaterTestingPackagesDtoCopyWith<$Res> {
  __$WaterTestingPackagesDtoCopyWithImpl(this._self, this._then);

  final _WaterTestingPackagesDto _self;
  final $Res Function(_WaterTestingPackagesDto) _then;

/// Create a copy of WaterTestingPackagesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? testPackages = null,}) {
  return _then(_WaterTestingPackagesDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,testPackages: null == testPackages ? _self._testPackages : testPackages // ignore: cast_nullable_to_non_nullable
as List<WaterTestingPackageDto>,
  ));
}


}


/// @nodoc
mixin _$WaterTestingPackageDto {

 String get id; String get title; double get price; String get currency; int get reportTimeHours; List<String> get features; String? get icon; bool get isDefault;
/// Create a copy of WaterTestingPackageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTestingPackageDtoCopyWith<WaterTestingPackageDto> get copyWith => _$WaterTestingPackageDtoCopyWithImpl<WaterTestingPackageDto>(this as WaterTestingPackageDto, _$identity);

  /// Serializes this WaterTestingPackageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTestingPackageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.reportTimeHours, reportTimeHours) || other.reportTimeHours == reportTimeHours)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,currency,reportTimeHours,const DeepCollectionEquality().hash(features),icon,isDefault);

@override
String toString() {
  return 'WaterTestingPackageDto(id: $id, title: $title, price: $price, currency: $currency, reportTimeHours: $reportTimeHours, features: $features, icon: $icon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $WaterTestingPackageDtoCopyWith<$Res>  {
  factory $WaterTestingPackageDtoCopyWith(WaterTestingPackageDto value, $Res Function(WaterTestingPackageDto) _then) = _$WaterTestingPackageDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, double price, String currency, int reportTimeHours, List<String> features, String? icon, bool isDefault
});




}
/// @nodoc
class _$WaterTestingPackageDtoCopyWithImpl<$Res>
    implements $WaterTestingPackageDtoCopyWith<$Res> {
  _$WaterTestingPackageDtoCopyWithImpl(this._self, this._then);

  final WaterTestingPackageDto _self;
  final $Res Function(WaterTestingPackageDto) _then;

/// Create a copy of WaterTestingPackageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? currency = null,Object? reportTimeHours = null,Object? features = null,Object? icon = freezed,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,reportTimeHours: null == reportTimeHours ? _self.reportTimeHours : reportTimeHours // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterTestingPackageDto].
extension WaterTestingPackageDtoPatterns on WaterTestingPackageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterTestingPackageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterTestingPackageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterTestingPackageDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterTestingPackageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterTestingPackageDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterTestingPackageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String currency,  int reportTimeHours,  List<String> features,  String? icon,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterTestingPackageDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.currency,_that.reportTimeHours,_that.features,_that.icon,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String currency,  int reportTimeHours,  List<String> features,  String? icon,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _WaterTestingPackageDto():
return $default(_that.id,_that.title,_that.price,_that.currency,_that.reportTimeHours,_that.features,_that.icon,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double price,  String currency,  int reportTimeHours,  List<String> features,  String? icon,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _WaterTestingPackageDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.currency,_that.reportTimeHours,_that.features,_that.icon,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterTestingPackageDto implements WaterTestingPackageDto {
  const _WaterTestingPackageDto({this.id = '', this.title = '', this.price = 0, this.currency = '₹', this.reportTimeHours = 0, final  List<String> features = const <String>[], this.icon, this.isDefault = false}): _features = features;
  factory _WaterTestingPackageDto.fromJson(Map<String, dynamic> json) => _$WaterTestingPackageDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  double price;
@override@JsonKey() final  String currency;
@override@JsonKey() final  int reportTimeHours;
 final  List<String> _features;
@override@JsonKey() List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override final  String? icon;
@override@JsonKey() final  bool isDefault;

/// Create a copy of WaterTestingPackageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterTestingPackageDtoCopyWith<_WaterTestingPackageDto> get copyWith => __$WaterTestingPackageDtoCopyWithImpl<_WaterTestingPackageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterTestingPackageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterTestingPackageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.reportTimeHours, reportTimeHours) || other.reportTimeHours == reportTimeHours)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,currency,reportTimeHours,const DeepCollectionEquality().hash(_features),icon,isDefault);

@override
String toString() {
  return 'WaterTestingPackageDto(id: $id, title: $title, price: $price, currency: $currency, reportTimeHours: $reportTimeHours, features: $features, icon: $icon, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$WaterTestingPackageDtoCopyWith<$Res> implements $WaterTestingPackageDtoCopyWith<$Res> {
  factory _$WaterTestingPackageDtoCopyWith(_WaterTestingPackageDto value, $Res Function(_WaterTestingPackageDto) _then) = __$WaterTestingPackageDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double price, String currency, int reportTimeHours, List<String> features, String? icon, bool isDefault
});




}
/// @nodoc
class __$WaterTestingPackageDtoCopyWithImpl<$Res>
    implements _$WaterTestingPackageDtoCopyWith<$Res> {
  __$WaterTestingPackageDtoCopyWithImpl(this._self, this._then);

  final _WaterTestingPackageDto _self;
  final $Res Function(_WaterTestingPackageDto) _then;

/// Create a copy of WaterTestingPackageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? currency = null,Object? reportTimeHours = null,Object? features = null,Object? icon = freezed,Object? isDefault = null,}) {
  return _then(_WaterTestingPackageDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,reportTimeHours: null == reportTimeHours ? _self.reportTimeHours : reportTimeHours // ignore: cast_nullable_to_non_nullable
as int,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
