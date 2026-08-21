import '../../../../core.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key, required this.total});
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
