import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
sealed class ProfileDto with _$ProfileDto {
  const factory ProfileDto() = _ProfileDto;

  factory ProfileDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileDtoFromJson(json);
}