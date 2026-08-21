enum CustomerServiceSlug {
  waterTanker('water-tanker'),
  waterBottleJarDelivery('water-bottle-jar-delivery'),
  waterTankCleaning('water-tank-cleaning'),
  plumbingService('plumbing-service'),
  waterTestingLaboratory('water-testing-laboratory'),
  roService('ro-service'),
  waterSoftener('water-softner'),
  waterCoolerAndPurifier('water-cooler-and-purifier'),
  rainWaterHarvesting('rain-water-harvesting'),
  stp('stp'),
  borewell('borewell'),
  unknown('');

  const CustomerServiceSlug(this.value);

  final String value;

  static CustomerServiceSlug fromValue(String value) {
    for (final slug in values) {
      if (slug.value == value) {
        return slug;
      }
    }
    return unknown;
  }
}
