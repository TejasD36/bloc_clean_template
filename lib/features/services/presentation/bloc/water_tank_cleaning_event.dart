import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_tank_cleaning_event.freezed.dart';

@freezed
sealed class WaterTankCleaningEvent with _$WaterTankCleaningEvent {
  const factory WaterTankCleaningEvent.started() = WaterTankCleaningStarted;
}
