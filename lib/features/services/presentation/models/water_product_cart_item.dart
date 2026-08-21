import '../../domain/entities/water_product_entity.dart';

class WaterProductCartItem {
  const WaterProductCartItem({required this.product, required this.quantity});

  final WaterProductEntity product;
  final int quantity;
}
