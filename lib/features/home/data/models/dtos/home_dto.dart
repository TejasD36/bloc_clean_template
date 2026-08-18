import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
sealed class HomeDto with _$HomeDto {
  const factory HomeDto() = _HomeDto;

  factory HomeDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeDtoFromJson(json);
}