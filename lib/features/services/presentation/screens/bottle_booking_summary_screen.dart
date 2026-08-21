import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import 'water_bottle_jar_delivery_screen.dart';

class BottleBookingSummaryArgs {
  const BottleBookingSummaryArgs({
    required this.service,
    required this.items,
    required this.address,
  });

  final HomeServiceEntity service;
  final List<WaterProductCartItem> items;
  final AddressEntity address;
}

class BottleBookingSummaryScreen extends StatefulWidget {
  const BottleBookingSummaryScreen({
    super.key,
    required this.service,
    required this.items,
    required this.address,
  });

  final HomeServiceEntity service;
  final List<WaterProductCartItem> items;
  final AddressEntity address;

  @override
  State<BottleBookingSummaryScreen> createState() =>
      _BottleBookingSummaryScreenState();
}

class _BottleBookingSummaryScreenState
    extends State<BottleBookingSummaryScreen> {
  late List<WaterProductCartItem> _items;

  @override
  void initState() {
    super.initState();
    _items = List.of(widget.items);
  }

  @override
  Widget build(BuildContext context) {
    final total = _items.fold<double>(
      0,
      (sum, item) => sum + item.product.price * item.quantity,
    );
    return AppScaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.pop,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('My Cart'),
      ),
      backgroundColor: context.appColors.surfaceSoft,
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(24, 12, 24, 16),
        child: Row(
          children: [
            Expanded(child: _Total(total: total)),
            const SizedBox(width: 16),
            Expanded(
              child: FilledButton.icon(
                onPressed: _items.isEmpty ? null : () => _pay(context),
                icon: const Icon(Icons.arrow_forward),
                label: Text(
                  widget.service.isPaymentRequired
                      ? 'Proceed to Pay'
                      : 'Confirm Booking',
                ),
              ),
            ),
          ],
        ),
      ),
      body: _items.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
              children: [
                Text('My Cart', style: context.textTheme.headlineSmall),
                const SizedBox(height: 16),
                for (final item in _items) ...[
                  _CartItem(
                    item: item,
                    onChanged: (quantity) => _update(item, quantity),
                  ),
                  const SizedBox(height: 12),
                ],
                const SizedBox(height: 8),
                _AddressCard(address: widget.address),
              ],
            ),
    );
  }

  void _update(WaterProductCartItem item, int quantity) {
    setState(() {
      _items = [
        for (final current in _items)
          if (current.product.id == item.product.id && quantity > 0)
            WaterProductCartItem(product: current.product, quantity: quantity)
          else if (current.product.id != item.product.id)
            current,
      ];
    });
  }

  void _pay(BuildContext context) {
    if (!widget.service.isPaymentRequired) {
      _message(context, 'Booking creation is pending.');
      return;
    }
    const key = String.fromEnvironment('razorpayKey');
    const orderId = String.fromEnvironment('razorpayOrderId');
    if (key.isEmpty || orderId.isEmpty) {
      _message(
        context,
        'Payment order is not ready. Create the booking order before payment.',
      );
      return;
    }
    final amount = _items.fold<double>(
      0,
      (sum, item) => sum + item.product.price * item.quantity,
    );
    late final RazorpayService razorpay;
    razorpay = sl<RazorpayService>(
      param1: (PaymentSuccessResponse response) {
        razorpay.dispose();
        _message(context, 'Payment received. Verification is pending.');
      },
      param2: (PaymentFailureResponse response) {
        razorpay.dispose();
        _message(context, 'Payment was not completed.');
      },
    );
    razorpay.openCheckout(
      amount: amount,
      orderId: orderId,
      razorpayKey: key,
      paymentDescription: 'Water bottle and jar delivery',
    );
  }

  void _message(BuildContext context, String message) =>
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(message)));
}

class _CartItem extends StatelessWidget {
  const _CartItem({required this.item, required this.onChanged});
  final WaterProductCartItem item;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) => Card(
    margin: EdgeInsets.zero,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          _ProductImage(url: item.product.imageUrl),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.product.title,
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                    IconButton(
                      onPressed: () => onChanged(0),
                      icon: const Icon(Icons.delete_outline),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.product.currency}${item.product.price.toStringAsFixed(2)}',
                      style: TextStyle(color: context.colors.primary),
                    ),
                    _SummaryStepper(
                      quantity: item.quantity,
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

class _SummaryStepper extends StatelessWidget {
  const _SummaryStepper({required this.quantity, required this.onChanged});
  final int quantity;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
        onPressed: () => onChanged(quantity - 1),
        icon: const Icon(Icons.remove_circle_outline),
      ),
      Text('$quantity'),
      IconButton(
        onPressed: () => onChanged(quantity + 1),
        icon: const Icon(Icons.add_circle),
      ),
    ],
  );
}

class _Total extends StatelessWidget {
  const _Total({required this.total});
  final double total;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      const Text(
        'TOTAL AMOUNT',
        style: TextStyle(fontSize: 12, letterSpacing: .6),
      ),
      Text(
        '₹${total.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    ],
  );
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({required this.address});
  final AddressEntity address;

  @override
  Widget build(BuildContext context) => Card(
    child: ListTile(
      leading: const Icon(Icons.location_on_outlined),
      title: const Text('Delivery Address'),
      subtitle: Text(
        [
          address.flatNumberOrBuildingName,
          address.areaStreetName,
          address.city,
          address.pincode,
        ].where((value) => value.isNotEmpty).join(', '),
      ),
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
        : Image.network(url, fit: BoxFit.cover),
  );
}
