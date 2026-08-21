import '../../../../../core.dart';
import '../../../../home/domain/entities/home_entity.dart';
import '../../../widgets/service_help_card.dart';
import '../../models/water_testing_booking_args.dart';
import '../../models/water_testing_packages_args.dart';

class WaterTestingScreen extends StatefulWidget {
  const WaterTestingScreen({super.key, required this.service});

  final HomeServiceEntity service;

  @override
  State<WaterTestingScreen> createState() => _WaterTestingScreenState();
}

class _WaterTestingScreenState extends State<WaterTestingScreen> {
  String _sampleType = 'home_sample';

  bool get _isHomeSample => _sampleType == 'home_sample';

  @override
  Widget build(BuildContext context) => AppScaffold(
    appBar: AppBar(title: const Text('Water Testing Laboratory')),
    bottomNavigationBar: SafeArea(
      minimum: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      child: ElevatedButton.icon(
        onPressed: _continue,
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Continue'),
      ),
    ),
    body: ListView(
      children: [
        _hero(context),
        const SizedBox(height: 24),
        Text('Choose Booking Option', style: context.textTheme.titleLarge),
        const SizedBox(height: 16),
        _BookingOptionCard(
          icon: Icons.home_work_outlined,
          title: 'Home Sample Collection',
          description:
              'Our technician will visit your home and collect the sample.',
          badges: const ['Technician visit', 'Paid service'],
          selected: _isHomeSample,
          onTap: () => setState(() => _sampleType = 'home_sample'),
        ),
        const SizedBox(height: 16),
        _BookingOptionCard(
          icon: Icons.science_outlined,
          title: 'Self Sample Submission',
          description: 'Submit your sample at our nearest collection center.',
          badges: const ['No collection fee', 'Unpaid service'],
          selected: !_isHomeSample,
          onTap: () => setState(() => _sampleType = 'self_sample'),
        ),
        const SizedBox(height: 24),
        const ServiceHelpCard(),
      ],
    ),
  );

  Widget _hero(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Know Your',
                style: context.textTheme.displaySmall?.copyWith(
                  color: const Color(0xFF4338CA),
                ),
              ),
              Text('Water Quality', style: context.textTheme.displaySmall),
              const SizedBox(height: 8),
              const Text(
                'Book a certified water quality test in just 2 minutes.',
                style: TextStyle(fontSize: 12, color: Color(0xFF4B5563)),
              ),
              const SizedBox(height: 12),
              for (final item in const [
                'NABL certified laboratory',
                '24 to 48 hour reports',
                '100% accurate results',
              ])
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 11,
                        color: Color(0xFF4F46E5),
                      ),
                      const SizedBox(width: 8),
                      Text(item, style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        const Padding(
          padding: EdgeInsets.only(top: 24),
          child: Icon(
            Icons.water_drop_outlined,
            size: 92,
            color: Color(0xFF60A5FA),
          ),
        ),
      ],
    ),
  );

  Future<void> _continue() async {
    if (_isHomeSample) {
      await context.push(
        AppRoute.waterTestingPackages.path,
        extra: WaterTestingPackagesArgs(
          service: widget.service,
          sampleType: _sampleType,
        ),
      );
      return;
    }
    await context.push(
      AppRoute.bookingSummary.path,
      extra: WaterTestingBookingArgs(
        service: widget.service,
        sampleType: _sampleType,
      ),
    );
  }
}

class _BookingOptionCard extends StatelessWidget {
  const _BookingOptionCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.badges,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final List<String> badges;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: selected ? const Color(0xFF3B82F6) : const Color(0xFFE5E7EB),
        width: selected ? 2 : 1,
      ),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: const Color(0xFFEFF6FF),
              child: Icon(icon, color: const Color(0xFF3B82F6)),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF6B7280),
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 12,
                    runSpacing: 4,
                    children: badges
                        .map(
                          (badge) => Text(
                            '• $badge',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF374151),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
