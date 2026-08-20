import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core.dart';
import '../../../address/presentation/services/google_places_service.dart';
import '../../../auth/xcore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _placesService = GooglePlacesService();

  final ValueNotifier _userName = ValueNotifier<String>('there');
  final ValueNotifier _location = ValueNotifier<String>('Finding your current location...');
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadHomeDetails();
  }

  Future<void> _loadHomeDetails() async {
    await Future.wait([_loadUserName(), _loadCurrentLocation()]);
  }

  Future<void> _loadUserName() async {
    final user = await sl<AuthLocalDatasource>().getUser();
    if (!mounted) {
      return;
    }
    final name = user?.name?.trim();
    if (name != null && name.isNotEmpty) {
      _userName.value = name;
    }
  }

  Future<void> _loadCurrentLocation() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        _setLocation('Select a location to continue');
        return;
      }

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        _setLocation('Select a location to continue');
        return;
      }

      final position = await Geolocator.getCurrentPosition(locationSettings: const LocationSettings(accuracy: LocationAccuracy.high));
      final place = await _placesService.reverseGeocode(LatLng(position.latitude, position.longitude));
      final address = place?.formattedAddress.trim();
      final fallbackAddress = place?.street.trim() ?? place?.name.trim();
      _setLocation(
        address != null && address.isNotEmpty
            ? address
            : fallbackAddress != null && fallbackAddress.isNotEmpty
            ? fallbackAddress
            : 'Address unavailable',
      );
    } catch (_) {
      _setLocation('Select a location to continue');
    }
  }

  void _setLocation(String location) {
    _location.value = location;
  }

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
        padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 112.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ValueListenableBuilder(
              valueListenable: _userName,
              builder: (context, value, child) {
                return Text(
                  'Good Morning, $value',
                  style: context.textTheme.displayLarge?.copyWith(
                    color: const Color(0xFF171B21),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    height: 36 / 28,
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            ValueListenableBuilder(
              valueListenable: _location,
              builder: (context, value, child) {
                return _LocationCard(location: value);
              },
            ),
            SizedBox(height: 24.h),
            AppSearchBar(controller: searchController, hintText: 'What service are you looking for?'),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Services',
                  style: context.textTheme.displayMedium?.copyWith(
                    color: const Color(0xFF191C1E),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    height: 28 / 22,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
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
  Size get preferredSize => Size.fromHeight(80.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xCCF7F9FC),
      surfaceTintColor: Colors.transparent,
      elevation: 1,
      shadowColor: Colors.black.withValues(alpha: 0.05),
      toolbarHeight: preferredSize.height,
      titleSpacing: 20.w,
      title: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color(0xFFE3EEFA),
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: const Color(0xFF0073E0)),
            ),
            child: Icon(Icons.person, color: context.colors.primary, size: 28.w),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              'Pune Water Helpline',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.displaySmall?.copyWith(
                color: const Color(0xFF005AB3),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                height: 22 / 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationCard extends StatelessWidget {
  const _LocationCard({required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: () => context.push(AppRoute.address.path),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border(
              left: BorderSide(color: const Color(0xFF005AB3), width: 4.w),
            ),
            boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 12, offset: Offset(0, 4))],
          ),
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(color: context.colors.primary.withValues(alpha: 0.10), borderRadius: BorderRadius.circular(8.r)),
                child: Icon(Icons.location_on_outlined, color: context.colors.primary, size: 20.w),
              ),
              SizedBox(width: 12.w),
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
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        height: 24 / 16,
                      ),
                    ),
                    Text(
                      location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF171B21),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        height: 24 / 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              const Icon(Icons.chevron_right, color: Color(0xFF7A8291), size: 20),
            ],
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
        final spacing = 20.w;
        final itemWidth = (constraints.maxWidth - spacing * 2) / 3;
        final imageSize = itemWidth;

        return Wrap(
          spacing: spacing,
          runSpacing: 16.h,
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
            SizedBox(height: 8.h),
            Text(
              service.label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleLarge?.copyWith(
                color: const Color(0xFF171B21),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 20 / 16,
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
