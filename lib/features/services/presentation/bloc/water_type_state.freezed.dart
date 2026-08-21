// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WaterTypeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTypeState()';
}


}

/// @nodoc
class $WaterTypeStateCopyWith<$Res>  {
$WaterTypeStateCopyWith(WaterTypeState _, $Res Function(WaterTypeState) __);
}


/// Adds pattern-matching-related methods to [WaterTypeState].
extension WaterTypeStatePatterns on WaterTypeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WaterTypeInitial value)?  initial,TResult Function( WaterTypeLoading value)?  loading,TResult Function( WaterTypeSuccess value)?  success,TResult Function( WaterTypeFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WaterTypeInitial() when initial != null:
return initial(_that);case WaterTypeLoading() when loading != null:
return loading(_that);case WaterTypeSuccess() when success != null:
return success(_that);case WaterTypeFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WaterTypeInitial value)  initial,required TResult Function( WaterTypeLoading value)  loading,required TResult Function( WaterTypeSuccess value)  success,required TResult Function( WaterTypeFailure value)  failure,}){
final _that = this;
switch (_that) {
case WaterTypeInitial():
return initial(_that);case WaterTypeLoading():
return loading(_that);case WaterTypeSuccess():
return success(_that);case WaterTypeFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WaterTypeInitial value)?  initial,TResult? Function( WaterTypeLoading value)?  loading,TResult? Function( WaterTypeSuccess value)?  success,TResult? Function( WaterTypeFailure value)?  failure,}){
final _that = this;
switch (_that) {
case WaterTypeInitial() when initial != null:
return initial(_that);case WaterTypeLoading() when loading != null:
return loading(_that);case WaterTypeSuccess() when success != null:
return success(_that);case WaterTypeFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WaterTypeEntity> waterTypes)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WaterTypeInitial() when initial != null:
return initial();case WaterTypeLoading() when loading != null:
return loading();case WaterTypeSuccess() when success != null:
return success(_that.waterTypes);case WaterTypeFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WaterTypeEntity> waterTypes)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case WaterTypeInitial():
return initial();case WaterTypeLoading():
return loading();case WaterTypeSuccess():
return success(_that.waterTypes);case WaterTypeFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WaterTypeEntity> waterTypes)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case WaterTypeInitial() when initial != null:
return initial();case WaterTypeLoading() when loading != null:
return loading();case WaterTypeSuccess() when success != null:
return success(_that.waterTypes);case WaterTypeFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WaterTypeInitial implements WaterTypeState {
  const WaterTypeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTypeState.initial()';
}


}




/// @nodoc


class WaterTypeLoading implements WaterTypeState {
  const WaterTypeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTypeState.loading()';
}


}




/// @nodoc


class WaterTypeSuccess implements WaterTypeState {
  const WaterTypeSuccess({required final  List<WaterTypeEntity> waterTypes}): _waterTypes = waterTypes;
  

 final  List<WaterTypeEntity> _waterTypes;
 List<WaterTypeEntity> get waterTypes {
  if (_waterTypes is EqualUnmodifiableListView) return _waterTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waterTypes);
}


/// Create a copy of WaterTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTypeSuccessCopyWith<WaterTypeSuccess> get copyWith => _$WaterTypeSuccessCopyWithImpl<WaterTypeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeSuccess&&const DeepCollectionEquality().equals(other._waterTypes, _waterTypes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_waterTypes));

@override
String toString() {
  return 'WaterTypeState.success(waterTypes: $waterTypes)';
}


}

/// @nodoc
abstract mixin class $WaterTypeSuccessCopyWith<$Res> implements $WaterTypeStateCopyWith<$Res> {
  factory $WaterTypeSuccessCopyWith(WaterTypeSuccess value, $Res Function(WaterTypeSuccess) _then) = _$WaterTypeSuccessCopyWithImpl;
@useResult
$Res call({
 List<WaterTypeEntity> waterTypes
});




}
/// @nodoc
class _$WaterTypeSuccessCopyWithImpl<$Res>
    implements $WaterTypeSuccessCopyWith<$Res> {
  _$WaterTypeSuccessCopyWithImpl(this._self, this._then);

  final WaterTypeSuccess _self;
  final $Res Function(WaterTypeSuccess) _then;

/// Create a copy of WaterTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? waterTypes = null,}) {
  return _then(WaterTypeSuccess(
waterTypes: null == waterTypes ? _self._waterTypes : waterTypes // ignore: cast_nullable_to_non_nullable
as List<WaterTypeEntity>,
  ));
}


}

/// @nodoc


class WaterTypeFailure implements WaterTypeState {
  const WaterTypeFailure({required this.message});
  

 final  String message;

/// Create a copy of WaterTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTypeFailureCopyWith<WaterTypeFailure> get copyWith => _$WaterTypeFailureCopyWithImpl<WaterTypeFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTypeFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WaterTypeState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $WaterTypeFailureCopyWith<$Res> implements $WaterTypeStateCopyWith<$Res> {
  factory $WaterTypeFailureCopyWith(WaterTypeFailure value, $Res Function(WaterTypeFailure) _then) = _$WaterTypeFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WaterTypeFailureCopyWithImpl<$Res>
    implements $WaterTypeFailureCopyWith<$Res> {
  _$WaterTypeFailureCopyWithImpl(this._self, this._then);

  final WaterTypeFailure _self;
  final $Res Function(WaterTypeFailure) _then;

/// Create a copy of WaterTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WaterTypeFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
