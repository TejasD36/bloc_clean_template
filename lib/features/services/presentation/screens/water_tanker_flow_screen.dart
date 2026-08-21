import '../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../../address/presentation/screens/address_screen.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/tanker_capacity_entity.dart';
import '../../domain/entities/water_type_entity.dart';
import '../bloc/tanker_capacity_bloc.dart';
import '../bloc/tanker_capacity_event.dart';
import '../bloc/tanker_capacity_state.dart';
import '../bloc/water_type_bloc.dart';
import '../bloc/water_type_event.dart';
import '../bloc/water_type_state.dart';
import 'booking_summary_screen.dart';

class WaterTankerFlowScreen extends StatefulWidget {
  const WaterTankerFlowScreen({super.key, required this.service});

  final HomeServiceEntity service;

  @override
  State<WaterTankerFlowScreen> createState() => _WaterTankerFlowScreenState();
}

class _WaterTankerFlowScreenState extends State<WaterTankerFlowScreen> {
  late final TankerCapacityBloc _capacityBloc;
  late final WaterTypeBloc _waterTypeBloc;
  TankerCapacityEntity? _capacity;
  WaterTypeEntity? _waterType;
  AddressEntity? _selectedAddress;
  int _step = 0;

  @override
  void initState() {
    super.initState();
    _capacityBloc = sl<TankerCapacityBloc>()..add(const TankerCapacityEvent.started());
    _waterTypeBloc = sl<WaterTypeBloc>()..add(const WaterTypeEvent.started());
  }

