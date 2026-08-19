import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/address/presentation/screens/add_address_screen.dart';
import '../../features/address/presentation/screens/address_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/booking/presentation/screens/booking_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
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
        builder: (_, _) => const AddressScreen(),
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
    ],
  );
}
