import '../core/di/core_dependencies.dart';
import '../core/di/injector.dart';
import '../core/network/services/session_expiry_notifier.dart';
import '../core/storage/hive_initializer.dart';
import 'router/app_route.dart';
import 'router/app_router.dart';

class Bootstrap {
  Bootstrap._();

  static Future<void> initialize() async {
    await HiveInitializer.initialize();
    await initCoreDependencies(sl);

    _wireSessionExpiryHandling();
  }

  /// When any API reports an expired session (401), clear the persisted
  /// session locally (no remote call, avoiding a recursive 401) and route the
  /// user to the login screen.
  static void _wireSessionExpiryHandling() {
    sl<SessionExpiryNotifier>().setHandler(() async {
      //TODO: Add Clear session Usecase
      AppRouter.router.go(AppRoute.login.path);
    });
  }
}
