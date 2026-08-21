import '../../../../../core.dart';
import '../../../../address/presentation/screens/address_screen.dart';
import '../../../../home/domain/entities/home_entity.dart';
import '../../../domain/entities/water_tank_cleaning_entity.dart';
import '../../models/water_tank_cleaning_booking_args.dart';
import '../../widgets/section_heading.dart';

class WaterTankCleaningOptionsScreen extends StatefulWidget {
  const WaterTankCleaningOptionsScreen({
    super.key,
    required this.service,
    required this.detail,
  });

  final HomeServiceEntity service;
  final WaterTankCleaningDetailEntity detail;

  @override
  State<WaterTankCleaningOptionsScreen> createState() =>
      _WaterTankCleaningOptionsScreenState();
}

class _WaterTankCleaningOptionsScreenState
    extends State<WaterTankCleaningOptionsScreen> {
  CleaningOptionEntity? _tankType;
  CleaningCapacityEntity? _capacity;
  CleaningMethodEntity? _method;

  @override
  void initState() {
    super.initState();
    _tankType = widget.detail.tankTypes.isEmpty
        ? null
        : widget.detail.tankTypes.first;
    _capacity = widget.detail.capacities.isEmpty
        ? null
        : widget.detail.capacities.first;
    _method = widget.detail.cleaningMethods.isEmpty
        ? null
        : widget.detail.cleaningMethods.firstWhere(
            (item) => item.isRecommended,
            orElse: () => widget.detail.cleaningMethods.first,
          );
  }

  @override
  Widget build(BuildContext context) => AppScaffold(
    appBar: AppBar(title: const Text('Service Detail')),
    backgroundColor: context.appColors.surfaceSoft,
    bottomNavigationBar: SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: ElevatedButton.icon(
        onPressed: _canContinue ? _continue : null,
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Continue'),
      ),
    ),
    body: ListView(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      children: [
        _specifications(context),
        const SizedBox(height: 16),
        _methods(context),
      ],
    ),
  );

  Widget _specifications(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(
            icon: Icons.water_drop_outlined,
            title: 'Tank Specifications',
          ),
          const SizedBox(height: 16),
          AppDropdownField<CleaningOptionEntity>(
            label: 'Tank Type',
            hint: 'Select tank type',
            initialValue: _tankType,
            items: widget.detail.tankTypes
                .map((item) => AppDropdownItem(value: item, label: item.title))
                .toList(),
            onChanged: (value) => setState(() => _tankType = value),
          ),
          const SizedBox(height: 16),
          AppDropdownField<CleaningCapacityEntity>(
            label: 'Capacity (Liters)',
            hint: 'Select capacity',
            initialValue: _capacity,
            items: widget.detail.capacities
                .map((item) => AppDropdownItem(value: item, label: item.title))
                .toList(),
            onChanged: (value) => setState(() => _capacity = value),
          ),
        ],
      ),
    ),
  );

  Widget _methods(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(
            icon: Icons.cleaning_services_outlined,
            title: 'Cleaning Method',
          ),
          const SizedBox(height: 16),
          for (final method in widget.detail.cleaningMethods)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _MethodCard(
                method: method,
                price: _priceFor(method),
                selected: _method?.id == method.id,
                onTap: () => setState(() => _method = method),
              ),
            ),
        ],
      ),
    ),
  );

  bool get _canContinue =>
      _tankType != null && _capacity != null && _method != null;

  double _priceFor(CleaningMethodEntity method) =>
      method.priceFor(_capacity?.id ?? '');

  Future<void> _continue() async {
    if (!_canContinue) return;
    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: const AddressSelectionArgs(flowSlug: 'water-tank-cleaning'),
    );
    if (!mounted || result == null) return;
    await context.push(
      AppRoute.bookingSummary.path,
      extra: WaterTankCleaningSummaryArgs(
        service: widget.service,
        tankType: _tankType!,
        capacity: _capacity!,
        cleaningMethod: _method!,
        address: result.address,
      ),
    );
  }
}

class _MethodCard extends StatelessWidget {
  const _MethodCard({
    required this.method,
    required this.price,
    required this.selected,
    required this.onTap,
  });

  final CleaningMethodEntity method;
  final double price;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: selected ? context.appColors.primarySoft : const Color(0xFFF1F5F9),
    borderRadius: BorderRadius.circular(12),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              selected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
              color: selected
                  ? context.colors.primary
                  : const Color(0xFFE2E8F0),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          method.title,
                          style: context.textTheme.titleSmall,
                        ),
                      ),
                      if (method.isRecommended)
                        const Icon(
                          Icons.verified_outlined,
                          size: 16,
                          color: Color(0xFF025BCC),
                        ),
                      Text(
                        '${method.currency}${price.toStringAsFixed(0)}',
                        style: context.textTheme.titleSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(method.description, style: context.textTheme.bodySmall),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
