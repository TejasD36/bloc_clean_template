import 'package:freezed_annotation/freezed_annotation.dart';

part 'tanker_capacity_dto.freezed.dart';
part 'tanker_capacity_dto.g.dart';

@freezed
abstract class TankerCapacitiesDto with _$TankerCapacitiesDto {
  const factory TankerCapacitiesDto({
    @Default('') String slug,
    @Default(<TankerCapacityDto>[]) List<TankerCapacityDto> capacityOptions,
  }) = _TankerCapacitiesDto;

  factory TankerCapacitiesDto.fromJson(Map<String, dynamic> json) =>
      _$TankerCapacitiesDtoFromJson(json);
}

@freezed
abstract class TankerCapacityDto with _$TankerCapacityDto {
  const factory TankerCapacityDto({
    @Default('') String id,
    @Default('') String title,
    @Default(0) int capacityLiters,
    @Default('') String description,
    @Default(0) double price,
    @Default('₹') String currency,
    String? image,
  }) = _TankerCapacityDto;

  factory TankerCapacityDto.fromJson(Map<String, dynamic> json) =>
      _$TankerCapacityDtoFromJson(json);
}
