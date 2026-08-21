import '../../../../../core.dart';
import '../../../../address/domain/entities/address_entity.dart';
import '../../../../address/presentation/screens/address_screen.dart';
import '../../../../home/domain/entities/home_entity.dart';
import '../../../domain/entities/tanker_capacity_entity.dart';
import '../../../domain/entities/water_type_entity.dart';
import '../../bloc/tanker_capacity_bloc.dart';
import '../../bloc/tanker_capacity_event.dart';
import '../../bloc/tanker_capacity_state.dart';
import '../../bloc/water_type_bloc.dart';
import '../../bloc/water_type_event.dart';
import '../../bloc/water_type_state.dart';
import '../booking_summary_screen.dart';
import 'capacity_card.dart';
import 'tanker_summary.dart';
import 'water_type_content.dart';

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
    _capacityBloc = sl<TankerCapacityBloc>()
      ..add(const TankerCapacityEvent.started());
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
      TankerCapacityInitial() ||
      TankerCapacityLoading() => const AppLoadingWidget(),
      TankerCapacityFailure(:final message) => AppFailureWidget(
        message: message,
        onRetry: () => _capacityBloc.add(const TankerCapacityEvent.started()),
      ),
      TankerCapacitySuccess(:final capacities) => ListView(
        padding: EdgeInsets.only(top: 12.h),
        children: [
          if (_step == 0) ...[
            Text(
              'Select Tanker Capacity',
              style: context.textTheme.headlineMedium?.copyWith(
                color: const Color(0xFF191C1E),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Choose the volume that best fits your requirement.',
              style: context.textTheme.bodyLarge?.copyWith(
                color: const Color(0xFF414754),
              ),
            ),
            const SizedBox(height: 24),

            ...capacities.map(
              (capacity) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CapacityCard(
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
            WaterTypeContent(
              selected: _waterType?.id,
              onSelected: (value) {
                setState(() {
                  _waterType = value;
                });
              },
            ),

          if (_step == 2)
            TankerSummary(
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
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Booking API integration will continue from this summary.',
        ),
      ),
    );
  }

  Future<void> _selectAddress() async {
    final capacity = _capacity;
    final waterType = _waterType;
    if (capacity == null || waterType == null) return;

    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: AddressSelectionArgs(
        capacityId: capacity.id,
        waterTypeId: waterType.id,
      ),
    );
    if (!mounted || result == null) return;
    setState(() {
      _selectedAddress = result.address;
    });
    await context.push(
      AppRoute.bookingSummary.path,
      extra: BookingSummaryArgs(
        service: widget.service,
        capacity: capacity,
        waterType: waterType,
        address: result.address,
      ),
    );
  }
}
