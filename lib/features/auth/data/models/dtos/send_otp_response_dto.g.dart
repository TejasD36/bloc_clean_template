// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendOtpResponseDto _$SendOtpResponseDtoFromJson(Map<String, dynamic> json) =>
    _SendOtpResponseDto(
      isRegistered: json['isRegistered'] as bool? ?? false,
      isNameRequired: json['isNameRequired'] as bool? ?? false,
    );

Map<String, dynamic> _$SendOtpResponseDtoToJson(_SendOtpResponseDto instance) =>
    <String, dynamic>{
      'isRegistered': instance.isRegistered,
      'isNameRequired': instance.isNameRequired,
    };
