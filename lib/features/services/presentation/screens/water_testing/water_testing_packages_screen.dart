import '../../../../../core.dart';
import '../../../../address/presentation/screens/address_screen.dart';
import '../../../domain/entities/water_testing_package_entity.dart';
import '../../bloc/water_testing_packages_bloc.dart';
import '../../models/water_testing_booking_args.dart';
import '../../models/water_testing_packages_args.dart';

class WaterTestingPackagesScreen extends StatefulWidget {
  const WaterTestingPackagesScreen({super.key, required this.args});

  final WaterTestingPackagesArgs args;

  @override
  State<WaterTestingPackagesScreen> createState() =>
      _WaterTestingPackagesScreenState();
}

class _WaterTestingPackagesScreenState
    extends State<WaterTestingPackagesScreen> {
  late final WaterTestingPackagesBloc _bloc;
  WaterTestingPackageEntity? _selected;

  @override
  void initState() {
    super.initState();
    _bloc = sl<WaterTestingPackagesBloc>()..load();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AppScaffold(
    appBar: AppBar(
      title: const Text('Choose Test Package'),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Text('Select a package that suits your needs.'),
          ),
        ),
      ),
    ),
    bottomNavigationBar: SafeArea(
      minimum: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      child: ElevatedButton.icon(
        onPressed: _selected == null ? null : _continue,
        icon: const Icon(Icons.arrow_forward),
        label: const Text('Continue'),
      ),
    ),
    body: BlocBuilder<WaterTestingPackagesBloc, WaterTestingPackagesState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is WaterTestingPackagesLoading ||
            state is WaterTestingPackagesInitial) {
          return const AppLoadingWidget();
        }
        if (state is WaterTestingPackagesFailure) {
          return AppFailureWidget(message: state.message, onRetry: _bloc.load);
        }
        final packages = (state as WaterTestingPackagesSuccess).packages;
        if (_selected == null && packages.isNotEmpty) {
          _selected = packages.firstWhere(
            (item) => item.isDefault,
            orElse: () => packages.first,
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          itemCount: packages.length,
          separatorBuilder: (_, _) => const SizedBox(height: 16),
          itemBuilder: (_, index) {
            final package = packages[index];
            return _PackageCard(
              package: package,
              selected: _selected?.id == package.id,
              onTap: () => setState(() => _selected = package),
            );
          },
        );
      },
    ),
  );

  Future<void> _continue() async {
    final result = await context.push<AddressSelectionResult>(
      AppRoute.address.path,
      extra: const AddressSelectionArgs(flowSlug: 'water-testing-laboratory'),
    );
    if (!mounted || result == null) return;
    await context.push(
      AppRoute.bookingSummary.path,
      extra: WaterTestingBookingArgs(
        service: widget.args.service,
        sampleType: widget.args.sampleType,
        package: _selected,
        address: result.address,
      ),
    );
  }
}

class _PackageCard extends StatelessWidget {
  const _PackageCard({
    required this.package,
    required this.selected,
    required this.onTap,
  });

  final WaterTestingPackageEntity package;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: selected ? const Color(0xFFF8FAFF) : Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(
        color: selected ? const Color(0xFF3B82F6) : const Color(0xFFE1E3E5),
        width: selected ? 2 : 1,
      ),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: selected
                  ? const Color(0xFFEFF6FF)
                  : const Color(0xFFF1F5F9),
              child: Icon(
                Icons.science_outlined,
                color: selected
                    ? const Color(0xFF3B82F6)
                    : const Color(0xFF60A5FA),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          package.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        '${package.currency}${package.price.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 20,
                          color: selected
                              ? const Color(0xFF3B82F6)
                              : const Color(0xFF191C1D),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  for (final feature in package.features)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle_outline,
                            size: 16,
                            color: Color(0xFF3B82F6),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              feature,
                              style: const TextStyle(color: Color(0xFF40484C)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFECEEF0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Text(
                          '${package.reportTimeHours} Hr Report',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF40484C),
                          ),
                        ),
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
  );
}
