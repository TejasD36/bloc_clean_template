import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_event.freezed.dart';

@freezed
sealed class TrackEvent with _$TrackEvent {
  const factory TrackEvent.started() = TrackStarted;
}