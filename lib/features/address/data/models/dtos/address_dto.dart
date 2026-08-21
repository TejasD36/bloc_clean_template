import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
abstract class AddressDto with _$AddressDto {
  const factory AddressDto({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('home') String type,
    @Default('') String flatNumberOrBuildingName,
    @Default('') String areaStreetName,
    @Default('') String landmark,
    @Default('') String pincode,
    @Default('') String state,
    @Default('') String city,
    @Default('') String latitude,
    @Default('') String longitude,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
abstract class AddressListDto with _$AddressListDto {
  const factory AddressListDto({
    @Default(<AddressDto>[]) List<AddressDto> addresses,
  }) = _AddressListDto;

  factory AddressListDto.fromJson(Map<String, dynamic> json) =>
      _$AddressListDtoFromJson(json);
}

@freezed
abstract class AddressMutationDto with _$AddressMutationDto {
  const factory AddressMutationDto({required AddressDto address}) =
      _AddressMutationDto;

  factory AddressMutationDto.fromJson(Map<String, dynamic> json) =>
      _$AddressMutationDtoFromJson(json);
}

class AddressRequestDto {
  const AddressRequestDto({
    required this.type,
    required this.flatNumberOrBuildingName,
    required this.areaStreetName,
    required this.landmark,
    required this.pincode,
    required this.state,
    required this.city,
    required this.latitude,
    required this.longitude,
  });

  final String type;
  final String flatNumberOrBuildingName;
  final String areaStreetName;
  final String landmark;
  final String pincode;
  final String state;
  final String city;
  final double latitude;
  final double longitude;

  Map<String, dynamic> toJson() => {
    'type': type,
    'flat_number_or_building_name': flatNumberOrBuildingName,
    'area_street_name': areaStreetName,
    'landmark': landmark,
    'pincode': pincode,
    'state': state,
    'city': city,
    'latitude': latitude,
    'longitude': longitude,
  };
}
