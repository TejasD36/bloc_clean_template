import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_dto.freezed.dart';
part 'track_dto.g.dart';

@freezed
sealed class TrackDto with _$TrackDto {
  const factory TrackDto() = _TrackDto;

  factory TrackDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TrackDtoFromJson(json);
}