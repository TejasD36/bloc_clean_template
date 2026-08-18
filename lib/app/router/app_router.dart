import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

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
      GoRoute(path: AppRoute.splash.path, name: AppRoute.splash.routeName, builder: (_, _) => const SplashScreen()),
      GoRoute(path: AppRoute.onboarding.path, name: AppRoute.onboarding.routeName, builder: (_, _) => const OnboardingScreen()),
      GoRoute(path: AppRoute.login.path, name: AppRoute.login.routeName, builder: (_, _) => const LoginScreen()),
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
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final branchRoot = switch (navigationShell.currentIndex) {
            0 => AppRoute.home.path,
            1 => AppRoute.bookings.path,
            2 => AppRoute.track.path,
            3 => AppRoute.profile.path,
            _ => AppRoute.home.path,
          };

          return ShellScreen(navigationShell: navigationShell, isAtBranchRoot: state.uri.path == branchRoot);
        },
        branches: [
          StatefulShellBranch(
            routes: [GoRoute(path: AppRoute.home.path, name: AppRoute.home.routeName, builder: (_, _) => const HomeScreen())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: AppRoute.bookings.path, name: AppRoute.bookings.routeName, builder: (_, _) => const BookingScreen())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: AppRoute.track.path, name: AppRoute.track.routeName, builder: (_, _) => const TrackScreen())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: AppRoute.profile.path, name: AppRoute.profile.routeName, builder: (_, _) => const ProfileScreen())],
          ),
        ],
      ),
    ],
  );
}
