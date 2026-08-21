class WaterProductEntity {
  const WaterProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.imageUrl,
    required this.defaultQuantity,
  });

  final String id;
  final String title;
  final double price;
  final String currency;
  final String imageUrl;
  final int defaultQuantity;
}
