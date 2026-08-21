class TankerCapacityEntity {
  const TankerCapacityEntity({
    required this.id,
    required this.title,
    required this.capacityLiters,
    required this.description,
    required this.price,
    required this.currency,
    required this.imageUrl,
  });

  final String id;
  final String title;
  final int capacityLiters;
  final String description;
  final double price;
  final String currency;
  final String imageUrl;
}
