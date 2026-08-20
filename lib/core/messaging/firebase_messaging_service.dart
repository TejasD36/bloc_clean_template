import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../logger/logger_service.dart';
import 'notification/xcore.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // FCM renders notification payloads automatically in the background or
  // terminated state. Only the foreground path needs to render locally.
  logInfo('Remote notification received in background: ${message.messageId}');
}

class FirebaseMessagingService {
  FirebaseMessagingService({required this.notificationStrategy});

  final NotificationStrategy notificationStrategy;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  StreamSubscription<RemoteMessage>? _messageSubscription;
  StreamSubscription<RemoteMessage>? _openedMessageSubscription;
  StreamSubscription<String>? _tokenSubscription;
  Future<void>? _initializingFuture;
  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;
    if (_initializingFuture != null) return _initializingFuture!;

    _initializingFuture = _performInitialization();
    try {
      await _initializingFuture;
      _initialized = true;
    } finally {
      _initializingFuture = null;
    }
  }

  Future<void> _performInitialization() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _messageSubscription = FirebaseMessaging.onMessage.listen(_handleMessage);
    _openedMessageSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen(_handleOpenedMessage);
    _tokenSubscription = _messaging.onTokenRefresh.listen(_handleToken);

    final authorized = settings.authorizationStatus ==
            AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;

    if (!authorized && !kIsWeb) {
      logInfo('Notification permission not granted, requesting again');
    }

    await notificationStrategy.initialize();

    if (authorized || kIsWeb) {
      await subscribeToTopic('all');
      await getToken();
    }

    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleOpenedMessage(initialMessage);
    }
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    logInfo('Foreground notification received: ${message.messageId}');

    // iOS renders notification payloads via foreground presentation options.
    // Android needs a local notification while the app is open.
    if (kIsWeb || defaultTargetPlatform == TargetPlatform.iOS) return;
    if (message.notification == null && message.data.isEmpty) return;

    await _showNotification(message);
  }

  void _handleOpenedMessage(RemoteMessage message) {
    logInfo('Notification opened: ${message.messageId}');
  }

  void _handleToken(String token) {
    logInfo('FCM token refreshed: available');
  }

  Future<void> _showNotification(RemoteMessage message) async {
    final notification = message.notification;
    final title = notification?.title ?? message.data['title']?.toString();
    final body = notification?.body ?? message.data['body']?.toString();

    if (title == null && body == null) return;

    await notificationStrategy.show(
      id: _notificationId(message),
      channelKey: NotificationChannels.key(NotificationChannelType.general),
      title: title ?? 'Pune Water Helpline',
      body: body ?? '',
      route: message.data['route']?.toString(),
      bigPicture: _bigPicture(message),
    );
  }

  String _bigPicture(RemoteMessage message) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return message.notification?.android?.imageUrl ?? '';
      case TargetPlatform.iOS:
        return message.notification?.apple?.imageUrl ?? '';
      default:
        return '';
    }
  }

  static int _notificationId(RemoteMessage message) {
    final value =
        message.messageId?.hashCode ?? DateTime.now().millisecondsSinceEpoch;
    return value.abs() % 2147483647;
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

  Future<void> dispose() async {
    await _messageSubscription?.cancel();
    await _openedMessageSubscription?.cancel();
    await _tokenSubscription?.cancel();
  }
}