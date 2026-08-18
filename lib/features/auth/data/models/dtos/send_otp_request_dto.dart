import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_request_dto.freezed.dart';
part 'send_otp_request_dto.g.dart';

@freezed
abstract class SendOtpRequestDto with _$SendOtpRequestDto {
  const factory SendOtpRequestDto({
    @JsonKey(name: 'phone_number') required String phoneNumber,

    @JsonKey(includeIfNull: false) String? name,
  }) = _SendOtpRequestDto;

  factory SendOtpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SendOtpRequestDtoFromJson(json);
}
