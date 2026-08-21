// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tanker_capacity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TankerCapacityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TankerCapacityState()';
}


}

/// @nodoc
class $TankerCapacityStateCopyWith<$Res>  {
$TankerCapacityStateCopyWith(TankerCapacityState _, $Res Function(TankerCapacityState) __);
}


/// Adds pattern-matching-related methods to [TankerCapacityState].
extension TankerCapacityStatePatterns on TankerCapacityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TankerCapacityInitial value)?  initial,TResult Function( TankerCapacityLoading value)?  loading,TResult Function( TankerCapacitySuccess value)?  success,TResult Function( TankerCapacityFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TankerCapacityInitial() when initial != null:
return initial(_that);case TankerCapacityLoading() when loading != null:
return loading(_that);case TankerCapacitySuccess() when success != null:
return success(_that);case TankerCapacityFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TankerCapacityInitial value)  initial,required TResult Function( TankerCapacityLoading value)  loading,required TResult Function( TankerCapacitySuccess value)  success,required TResult Function( TankerCapacityFailure value)  failure,}){
final _that = this;
switch (_that) {
case TankerCapacityInitial():
return initial(_that);case TankerCapacityLoading():
return loading(_that);case TankerCapacitySuccess():
return success(_that);case TankerCapacityFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TankerCapacityInitial value)?  initial,TResult? Function( TankerCapacityLoading value)?  loading,TResult? Function( TankerCapacitySuccess value)?  success,TResult? Function( TankerCapacityFailure value)?  failure,}){
final _that = this;
switch (_that) {
case TankerCapacityInitial() when initial != null:
return initial(_that);case TankerCapacityLoading() when loading != null:
return loading(_that);case TankerCapacitySuccess() when success != null:
return success(_that);case TankerCapacityFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TankerCapacityEntity> capacities)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TankerCapacityInitial() when initial != null:
return initial();case TankerCapacityLoading() when loading != null:
return loading();case TankerCapacitySuccess() when success != null:
return success(_that.capacities);case TankerCapacityFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TankerCapacityEntity> capacities)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case TankerCapacityInitial():
return initial();case TankerCapacityLoading():
return loading();case TankerCapacitySuccess():
return success(_that.capacities);case TankerCapacityFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TankerCapacityEntity> capacities)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case TankerCapacityInitial() when initial != null:
return initial();case TankerCapacityLoading() when loading != null:
return loading();case TankerCapacitySuccess() when success != null:
return success(_that.capacities);case TankerCapacityFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TankerCapacityInitial implements TankerCapacityState {
  const TankerCapacityInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacityInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TankerCapacityState.initial()';
}


}




/// @nodoc


class TankerCapacityLoading implements TankerCapacityState {
  const TankerCapacityLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacityLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TankerCapacityState.loading()';
}


}




/// @nodoc


class TankerCapacitySuccess implements TankerCapacityState {
  const TankerCapacitySuccess({required final  List<TankerCapacityEntity> capacities}): _capacities = capacities;
  

 final  List<TankerCapacityEntity> _capacities;
 List<TankerCapacityEntity> get capacities {
  if (_capacities is EqualUnmodifiableListView) return _capacities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capacities);
}


/// Create a copy of TankerCapacityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TankerCapacitySuccessCopyWith<TankerCapacitySuccess> get copyWith => _$TankerCapacitySuccessCopyWithImpl<TankerCapacitySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacitySuccess&&const DeepCollectionEquality().equals(other._capacities, _capacities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_capacities));

@override
String toString() {
  return 'TankerCapacityState.success(capacities: $capacities)';
}


}

/// @nodoc
abstract mixin class $TankerCapacitySuccessCopyWith<$Res> implements $TankerCapacityStateCopyWith<$Res> {
  factory $TankerCapacitySuccessCopyWith(TankerCapacitySuccess value, $Res Function(TankerCapacitySuccess) _then) = _$TankerCapacitySuccessCopyWithImpl;
@useResult
$Res call({
 List<TankerCapacityEntity> capacities
});




}
/// @nodoc
class _$TankerCapacitySuccessCopyWithImpl<$Res>
    implements $TankerCapacitySuccessCopyWith<$Res> {
  _$TankerCapacitySuccessCopyWithImpl(this._self, this._then);

  final TankerCapacitySuccess _self;
  final $Res Function(TankerCapacitySuccess) _then;

/// Create a copy of TankerCapacityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? capacities = null,}) {
  return _then(TankerCapacitySuccess(
capacities: null == capacities ? _self._capacities : capacities // ignore: cast_nullable_to_non_nullable
as List<TankerCapacityEntity>,
  ));
}


}

/// @nodoc


class TankerCapacityFailure implements TankerCapacityState {
  const TankerCapacityFailure({required this.message});
  

 final  String message;

/// Create a copy of TankerCapacityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TankerCapacityFailureCopyWith<TankerCapacityFailure> get copyWith => _$TankerCapacityFailureCopyWithImpl<TankerCapacityFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TankerCapacityFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TankerCapacityState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $TankerCapacityFailureCopyWith<$Res> implements $TankerCapacityStateCopyWith<$Res> {
  factory $TankerCapacityFailureCopyWith(TankerCapacityFailure value, $Res Function(TankerCapacityFailure) _then) = _$TankerCapacityFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TankerCapacityFailureCopyWithImpl<$Res>
    implements $TankerCapacityFailureCopyWith<$Res> {
  _$TankerCapacityFailureCopyWithImpl(this._self, this._then);

  final TankerCapacityFailure _self;
  final $Res Function(TankerCapacityFailure) _then;

/// Create a copy of TankerCapacityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TankerCapacityFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
