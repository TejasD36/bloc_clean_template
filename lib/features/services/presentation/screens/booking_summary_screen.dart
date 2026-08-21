import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../core.dart';
import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/tanker_capacity_entity.dart';
import '../../domain/entities/water_type_entity.dart';

class BookingSummaryArgs {
  const BookingSummaryArgs({required this.service, required this.capacity, required this.waterType, required this.address});

  final HomeServiceEntity service;
  final TankerCapacityEntity capacity;
  final WaterTypeEntity waterType;
  final AddressEntity address;
}

class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({super.key, required this.service, required this.capacity, required this.waterType, required this.address});

  final HomeServiceEntity service;
  final TankerCapacityEntity capacity;
  final WaterTypeEntity waterType;
  final AddressEntity address;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('Booking Details')),
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Material(
          elevation: 3,
          shadowColor: AppColor.black,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 16, 20.w, 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'TOTAL AMOUNT',
                        style: TextStyle(color: Color(0xFF424754), fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.6),
                      ),
                      Text(
                        _money(capacity.price),
                        style: const TextStyle(color: Color(0xFF191C1E), fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: service.isPaymentRequired
                        ? () => _startPayment(context)
                        : () => _showMessage(context, 'Booking creation is pending.'),
                    icon: const Icon(Icons.arrow_forward),
                    label: Text(service.isPaymentRequired ? 'Proceed to Pay' : 'Confirm Booking'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: _SummaryCard(capacity: capacity, waterType: waterType, address: address),
      ),
    );
  }

  void _startPayment(BuildContext context) {
    const razorpayKey = String.fromEnvironment('razorpayKey');
    const orderId = String.fromEnvironment('razorpayOrderId');

    if (razorpayKey.isEmpty || orderId.isEmpty) {
      _showMessage(context, 'Payment order is not ready. Create the booking order before payment.');
      return;
    }

    late final RazorpayService razorpay;
    razorpay = sl<RazorpayService>(
      param1: (PaymentSuccessResponse response) {
        razorpay.dispose();
        _showMessage(context, 'Payment received. Verification is pending.');
      },
      param2: (PaymentFailureResponse response) {
        razorpay.dispose();
        _showMessage(context, 'Payment was not completed.');
      },
    );
    razorpay.openCheckout(amount: capacity.price, orderId: orderId, razorpayKey: razorpayKey, paymentDescription: service.name);
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  String _money(double value) => '${capacity.currency}${value.toStringAsFixed(0)}';
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.capacity, required this.waterType, required this.address});

  final TankerCapacityEntity capacity;
  final WaterTypeEntity waterType;
  final AddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 3, offset: Offset(0, 1))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionHeading(icon: Icons.receipt_long_outlined, title: 'Service Summary'),
          const SizedBox(height: 16),
          _SummaryItem(icon: Icons.water_drop_outlined, label: 'Water Type', value: waterType.title),
          _SummaryItem(icon: Icons.local_shipping_outlined, label: 'Capacity', value: '${capacity.capacityLiters} L'),
          _SummaryItem(icon: Icons.currency_rupee, label: 'Total Amount', value: _money(capacity.price), emphasized: true),
          _SummaryItem(icon: Icons.location_on_outlined, label: 'Address', value: _addressText),
        ],
      ),
    );
  }

  String get _addressText => [
    address.flatNumberOrBuildingName,
    address.areaStreetName,
    address.city,
    address.pincode,
  ].where((value) => value.trim().isNotEmpty).join(', ');

  String _money(double value) => '${capacity.currency}${value.toStringAsFixed(0)}';
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, color: const Color(0xFF1D4ED8), size: 20),
      const SizedBox(width: 8),
      Text(
        title,
        style: TextStyle(color: context.appColors.text, fontSize: 18.sp, fontWeight: FontWeight.w800),
      ),
    ],
  );
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({required this.icon, required this.label, required this.value, this.emphasized = false});

  final IconData icon;
  final String label;
  final String value;
  final bool emphasized;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.only(bottom: 16, top: 16),
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: Color(0xFFF9FAFB))),
    ),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: const Color(0xFFEFF6FF), borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, color: const Color(0xFF3B82F6), size: 20),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(label, style: const TextStyle(color: Color(0xFF6B7280), fontSize: 14)),
        ),
        const SizedBox(width: 6),
        Flexible(
          fit: FlexFit.tight,
          child: Text(
            value,
            textAlign: TextAlign.right,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.appColors.text, fontSize: 14, fontWeight: emphasized ? FontWeight.w700 : FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}
