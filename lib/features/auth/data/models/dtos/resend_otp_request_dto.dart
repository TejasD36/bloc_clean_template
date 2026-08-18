import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_request_dto.freezed.dart';
part 'resend_otp_request_dto.g.dart';

@freezed
abstract class ResendOtpRequestDto with _$ResendOtpRequestDto {
  const factory ResendOtpRequestDto({
    @JsonKey(name: 'phone_number') required String phoneNumber,
  }) = _ResendOtpRequestDto;

  factory ResendOtpRequestDto.fromJson(Map<String, dynamic> json) => _$ResendOtpRequestDtoFromJson(json);
}