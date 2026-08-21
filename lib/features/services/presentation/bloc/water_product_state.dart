import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/water_product_entity.dart';

part 'water_product_state.freezed.dart';

@freezed
sealed class WaterProductState with _$WaterProductState {
  const factory WaterProductState.initial() = WaterProductInitial;
  const factory WaterProductState.loading() = WaterProductLoading;
  const factory WaterProductState.success({
    required List<WaterProductEntity> products,
  }) = WaterProductSuccess;
  const factory WaterProductState.failure({required String message}) =
      WaterProductFailure;
}
