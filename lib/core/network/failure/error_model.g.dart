// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => _ErrorModel(
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  image: json['image'] as String?,
  urlLabel: json['urlLabel'] as String?,
  redirectionUrl: json['redirectionUrl'] as String?,
  isButtonEnable: json['isButtonEnable'] as bool?,
  isRestartRequired: json['isRestartRequired'] as bool?,
  buttonText: json['buttonText'] as String?,
);

Map<String, dynamic> _$ErrorModelToJson(_ErrorModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'image': instance.image,
      'urlLabel': instance.urlLabel,
      'redirectionUrl': instance.redirectionUrl,
      'isButtonEnable': instance.isButtonEnable,
      'isRestartRequired': instance.isRestartRequired,
      'buttonText': instance.buttonText,
    };
