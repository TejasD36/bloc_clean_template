import 'dart:async';

/// Notifies the app when the API reports an expired/invalid session (401).
///
/// The network layer never depends on any feature, so the handler is
/// registered from the composition root (see `Bootstrap`).
class SessionExpiryNotifier {
  Future<void> Function()? _handler;
  bool _isHandling = false;

  void setHandler(Future<void> Function() handler) {
    _handler = handler;
  }

  void notify() {
    final handler = _handler;
    if (handler == null || _isHandling) return;

    _isHandling = true;
    unawaited(handler().whenComplete(() => _isHandling = false));
  }
}
