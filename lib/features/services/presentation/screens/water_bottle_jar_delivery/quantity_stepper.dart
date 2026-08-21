import '../../../../../core.dart';

class QuantityStepper extends StatelessWidget {
  const QuantityStepper({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

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
