import '../../../../../core.dart';
import '../../../../address/presentation/screens/address_screen.dart';
import '../../../../home/domain/entities/home_entity.dart';
import '../../../domain/entities/water_product_entity.dart';
import '../../bloc/water_product_bloc.dart';
import '../../bloc/water_product_event.dart';
import '../../bloc/water_product_state.dart';
import '../../models/bottle_booking_summary_args.dart';
import '../../models/water_product_cart_item.dart';
import 'product_card.dart';

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
          return const AppLoadingWidget();
        }
        if (state is WaterProductFailure) {
          return AppFailureWidget(message: state.message, onRetry: _retry);
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
            child: ElevatedButton(
              onPressed: _selected.isEmpty ? null : _continue,
              child: const Text('Continue'),
            ),
          ),
          body: ListView.separated(
            padding: EdgeInsets.only(top: 16.h),
            itemCount: _products.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (_, index) => ProductCard(
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
