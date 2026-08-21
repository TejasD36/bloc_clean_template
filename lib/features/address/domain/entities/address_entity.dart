import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';

@freezed
abstract class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('home') String type,
    @Default('') String flatNumberOrBuildingName,
    @Default('') String areaStreetName,
    @Default('') String landmark,
    @Default('') String pincode,
    @Default('') String state,
    @Default('') String city,
    @Default(0) double latitude,
    @Default(0) double longitude,
  }) = _AddressEntity;
}
