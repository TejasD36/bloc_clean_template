import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/home_entity.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.loading() = HomeLoading;

  const factory HomeState.success({required HomeEntity home}) = HomeSuccess;

  const factory HomeState.failure({required String message}) = HomeFailure;
}
