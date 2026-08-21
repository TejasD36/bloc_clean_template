class AddressInput {
  const AddressInput({
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
}
