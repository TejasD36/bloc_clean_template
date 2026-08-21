// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plumbing_service_options_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlumbingServiceOptionsDto {

 String get slug; List<PlumbingServiceOptionDto> get serviceOptions;
/// Create a copy of PlumbingServiceOptionsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlumbingServiceOptionsDtoCopyWith<PlumbingServiceOptionsDto> get copyWith => _$PlumbingServiceOptionsDtoCopyWithImpl<PlumbingServiceOptionsDto>(this as PlumbingServiceOptionsDto, _$identity);

  /// Serializes this PlumbingServiceOptionsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlumbingServiceOptionsDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other.serviceOptions, serviceOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(serviceOptions));

@override
String toString() {
  return 'PlumbingServiceOptionsDto(slug: $slug, serviceOptions: $serviceOptions)';
}


}

/// @nodoc
abstract mixin class $PlumbingServiceOptionsDtoCopyWith<$Res>  {
  factory $PlumbingServiceOptionsDtoCopyWith(PlumbingServiceOptionsDto value, $Res Function(PlumbingServiceOptionsDto) _then) = _$PlumbingServiceOptionsDtoCopyWithImpl;
@useResult
$Res call({
 String slug, List<PlumbingServiceOptionDto> serviceOptions
});




}
/// @nodoc
class _$PlumbingServiceOptionsDtoCopyWithImpl<$Res>
    implements $PlumbingServiceOptionsDtoCopyWith<$Res> {
  _$PlumbingServiceOptionsDtoCopyWithImpl(this._self, this._then);

  final PlumbingServiceOptionsDto _self;
  final $Res Function(PlumbingServiceOptionsDto) _then;

/// Create a copy of PlumbingServiceOptionsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? serviceOptions = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,serviceOptions: null == serviceOptions ? _self.serviceOptions : serviceOptions // ignore: cast_nullable_to_non_nullable
as List<PlumbingServiceOptionDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlumbingServiceOptionsDto].
extension PlumbingServiceOptionsDtoPatterns on PlumbingServiceOptionsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlumbingServiceOptionsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlumbingServiceOptionsDto value)  $default,){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlumbingServiceOptionsDto value)?  $default,){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  List<PlumbingServiceOptionDto> serviceOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto() when $default != null:
return $default(_that.slug,_that.serviceOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  List<PlumbingServiceOptionDto> serviceOptions)  $default,) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto():
return $default(_that.slug,_that.serviceOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  List<PlumbingServiceOptionDto> serviceOptions)?  $default,) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionsDto() when $default != null:
return $default(_that.slug,_that.serviceOptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlumbingServiceOptionsDto implements PlumbingServiceOptionsDto {
  const _PlumbingServiceOptionsDto({this.slug = '', final  List<PlumbingServiceOptionDto> serviceOptions = const <PlumbingServiceOptionDto>[]}): _serviceOptions = serviceOptions;
  factory _PlumbingServiceOptionsDto.fromJson(Map<String, dynamic> json) => _$PlumbingServiceOptionsDtoFromJson(json);

@override@JsonKey() final  String slug;
 final  List<PlumbingServiceOptionDto> _serviceOptions;
@override@JsonKey() List<PlumbingServiceOptionDto> get serviceOptions {
  if (_serviceOptions is EqualUnmodifiableListView) return _serviceOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_serviceOptions);
}


/// Create a copy of PlumbingServiceOptionsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlumbingServiceOptionsDtoCopyWith<_PlumbingServiceOptionsDto> get copyWith => __$PlumbingServiceOptionsDtoCopyWithImpl<_PlumbingServiceOptionsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlumbingServiceOptionsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlumbingServiceOptionsDto&&(identical(other.slug, slug) || other.slug == slug)&&const DeepCollectionEquality().equals(other._serviceOptions, _serviceOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,const DeepCollectionEquality().hash(_serviceOptions));

@override
String toString() {
  return 'PlumbingServiceOptionsDto(slug: $slug, serviceOptions: $serviceOptions)';
}


}

