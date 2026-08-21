import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';

class BookingSuccessArgs {
  const BookingSuccessArgs({
    required this.service,
    required this.serviceType,
    this.address,
    this.amount,
    this.currency = '₹',
  });

  final HomeServiceEntity service;
  final String serviceType;
  final AddressEntity? address;
  final double? amount;
  final String currency;
}
