import '../../../domain/entities/address_entity.dart';
import '../../../domain/entities/address_input.dart';
import '../dtos/address_dto.dart';

extension AddressMapper on AddressDto {
  AddressEntity toEntity() {
    return AddressEntity(
      id: id,
      userId: userId,
      type: type,
      flatNumberOrBuildingName: flatNumberOrBuildingName,
      areaStreetName: areaStreetName,
      landmark: landmark,
      pincode: pincode,
      state: state,
      city: city,
      latitude: double.tryParse(latitude) ?? 0,
      longitude: double.tryParse(longitude) ?? 0,
    );
  }
}

extension AddressListMapper on AddressListDto {
  List<AddressEntity> toEntities() =>
      addresses.map((address) => address.toEntity()).toList();
}

extension AddressMutationMapper on AddressMutationDto {
  AddressEntity toEntity() => address.toEntity();
}

extension AddressInputMapper on AddressInput {
  AddressRequestDto toDto() {
    return AddressRequestDto(
      type: type,
      flatNumberOrBuildingName: flatNumberOrBuildingName,
      areaStreetName: areaStreetName,
      landmark: landmark,
      pincode: pincode,
      state: state,
      city: city,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
