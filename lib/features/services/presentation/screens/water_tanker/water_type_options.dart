import '../../../../../core.dart';
import '../../../domain/entities/water_type_entity.dart';
import 'water_type_card.dart';

class WaterTypeOptions extends StatelessWidget {
  const WaterTypeOptions({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelected,
  });

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
              style: context.textTheme.headlineMedium?.copyWith(
                color: const Color(0xFF191C1E),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Choose the quality required for your use case.',
              style: context.textTheme.bodyLarge?.copyWith(
                color: const Color(0xFF414754),
              ),
            ),
            const SizedBox(height: 16),
            ...options.map(
              (option) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: WaterTypeCard(
                  option: option,
                  selected: selected == option.id,
                  onTap: () => onSelected(option),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
