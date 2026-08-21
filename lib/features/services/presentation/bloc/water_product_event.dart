import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_product_event.freezed.dart';

@freezed
sealed class WaterProductEvent with _$WaterProductEvent {
  const factory WaterProductEvent.started() = WaterProductStarted;
}
