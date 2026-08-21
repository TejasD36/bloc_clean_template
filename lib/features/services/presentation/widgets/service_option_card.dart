import '../../../../../core.dart';
import '../../domain/entities/plumbing_service_option_entity.dart';

class ServiceOptionCard extends StatelessWidget {
  const ServiceOptionCard({super.key, required this.option, required this.selected, required this.onTap});

  final PlumbingServiceOptionEntity option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.appColors.scaffold,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: selected ? const Color(0xFF005AB3) : const Color(0xFFF3F4F6), width: selected ? 1.5 : 1),
          boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 2, offset: Offset(0, 1))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_iconFor(option.id), size: 36, color: const Color(0xFF0058BE)),
            const SizedBox(height: 14),
            Text(
              option.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF1F2937)),
            ),
          ],
        ),
      ),
    ),
  );

  IconData _iconFor(String id) => switch (id) {
    'construction' => Icons.construction_outlined,
    'leakage' => Icons.water_damage_outlined,
    'tap_repair' => Icons.water_drop_outlined,
    'bathroom_fittings' => Icons.bathtub_outlined,
    'motor_installation' => Icons.settings_outlined,
    'drain_cleaning' => Icons.cleaning_services_outlined,
    'pipe_repair' => Icons.plumbing_outlined,
    _ => Icons.build_outlined,
  };
}
