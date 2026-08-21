import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_product_dto.freezed.dart';
part 'water_product_dto.g.dart';

@freezed
abstract class WaterProductsDto with _$WaterProductsDto {
  const factory WaterProductsDto({
    @Default('') String slug,
    @Default(<WaterProductDto>[]) List<WaterProductDto> products,
  }) = _WaterProductsDto;

  factory WaterProductsDto.fromJson(Map<String, dynamic> json) =>
      _$WaterProductsDtoFromJson(json);
}

@freezed
abstract class WaterProductDto with _$WaterProductDto {
  const factory WaterProductDto({
    @Default('') String id,
    @Default('') String title,
    @Default(0) double price,
    @Default('₹') String currency,
    String? image,
    @Default(0) int defaultQuantity,
  }) = _WaterProductDto;

  factory WaterProductDto.fromJson(Map<String, dynamic> json) =>
      _$WaterProductDtoFromJson(json);
}
