import '../../../../core.dart';
import '../../../address/presentation/screens/address_screen.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/water_product_entity.dart';
import '../bloc/water_product_bloc.dart';
import '../bloc/water_product_event.dart';
import '../bloc/water_product_state.dart';
import 'bottle_booking_summary_screen.dart';

class WaterBottleJarDeliveryScreen extends StatefulWidget {
  const WaterBottleJarDeliveryScreen({super.key, required this.service});

  final HomeServiceEntity service;

  @override
  State<WaterBottleJarDeliveryScreen> createState() =>
      _WaterBottleJarDeliveryScreenState();
}

class _WaterBottleJarDeliveryScreenState
    extends State<WaterBottleJarDeliveryScreen> {
  late final WaterProductBloc _bloc;
  List<WaterProductEntity> _products = const [];
  Map<String, int> _quantities = const {};
  @override
  void initState() {
    super.initState();
    _bloc = sl<WaterProductBloc>()..add(const WaterProductEvent.started());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterProductBloc, WaterProductState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is WaterProductLoading || state is WaterProductInitial) {
          return const AppScaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (state is WaterProductFailure) {
          return AppScaffold(
            appBar: _appBar(context),
            body: Center(
              child: _Failure(message: state.message, onRetry: _retry),
            ),
          );
        }
        if (state is WaterProductSuccess && _products.isEmpty) {
          _products = state.products;
          _quantities = {
            for (final product in _products)
              product.id: product.defaultQuantity,
          };
        }
        return AppScaffold(
          appBar: _appBar(context),
          backgroundColor: context.appColors.surfaceSoft,
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.fromLTRB(24, 12, 24, 16),
            child: FilledButton(
              onPressed: _selected.isEmpty ? null : _continue,
              child: const Text('Continue'),
            ),
          ),
          body: ListView.separated(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            itemCount: _products.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (_, index) => _ProductCard(
              product: _products[index],
              quantity: _quantities[_products[index].id] ?? 0,
              onChanged: (quantity) => setState(() {
                _quantities = {..._quantities, _products[index].id: quantity};
              }),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) => AppBar(
    leading: IconButton(
      onPressed: context.pop,
      icon: const Icon(Icons.arrow_back),
    ),
    title: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Water Jar Delivery'),
        Text('Choose products for delivery', style: TextStyle(fontSize: 11)),
      ],
    ),
  );

  List<WaterProductCartItem> get _selected => [
    for (final product in _products)
      if ((_quantities[product.id] ?? 0) > 0)
        WaterProductCartItem(
          product: product,
          quantity: _quantities[product.id]!,
        ),
  ];

  void _retry() => _bloc.add(const WaterProductEvent.started());

  Future<void> _continue() async {
    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: const AddressSelectionArgs(flowSlug: 'water-bottle-jar-delivery'),
    );
    if (!mounted || result == null) return;
    await context.push(
      AppRoute.bottleBookingSummary.path,
      extra: BottleBookingSummaryArgs(
        service: widget.service,
        items: _selected,
        address: result.address,
      ),
    );
  }
}

class WaterProductCartItem {
  const WaterProductCartItem({required this.product, required this.quantity});

  final WaterProductEntity product;
  final int quantity;
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    required this.product,
    required this.quantity,
    required this.onChanged,
  });

  final WaterProductEntity product;
  final int quantity;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            _ProductImage(url: product.imageUrl),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title, style: context.textTheme.titleMedium),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${product.currency}${product.price.toStringAsFixed(2)}',
                        style: TextStyle(color: context.colors.primary),
                      ),
                      _QuantityStepper(
                        quantity: quantity,
                        onChanged: onChanged,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuantityStepper extends StatelessWidget {
  const _QuantityStepper({required this.quantity, required this.onChanged});

  final int quantity;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: const Color(0xFFECEEF0),
      borderRadius: BorderRadius.circular(999),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _stepButton(
          Icons.remove,
          quantity > 0 ? () => onChanged(quantity - 1) : null,
        ),
        SizedBox(width: 28, child: Center(child: Text('$quantity'))),
        _stepButton(Icons.add, () => onChanged(quantity + 1), filled: true),
      ],
    ),
  );

  Widget _stepButton(
    IconData icon,
    VoidCallback? onPressed, {
    bool filled = false,
  }) => SizedBox(
    width: 28,
    height: 28,
    child: IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: filled ? const Color(0xFF0058BE) : Colors.white,
      ),
      icon: Icon(icon, size: 16, color: filled ? Colors.white : Colors.black87),
    ),
  );
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({required this.url});
  final String url;

  @override
  Widget build(BuildContext context) => Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: const Color(0xFFECEEF0),
      borderRadius: BorderRadius.circular(8),
    ),
    child: url.isEmpty
        ? const Icon(
            Icons.water_drop_outlined,
            color: Color(0xFF0058BE),
            size: 32,
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(url, fit: BoxFit.cover),
          ),
  );
}

class _Failure extends StatelessWidget {
  const _Failure({required this.message, required this.onRetry});
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(message),
      const SizedBox(height: 12),
      OutlinedButton(onPressed: onRetry, child: const Text('Retry')),
    ],
  );
}
