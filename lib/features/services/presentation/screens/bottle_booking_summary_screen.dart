import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../models/booking_success_args.dart';
import '../models/water_product_cart_item.dart';
import '../widgets/payment_summary.dart';
import 'water_bottle_jar_delivery/address_card.dart';
import 'water_bottle_jar_delivery/product_card.dart';

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
        title: const Text('Booking Summary'),
      ),
      backgroundColor: context.appColors.surfaceSoft,
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(24, 12, 24, 16),
        child: Row(
          children: [
            Expanded(child: PaymentSummary(total: total)),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton.icon(
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
              padding: EdgeInsets.only(top: 16.h),
              children: [
                for (final item in _items) ...[
                  ProductCard(
                    product: item.product,
                    onChanged: (quantity) => _update(item, quantity),
                    quantity: item.quantity,
                    canDelete: true,
                  ),
                  const SizedBox(height: 12),
                ],
                const SizedBox(height: 8),
                AddressCard(address: widget.address),
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
        context.pushReplacement(
          AppRoute.bookingSuccess.path,
          extra: BookingSuccessArgs(
            service: widget.service,
            serviceType: _items.map((item) => item.product.title).join(', '),
            address: widget.address,
            amount: amount,
            currency: _items.first.product.currency,
          ),
        );
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
