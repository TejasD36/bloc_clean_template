// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_tank_cleaning_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WaterTankCleaningState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTankCleaningState()';
}


}

/// @nodoc
class $WaterTankCleaningStateCopyWith<$Res>  {
$WaterTankCleaningStateCopyWith(WaterTankCleaningState _, $Res Function(WaterTankCleaningState) __);
}


/// Adds pattern-matching-related methods to [WaterTankCleaningState].
extension WaterTankCleaningStatePatterns on WaterTankCleaningState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WaterTankCleaningInitial value)?  initial,TResult Function( WaterTankCleaningLoading value)?  loading,TResult Function( WaterTankCleaningSuccess value)?  success,TResult Function( WaterTankCleaningFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WaterTankCleaningInitial() when initial != null:
return initial(_that);case WaterTankCleaningLoading() when loading != null:
return loading(_that);case WaterTankCleaningSuccess() when success != null:
return success(_that);case WaterTankCleaningFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WaterTankCleaningInitial value)  initial,required TResult Function( WaterTankCleaningLoading value)  loading,required TResult Function( WaterTankCleaningSuccess value)  success,required TResult Function( WaterTankCleaningFailure value)  failure,}){
final _that = this;
switch (_that) {
case WaterTankCleaningInitial():
return initial(_that);case WaterTankCleaningLoading():
return loading(_that);case WaterTankCleaningSuccess():
return success(_that);case WaterTankCleaningFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WaterTankCleaningInitial value)?  initial,TResult? Function( WaterTankCleaningLoading value)?  loading,TResult? Function( WaterTankCleaningSuccess value)?  success,TResult? Function( WaterTankCleaningFailure value)?  failure,}){
final _that = this;
switch (_that) {
case WaterTankCleaningInitial() when initial != null:
return initial(_that);case WaterTankCleaningLoading() when loading != null:
return loading(_that);case WaterTankCleaningSuccess() when success != null:
return success(_that);case WaterTankCleaningFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( WaterTankCleaningDetailEntity detail)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WaterTankCleaningInitial() when initial != null:
return initial();case WaterTankCleaningLoading() when loading != null:
return loading();case WaterTankCleaningSuccess() when success != null:
return success(_that.detail);case WaterTankCleaningFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( WaterTankCleaningDetailEntity detail)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case WaterTankCleaningInitial():
return initial();case WaterTankCleaningLoading():
return loading();case WaterTankCleaningSuccess():
return success(_that.detail);case WaterTankCleaningFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( WaterTankCleaningDetailEntity detail)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case WaterTankCleaningInitial() when initial != null:
return initial();case WaterTankCleaningLoading() when loading != null:
return loading();case WaterTankCleaningSuccess() when success != null:
return success(_that.detail);case WaterTankCleaningFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WaterTankCleaningInitial implements WaterTankCleaningState {
  const WaterTankCleaningInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTankCleaningState.initial()';
}


}




/// @nodoc


class WaterTankCleaningLoading implements WaterTankCleaningState {
  const WaterTankCleaningLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterTankCleaningState.loading()';
}


}




/// @nodoc


class WaterTankCleaningSuccess implements WaterTankCleaningState {
  const WaterTankCleaningSuccess({required this.detail});
  

 final  WaterTankCleaningDetailEntity detail;

/// Create a copy of WaterTankCleaningState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTankCleaningSuccessCopyWith<WaterTankCleaningSuccess> get copyWith => _$WaterTankCleaningSuccessCopyWithImpl<WaterTankCleaningSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningSuccess&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'WaterTankCleaningState.success(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $WaterTankCleaningSuccessCopyWith<$Res> implements $WaterTankCleaningStateCopyWith<$Res> {
  factory $WaterTankCleaningSuccessCopyWith(WaterTankCleaningSuccess value, $Res Function(WaterTankCleaningSuccess) _then) = _$WaterTankCleaningSuccessCopyWithImpl;
@useResult
$Res call({
 WaterTankCleaningDetailEntity detail
});




}
/// @nodoc
class _$WaterTankCleaningSuccessCopyWithImpl<$Res>
    implements $WaterTankCleaningSuccessCopyWith<$Res> {
  _$WaterTankCleaningSuccessCopyWithImpl(this._self, this._then);

  final WaterTankCleaningSuccess _self;
  final $Res Function(WaterTankCleaningSuccess) _then;

/// Create a copy of WaterTankCleaningState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(WaterTankCleaningSuccess(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as WaterTankCleaningDetailEntity,
  ));
}


}

/// @nodoc


class WaterTankCleaningFailure implements WaterTankCleaningState {
  const WaterTankCleaningFailure({required this.message});
  

 final  String message;

/// Create a copy of WaterTankCleaningState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterTankCleaningFailureCopyWith<WaterTankCleaningFailure> get copyWith => _$WaterTankCleaningFailureCopyWithImpl<WaterTankCleaningFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterTankCleaningFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WaterTankCleaningState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $WaterTankCleaningFailureCopyWith<$Res> implements $WaterTankCleaningStateCopyWith<$Res> {
  factory $WaterTankCleaningFailureCopyWith(WaterTankCleaningFailure value, $Res Function(WaterTankCleaningFailure) _then) = _$WaterTankCleaningFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WaterTankCleaningFailureCopyWithImpl<$Res>
    implements $WaterTankCleaningFailureCopyWith<$Res> {
  _$WaterTankCleaningFailureCopyWithImpl(this._self, this._then);

  final WaterTankCleaningFailure _self;
  final $Res Function(WaterTankCleaningFailure) _then;

/// Create a copy of WaterTankCleaningState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WaterTankCleaningFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
