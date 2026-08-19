import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
sealed class AddressDto with _$AddressDto {
  const factory AddressDto() = _AddressDto;

  factory AddressDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AddressDtoFromJson(json);
}