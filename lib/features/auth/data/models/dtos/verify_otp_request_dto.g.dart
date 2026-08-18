// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpRequestDto _$VerifyOtpRequestDtoFromJson(Map<String, dynamic> json) =>
    _VerifyOtpRequestDto(
      phoneNumber: json['phone_number'] as String,
      otp: json['otp'] as String,
      firebaseToken: json['firebase_token'] as String?,
    );

Map<String, dynamic> _$VerifyOtpRequestDtoToJson(
  _VerifyOtpRequestDto instance,
) => <String, dynamic>{
  'phone_number': instance.phoneNumber,
  'otp': instance.otp,
  'firebase_token': ?instance.firebaseToken,
};
