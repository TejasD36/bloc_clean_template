// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrackState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackState()';
}


}

/// @nodoc
class $TrackStateCopyWith<$Res>  {
$TrackStateCopyWith(TrackState _, $Res Function(TrackState) __);
}


/// Adds pattern-matching-related methods to [TrackState].
extension TrackStatePatterns on TrackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TrackInitial value)?  initial,TResult Function( TrackLoading value)?  loading,TResult Function( TrackSuccess value)?  success,TResult Function( TrackFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TrackInitial() when initial != null:
return initial(_that);case TrackLoading() when loading != null:
return loading(_that);case TrackSuccess() when success != null:
return success(_that);case TrackFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TrackInitial value)  initial,required TResult Function( TrackLoading value)  loading,required TResult Function( TrackSuccess value)  success,required TResult Function( TrackFailure value)  failure,}){
final _that = this;
switch (_that) {
case TrackInitial():
return initial(_that);case TrackLoading():
return loading(_that);case TrackSuccess():
return success(_that);case TrackFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TrackInitial value)?  initial,TResult? Function( TrackLoading value)?  loading,TResult? Function( TrackSuccess value)?  success,TResult? Function( TrackFailure value)?  failure,}){
final _that = this;
switch (_that) {
case TrackInitial() when initial != null:
return initial(_that);case TrackLoading() when loading != null:
return loading(_that);case TrackSuccess() when success != null:
return success(_that);case TrackFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TrackInitial() when initial != null:
return initial();case TrackLoading() when loading != null:
return loading();case TrackSuccess() when success != null:
return success();case TrackFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case TrackInitial():
return initial();case TrackLoading():
return loading();case TrackSuccess():
return success();case TrackFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case TrackInitial() when initial != null:
return initial();case TrackLoading() when loading != null:
return loading();case TrackSuccess() when success != null:
return success();case TrackFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TrackInitial implements TrackState {
  const TrackInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackState.initial()';
}


}




/// @nodoc


class TrackLoading implements TrackState {
  const TrackLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackState.loading()';
}


}




/// @nodoc


class TrackSuccess implements TrackState {
  const TrackSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TrackState.success()';
}


}




/// @nodoc


class TrackFailure implements TrackState {
  const TrackFailure({required this.message});
  

 final  String message;

/// Create a copy of TrackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackFailureCopyWith<TrackFailure> get copyWith => _$TrackFailureCopyWithImpl<TrackFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TrackState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $TrackFailureCopyWith<$Res> implements $TrackStateCopyWith<$Res> {
  factory $TrackFailureCopyWith(TrackFailure value, $Res Function(TrackFailure) _then) = _$TrackFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TrackFailureCopyWithImpl<$Res>
    implements $TrackFailureCopyWith<$Res> {
  _$TrackFailureCopyWithImpl(this._self, this._then);

  final TrackFailure _self;
  final $Res Function(TrackFailure) _then;

/// Create a copy of TrackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TrackFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
