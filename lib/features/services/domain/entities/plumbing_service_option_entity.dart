class PlumbingServiceOptionsEntity {
  const PlumbingServiceOptionsEntity({required this.options});

  final List<PlumbingServiceOptionEntity> options;
}

class PlumbingServiceOptionEntity {
  const PlumbingServiceOptionEntity({
    required this.id,
    required this.title,
    this.icon,
  });

  final String id;
  final String title;
  final String? icon;
}
