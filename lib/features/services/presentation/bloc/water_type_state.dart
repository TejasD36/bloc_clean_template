import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/water_type_entity.dart';

part 'water_type_state.freezed.dart';

@freezed
sealed class WaterTypeState with _$WaterTypeState {
  const factory WaterTypeState.initial() = WaterTypeInitial;
  const factory WaterTypeState.loading() = WaterTypeLoading;
  const factory WaterTypeState.success({
    required List<WaterTypeEntity> waterTypes,
  }) = WaterTypeSuccess;
  const factory WaterTypeState.failure({required String message}) =
      WaterTypeFailure;
}
