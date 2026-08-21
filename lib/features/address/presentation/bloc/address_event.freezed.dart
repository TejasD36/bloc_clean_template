// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressEvent()';
}


}

/// @nodoc
class $AddressEventCopyWith<$Res>  {
$AddressEventCopyWith(AddressEvent _, $Res Function(AddressEvent) __);
}


/// Adds pattern-matching-related methods to [AddressEvent].
extension AddressEventPatterns on AddressEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddressStarted value)?  started,TResult Function( AddressSaveRequested value)?  save,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddressStarted() when started != null:
return started(_that);case AddressSaveRequested() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddressStarted value)  started,required TResult Function( AddressSaveRequested value)  save,}){
final _that = this;
switch (_that) {
case AddressStarted():
return started(_that);case AddressSaveRequested():
return save(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddressStarted value)?  started,TResult? Function( AddressSaveRequested value)?  save,}){
final _that = this;
switch (_that) {
case AddressStarted() when started != null:
return started(_that);case AddressSaveRequested() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int? id,  AddressInput input)?  save,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddressStarted() when started != null:
return started();case AddressSaveRequested() when save != null:
return save(_that.id,_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int? id,  AddressInput input)  save,}) {final _that = this;
switch (_that) {
case AddressStarted():
return started();case AddressSaveRequested():
return save(_that.id,_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int? id,  AddressInput input)?  save,}) {final _that = this;
switch (_that) {
case AddressStarted() when started != null:
return started();case AddressSaveRequested() when save != null:
return save(_that.id,_that.input);case _:
  return null;

}
}

}

/// @nodoc


class AddressStarted implements AddressEvent {
  const AddressStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddressEvent.started()';
}


}




/// @nodoc


class AddressSaveRequested implements AddressEvent {
  const AddressSaveRequested({this.id, required this.input});
  

 final  int? id;
 final  AddressInput input;

/// Create a copy of AddressEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressSaveRequestedCopyWith<AddressSaveRequested> get copyWith => _$AddressSaveRequestedCopyWithImpl<AddressSaveRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressSaveRequested&&(identical(other.id, id) || other.id == id)&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,id,input);

@override
String toString() {
  return 'AddressEvent.save(id: $id, input: $input)';
}


}

/// @nodoc
abstract mixin class $AddressSaveRequestedCopyWith<$Res> implements $AddressEventCopyWith<$Res> {
  factory $AddressSaveRequestedCopyWith(AddressSaveRequested value, $Res Function(AddressSaveRequested) _then) = _$AddressSaveRequestedCopyWithImpl;
@useResult
$Res call({
 int? id, AddressInput input
});




}
/// @nodoc
class _$AddressSaveRequestedCopyWithImpl<$Res>
    implements $AddressSaveRequestedCopyWith<$Res> {
  _$AddressSaveRequestedCopyWithImpl(this._self, this._then);

  final AddressSaveRequested _self;
  final $Res Function(AddressSaveRequested) _then;

/// Create a copy of AddressEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? input = null,}) {
  return _then(AddressSaveRequested(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as AddressInput,
  ));
}


}

// dart format on
