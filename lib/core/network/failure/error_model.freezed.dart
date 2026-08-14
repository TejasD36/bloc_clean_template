// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorModel {

 String? get title; String? get subTitle; String? get image; String? get urlLabel; String? get redirectionUrl; bool? get isButtonEnable; bool? get isRestartRequired; String? get buttonText;
/// Create a copy of ErrorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<ErrorModel> get copyWith => _$ErrorModelCopyWithImpl<ErrorModel>(this as ErrorModel, _$identity);

  /// Serializes this ErrorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.image, image) || other.image == image)&&(identical(other.urlLabel, urlLabel) || other.urlLabel == urlLabel)&&(identical(other.redirectionUrl, redirectionUrl) || other.redirectionUrl == redirectionUrl)&&(identical(other.isButtonEnable, isButtonEnable) || other.isButtonEnable == isButtonEnable)&&(identical(other.isRestartRequired, isRestartRequired) || other.isRestartRequired == isRestartRequired)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subTitle,image,urlLabel,redirectionUrl,isButtonEnable,isRestartRequired,buttonText);

@override
String toString() {
  return 'ErrorModel(title: $title, subTitle: $subTitle, image: $image, urlLabel: $urlLabel, redirectionUrl: $redirectionUrl, isButtonEnable: $isButtonEnable, isRestartRequired: $isRestartRequired, buttonText: $buttonText)';
}


}

/// @nodoc
abstract mixin class $ErrorModelCopyWith<$Res>  {
  factory $ErrorModelCopyWith(ErrorModel value, $Res Function(ErrorModel) _then) = _$ErrorModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? subTitle, String? image, String? urlLabel, String? redirectionUrl, bool? isButtonEnable, bool? isRestartRequired, String? buttonText
});




}
/// @nodoc
class _$ErrorModelCopyWithImpl<$Res>
    implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._self, this._then);

  final ErrorModel _self;
  final $Res Function(ErrorModel) _then;

/// Create a copy of ErrorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? subTitle = freezed,Object? image = freezed,Object? urlLabel = freezed,Object? redirectionUrl = freezed,Object? isButtonEnable = freezed,Object? isRestartRequired = freezed,Object? buttonText = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subTitle: freezed == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,urlLabel: freezed == urlLabel ? _self.urlLabel : urlLabel // ignore: cast_nullable_to_non_nullable
as String?,redirectionUrl: freezed == redirectionUrl ? _self.redirectionUrl : redirectionUrl // ignore: cast_nullable_to_non_nullable
as String?,isButtonEnable: freezed == isButtonEnable ? _self.isButtonEnable : isButtonEnable // ignore: cast_nullable_to_non_nullable
as bool?,isRestartRequired: freezed == isRestartRequired ? _self.isRestartRequired : isRestartRequired // ignore: cast_nullable_to_non_nullable
as bool?,buttonText: freezed == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorModel].
extension ErrorModelPatterns on ErrorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorModel value)  $default,){
final _that = this;
switch (_that) {
case _ErrorModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorModel value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? subTitle,  String? image,  String? urlLabel,  String? redirectionUrl,  bool? isButtonEnable,  bool? isRestartRequired,  String? buttonText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorModel() when $default != null:
return $default(_that.title,_that.subTitle,_that.image,_that.urlLabel,_that.redirectionUrl,_that.isButtonEnable,_that.isRestartRequired,_that.buttonText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? subTitle,  String? image,  String? urlLabel,  String? redirectionUrl,  bool? isButtonEnable,  bool? isRestartRequired,  String? buttonText)  $default,) {final _that = this;
switch (_that) {
case _ErrorModel():
return $default(_that.title,_that.subTitle,_that.image,_that.urlLabel,_that.redirectionUrl,_that.isButtonEnable,_that.isRestartRequired,_that.buttonText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? subTitle,  String? image,  String? urlLabel,  String? redirectionUrl,  bool? isButtonEnable,  bool? isRestartRequired,  String? buttonText)?  $default,) {final _that = this;
switch (_that) {
case _ErrorModel() when $default != null:
return $default(_that.title,_that.subTitle,_that.image,_that.urlLabel,_that.redirectionUrl,_that.isButtonEnable,_that.isRestartRequired,_that.buttonText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorModel implements ErrorModel {
  const _ErrorModel({this.title, this.subTitle, this.image, this.urlLabel, this.redirectionUrl, this.isButtonEnable, this.isRestartRequired, this.buttonText});
  factory _ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

@override final  String? title;
@override final  String? subTitle;
@override final  String? image;
@override final  String? urlLabel;
@override final  String? redirectionUrl;
@override final  bool? isButtonEnable;
@override final  bool? isRestartRequired;
@override final  String? buttonText;

/// Create a copy of ErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorModelCopyWith<_ErrorModel> get copyWith => __$ErrorModelCopyWithImpl<_ErrorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.image, image) || other.image == image)&&(identical(other.urlLabel, urlLabel) || other.urlLabel == urlLabel)&&(identical(other.redirectionUrl, redirectionUrl) || other.redirectionUrl == redirectionUrl)&&(identical(other.isButtonEnable, isButtonEnable) || other.isButtonEnable == isButtonEnable)&&(identical(other.isRestartRequired, isRestartRequired) || other.isRestartRequired == isRestartRequired)&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subTitle,image,urlLabel,redirectionUrl,isButtonEnable,isRestartRequired,buttonText);

@override
String toString() {
  return 'ErrorModel(title: $title, subTitle: $subTitle, image: $image, urlLabel: $urlLabel, redirectionUrl: $redirectionUrl, isButtonEnable: $isButtonEnable, isRestartRequired: $isRestartRequired, buttonText: $buttonText)';
}


}

/// @nodoc
abstract mixin class _$ErrorModelCopyWith<$Res> implements $ErrorModelCopyWith<$Res> {
  factory _$ErrorModelCopyWith(_ErrorModel value, $Res Function(_ErrorModel) _then) = __$ErrorModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? subTitle, String? image, String? urlLabel, String? redirectionUrl, bool? isButtonEnable, bool? isRestartRequired, String? buttonText
});




}
/// @nodoc
class __$ErrorModelCopyWithImpl<$Res>
    implements _$ErrorModelCopyWith<$Res> {
  __$ErrorModelCopyWithImpl(this._self, this._then);

  final _ErrorModel _self;
  final $Res Function(_ErrorModel) _then;

/// Create a copy of ErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? subTitle = freezed,Object? image = freezed,Object? urlLabel = freezed,Object? redirectionUrl = freezed,Object? isButtonEnable = freezed,Object? isRestartRequired = freezed,Object? buttonText = freezed,}) {
  return _then(_ErrorModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subTitle: freezed == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,urlLabel: freezed == urlLabel ? _self.urlLabel : urlLabel // ignore: cast_nullable_to_non_nullable
as String?,redirectionUrl: freezed == redirectionUrl ? _self.redirectionUrl : redirectionUrl // ignore: cast_nullable_to_non_nullable
as String?,isButtonEnable: freezed == isButtonEnable ? _self.isButtonEnable : isButtonEnable // ignore: cast_nullable_to_non_nullable
as bool?,isRestartRequired: freezed == isRestartRequired ? _self.isRestartRequired : isRestartRequired // ignore: cast_nullable_to_non_nullable
as bool?,buttonText: freezed == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