  @override
  void dispose() {
    _capacityBloc.close();
    _waterTypeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _capacityBloc,
      child: BlocProvider.value(
        value: _waterTypeBloc,
        child: MultiBlocListener(
          listeners: [
            BlocListener<TankerCapacityBloc, TankerCapacityState>(
              listener: (context, state) {
                if (state case TankerCapacitySuccess(:final capacities)) {
                  if (_capacity == null && capacities.isNotEmpty) {
                    setState(() {
                      _capacity = capacities.first;
                    });
                  }
                }
              },
            ),

            BlocListener<WaterTypeBloc, WaterTypeState>(
              listener: (context, state) {
                if (state case WaterTypeSuccess(:final waterTypes)) {
                  if (_waterType == null && waterTypes.isNotEmpty) {
                    setState(() {
                      _waterType = waterTypes.first;
                    });
                  }
                }
              },
            ),
          ],
          child: BlocBuilder<TankerCapacityBloc, TankerCapacityState>(
            builder: (context, state) {
              final isSummary = _step == 2;

              return AppScaffold(
                appBar: AppBar(title: Text(isSummary ? 'Booking Summary' : '')),
                backgroundColor: const Color(0xFFF7F9FC),
                bottomNavigationBar: SafeArea(
                  minimum: const EdgeInsets.fromLTRB(20, 12, 20, 16),
                  child: ElevatedButton(
                    onPressed: _canContinue ? _continue : null,
                    child: Text(isSummary ? 'Continue to payment' : 'Continue'),
                  ),
                ),
                body: _buildBody(context, state),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, TankerCapacityState state) {
    return switch (state) {
      TankerCapacityInitial() || TankerCapacityLoading() => const Center(child: CircularProgressIndicator()),
      TankerCapacityFailure(:final message) => _CapacityFailure(
        message: message,
        onRetry: () => _capacityBloc.add(const TankerCapacityEvent.started()),
      ),
      TankerCapacitySuccess(:final capacities) => ListView(
        padding: EdgeInsets.only(top: 12.h),
        children: [
          if (_step == 0) ...[
            Text(
              'Select Tanker Capacity',
              style: context.textTheme.headlineMedium?.copyWith(color: const Color(0xFF191C1E), fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              'Choose the volume that best fits your requirement.',
              style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xFF414754)),
            ),
            const SizedBox(height: 24),

            ...capacities.map(
              (capacity) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _CapacityCard(
                  capacity: capacity,
                  selected: _capacity?.id == capacity.id,
                  onTap: () {
                    setState(() {
                      _capacity = capacity;
                    });
                  },
                ),
              ),
            ),
          ],

          if (_step == 1)
            _WaterTypeContent(
              selected: _waterType?.id,
              onSelected: (value) {
                setState(() {
                  _waterType = value;
                });
              },
            ),

          if (_step == 2)
            _TankerSummary(
              capacity: _capacity!,
              waterType: _waterType!.title,
              address: _selectedAddress,
              requiresPayment: widget.service.isPaymentRequired,
            ),
        ],
      ),
    };
  }

  bool get _canContinue {
    if (_step == 0) return _capacity != null;
    if (_step == 1) return _waterType != null;
    return true;
  }

  void _continue() {
    if (_step == 0) {
      setState(() => _step += 1);
      return;
    }
    if (_step == 1) {
      _selectAddress();
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Booking API integration will continue from this summary.')));
  }

  Future<void> _selectAddress() async {
    final capacity = _capacity;
    final waterType = _waterType;
    if (capacity == null || waterType == null) return;

    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: AddressSelectionArgs(capacityId: capacity.id, waterTypeId: waterType.id),
    );
    if (!mounted || result == null) return;
    setState(() {
      _selectedAddress = result.address;
    });
    await context.push(
      AppRoute.bookingSummary.path,
      extra: BookingSummaryArgs(service: widget.service, capacity: capacity, waterType: waterType, address: result.address),
    );
  }
}

class _CapacityCard extends StatelessWidget {
  const _CapacityCard({required this.capacity, required this.selected, required this.onTap});

  final TankerCapacityEntity capacity;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0x4DC0C6D6), width: 1),
                boxShadow: const [BoxShadow(color: Color(0x0D005AB3), blurRadius: 12, offset: Offset(0, 4))],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 128,
                    width: double.infinity,
                    decoration: BoxDecoration(color: const Color(0xFFECEEF1), borderRadius: BorderRadius.circular(8)),
                    child: capacity.imageUrl.isEmpty
                        ? const Icon(Icons.local_shipping_outlined, size: 64, color: Color(0xFF005AB3))
                        : Image.network(capacity.imageUrl, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    capacity.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: const Color(0xFF191C1E), fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(capacity.description, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: const Color(0xFF414754))),
                  const SizedBox(height: 12),
                  Text(
                    '${capacity.currency}${capacity.price.toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: const Color(0xFF005AB3), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            if (selected)
              Positioned(
                left: 1.w,
                top: 0,
                bottom: 0,
                child: Container(
                  width: 4.w,
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(60), bottomLeft: Radius.circular(60)),
                    color: context.appColors.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _WaterTypeContent extends StatelessWidget {
  const _WaterTypeContent({required this.selected, required this.onSelected});

  final String? selected;
  final ValueChanged<WaterTypeEntity> onSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterTypeBloc, WaterTypeState>(
      builder: (context, state) {
        return switch (state) {
          WaterTypeInitial() || WaterTypeLoading() => const SizedBox(height: 300, child: Center(child: CircularProgressIndicator())),
          WaterTypeFailure(:final message) => _WaterTypeFailure(
            message: message,
            onRetry: () => context.read<WaterTypeBloc>().add(const WaterTypeEvent.started()),
          ),
          WaterTypeSuccess(:final waterTypes) => _WaterTypeOptions(options: waterTypes, selected: selected, onSelected: onSelected),
        };
      },
    );
  }
}

class _WaterTypeOptions extends StatelessWidget {
  const _WaterTypeOptions({required this.options, required this.selected, required this.onSelected});

  final List<WaterTypeEntity> options;
  final String? selected;
  final ValueChanged<WaterTypeEntity> onSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Water Type',
              style: context.textTheme.headlineMedium?.copyWith(color: const Color(0xFF191C1E), fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            Text(
              'Choose the quality required for your use case.',
              style: context.textTheme.bodyLarge?.copyWith(color: const Color(0xFF414754)),
            ),
            const SizedBox(height: 16),
            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _WaterTypeCard(option: option, selected: selected == option.id, onTap: () => onSelected(option)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WaterTypeCard extends StatelessWidget {
  const _WaterTypeCard({required this.option, required this.selected, required this.onTap});

  final WaterTypeEntity option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? const Color(0xFFFAFDFF) : const Color(0xFFF7F9FC),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: selected ? const Color(0xFF005AB3) : const Color(0xFFC0C6D6)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                selected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                color: selected ? const Color(0xFF005AB3) : const Color(0xFFC0C6D6),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(option.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                        ),
                        Icon(_iconFor(option.id), color: selected ? const Color(0xFF00647C) : const Color(0xFF717786)),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(option.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _iconFor(String id) => switch (id) {
    'domestic' => Icons.water_drop_outlined,
    'commercial' => Icons.business_outlined,
    'construction' => Icons.construction_outlined,
    _ => Icons.water_outlined,
  };
}

class _WaterTypeFailure extends StatelessWidget {
  const _WaterTypeFailure({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            OutlinedButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh), label: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}

class _TankerSummary extends StatelessWidget {
  const _TankerSummary({required this.capacity, required this.waterType, required this.address, required this.requiresPayment});

  final TankerCapacityEntity capacity;
  final String waterType;
  final AddressEntity? address;
  final bool requiresPayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Review your request', style: context.textTheme.headlineMedium),
        const SizedBox(height: 16),
        _SummaryRow(label: 'Capacity', value: capacity.title),
        _SummaryRow(label: 'Estimated price', value: '${capacity.currency}${capacity.price.toStringAsFixed(0)}'),
        _SummaryRow(label: 'Water type', value: waterType),
        _SummaryRow(
          label: 'Address',
          value: address == null
              ? 'Select delivery address'
              : [address!.flatNumberOrBuildingName, address!.areaStreetName, address!.city].where((value) => value.isNotEmpty).join(', '),
        ),
        _SummaryRow(label: 'Payment', value: requiresPayment ? 'Online payment' : 'Pay later / free'),
      ],
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label, style: context.textTheme.bodyLarge)),
          const SizedBox(width: 16),
          Flexible(
            child: Text(value, textAlign: TextAlign.end, style: context.textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}

class _CapacityFailure extends StatelessWidget {
  const _CapacityFailure({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            OutlinedButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh), label: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
