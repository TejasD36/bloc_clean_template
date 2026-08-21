import '../../../../../core.dart';
import '../../../address/presentation/screens/address_screen.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/plumbing_service_option_entity.dart';
import '../../widgets/service_help_card.dart';
import '../bloc/plumbing_options_bloc.dart';
import '../models/plumbing_booking_args.dart';
import '../widgets/service_option_card.dart';

class PlumbingServiceScreen extends StatefulWidget {
  const PlumbingServiceScreen({super.key, required this.service});

  final HomeServiceEntity service;

  @override
  State<PlumbingServiceScreen> createState() => _PlumbingServiceScreenState();
}

class _PlumbingServiceScreenState extends State<PlumbingServiceScreen> {
  late final PlumbingOptionsBloc _bloc;
  List<PlumbingServiceOptionEntity> _options = const [];
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    _bloc = sl<PlumbingOptionsBloc>()..load();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) => BlocBuilder<PlumbingOptionsBloc, PlumbingOptionsState>(
    bloc: _bloc,
    builder: (context, state) {
      if (state is PlumbingOptionsInitial || state is PlumbingOptionsLoading) {
        return const AppLoadingWidget();
      }
      if (state is PlumbingOptionsFailure) {
        return AppFailureWidget(message: state.message, onRetry: _bloc.load);
      }
      if (state is PlumbingOptionsSuccess && _options.isEmpty) {
        _options = state.options;
      }
      return AppScaffold(
        padding: EdgeInsets.zero,
        appBar: AppBar(
          leading: IconButton(
            onPressed: context.pop,
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Plumbing Service'),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: SafeArea(
          minimum: EdgeInsets.fromLTRB(20.w, 12, 20.w, 16),
          child: ElevatedButton.icon(
            onPressed: _selectedIds.isEmpty ? null : _continue,
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Book Plumber'),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 24),
          children: [
            _hero(context),
            _selection(context),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ServiceHelpCard(),
            ),
          ],
        ),
      );
    },
  );

  Widget _hero(BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
    color: const Color(0xFFF8FAFC),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reliable Plumbing Services\nAt Your Doorstep',
                style: context.textTheme.headlineMedium?.copyWith(
                  color: const Color(0xFF005AB3),
                  fontWeight: FontWeight.w800,
                  height: 1.25,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Expert plumbers for all your home and office needs.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFF475569),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Icon(Icons.plumbing, size: 96, color: Color(0xFF005AB3)),
        ),
      ],
    ),
  );

  Widget _selection(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Plumbing Service',
          style: context.textTheme.titleLarge?.copyWith(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Select one or more services you need',
          style: TextStyle(color: Color(0xFF64748B), fontSize: 13),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _options.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: 144,
          ),
          itemBuilder: (context, index) {
            final option = _options[index];
            return ServiceOptionCard(
              option: option,
              selected: _selectedIds.contains(option.id),
              onTap: () => setState(() {
                if (!_selectedIds.add(option.id)) {
                  _selectedIds.remove(option.id);
                }
              }),
            );
          },
        ),
      ],
    ),
  );

  Future<void> _continue() async {
    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: const AddressSelectionArgs(flowSlug: 'plumbing-service'),
    );
    if (!mounted || result == null) return;
    await context.push(
      AppRoute.bookingSummary.path,
      extra: PlumbingBookingArgs(
        service: widget.service,
        options: _options
            .where((item) => _selectedIds.contains(item.id))
            .toList(),
        address: result.address,
      ),
    );
  }
}
