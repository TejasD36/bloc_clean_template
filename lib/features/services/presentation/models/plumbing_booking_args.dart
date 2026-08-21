import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/plumbing_service_option_entity.dart';

class PlumbingBookingArgs {
  const PlumbingBookingArgs({
    required this.service,
    required this.options,
    required this.address,
  });

  final HomeServiceEntity service;
  final List<PlumbingServiceOptionEntity> options;
  final AddressEntity address;
}
