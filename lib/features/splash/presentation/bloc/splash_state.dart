import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/splash_screen_entity.dart';

part 'splash_state.freezed.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitial;
  const factory SplashState.loading() = SplashLoading;
  const factory SplashState.loaded(SplashScreenEntity data) = SplashLoaded;
  const factory SplashState.failure({required String message}) = SplashFailure;
}
