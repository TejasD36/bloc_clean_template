import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/water_tank_cleaning_entity.dart';

part 'water_tank_cleaning_state.freezed.dart';

@freezed
sealed class WaterTankCleaningState with _$WaterTankCleaningState {
  const factory WaterTankCleaningState.initial() = WaterTankCleaningInitial;
  const factory WaterTankCleaningState.loading() = WaterTankCleaningLoading;
  const factory WaterTankCleaningState.success({
    required WaterTankCleaningDetailEntity detail,
  }) = WaterTankCleaningSuccess;
  const factory WaterTankCleaningState.failure({required String message}) =
      WaterTankCleaningFailure;
}
