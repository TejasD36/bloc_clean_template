import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class ResendOtpUseCase {
  const ResendOtpUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, ResultMessage>> call({
    required String phoneNumber,
  }) {
    return _repository.resendOtp(phoneNumber: phoneNumber);
  }
}