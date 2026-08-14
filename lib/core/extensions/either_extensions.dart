import 'package:dartz/dartz.dart';

import '../network/failure/app_exception.dart';

extension EitherX<T> on Either<AppException, T> {
  /// Handles success and failure in a more readable way than fold().
  void when({
    required void Function(AppException failure) onFailure,
    required void Function(T data) onSuccess,
  }) {
    fold(onFailure, onSuccess);
  }
}
