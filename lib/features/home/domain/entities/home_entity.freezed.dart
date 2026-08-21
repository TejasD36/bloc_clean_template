// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEntity {

 String get userName; List<HomeBannerEntity> get banners; List<HomeServiceEntity> get services;
/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<HomeEntity> get copyWith => _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEntity&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other.banners, banners)&&const DeepCollectionEquality().equals(other.services, services));
}


@override
int get hashCode => Object.hash(runtimeType,userName,const DeepCollectionEquality().hash(banners),const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'HomeEntity(userName: $userName, banners: $banners, services: $services)';
}


}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res>  {
  factory $HomeEntityCopyWith(HomeEntity value, $Res Function(HomeEntity) _then) = _$HomeEntityCopyWithImpl;
@useResult
$Res call({
 String userName, List<HomeBannerEntity> banners, List<HomeServiceEntity> services
});




}
/// @nodoc
class _$HomeEntityCopyWithImpl<$Res>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._self, this._then);

  final HomeEntity _self;
  final $Res Function(HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? banners = null,Object? services = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<HomeBannerEntity>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<HomeServiceEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEntity].
extension HomeEntityPatterns on HomeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  List<HomeBannerEntity> banners,  List<HomeServiceEntity> services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  List<HomeBannerEntity> banners,  List<HomeServiceEntity> services)  $default,) {final _that = this;
switch (_that) {
case _HomeEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  List<HomeBannerEntity> banners,  List<HomeServiceEntity> services)?  $default,) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.userName,_that.banners,_that.services);case _:
  return null;

}
}

}

/// @nodoc


class _HomeEntity implements HomeEntity {
  const _HomeEntity({this.userName = '', final  List<HomeBannerEntity> banners = const <HomeBannerEntity>[], final  List<HomeServiceEntity> services = const <HomeServiceEntity>[]}): _banners = banners,_services = services;
  

@override@JsonKey() final  String userName;
 final  List<HomeBannerEntity> _banners;
@override@JsonKey() List<HomeBannerEntity> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

 final  List<HomeServiceEntity> _services;
@override@JsonKey() List<HomeServiceEntity> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeEntityCopyWith<_HomeEntity> get copyWith => __$HomeEntityCopyWithImpl<_HomeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeEntity&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other._banners, _banners)&&const DeepCollectionEquality().equals(other._services, _services));
}


@override
int get hashCode => Object.hash(runtimeType,userName,const DeepCollectionEquality().hash(_banners),const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'HomeEntity(userName: $userName, banners: $banners, services: $services)';
}


}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res> implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(_HomeEntity value, $Res Function(_HomeEntity) _then) = __$HomeEntityCopyWithImpl;
@override @useResult
$Res call({
 String userName, List<HomeBannerEntity> banners, List<HomeServiceEntity> services
});




}
/// @nodoc
class __$HomeEntityCopyWithImpl<$Res>
    implements _$HomeEntityCopyWith<$Res> {
  __$HomeEntityCopyWithImpl(this._self, this._then);

  final _HomeEntity _self;
  final $Res Function(_HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? banners = null,Object? services = null,}) {
  return _then(_HomeEntity(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<HomeBannerEntity>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<HomeServiceEntity>,
  ));
}


}

/// @nodoc
mixin _$HomeBannerEntity {

 int get id; String get imageUrl; String? get linkUrl;
/// Create a copy of HomeBannerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBannerEntityCopyWith<HomeBannerEntity> get copyWith => _$HomeBannerEntityCopyWithImpl<HomeBannerEntity>(this as HomeBannerEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBannerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,linkUrl);

@override
String toString() {
  return 'HomeBannerEntity(id: $id, imageUrl: $imageUrl, linkUrl: $linkUrl)';
}


}

/// @nodoc
abstract mixin class $HomeBannerEntityCopyWith<$Res>  {
  factory $HomeBannerEntityCopyWith(HomeBannerEntity value, $Res Function(HomeBannerEntity) _then) = _$HomeBannerEntityCopyWithImpl;
@useResult
$Res call({
 int id, String imageUrl, String? linkUrl
});




}
/// @nodoc
class _$HomeBannerEntityCopyWithImpl<$Res>
    implements $HomeBannerEntityCopyWith<$Res> {
  _$HomeBannerEntityCopyWithImpl(this._self, this._then);

  final HomeBannerEntity _self;
  final $Res Function(HomeBannerEntity) _then;

/// Create a copy of HomeBannerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? linkUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,linkUrl: freezed == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeBannerEntity].
extension HomeBannerEntityPatterns on HomeBannerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeBannerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBannerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeBannerEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeBannerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeBannerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeBannerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? linkUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBannerEntity() when $default != null:
return $default(_that.id,_that.imageUrl,_that.linkUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String imageUrl,  String? linkUrl)  $default,) {final _that = this;
switch (_that) {
case _HomeBannerEntity():
return $default(_that.id,_that.imageUrl,_that.linkUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String imageUrl,  String? linkUrl)?  $default,) {final _that = this;
switch (_that) {
case _HomeBannerEntity() when $default != null:
return $default(_that.id,_that.imageUrl,_that.linkUrl);case _:
  return null;

}
}

}

/// @nodoc


