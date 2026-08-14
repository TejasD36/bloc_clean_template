import 'dart:async';

import 'package:dartz/dartz.dart';

import '../network/failure/app_exception.dart';

extension FutureEitherX<T> on Future<Either<AppException, T>> {
  /// Maps the success value while preserving failures.
  Future<Either<AppException, R>> mapEntity<R>(
    R Function(T data) mapper,
  ) async {
    final either = await this;

    return either.fold(Left.new, (data) => Right(mapper(data)));
  }

  /// Executes a side effect on success while preserving the original value.
  Future<Either<AppException, T>> onSuccess(
    FutureOr<void> Function(T data) action,
  ) async {
    final either = await this;

    return either.fold((failure) async => Left(failure), (data) async {
      await action(data);
      return Right(data);
    });
  }

  /// Executes a side effect on failure while preserving the original failure.
  Future<Either<AppException, T>> onFailure(
    FutureOr<void> Function(AppException failure) action,
  ) async {
    final either = await this;

    return either.fold((failure) async {
      await action(failure);
      return Left(failure);
    }, (data) async => Right(data));
  }

  /// Chains another operation that also returns an Either.
  Future<Either<AppException, R>> flatMap<R>(
    Future<Either<AppException, R>> Function(T data) mapper,
  ) async {
    final either = await this;
    return either.fold((failure) async => Left(failure), mapper);
  }

  /// Awaits the result and handles success/failure.
  Future<void> when({
    required void Function(AppException failure) onFailure,
    required void Function(T data) onSuccess,
  }) async {
    final either = await this;

    either.fold(onFailure, onSuccess);
  }
}
