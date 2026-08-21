// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WaterProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterProductState()';
}


}

/// @nodoc
class $WaterProductStateCopyWith<$Res>  {
$WaterProductStateCopyWith(WaterProductState _, $Res Function(WaterProductState) __);
}


/// Adds pattern-matching-related methods to [WaterProductState].
extension WaterProductStatePatterns on WaterProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WaterProductInitial value)?  initial,TResult Function( WaterProductLoading value)?  loading,TResult Function( WaterProductSuccess value)?  success,TResult Function( WaterProductFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WaterProductInitial() when initial != null:
return initial(_that);case WaterProductLoading() when loading != null:
return loading(_that);case WaterProductSuccess() when success != null:
return success(_that);case WaterProductFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WaterProductInitial value)  initial,required TResult Function( WaterProductLoading value)  loading,required TResult Function( WaterProductSuccess value)  success,required TResult Function( WaterProductFailure value)  failure,}){
final _that = this;
switch (_that) {
case WaterProductInitial():
return initial(_that);case WaterProductLoading():
return loading(_that);case WaterProductSuccess():
return success(_that);case WaterProductFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WaterProductInitial value)?  initial,TResult? Function( WaterProductLoading value)?  loading,TResult? Function( WaterProductSuccess value)?  success,TResult? Function( WaterProductFailure value)?  failure,}){
final _that = this;
switch (_that) {
case WaterProductInitial() when initial != null:
return initial(_that);case WaterProductLoading() when loading != null:
return loading(_that);case WaterProductSuccess() when success != null:
return success(_that);case WaterProductFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WaterProductEntity> products)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WaterProductInitial() when initial != null:
return initial();case WaterProductLoading() when loading != null:
return loading();case WaterProductSuccess() when success != null:
return success(_that.products);case WaterProductFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WaterProductEntity> products)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case WaterProductInitial():
return initial();case WaterProductLoading():
return loading();case WaterProductSuccess():
return success(_that.products);case WaterProductFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WaterProductEntity> products)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case WaterProductInitial() when initial != null:
return initial();case WaterProductLoading() when loading != null:
return loading();case WaterProductSuccess() when success != null:
return success(_that.products);case WaterProductFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WaterProductInitial implements WaterProductState {
  const WaterProductInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterProductState.initial()';
}


}




/// @nodoc


class WaterProductLoading implements WaterProductState {
  const WaterProductLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WaterProductState.loading()';
}


}




/// @nodoc


class WaterProductSuccess implements WaterProductState {
  const WaterProductSuccess({required final  List<WaterProductEntity> products}): _products = products;
  

 final  List<WaterProductEntity> _products;
 List<WaterProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of WaterProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterProductSuccessCopyWith<WaterProductSuccess> get copyWith => _$WaterProductSuccessCopyWithImpl<WaterProductSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductSuccess&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'WaterProductState.success(products: $products)';
}


}

/// @nodoc
abstract mixin class $WaterProductSuccessCopyWith<$Res> implements $WaterProductStateCopyWith<$Res> {
  factory $WaterProductSuccessCopyWith(WaterProductSuccess value, $Res Function(WaterProductSuccess) _then) = _$WaterProductSuccessCopyWithImpl;
@useResult
$Res call({
 List<WaterProductEntity> products
});




}
/// @nodoc
class _$WaterProductSuccessCopyWithImpl<$Res>
    implements $WaterProductSuccessCopyWith<$Res> {
  _$WaterProductSuccessCopyWithImpl(this._self, this._then);

  final WaterProductSuccess _self;
  final $Res Function(WaterProductSuccess) _then;

/// Create a copy of WaterProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(WaterProductSuccess(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<WaterProductEntity>,
  ));
}


}

/// @nodoc


class WaterProductFailure implements WaterProductState {
  const WaterProductFailure({required this.message});
  

 final  String message;

/// Create a copy of WaterProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaterProductFailureCopyWith<WaterProductFailure> get copyWith => _$WaterProductFailureCopyWithImpl<WaterProductFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaterProductFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WaterProductState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $WaterProductFailureCopyWith<$Res> implements $WaterProductStateCopyWith<$Res> {
  factory $WaterProductFailureCopyWith(WaterProductFailure value, $Res Function(WaterProductFailure) _then) = _$WaterProductFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WaterProductFailureCopyWithImpl<$Res>
    implements $WaterProductFailureCopyWith<$Res> {
  _$WaterProductFailureCopyWithImpl(this._self, this._then);

  final WaterProductFailure _self;
  final $Res Function(WaterProductFailure) _then;

/// Create a copy of WaterProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WaterProductFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
