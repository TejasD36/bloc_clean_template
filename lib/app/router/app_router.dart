import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/address/presentation/screens/add_address_screen.dart';
import '../../features/address/presentation/screens/address_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/booking/presentation/screens/booking_screen.dart';
import '../../features/home/domain/entities/home_entity.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/common/widgets/app_web_view_screen.dart';
import '../../features/services/presentation/models/bottle_booking_summary_args.dart';
import '../../features/services/presentation/screens/booking_summary_screen.dart';
import '../../features/services/presentation/screens/bottle_booking_summary_screen.dart';
import '../../features/services/presentation/screens/booking_success_screen.dart';
import '../../features/services/presentation/models/booking_success_args.dart';
import '../../features/services/presentation/models/plumbing_booking_args.dart';
import '../../features/services/presentation/screens/water_tank_cleaning/water_tank_cleaning_options_screen.dart';
import '../../features/services/presentation/screens/service_details_screen.dart';
import '../../features/services/presentation/models/water_tank_cleaning_booking_args.dart';
import '../../features/services/presentation/models/water_testing_booking_args.dart';
import '../../features/services/presentation/models/water_testing_packages_args.dart';
import '../../features/services/presentation/screens/water_testing/water_testing_packages_screen.dart';
import '../../features/shell/presentation/screens/shell_screen.dart';
import '../../features/splash/presentation/screens/onboarding_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/track/presentation/screens/track_screen.dart';
import 'app_route.dart';

class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoute.splash.path,
    routes: [
      ///Initial Screens
      GoRoute(
        path: AppRoute.splash.path,
        name: AppRoute.splash.routeName,
        builder: (_, _) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoute.onboarding.path,
        name: AppRoute.onboarding.routeName,
        builder: (_, _) => const OnboardingScreen(),
      ),

      ///Auth Screens
      GoRoute(
        path: AppRoute.login.path,
        name: AppRoute.login.routeName,
        builder: (_, _) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoute.otp.path,
        name: AppRoute.otp.routeName,
        builder: (context, state) {
          final args = state.extra;
          if (args is OtpVerificationArgs) {
            return OtpScreen(args: args);
          }
          return const LoginScreen();
        },
      ),

      ///Shell
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final branchRoot = switch (navigationShell.currentIndex) {
            0 => AppRoute.home.path,
            1 => AppRoute.bookings.path,
            2 => AppRoute.track.path,
            3 => AppRoute.profile.path,
            _ => AppRoute.home.path,
          };

          return ShellScreen(
            navigationShell: navigationShell,
            isAtBranchRoot: state.uri.path == branchRoot,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.home.path,
                name: AppRoute.home.routeName,
                builder: (_, _) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.bookings.path,
                name: AppRoute.bookings.routeName,
                builder: (_, _) => const BookingScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.track.path,
                name: AppRoute.track.routeName,
                builder: (_, _) => const TrackScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.profile.path,
                name: AppRoute.profile.routeName,
                builder: (_, _) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),

      ///Address Screen
      GoRoute(
        path: AppRoute.address.path,
        name: AppRoute.address.routeName,
        builder: (_, state) => AddressScreen(
          selectionArgs: state.extra is AddressSelectionArgs
              ? state.extra as AddressSelectionArgs
              : null,
        ),
      ),
      GoRoute(
        path: AppRoute.addAddress.path,
        name: AppRoute.addAddress.routeName,
        builder: (_, state) => AddAddressScreen(
          args: state.extra is AddAddressArgs
              ? state.extra as AddAddressArgs
              : null,
        ),
      ),
      GoRoute(
        path: AppRoute.webView.path,
        name: AppRoute.webView.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is AppWebViewArgs) {
            return AppWebViewScreen(title: args.title, url: args.url);
          }
          return const Scaffold(body: Center(child: Text('Page unavailable')));
        },
      ),
      GoRoute(
        path: AppRoute.serviceDetails.path,
        name: AppRoute.serviceDetails.routeName,
        builder: (_, state) => ServiceDetailsScreen(
          slug: state.pathParameters['slug'] ?? '',
          service: state.extra is HomeServiceEntity
              ? state.extra as HomeServiceEntity
              : null,
        ),
      ),
      GoRoute(
        path: AppRoute.bookingSummary.path,
        name: AppRoute.bookingSummary.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is BookingSummaryArgs) {
            return BookingSummaryScreen(
              service: args.service,
              capacity: args.capacity,
              waterType: args.waterType,
              address: args.address,
            );
          }
          if (args is PlumbingBookingArgs) {
            return BookingSummaryScreen(
              service: args.service,
              address: args.address,
              plumbingBooking: args,
            );
          }
          if (args is WaterTankCleaningSummaryArgs) {
            return BookingSummaryScreen(
              service: args.service,
              address: args.address,
              cleaningBooking: args,
            );
          }
          if (args is WaterTestingBookingArgs) {
            return BookingSummaryScreen(
              service: args.service,
              address: args.address,
              testingBooking: args,
            );
          }
          return const Scaffold(
            body: Center(child: Text('Booking details unavailable')),
          );
        },
      ),
      GoRoute(
        path: AppRoute.bottleBookingSummary.path,
        name: AppRoute.bottleBookingSummary.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is BottleBookingSummaryArgs) {
            return BottleBookingSummaryScreen(
              service: args.service,
              items: args.items,
              address: args.address,
            );
          }
          return const Scaffold(
            body: Center(child: Text('Booking details unavailable')),
          );
        },
      ),
      GoRoute(
        path: AppRoute.bookingSuccess.path,
        name: AppRoute.bookingSuccess.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is BookingSuccessArgs) {
            return BookingSuccessScreen(args: args);
          }
          return const Scaffold(
            body: Center(child: Text('Booking details unavailable')),
          );
        },
      ),
      GoRoute(
        path: AppRoute.waterTankCleaningOptions.path,
        name: AppRoute.waterTankCleaningOptions.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is WaterTankCleaningOptionsArgs) {
            return WaterTankCleaningOptionsScreen(
              service: args.service,
              detail: args.detail,
            );
          }
          return const Scaffold(
            body: Center(child: Text('Service details unavailable')),
          );
        },
      ),
      GoRoute(
        path: AppRoute.waterTestingPackages.path,
        name: AppRoute.waterTestingPackages.routeName,
        builder: (_, state) {
          final args = state.extra;
          if (args is WaterTestingPackagesArgs) {
            return WaterTestingPackagesScreen(args: args);
          }
          return const Scaffold(
            body: Center(child: Text('Test packages unavailable')),
          );
        },
      ),
    ],
  );
}
