import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_type_event.freezed.dart';

@freezed
sealed class WaterTypeEvent with _$WaterTypeEvent {
  const factory WaterTypeEvent.started() = WaterTypeStarted;
}
