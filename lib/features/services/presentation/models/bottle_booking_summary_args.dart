import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import 'water_product_cart_item.dart';

class BottleBookingSummaryArgs {
  const BottleBookingSummaryArgs({
    required this.service,
    required this.items,
    required this.address,
  });

  final HomeServiceEntity service;
  final List<WaterProductCartItem> items;
  final AddressEntity address;
}
