import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';
import '../entities/send_otp_entity.dart';

class SendOtpUseCase {
  const SendOtpUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, SendOtpEntity>> call({
    required String phoneNumber,
    String? name,
  }) {
    return _repository.sendOtp(phoneNumber: phoneNumber, name: name);
  }
}
