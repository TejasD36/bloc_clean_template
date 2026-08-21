import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core.dart';
import '../../../address/presentation/services/google_places_service.dart';
import '../../../auth/xcore.dart';
import '../../domain/entities/home_entity.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _placesService = GooglePlacesService();

  late final HomeBloc _homeBloc;
  final ValueNotifier<String> _userName = ValueNotifier<String>('there');
  final ValueNotifier<String> _location = ValueNotifier<String>('Finding your current location...');
  final ValueNotifier<String> _searchQuery = ValueNotifier<String>('');
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _homeBloc = sl<HomeBloc>()..add(const HomeEvent.started());
    _loadHomeDetails();
  }

  @override
  void dispose() {
    _homeBloc.close();
    _userName.dispose();
    _location.dispose();
    _searchQuery.dispose();
    searchController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeBloc,
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state case HomeSuccess(:final home)) {
            final name = home.userName.trim();
            if (name.isNotEmpty) {
              _userName.value = name;
            }
          }
        },
        child: AppScaffold(
          padding: EdgeInsets.zero,
          safeArea: false,
          backgroundColor: const Color(0xFFF5F8FC),
          appBar: const _HomeAppBar(),
          body: RefreshIndicator(
            onRefresh: () async => _homeBloc.add(const HomeEvent.started()),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 112.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ValueListenableBuilder<String>(
                    valueListenable: _userName,
                    builder: (context, value, child) {
                      return Text(
                        'Good Morning, $value',
                        style: context.textTheme.displayLarge?.copyWith(
                          color: const Color(0xFF171B21),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          height: 36 / 28,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  ValueListenableBuilder<String>(
                    valueListenable: _location,
                    builder: (context, value, child) {
                      return _LocationCard(location: value);
                    },
                  ),
                  SizedBox(height: 24.h),
                  AppSearchBar(
                    controller: searchController,
                    hintText: 'What service are you looking for?',
                    onChanged: (value) => _searchQuery.value = value.trim(),
                  ),
                  SizedBox(height: 24.h),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return switch (state) {
                        HomeInitial() || HomeLoading() => const _HomeLoadingView(),
                        HomeFailure(:final message) => _HomeFailureView(
                          message: message,
                          onRetry: () => context.read<HomeBloc>().add(const HomeEvent.started()),
                        ),
                        HomeSuccess(:final home) => _HomeContent(home: home, searchQuery: _searchQuery),
                      };
                    },
                  ),
                ],
              ),
            ),
          ),
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
          height: 70.h,
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
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 24 / 18,
                      ),
                    ),
                    Text(
                      location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF171B21),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 24 / 18,
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

class _HomeContent extends StatelessWidget {
  const _HomeContent({required this.home, required this.searchQuery});

  final HomeEntity home;
  final ValueNotifier<String> searchQuery;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Keep it commented for now no need to implement it currently
        /*if (home.banners.isNotEmpty) ...[
          _BannerStrip(banners: home.banners),
          SizedBox(height: 24.h),
        ],*/
        Text(
          'Our Services',
          style: context.textTheme.displayMedium?.copyWith(
            color: const Color(0xFF191C1E),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            height: 28 / 22,
          ),
        ),
        SizedBox(height: 16.h),
        ValueListenableBuilder<String>(
          valueListenable: searchQuery,
          builder: (context, query, child) {
            final services = _filterServices(home.services, query);

            if (services.isEmpty) {
              return const _EmptyServicesView();
            }

            return _ServiceGrid(
              services: services,
              onServiceTap: (service) => context.push(AppRoute.serviceDetails.path.replaceFirst(':slug', service.slug), extra: service),
            );
          },
        ),
      ],
    );
  }

  List<HomeServiceEntity> _filterServices(List<HomeServiceEntity> services, String query) {
    if (query.isEmpty) return services;

    final normalizedQuery = query.toLowerCase();

    return services.where((service) {
      return service.name.toLowerCase().contains(normalizedQuery) ||
          service.description.toLowerCase().contains(normalizedQuery) ||
          service.slug.toLowerCase().contains(normalizedQuery);
    }).toList();
  }
}

/*class _BannerStrip extends StatelessWidget {
  const _BannerStrip({required this.banners});

  final List<HomeBannerEntity> banners;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148.h,
      child: PageView.builder(
        controller: PageController(
          viewportFraction: banners.length > 1 ? 0.92 : 1,
        ),
        itemCount: banners.length,
        itemBuilder: (context, index) {
          final banner = banners[index];

          return Padding(
            padding: EdgeInsets.only(
              right: index == banners.length - 1 ? 0 : 12.w,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: _NetworkImage(url: banner.imageUrl, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}*/

class _ServiceGrid extends StatelessWidget {
  const _ServiceGrid({required this.services, required this.onServiceTap});

