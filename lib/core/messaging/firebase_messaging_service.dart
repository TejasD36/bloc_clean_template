import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../firebase_options.dart';
import '../logger/logger_service.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  logInfo('Remote notification received in background: ${message.messageId}');
}

class FirebaseMessagingService {
  FirebaseMessagingService._();

  static final FirebaseMessagingService instance = FirebaseMessagingService._();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  StreamSubscription<RemoteMessage>? _messageSubscription;
  StreamSubscription<RemoteMessage>? _openedMessageSubscription;
  StreamSubscription<String>? _tokenSubscription;
  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _messageSubscription = FirebaseMessaging.onMessage.listen(_handleMessage);
    _openedMessageSubscription = FirebaseMessaging.onMessageOpenedApp.listen(
      _handleOpenedMessage,
    );
    _tokenSubscription = _messaging.onTokenRefresh.listen(_handleToken);

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      await subscribeToTopic('all');
      await getToken();
    }

    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleOpenedMessage(initialMessage);
    }

    _initialized = true;
  }

  Future<String?> getToken() async {
    try {
      final token = await _messaging.getToken();
      logInfo('FCM token received: ${token == null ? 'null' : 'available'}');
      return token;
    } catch (error, stackTrace) {
      logError('Unable to get FCM token', error: error, stackTrace: stackTrace);
      return null;
    }
  }

  Future<void> subscribeToTopic(String topic) async {
    if (kIsWeb) return;

    try {
      await _messaging.subscribeToTopic(topic);
    } catch (error, stackTrace) {
      logError(
        'Unable to subscribe to FCM topic: $topic',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    if (kIsWeb) return;

    try {
      await _messaging.unsubscribeFromTopic(topic);
    } catch (error, stackTrace) {
      logError(
        'Unable to unsubscribe from FCM topic: $topic',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  void _handleMessage(RemoteMessage message) {
    logInfo('Foreground notification received: ${message.messageId}');
  }

  void _handleOpenedMessage(RemoteMessage message) {
    logInfo('Notification opened: ${message.messageId}');
  }

  void _handleToken(String token) {
    logInfo('FCM token refreshed: available');
  }

  Future<void> dispose() async {
    await _messageSubscription?.cancel();
    await _openedMessageSubscription?.cancel();
    await _tokenSubscription?.cancel();
  }
}
