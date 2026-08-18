import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response_dto.freezed.dart';
part 'send_otp_response_dto.g.dart';

@freezed
abstract class SendOtpResponseDto with _$SendOtpResponseDto {
  const factory SendOtpResponseDto({
    @Default(false) bool isRegistered,
    @Default(false) bool isNameRequired,
  }) = _SendOtpResponseDto;

  factory SendOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseDtoFromJson(json);
}
