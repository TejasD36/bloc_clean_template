import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class VerifyOtpUseCase {
  const VerifyOtpUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, SessionEntity>> call({
    required String phoneNumber,
    required String otp,
    String? firebaseToken,
  }) {
    return _repository.verifyOtp(
      phoneNumber: phoneNumber,
      otp: otp,
      firebaseToken: firebaseToken,
    );
  }
}
