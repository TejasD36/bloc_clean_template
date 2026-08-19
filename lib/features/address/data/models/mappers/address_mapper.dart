import '../dtos/address_dto.dart';
import '../../../domain/entities/address_entity.dart';

extension AddressMapper on AddressDto {
  AddressEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const AddressEntity();
  }
}