class _HomeBannerEntity implements HomeBannerEntity {
  const _HomeBannerEntity({required this.id, required this.imageUrl, this.linkUrl});
  

@override final  int id;
@override final  String imageUrl;
@override final  String? linkUrl;

/// Create a copy of HomeBannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeBannerEntityCopyWith<_HomeBannerEntity> get copyWith => __$HomeBannerEntityCopyWithImpl<_HomeBannerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBannerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,imageUrl,linkUrl);

@override
String toString() {
  return 'HomeBannerEntity(id: $id, imageUrl: $imageUrl, linkUrl: $linkUrl)';
}


}

/// @nodoc
abstract mixin class _$HomeBannerEntityCopyWith<$Res> implements $HomeBannerEntityCopyWith<$Res> {
  factory _$HomeBannerEntityCopyWith(_HomeBannerEntity value, $Res Function(_HomeBannerEntity) _then) = __$HomeBannerEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String imageUrl, String? linkUrl
});




}
/// @nodoc
class __$HomeBannerEntityCopyWithImpl<$Res>
    implements _$HomeBannerEntityCopyWith<$Res> {
  __$HomeBannerEntityCopyWithImpl(this._self, this._then);

  final _HomeBannerEntity _self;
  final $Res Function(_HomeBannerEntity) _then;

/// Create a copy of HomeBannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? linkUrl = freezed,}) {
  return _then(_HomeBannerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,linkUrl: freezed == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$HomeServiceEntity {

 int get id; String get name; String get slug; String get description; String get iconUrl; bool get isPaymentRequired;
/// Create a copy of HomeServiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeServiceEntityCopyWith<HomeServiceEntity> get copyWith => _$HomeServiceEntityCopyWithImpl<HomeServiceEntity>(this as HomeServiceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isPaymentRequired, isPaymentRequired) || other.isPaymentRequired == isPaymentRequired));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconUrl,isPaymentRequired);

@override
String toString() {
  return 'HomeServiceEntity(id: $id, name: $name, slug: $slug, description: $description, iconUrl: $iconUrl, isPaymentRequired: $isPaymentRequired)';
}


}

/// @nodoc
abstract mixin class $HomeServiceEntityCopyWith<$Res>  {
  factory $HomeServiceEntityCopyWith(HomeServiceEntity value, $Res Function(HomeServiceEntity) _then) = _$HomeServiceEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String description, String iconUrl, bool isPaymentRequired
});




}
/// @nodoc
class _$HomeServiceEntityCopyWithImpl<$Res>
    implements $HomeServiceEntityCopyWith<$Res> {
  _$HomeServiceEntityCopyWithImpl(this._self, this._then);

  final HomeServiceEntity _self;
  final $Res Function(HomeServiceEntity) _then;

/// Create a copy of HomeServiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? iconUrl = null,Object? isPaymentRequired = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,isPaymentRequired: null == isPaymentRequired ? _self.isPaymentRequired : isPaymentRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeServiceEntity].
extension HomeServiceEntityPatterns on HomeServiceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeServiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeServiceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeServiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeServiceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeServiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeServiceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  String iconUrl,  bool isPaymentRequired)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeServiceEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.isPaymentRequired);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String description,  String iconUrl,  bool isPaymentRequired)  $default,) {final _that = this;
switch (_that) {
case _HomeServiceEntity():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.isPaymentRequired);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String description,  String iconUrl,  bool isPaymentRequired)?  $default,) {final _that = this;
switch (_that) {
case _HomeServiceEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.iconUrl,_that.isPaymentRequired);case _:
  return null;

}
}

}

/// @nodoc


class _HomeServiceEntity implements HomeServiceEntity {
  const _HomeServiceEntity({required this.id, required this.name, required this.slug, required this.description, required this.iconUrl, required this.isPaymentRequired});
  

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  String description;
@override final  String iconUrl;
@override final  bool isPaymentRequired;

/// Create a copy of HomeServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeServiceEntityCopyWith<_HomeServiceEntity> get copyWith => __$HomeServiceEntityCopyWithImpl<_HomeServiceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isPaymentRequired, isPaymentRequired) || other.isPaymentRequired == isPaymentRequired));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,iconUrl,isPaymentRequired);

@override
String toString() {
  return 'HomeServiceEntity(id: $id, name: $name, slug: $slug, description: $description, iconUrl: $iconUrl, isPaymentRequired: $isPaymentRequired)';
}


}

/// @nodoc
abstract mixin class _$HomeServiceEntityCopyWith<$Res> implements $HomeServiceEntityCopyWith<$Res> {
  factory _$HomeServiceEntityCopyWith(_HomeServiceEntity value, $Res Function(_HomeServiceEntity) _then) = __$HomeServiceEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String description, String iconUrl, bool isPaymentRequired
});




}
/// @nodoc
class __$HomeServiceEntityCopyWithImpl<$Res>
    implements _$HomeServiceEntityCopyWith<$Res> {
  __$HomeServiceEntityCopyWithImpl(this._self, this._then);

  final _HomeServiceEntity _self;
  final $Res Function(_HomeServiceEntity) _then;

/// Create a copy of HomeServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? description = null,Object? iconUrl = null,Object? isPaymentRequired = null,}) {
  return _then(_HomeServiceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,iconUrl: null == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String,isPaymentRequired: null == isPaymentRequired ? _self.isPaymentRequired : isPaymentRequired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
