// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDto {

 String get userName; List<HomeBannerDto> get banners; List<HomeServiceDto> get services;
/// Create a copy of HomeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDtoCopyWith<HomeDto> get copyWith => _$HomeDtoCopyWithImpl<HomeDto>(this as HomeDto, _$identity);

  /// Serializes this HomeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDto&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'HomeDto(userName: $userName, banners: $banners, services: $services)';
}


}

/// @nodoc
abstract mixin class $HomeDtoCopyWith<$Res>  {
  factory $HomeDtoCopyWith(HomeDto value, $Res Function(HomeDto) _then) = _$HomeDtoCopyWithImpl;
@useResult
$Res call({
 String userName, List<HomeBannerDto> banners, List<HomeServiceDto> services
});




}
/// @nodoc
class _$HomeDtoCopyWithImpl<$Res>
    implements $HomeDtoCopyWith<$Res> {
  _$HomeDtoCopyWithImpl(this._self, this._then);

  final HomeDto _self;
  final $Res Function(HomeDto) _then;

/// Create a copy of HomeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? banners = null,Object? services = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<HomeBannerDto>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<HomeServiceDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeDto].
extension HomeDtoPatterns on HomeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  List<HomeBannerDto> banners,  List<HomeServiceDto> services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeDto() when $default != null:
return $default(_that.userName,_that.banners,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  List<HomeBannerDto> banners,  List<HomeServiceDto> services)  $default,) {final _that = this;
switch (_that) {
case _HomeDto():
return $default(_that.userName,_that.banners,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  List<HomeBannerDto> banners,  List<HomeServiceDto> services)?  $default,) {final _that = this;
switch (_that) {
case _HomeDto() when $default != null:
return $default(_that.userName,_that.banners,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeDto implements HomeDto {
  const _HomeDto({this.userName = '', final  List<HomeBannerDto> banners = const <HomeBannerDto>[], final  List<HomeServiceDto> services = const <HomeServiceDto>[]}): _banners = banners,_services = services;
  factory _HomeDto.fromJson(Map<String, dynamic> json) => _$HomeDtoFromJson(json);

@override@JsonKey() final  String userName;
 final  List<HomeBannerDto> _banners;
@override@JsonKey() List<HomeBannerDto> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

 final  List<HomeServiceDto> _services;
@override@JsonKey() List<HomeServiceDto> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of HomeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDtoCopyWith<_HomeDto> get copyWith => __$HomeDtoCopyWithImpl<_HomeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeDto&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userName,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'HomeDto(userName: $userName, banners: $banners, services: $services)';
}


}

/// @nodoc
abstract mixin class _$HomeDtoCopyWith<$Res> implements $HomeDtoCopyWith<$Res> {
  factory _$HomeDtoCopyWith(_HomeDto value, $Res Function(_HomeDto) _then) = __$HomeDtoCopyWithImpl;
@override @useResult
$Res call({
 String userName, List<HomeBannerDto> banners, List<HomeServiceDto> services
});




}
/// @nodoc
class __$HomeDtoCopyWithImpl<$Res>
    implements _$HomeDtoCopyWith<$Res> {
  __$HomeDtoCopyWithImpl(this._self, this._then);

  final _HomeDto _self;
  final $Res Function(_HomeDto) _then;

/// Create a copy of HomeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? banners = null,Object? services = null,}) {
  return _then(_HomeDto(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<HomeBannerDto>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<HomeServiceDto>,
  ));
}


}


/// @nodoc
mixin _$HomeBannerDto {

 int get id; String get image; String? get linkUrl;
/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBannerDtoCopyWith<HomeBannerDto> get copyWith => _$HomeBannerDtoCopyWithImpl<HomeBannerDto>(this as HomeBannerDto, _$identity);

  /// Serializes this HomeBannerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBannerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,linkUrl);

@override
String toString() {
  return 'HomeBannerDto(id: $id, image: $image, linkUrl: $linkUrl)';
}


}

/// @nodoc
abstract mixin class $HomeBannerDtoCopyWith<$Res>  {
  factory $HomeBannerDtoCopyWith(HomeBannerDto value, $Res Function(HomeBannerDto) _then) = _$HomeBannerDtoCopyWithImpl;
@useResult
$Res call({
 int id, String image, String? linkUrl
});




}
/// @nodoc
class _$HomeBannerDtoCopyWithImpl<$Res>
    implements $HomeBannerDtoCopyWith<$Res> {
  _$HomeBannerDtoCopyWithImpl(this._self, this._then);

  final HomeBannerDto _self;
  final $Res Function(HomeBannerDto) _then;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? image = null,Object? linkUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,linkUrl: freezed == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeBannerDto].
extension HomeBannerDtoPatterns on HomeBannerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeBannerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeBannerDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeBannerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeBannerDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String image,  String? linkUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that.id,_that.image,_that.linkUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String image,  String? linkUrl)  $default,) {final _that = this;
switch (_that) {
case _HomeBannerDto():
return $default(_that.id,_that.image,_that.linkUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String image,  String? linkUrl)?  $default,) {final _that = this;
switch (_that) {
case _HomeBannerDto() when $default != null:
return $default(_that.id,_that.image,_that.linkUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeBannerDto implements HomeBannerDto {
  const _HomeBannerDto({this.id = 0, this.image = '', this.linkUrl});
  factory _HomeBannerDto.fromJson(Map<String, dynamic> json) => _$HomeBannerDtoFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String image;
@override final  String? linkUrl;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeBannerDtoCopyWith<_HomeBannerDto> get copyWith => __$HomeBannerDtoCopyWithImpl<_HomeBannerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeBannerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBannerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,image,linkUrl);

@override
String toString() {
  return 'HomeBannerDto(id: $id, image: $image, linkUrl: $linkUrl)';
}


}

/// @nodoc
abstract mixin class _$HomeBannerDtoCopyWith<$Res> implements $HomeBannerDtoCopyWith<$Res> {
  factory _$HomeBannerDtoCopyWith(_HomeBannerDto value, $Res Function(_HomeBannerDto) _then) = __$HomeBannerDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String image, String? linkUrl
});




}
/// @nodoc
class __$HomeBannerDtoCopyWithImpl<$Res>
    implements _$HomeBannerDtoCopyWith<$Res> {
  __$HomeBannerDtoCopyWithImpl(this._self, this._then);

  final _HomeBannerDto _self;
  final $Res Function(_HomeBannerDto) _then;

/// Create a copy of HomeBannerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? image = null,Object? linkUrl = freezed,}) {
  return _then(_HomeBannerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,linkUrl: freezed == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HomeServiceDto {

 int get id; String get name; String get slug; String get description; String get icon; bool get isPaymentRequired;
/// Create a copy of HomeServiceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeServiceDtoCopyWith<HomeServiceDto> get copyWith => _$HomeServiceDtoCopyWithImpl<HomeServiceDto>(this as HomeServiceDto, _$identity);

  /// Serializes this HomeServiceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeServiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isPaymentRequired, isPaymentRequired) || other.isPaymentRequired == isPaymentRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,isPaymentRequired);

@override
String toString() {
  return 'HomeServiceDto(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, isPaymentRequired: $isPaymentRequired)';
}


}

/// @nodoc
abstract mixin class $HomeServiceDtoCopyWith<$Res>  {
  factory $HomeServiceDtoCopyWith(HomeServiceDto value, $Res Function(HomeServiceDto) _then) = _$HomeServiceDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String description, String icon, bool isPaymentRequired
});




}
/// @nodoc
class _$HomeServiceDtoCopyWithImpl<$Res>
    implements $HomeServiceDtoCopyWith<$Res> {
  _$HomeServiceDtoCopyWithImpl(this._self, this._then);

  final HomeServiceDto _self;
  final $Res Function(HomeServiceDto) _then;

/// Create a copy of HomeServiceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? isPaymentRequired = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isPaymentRequired: null == isPaymentRequired ? _self.isPaymentRequired : isPaymentRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeServiceDto].
extension HomeServiceDtoPatterns on HomeServiceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeServiceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeServiceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeServiceDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeServiceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeServiceDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeServiceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  String icon,  bool isPaymentRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeServiceDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.isPaymentRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  String icon,  bool isPaymentRequired)  $default,) {final _that = this;
switch (_that) {
case _HomeServiceDto():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.isPaymentRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String description,  String icon,  bool isPaymentRequired)?  $default,) {final _that = this;
switch (_that) {
case _HomeServiceDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.icon,_that.isPaymentRequired);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeServiceDto implements HomeServiceDto {
  const _HomeServiceDto({this.id = 0, this.name = '', this.slug = '', this.description = '', this.icon = '', this.isPaymentRequired = false});
  factory _HomeServiceDto.fromJson(Map<String, dynamic> json) => _$HomeServiceDtoFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String description;
@override@JsonKey() final  String icon;
@override@JsonKey() final  bool isPaymentRequired;

/// Create a copy of HomeServiceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeServiceDtoCopyWith<_HomeServiceDto> get copyWith => __$HomeServiceDtoCopyWithImpl<_HomeServiceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeServiceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeServiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isPaymentRequired, isPaymentRequired) || other.isPaymentRequired == isPaymentRequired));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,icon,isPaymentRequired);

@override
String toString() {
  return 'HomeServiceDto(id: $id, name: $name, slug: $slug, description: $description, icon: $icon, isPaymentRequired: $isPaymentRequired)';
}


}

/// @nodoc
abstract mixin class _$HomeServiceDtoCopyWith<$Res> implements $HomeServiceDtoCopyWith<$Res> {
  factory _$HomeServiceDtoCopyWith(_HomeServiceDto value, $Res Function(_HomeServiceDto) _then) = __$HomeServiceDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String description, String icon, bool isPaymentRequired
});




}
/// @nodoc
class __$HomeServiceDtoCopyWithImpl<$Res>
    implements _$HomeServiceDtoCopyWith<$Res> {
  __$HomeServiceDtoCopyWithImpl(this._self, this._then);

  final _HomeServiceDto _self;
  final $Res Function(_HomeServiceDto) _then;

/// Create a copy of HomeServiceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? icon = null,Object? isPaymentRequired = null,}) {
  return _then(_HomeServiceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,isPaymentRequired: null == isPaymentRequired ? _self.isPaymentRequired : isPaymentRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
