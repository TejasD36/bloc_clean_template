import '../../../../core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<_ServiceItem> _services = [
    _ServiceItem('Water Tanker', Icons.local_shipping),
    _ServiceItem('Water Bottle\nJar Delivery', Icons.water_drop),
    _ServiceItem('Water Tank\nCleaning', Icons.cleaning_services),
    _ServiceItem('Plumbing\nService', Icons.plumbing),
    _ServiceItem('Water\nTesting', Icons.science),
    _ServiceItem('RO Water\nPurifier', Icons.opacity),
    _ServiceItem('Water\nSoftener', Icons.invert_colors),
    _ServiceItem('Water Cooler\n& Purifier', Icons.ac_unit),
    _ServiceItem('Rainwater\nHarvesting', Icons.grass),
    _ServiceItem('STP', Icons.factory),
    _ServiceItem('Borewell', Icons.construction),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.zero,
      safeArea: false,
      backgroundColor: const Color(0xFFF5F8FC),
      appBar: const _HomeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              'Good Morning, Vaibhav',
              style: context.textTheme.displayLarge?.copyWith(
                color: const Color(0xFF171B21),
                fontSize: 30,
                fontWeight: FontWeight.w800,
                height: 1.15,
              ),
            ),
            const SizedBox(height: 22),
            const _LocationCard(),
            const SizedBox(height: 24),
            const _SearchField(),
            const SizedBox(height: 28),
            Text(
              'Our Services',
              style: context.textTheme.displayMedium?.copyWith(color: const Color(0xFF171B21), fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 18),
            const _ServiceGrid(services: _services),
          ],
        ),
      ),
    );
  }
}

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 1,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      toolbarHeight: preferredSize.height,
      titleSpacing: 24,
      title: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: context.colors.primary),
            ),
            child: Icon(Icons.person, color: context.colors.primary, size: 30),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Pune Water Helpline',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.displaySmall?.copyWith(color: context.colors.primary, fontSize: 24, fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationCard extends StatelessWidget {
  const _LocationCard();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      elevation: 10,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {},
        child: Container(
          constraints: const BoxConstraints(minHeight: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border(left: BorderSide(color: context.colors.primary, width: 6)),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: context.colors.primary.withValues(alpha: 0.10), borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.location_on_outlined, color: context.colors.primary, size: 25),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CURRENT LOCATION',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF7A8291),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Baner, Pune - 411045',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF171B21),
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const Icon(Icons.chevron_right, color: Color(0xFF7A8291), size: 25),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Search services',
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
              color: const Color(0xFFF7F9FD),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFC5CFDD), width: 1.2),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Color(0xFF7A8291), size: 30),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'What service are you looking for?',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: const Color(0xFF7A8291),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ServiceGrid extends StatelessWidget {
  const _ServiceGrid({required this.services});

  final List<_ServiceItem> services;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final spacing = constraints.maxWidth < 360 ? 14.0 : 18.0;
        final itemWidth = (constraints.maxWidth - spacing * 2) / 3;
        final imageSize = itemWidth.clamp(92.0, 116.0);

        return Wrap(
          spacing: spacing,
          runSpacing: 28,
          children: services
              .map(
                (service) => SizedBox(
                  width: itemWidth,
                  child: _ServiceTile(service: service, imageSize: imageSize),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _ServiceTile extends StatelessWidget {
  const _ServiceTile({required this.service, required this.imageSize});

  final _ServiceItem service;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: service.label.replaceAll('\n', ' '),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E5EA),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 10, offset: const Offset(0, 5))],
              ),
              child: Icon(service.icon, color: context.colors.primary, size: imageSize * 0.38),
            ),
            const SizedBox(height: 12),
            Text(
              service.label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleLarge?.copyWith(
                color: const Color(0xFF171B21),
                fontSize: 17,
                fontWeight: FontWeight.w500,
                height: 1.15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceItem {
  const _ServiceItem(this.label, this.icon);

  final String label;
  final IconData icon;
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ShellPlaceholderScreen(
      icon: Icons.settings_outlined,
      title: 'Settings',
      subtitle: 'Add app preferences and account settings here.',
    );
  }
}

class _ShellPlaceholderScreen extends StatelessWidget {
  const _ShellPlaceholderScreen({required this.icon, required this.title, required this.subtitle});

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 56, color: context.colors.primary),
            const SizedBox(height: 16),
            Text(title, style: context.textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(subtitle, textAlign: TextAlign.center, style: context.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