  final List<HomeServiceEntity> services;
  final ValueChanged<HomeServiceEntity> onServiceTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final spacing = 24.w;
        final itemWidth = (constraints.maxWidth - spacing * 2) / 3;
        final imageSize = itemWidth;

        return Wrap(
          spacing: spacing,
          runSpacing: 16.h,
          children: services
              .map(
                (service) => SizedBox(
                  width: itemWidth,
                  child: _ServiceTile(service: service, imageSize: imageSize, onTap: () => onServiceTap(service)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _ServiceTile extends StatelessWidget {
  const _ServiceTile({required this.service, required this.imageSize, required this.onTap});

  final HomeServiceEntity service;
  final double imageSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: service.name,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
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
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: EdgeInsets.all(18.w),
                child: AppNetworkImageWidget(
                  url: service.iconUrl,
                  fit: BoxFit.contain,
                  fallback: Icon(_fallbackServiceIcon(service), color: context.colors.primary, size: imageSize * 0.38),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              service.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleLarge?.copyWith(
                color: const Color(0xFF171B21),
                fontSize: 14.sp,
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

class _HomeLoadingView extends StatelessWidget {
  const _HomeLoadingView();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 148.h,
          decoration: BoxDecoration(color: const Color(0xFFE2E8F0), borderRadius: BorderRadius.circular(12.r)),
          alignment: Alignment.center,
          child: SizedBox(width: 24.w, height: 24.w, child: const CircularProgressIndicator(strokeWidth: 2.4)),
        ),
        SizedBox(height: 24.h),
        Text(
          'Our Services',
          style: context.textTheme.displayMedium?.copyWith(
            color: const Color(0xFF191C1E),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            height: 28 / 22,
          ),
        ),
        SizedBox(height: 16.h),
        const _ServiceSkeletonGrid(),
      ],
    );
  }
}

class _HomeFailureView extends StatelessWidget {
  const _HomeFailureView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        children: [
          Icon(Icons.cloud_off_outlined, color: context.colors.primary, size: 36.w),
          SizedBox(height: 12.h),
          Text(
            message.isEmpty ? 'Unable to load home data.' : message,
            textAlign: TextAlign.center,
            style: context.textTheme.titleMedium?.copyWith(color: const Color(0xFF171B21), fontSize: 16.sp, height: 22 / 16),
          ),
          SizedBox(height: 16.h),
          FilledButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh), label: const Text('Retry')),
        ],
      ),
    );
  }
}

class _EmptyServicesView extends StatelessWidget {
  const _EmptyServicesView();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 16.w),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Text(
        'No services found.',
        textAlign: TextAlign.center,
        style: context.textTheme.titleMedium?.copyWith(color: const Color(0xFF7A8291), fontSize: 16.sp),
      ),
    );
  }
}

class _ServiceSkeletonGrid extends StatelessWidget {
  const _ServiceSkeletonGrid();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final spacing = 20.w;
        final itemWidth = (constraints.maxWidth - spacing * 2) / 3;

        return Wrap(
          spacing: spacing,
          runSpacing: 16.h,
          children: List.generate(
            6,
            (_) => SizedBox(
              width: itemWidth,
              child: Column(
                children: [
                  Container(
                    width: itemWidth,
                    height: itemWidth,
                    decoration: BoxDecoration(color: const Color(0xFFE2E8F0), borderRadius: BorderRadius.circular(16.r)),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: itemWidth * 0.72,
                    height: 12.h,
                    decoration: BoxDecoration(color: const Color(0xFFE2E8F0), borderRadius: BorderRadius.circular(8.r)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

IconData _fallbackServiceIcon(HomeServiceEntity service) {
  switch (CustomerServiceSlug.fromValue(service.slug)) {
    case CustomerServiceSlug.waterTanker:
      return Icons.local_shipping;
    case CustomerServiceSlug.waterBottleJarDelivery:
      return Icons.water_drop;
    case CustomerServiceSlug.waterTankCleaning:
      return Icons.cleaning_services;
    case CustomerServiceSlug.plumbingService:
      return Icons.plumbing;
    case CustomerServiceSlug.waterTestingLaboratory:
      return Icons.science;
    case CustomerServiceSlug.roService:
      return Icons.opacity;
    case CustomerServiceSlug.waterSoftener:
      return Icons.invert_colors;
    case CustomerServiceSlug.waterCoolerAndPurifier:
      return Icons.ac_unit;
    case CustomerServiceSlug.rainWaterHarvesting:
      return Icons.grass;
    case CustomerServiceSlug.stp:
      return Icons.factory;
    case CustomerServiceSlug.borewell:
      return Icons.construction;
    case CustomerServiceSlug.unknown:
      return Icons.water;
  }
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
