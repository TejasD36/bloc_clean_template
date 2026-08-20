import 'dart:async';

import 'package:firebase_core/firebase_core.dart';

import '../core/di/core_dependencies.dart';
import '../core/di/injector.dart';
import '../core/logger/logger_service.dart';
import '../core/messaging/firebase_messaging_service.dart';
import '../core/network/services/session_expiry_notifier.dart';
import '../core/storage/hive_initializer.dart';
import '../features/auth/xcore.dart';
import '../firebase_options.dart';
import 'router/app_route.dart';
import 'router/app_router.dart';

class Bootstrap {
  Bootstrap._();

  static Future<void> initialize() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (error, stackTrace) {
      // Firebase may already be configured natively (AppDelegate). Reuse it.
      logError('Firebase initialization failed', error: error, stackTrace: stackTrace);
    }
    await HiveInitializer.initialize();
    await initCoreDependencies(sl);

    _wireSessionExpiryHandling();
    unawaited(sl<FirebaseMessagingService>().initialize());
  }

  /// When any API reports an expired session (401), clear the persisted
  /// session locally (no remote call, avoiding a recursive 401) and route the
  /// user to the login screen.
  static void _wireSessionExpiryHandling() {
    sl<SessionExpiryNotifier>().setHandler(() async {
      try {
        await sl<AuthLocalDatasource>().clearAuthData();
      } finally {
        AppRouter.router.go(AppRoute.login.path);
      }
    });
  }
}
