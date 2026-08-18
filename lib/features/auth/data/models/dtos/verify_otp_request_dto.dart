import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request_dto.freezed.dart';
part 'verify_otp_request_dto.g.dart';

@freezed
abstract class VerifyOtpRequestDto with _$VerifyOtpRequestDto {
  const factory VerifyOtpRequestDto({
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String otp,

    @JsonKey(name: 'firebase_token', includeIfNull: false)
    String? firebaseToken,
  }) = _VerifyOtpRequestDto;

  factory VerifyOtpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestDtoFromJson(json);
}
