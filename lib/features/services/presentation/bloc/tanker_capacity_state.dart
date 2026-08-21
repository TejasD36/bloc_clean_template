import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tanker_capacity_entity.dart';

part 'tanker_capacity_state.freezed.dart';

@freezed
sealed class TankerCapacityState with _$TankerCapacityState {
  const factory TankerCapacityState.initial() = TankerCapacityInitial;
  const factory TankerCapacityState.loading() = TankerCapacityLoading;
  const factory TankerCapacityState.success({
    required List<TankerCapacityEntity> capacities,
  }) = TankerCapacitySuccess;
  const factory TankerCapacityState.failure({required String message}) =
      TankerCapacityFailure;
}
