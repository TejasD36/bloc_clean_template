// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WaterTypesDto {

 String get slug; List<WaterTypeDto> get waterTypeOptions;
/// Create a copy of WaterTypesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTypesDtoCopyWith<WaterTypesDto> get copyWith => _$WaterTypesDtoCopyWithImpl<WaterTypesDto>(this as WaterTypesDto, _$identity);

  /// Serializes this WaterTypesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.waterTypeOptions, waterTypeOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(waterTypeOptions));

@override
String toString() {
  return 'WaterTypesDto(slug: $slug, waterTypeOptions: $waterTypeOptions)';
}


}

/// @nodoc
abstract mixin class $WaterTypesDtoCopyWith<$Res>  {
  factory $WaterTypesDtoCopyWith(WaterTypesDto value, $Res Function(WaterTypesDto) _then) = _$WaterTypesDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<WaterTypeDto> waterTypeOptions
});




}
/// @nodoc
class _$WaterTypesDtoCopyWithImpl<$Res>
    implements $WaterTypesDtoCopyWith<$Res> {
  _$WaterTypesDtoCopyWithImpl(this._self, this._then);

  final WaterTypesDto _self;
  final $Res Function(WaterTypesDto) _then;

/// Create a copy of WaterTypesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? waterTypeOptions = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,waterTypeOptions: null == waterTypeOptions ? _self.waterTypeOptions : waterTypeOptions // ignore: cast_nullable_to_non_nullable
as List<WaterTypeDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterTypesDto].
extension WaterTypesDtoPatterns on WaterTypesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterTypesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterTypesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterTypesDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterTypesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterTypesDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterTypesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<WaterTypeDto> waterTypeOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterTypesDto() when $default != null:
return $default(_that.slug,_that.waterTypeOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<WaterTypeDto> waterTypeOptions)  $default,) {final _that = this;
switch (_that) {
case _WaterTypesDto():
return $default(_that.slug,_that.waterTypeOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<WaterTypeDto> waterTypeOptions)?  $default,) {final _that = this;
switch (_that) {
case _WaterTypesDto() when $default != null:
return $default(_that.slug,_that.waterTypeOptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterTypesDto implements WaterTypesDto {
  const _WaterTypesDto({this.slug = '', final  List<WaterTypeDto> waterTypeOptions = const <WaterTypeDto>[]}): _waterTypeOptions = waterTypeOptions;
  factory _WaterTypesDto.fromJson(Map<String, dynamic> json) => _$WaterTypesDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<WaterTypeDto> _waterTypeOptions;
@override@JsonKey() List<WaterTypeDto> get waterTypeOptions {
  if (_waterTypeOptions is EqualUnmodifiableListView) return _waterTypeOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waterTypeOptions);
}


/// Create a copy of WaterTypesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterTypesDtoCopyWith<_WaterTypesDto> get copyWith => __$WaterTypesDtoCopyWithImpl<_WaterTypesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterTypesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterTypesDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._waterTypeOptions, _waterTypeOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_waterTypeOptions));

@override
String toString() {
  return 'WaterTypesDto(slug: $slug, waterTypeOptions: $waterTypeOptions)';
}


}

/// @nodoc
abstract mixin class _$WaterTypesDtoCopyWith<$Res> implements $WaterTypesDtoCopyWith<$Res> {
  factory _$WaterTypesDtoCopyWith(_WaterTypesDto value, $Res Function(_WaterTypesDto) _then) = __$WaterTypesDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<WaterTypeDto> waterTypeOptions
});




}
/// @nodoc
class __$WaterTypesDtoCopyWithImpl<$Res>
    implements _$WaterTypesDtoCopyWith<$Res> {
  __$WaterTypesDtoCopyWithImpl(this._self, this._then);

  final _WaterTypesDto _self;
  final $Res Function(_WaterTypesDto) _then;

/// Create a copy of WaterTypesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? waterTypeOptions = null,}) {
  return _then(_WaterTypesDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,waterTypeOptions: null == waterTypeOptions ? _self._waterTypeOptions : waterTypeOptions // ignore: cast_nullable_to_non_nullable
as List<WaterTypeDto>,
  ));
}


}


/// @nodoc
mixin _$WaterTypeDto {

 String get id; String get title; String get description; String? get icon;
/// Create a copy of WaterTypeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTypeDtoCopyWith<WaterTypeDto> get copyWith => _$WaterTypeDtoCopyWithImpl<WaterTypeDto>(this as WaterTypeDto, _$identity);

  /// Serializes this WaterTypeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon);

@override
String toString() {
  return 'WaterTypeDto(id: $id, title: $title, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WaterTypeDtoCopyWith<$Res>  {
  factory $WaterTypeDtoCopyWith(WaterTypeDto value, $Res Function(WaterTypeDto) _then) = _$WaterTypeDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String? icon
});




}
/// @nodoc
class _$WaterTypeDtoCopyWithImpl<$Res>
    implements $WaterTypeDtoCopyWith<$Res> {
  _$WaterTypeDtoCopyWithImpl(this._self, this._then);

  final WaterTypeDto _self;
  final $Res Function(WaterTypeDto) _then;

/// Create a copy of WaterTypeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WaterTypeDto].
extension WaterTypeDtoPatterns on WaterTypeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaterTypeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaterTypeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaterTypeDto value)  $default,){
final _that = this;
switch (_that) {
case _WaterTypeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaterTypeDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaterTypeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaterTypeDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _WaterTypeDto():
return $default(_that.id,_that.title,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _WaterTypeDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaterTypeDto implements WaterTypeDto {
  const _WaterTypeDto({this.id = '', this.title = '', this.description = '', this.icon});
  factory _WaterTypeDto.fromJson(Map<String, dynamic> json) => _$WaterTypeDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override final  String? icon;

/// Create a copy of WaterTypeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaterTypeDtoCopyWith<_WaterTypeDto> get copyWith => __$WaterTypeDtoCopyWithImpl<_WaterTypeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaterTypeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaterTypeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon);

@override
String toString() {
  return 'WaterTypeDto(id: $id, title: $title, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WaterTypeDtoCopyWith<$Res> implements $WaterTypeDtoCopyWith<$Res> {
  factory _$WaterTypeDtoCopyWith(_WaterTypeDto value, $Res Function(_WaterTypeDto) _then) = __$WaterTypeDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String? icon
});




}
/// @nodoc
class __$WaterTypeDtoCopyWithImpl<$Res>
    implements _$WaterTypeDtoCopyWith<$Res> {
  __$WaterTypeDtoCopyWithImpl(this._self, this._then);

  final _WaterTypeDto _self;
  final $Res Function(_WaterTypeDto) _then;

/// Create a copy of WaterTypeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = freezed,}) {
  return _then(_WaterTypeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
