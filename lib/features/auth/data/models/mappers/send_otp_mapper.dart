import '../../../domain/entities/send_otp_entity.dart';
import '../dtos/send_otp_response_dto.dart';

extension SendOtpResponseDtoMapper on SendOtpResponseDto {
  SendOtpEntity toEntity() {
    return SendOtpEntity(
      isRegistered: isRegistered,
      isNameRequired: isNameRequired,
    );
  }
}
