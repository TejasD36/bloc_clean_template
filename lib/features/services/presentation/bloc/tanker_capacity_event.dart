import 'package:freezed_annotation/freezed_annotation.dart';

part 'tanker_capacity_event.freezed.dart';

@freezed
sealed class TankerCapacityEvent with _$TankerCapacityEvent {
  const factory TankerCapacityEvent.started() = TankerCapacityStarted;
}
