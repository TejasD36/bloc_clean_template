import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_state.freezed.dart';

@freezed
sealed class TrackState with _$TrackState {
  const factory TrackState.initial() = TrackInitial;

  const factory TrackState.loading() = TrackLoading;

  const factory TrackState.success() = TrackSuccess;

  const factory TrackState.failure({
    required String message,
  }) = TrackFailure;
}