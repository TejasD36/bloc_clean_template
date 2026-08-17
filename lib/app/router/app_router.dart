import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/change_password_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/onboarding_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/reset_password_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/shell/presentation/screens/home_screen.dart';
import '../../features/shell/presentation/screens/shell_screen.dart';
import 'app_route.dart';

class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoute.splash.path,
    routes: [
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
      GoRoute(
        path: AppRoute.register.path,
        name: AppRoute.register.routeName,
        builder: (_, _) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoute.resetPassword.path,
        name: AppRoute.resetPassword.routeName,
        builder: (_, _) => const ResetPasswordScreen(),
      ),
      GoRoute(
        path: AppRoute.changePassword.path,
        name: AppRoute.changePassword.routeName,
        builder: (_, _) => const ChangePasswordScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final branchRoot = switch (navigationShell.currentIndex) {
            0 => AppRoute.home.path,
            1 => AppRoute.settings.path,
            2 => AppRoute.profile.path,
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
                path: AppRoute.settings.path,
                name: AppRoute.settings.routeName,
                builder: (_, _) => const SettingsScreen(),
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
    ],
  );
}
