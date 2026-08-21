import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_type_dto.freezed.dart';
part 'water_type_dto.g.dart';

@freezed
abstract class WaterTypesDto with _$WaterTypesDto {
  const factory WaterTypesDto({
    @Default('') String slug,
    @Default(<WaterTypeDto>[]) List<WaterTypeDto> waterTypeOptions,
  }) = _WaterTypesDto;

  factory WaterTypesDto.fromJson(Map<String, dynamic> json) =>
      _$WaterTypesDtoFromJson(json);
}

@freezed
abstract class WaterTypeDto with _$WaterTypeDto {
  const factory WaterTypeDto({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    String? icon,
  }) = _WaterTypeDto;

  factory WaterTypeDto.fromJson(Map<String, dynamic> json) =>
      _$WaterTypeDtoFromJson(json);
}
