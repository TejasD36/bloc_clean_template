// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressState()';
}


}

/// @nodoc
class $AddressStateCopyWith<$Res>  {
$AddressStateCopyWith(AddressState _, $Res Function(AddressState) __);
}


/// Adds pattern-matching-related methods to [AddressState].
extension AddressStatePatterns on AddressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddressInitial value)?  initial,TResult Function( AddressLoading value)?  loading,TResult Function( AddressSuccess value)?  success,TResult Function( AddressFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddressInitial() when initial != null:
return initial(_that);case AddressLoading() when loading != null:
return loading(_that);case AddressSuccess() when success != null:
return success(_that);case AddressFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddressInitial value)  initial,required TResult Function( AddressLoading value)  loading,required TResult Function( AddressSuccess value)  success,required TResult Function( AddressFailure value)  failure,}){
final _that = this;
switch (_that) {
case AddressInitial():
return initial(_that);case AddressLoading():
return loading(_that);case AddressSuccess():
return success(_that);case AddressFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddressInitial value)?  initial,TResult? Function( AddressLoading value)?  loading,TResult? Function( AddressSuccess value)?  success,TResult? Function( AddressFailure value)?  failure,}){
final _that = this;
switch (_that) {
case AddressInitial() when initial != null:
return initial(_that);case AddressLoading() when loading != null:
return loading(_that);case AddressSuccess() when success != null:
return success(_that);case AddressFailure() when failure != null:
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
case AddressInitial() when initial != null:
return initial();case AddressLoading() when loading != null:
return loading();case AddressSuccess() when success != null:
return success();case AddressFailure() when failure != null:
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
case AddressInitial():
return initial();case AddressLoading():
return loading();case AddressSuccess():
return success();case AddressFailure():
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
case AddressInitial() when initial != null:
return initial();case AddressLoading() when loading != null:
return loading();case AddressSuccess() when success != null:
return success();case AddressFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AddressInitial implements AddressState {
  const AddressInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressState.initial()';
}


}




/// @nodoc


class AddressLoading implements AddressState {
  const AddressLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressState.loading()';
}


}




/// @nodoc


class AddressSuccess implements AddressState {
  const AddressSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressState.success()';
}


}




/// @nodoc


class AddressFailure implements AddressState {
  const AddressFailure({required this.message});
  

 final  String message;

/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressFailureCopyWith<AddressFailure> get copyWith => _$AddressFailureCopyWithImpl<AddressFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddressState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddressFailureCopyWith<$Res> implements $AddressStateCopyWith<$Res> {
  factory $AddressFailureCopyWith(AddressFailure value, $Res Function(AddressFailure) _then) = _$AddressFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddressFailureCopyWithImpl<$Res>
    implements $AddressFailureCopyWith<$Res> {
  _$AddressFailureCopyWithImpl(this._self, this._then);

  final AddressFailure _self;
  final $Res Function(AddressFailure) _then;

/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddressFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