/// @nodoc
abstract mixin class _$PlumbingServiceOptionsDtoCopyWith<$Res> implements $PlumbingServiceOptionsDtoCopyWith<$Res> {
  factory _$PlumbingServiceOptionsDtoCopyWith(_PlumbingServiceOptionsDto value, $Res Function(_PlumbingServiceOptionsDto) _then) = __$PlumbingServiceOptionsDtoCopyWithImpl;
@override @useResult
$Res call({
 String slug, List<PlumbingServiceOptionDto> serviceOptions
});




}
/// @nodoc
class __$PlumbingServiceOptionsDtoCopyWithImpl<$Res>
    implements _$PlumbingServiceOptionsDtoCopyWith<$Res> {
  __$PlumbingServiceOptionsDtoCopyWithImpl(this._self, this._then);

  final _PlumbingServiceOptionsDto _self;
  final $Res Function(_PlumbingServiceOptionsDto) _then;

/// Create a copy of PlumbingServiceOptionsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? serviceOptions = null,}) {
  return _then(_PlumbingServiceOptionsDto(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,serviceOptions: null == serviceOptions ? _self._serviceOptions : serviceOptions // ignore: cast_nullable_to_non_nullable
as List<PlumbingServiceOptionDto>,
  ));
}


}


/// @nodoc
mixin _$PlumbingServiceOptionDto {

 String get id; String get title; String? get icon;
/// Create a copy of PlumbingServiceOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlumbingServiceOptionDtoCopyWith<PlumbingServiceOptionDto> get copyWith => _$PlumbingServiceOptionDtoCopyWithImpl<PlumbingServiceOptionDto>(this as PlumbingServiceOptionDto, _$identity);

  /// Serializes this PlumbingServiceOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlumbingServiceOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,icon);

@override
String toString() {
  return 'PlumbingServiceOptionDto(id: $id, title: $title, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $PlumbingServiceOptionDtoCopyWith<$Res>  {
  factory $PlumbingServiceOptionDtoCopyWith(PlumbingServiceOptionDto value, $Res Function(PlumbingServiceOptionDto) _then) = _$PlumbingServiceOptionDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? icon
});




}
/// @nodoc
class _$PlumbingServiceOptionDtoCopyWithImpl<$Res>
    implements $PlumbingServiceOptionDtoCopyWith<$Res> {
  _$PlumbingServiceOptionDtoCopyWithImpl(this._self, this._then);

  final PlumbingServiceOptionDto _self;
  final $Res Function(PlumbingServiceOptionDto) _then;

/// Create a copy of PlumbingServiceOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlumbingServiceOptionDto].
extension PlumbingServiceOptionDtoPatterns on PlumbingServiceOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlumbingServiceOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlumbingServiceOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlumbingServiceOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto() when $default != null:
return $default(_that.id,_that.title,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto():
return $default(_that.id,_that.title,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _PlumbingServiceOptionDto() when $default != null:
return $default(_that.id,_that.title,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlumbingServiceOptionDto implements PlumbingServiceOptionDto {
  const _PlumbingServiceOptionDto({this.id = '', this.title = '', this.icon});
  factory _PlumbingServiceOptionDto.fromJson(Map<String, dynamic> json) => _$PlumbingServiceOptionDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override final  String? icon;

/// Create a copy of PlumbingServiceOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlumbingServiceOptionDtoCopyWith<_PlumbingServiceOptionDto> get copyWith => __$PlumbingServiceOptionDtoCopyWithImpl<_PlumbingServiceOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlumbingServiceOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlumbingServiceOptionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,icon);

@override
String toString() {
  return 'PlumbingServiceOptionDto(id: $id, title: $title, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$PlumbingServiceOptionDtoCopyWith<$Res> implements $PlumbingServiceOptionDtoCopyWith<$Res> {
  factory _$PlumbingServiceOptionDtoCopyWith(_PlumbingServiceOptionDto value, $Res Function(_PlumbingServiceOptionDto) _then) = __$PlumbingServiceOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? icon
});




}
/// @nodoc
class __$PlumbingServiceOptionDtoCopyWithImpl<$Res>
    implements _$PlumbingServiceOptionDtoCopyWith<$Res> {
  __$PlumbingServiceOptionDtoCopyWithImpl(this._self, this._then);

  final _PlumbingServiceOptionDto _self;
  final $Res Function(_PlumbingServiceOptionDto) _then;

/// Create a copy of PlumbingServiceOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? icon = freezed,}) {
  return _then(_PlumbingServiceOptionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
