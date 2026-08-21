// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => _AddressDto(
  id: (json['id'] as num?)?.toInt() ?? 0,
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  type: json['type'] as String? ?? 'home',
  flatNumberOrBuildingName: json['flatNumberOrBuildingName'] as String? ?? '',
  areaStreetName: json['areaStreetName'] as String? ?? '',
  landmark: json['landmark'] as String? ?? '',
  pincode: json['pincode'] as String? ?? '',
  state: json['state'] as String? ?? '',
  city: json['city'] as String? ?? '',
  latitude: json['latitude'] as String? ?? '',
  longitude: json['longitude'] as String? ?? '',
);

Map<String, dynamic> _$AddressDtoToJson(_AddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'flatNumberOrBuildingName': instance.flatNumberOrBuildingName,
      'areaStreetName': instance.areaStreetName,
      'landmark': instance.landmark,
      'pincode': instance.pincode,
      'state': instance.state,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_AddressListDto _$AddressListDtoFromJson(Map<String, dynamic> json) =>
    _AddressListDto(
      addresses:
          (json['addresses'] as List<dynamic>?)
              ?.map((e) => AddressDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AddressDto>[],
    );

Map<String, dynamic> _$AddressListDtoToJson(_AddressListDto instance) =>
    <String, dynamic>{'addresses': instance.addresses};

_AddressMutationDto _$AddressMutationDtoFromJson(Map<String, dynamic> json) =>
    _AddressMutationDto(
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressMutationDtoToJson(_AddressMutationDto instance) =>
    <String, dynamic>{'address': instance.address};
