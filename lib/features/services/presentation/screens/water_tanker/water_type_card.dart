import '../../../../../core.dart';
import '../../../domain/entities/water_type_entity.dart';

class WaterTypeCard extends StatelessWidget {
  const WaterTypeCard({
    super.key,
    required this.option,
    required this.selected,
    required this.onTap,
  });

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
            border: Border.all(
              color: selected
                  ? const Color(0xFF005AB3)
                  : const Color(0xFFC0C6D6),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected
                    ? const Color(0xFF005AB3)
                    : const Color(0xFFC0C6D6),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            option.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Icon(
                          _iconFor(option.id),
                          color: selected
                              ? const Color(0xFF00647C)
                              : const Color(0xFF717786),
                        ),
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
