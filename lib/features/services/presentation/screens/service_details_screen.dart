import '../../../../core.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/models/service_flow.dart';
import 'water_bottle_jar_delivery/water_bottle_jar_delivery_screen.dart';
import 'water_tank_cleaning/water_tank_cleaning_screen.dart';
import 'water_tanker/water_tanker_flow_screen.dart';
import 'plumbing_service_screen.dart';
import 'water_testing/water_testing_screen.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key, required this.slug, this.service});

  final String slug;
  final HomeServiceEntity? service;

  @override
  Widget build(BuildContext context) {
    final resolvedService = service ?? _fallbackService(slug);
    final flow = CustomerServiceSlug.fromValue(slug).flowType;

    return switch (flow) {
      ServiceFlowType.waterTanker => WaterTankerFlowScreen(
        service: resolvedService,
      ),
      ServiceFlowType.waterBottleJarDelivery => WaterBottleJarDeliveryScreen(
        service: resolvedService,
      ),
      ServiceFlowType.waterTankCleaning => WaterTankCleaningScreen(
        service: resolvedService,
      ),
      ServiceFlowType.plumbing => PlumbingServiceScreen(
        service: resolvedService,
      ),
      ServiceFlowType.waterTesting => WaterTestingScreen(
        service: resolvedService,
      ),
      ServiceFlowType.roService => _RoServiceScreen(service: resolvedService),
      ServiceFlowType.waterSoftener => _WaterSoftenerScreen(
        service: resolvedService,
      ),
      ServiceFlowType.waterCoolerAndPurifier => _WaterCoolerScreen(
        service: resolvedService,
      ),
      ServiceFlowType.rainWaterHarvesting => _RainwaterScreen(
        service: resolvedService,
      ),
      ServiceFlowType.stp => _StpScreen(service: resolvedService),
      ServiceFlowType.borewell => _BorewellScreen(service: resolvedService),
      ServiceFlowType.unknown => _UnsupportedServiceScreen(
        service: resolvedService,
      ),
    };
  }

  HomeServiceEntity _fallbackService(String value) {
    final slug = CustomerServiceSlug.fromValue(value);
    return HomeServiceEntity(
      id: 0,
      name: _displayName(slug),
      slug: value,
      description: 'Service details are not available yet.',
      iconUrl: '',
      isPaymentRequired: false,
    );
  }

  String _displayName(CustomerServiceSlug slug) {
    return switch (slug) {
      CustomerServiceSlug.waterTanker => 'Water Tanker',
      CustomerServiceSlug.waterBottleJarDelivery =>
        'Water Bottle & Jar Delivery',
      CustomerServiceSlug.waterTankCleaning => 'Water Tank Cleaning',
      CustomerServiceSlug.plumbingService => 'Plumbing Service',
      CustomerServiceSlug.waterTestingLaboratory => 'Water Testing',
      CustomerServiceSlug.roService => 'RO Water Purifier',
      CustomerServiceSlug.waterSoftener => 'Water Softener',
      CustomerServiceSlug.waterCoolerAndPurifier => 'Water Cooler & Purifier',
      CustomerServiceSlug.rainWaterHarvesting => 'Rainwater Harvesting',
      CustomerServiceSlug.stp => 'STP',
      CustomerServiceSlug.borewell => 'Borewell',
      CustomerServiceSlug.unknown => 'Service',
    };
  }
}

class _RoServiceScreen extends _ServicePlaceholderScreen {
  const _RoServiceScreen({required super.service});
}

class _WaterSoftenerScreen extends _ServicePlaceholderScreen {
  const _WaterSoftenerScreen({required super.service});
}

class _WaterCoolerScreen extends _ServicePlaceholderScreen {
  const _WaterCoolerScreen({required super.service});
}

class _RainwaterScreen extends _ServicePlaceholderScreen {
  const _RainwaterScreen({required super.service});
}

class _StpScreen extends _ServicePlaceholderScreen {
  const _StpScreen({required super.service});
}

class _BorewellScreen extends _ServicePlaceholderScreen {
  const _BorewellScreen({required super.service});
}

class _UnsupportedServiceScreen extends _ServicePlaceholderScreen {
  const _UnsupportedServiceScreen({required super.service});
}

abstract class _ServicePlaceholderScreen extends StatelessWidget {
  const _ServicePlaceholderScreen({required this.service});

  final HomeServiceEntity service;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: Text(service.name)),
      backgroundColor: context.appColors.surfaceSoft,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            '${service.name} details will be added with its service API.',
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
