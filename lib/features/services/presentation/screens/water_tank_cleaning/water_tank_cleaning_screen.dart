import '../../../../../core.dart';
import '../../../../home/domain/entities/home_entity.dart';
import '../../../domain/entities/water_tank_cleaning_entity.dart';
import '../../bloc/water_tank_cleaning_bloc.dart';
import '../../bloc/water_tank_cleaning_event.dart';
import '../../bloc/water_tank_cleaning_state.dart';
import '../../models/water_tank_cleaning_booking_args.dart';
import '../../../widgets/service_help_card.dart';

class WaterTankCleaningScreen extends StatefulWidget {
  const WaterTankCleaningScreen({super.key, required this.service});

  final HomeServiceEntity service;

  @override
  State<WaterTankCleaningScreen> createState() =>
      _WaterTankCleaningScreenState();
}

class _WaterTankCleaningScreenState extends State<WaterTankCleaningScreen> {
  late final WaterTankCleaningBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = sl<WaterTankCleaningBloc>()
      ..add(const WaterTankCleaningEvent.started());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterTankCleaningBloc, WaterTankCleaningState>(
      bloc: _bloc,
      builder: (context, state) {
        final detail = state is WaterTankCleaningSuccess ? state.detail : null;
        return AppScaffold(
          appBar: AppBar(title: const Text('Water Tank Cleaning')),
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.fromLTRB(20, 12, 20, 16),
            child: ElevatedButton.icon(
              onPressed: detail == null ? null : () => _continue(detail),
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Continue'),
            ),
          ),
          body: _body(context, state),
        );
      },
    );
  }

  Widget _body(BuildContext context, WaterTankCleaningState state) {
    if (state is WaterTankCleaningFailure) {
      return AppFailureWidget(
        message: state.message,
        onRetry: () => _bloc.add(const WaterTankCleaningEvent.started()),
      );
    }
    if (state is WaterTankCleaningLoading ||
        state is WaterTankCleaningInitial) {
      return const AppLoadingWidget();
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _hero(context),
          _process(context),
          const _FaqAccordion(),
          const SizedBox(height: 24),
          const ServiceHelpCard(),
        ],
      ),
    );
  }

  Widget _hero(BuildContext context) => SizedBox(
    height: 220.h,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Water Tank',
                  style: context.textTheme.displaySmall?.copyWith(
                    color: const Color(0xFF4338CA),
                  ),
                ),
                Text('Cleaning', style: context.textTheme.displaySmall),
                const SizedBox(height: 8),
                const Text(
                  'Book a certified water tank cleaning in just 2 minutes',
                  style: TextStyle(fontSize: 12, color: Color(0xFF4B5563)),
                ),
                const SizedBox(height: 12),
                for (final item in const [
                  'Overhead & underground tanks',
                  'Complete drain, scrub & refill',
                  '6-month service warranty',
                  'Post-clean water test included',
                ])
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 12,
                          color: Color(0xFF4F46E5),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(child: Center(child: Image.asset(Assets.imagesWaterTank))),
      ],
    ),
  );

  Widget _process(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Our Process', style: context.textTheme.titleLarge),
      SizedBox(height: 10.h),
      for (final step in const [
        ('Dewatering', 'Safe draining of existing water.'),
        (
          'Sludge Removal & High-Pressure Cleaning',
          'Removing deep-seated dirt and algae.',
        ),
        ('Anti-Bacterial Spray', 'Disinfecting walls and floor.'),
        ('UV Radiation Treatment', 'Final sterilization step.'),
      ])
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          minTileHeight: 20.h,
          leading: CircleAvatar(
            radius: 10,
            backgroundColor: context.colors.primary,
            child: const Icon(Icons.check, size: 12, color: Colors.white),
          ),
          title: Text(step.$1, style: context.textTheme.titleSmall),
          subtitle: Text(step.$2),
        ),
    ],
  );

  Future<void> _continue(WaterTankCleaningDetailEntity detail) async {
    await context.push(
      AppRoute.waterTankCleaningOptions.path,
      extra: WaterTankCleaningOptionsArgs(
        service: widget.service,
        detail: detail,
      ),
    );
  }
}

class _FaqAccordion extends StatelessWidget {
  const _FaqAccordion();

  static const _items = [
    (
      'How long does the cleaning take?',
      'It typically takes 2 to 4 hours depending on the size and condition of the tank.',
    ),
    (
      'Is the service safe for drinking water?',
      'The tank is cleaned and treated using the service process described above.',
    ),
    (
      'Do I need to empty the tank before service?',
      'Our team handles the draining as part of the service.',
    ),
    ('Is a warranty included?', 'A six-month service warranty is included.'),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(Icons.help_outline),
        title: Text(
          'Common Questions',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      ExpansionPanelList.radio(
        initialOpenPanelValue: 0,
        expandedHeaderPadding: EdgeInsets.zero,
        materialGapSize: 12,
        children: [
          for (var index = 0; index < _items.length; index++)
            ExpansionPanelRadio(
              value: index,
              canTapOnHeader: true,
              headerBuilder: (_, _) => Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _items[index].$1,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _items[index].$2,
                    style: const TextStyle(color: Color(0xFF474A4D)),
                  ),
                ),
              ),
            ),
        ],
      ),
    ],
  );
}
