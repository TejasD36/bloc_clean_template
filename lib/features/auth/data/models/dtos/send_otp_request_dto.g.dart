// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendOtpRequestDto _$SendOtpRequestDtoFromJson(Map<String, dynamic> json) =>
    _SendOtpRequestDto(
      phoneNumber: json['phone_number'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SendOtpRequestDtoToJson(_SendOtpRequestDto instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'name': ?instance.name,
    };
